# Installeert de Florisoft JobAgent Windows-service en de bijbehorende
# LocalSystem-configuratie. Voer dit bestand uit op de computer waarop
# JobAgent als Windows-service moet draaien.

$isAdmin = ([Security.Principal.WindowsPrincipal] `
    [Security.Principal.WindowsIdentity]::GetCurrent() `
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    Write-Host "Administratorrechten zijn vereist. Script wordt opnieuw gestart..." -ForegroundColor Yellow
    Start-Process powershell.exe `
        -Verb RunAs `
        -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`""
    exit
}

Write-Host ""
Write-Host "Florisoft JobAgent Service installatie" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

$serviceExePath = Read-Host "Volledige path JobAgent Service (bijv. C:\Apps\JobAgent\bin\Florisoft.JobAgent.Service.exe)"
$baseUrl = Read-Host "Cloud.Server URL"
$userName = Read-Host "UserName"
$password = Read-Host "Password"

$settingsFolder = "C:\Windows\System32\config\systemprofile\AppData\Roaming\Florisoft\Apps\JobAgent"
$settingsFile = Join-Path $settingsFolder "localAppSettings.txt"

if (-not (Test-Path $serviceExePath)) {
    Write-Host ""
    Write-Host "De opgegeven JobAgent executable bestaat niet:" -ForegroundColor Red
    Write-Host $serviceExePath -ForegroundColor Red
    Read-Host "Druk op Enter om af te sluiten"
    exit 1
}

if (-not (Test-Path $settingsFolder)) {
    New-Item -Path $settingsFolder -ItemType Directory -Force | Out-Null
}

$config = [ordered]@{
    BaseUrl                  = $baseUrl
    ProxyUrl                 = $null
    ProxyEnabled             = $null
    LoginEnabled             = $null
    Userid                   = $userName
    Culture                  = "EN"
    Printing                 = $false
    AutoLogin                = $false
    AutoRestartApp           = $false
    AutoRestartTime          = $null
    Situation                = ""
    ReleaseChannel           = "latest"
    Password                 = $password
    IsWindowsServiceFrontend = $false
}

$config |
    ConvertTo-Json -Depth 10 |
    Set-Content -Path $settingsFile -Encoding UTF8

$existingService = Get-Service -Name "Florisoft.JobAgent.Service" -ErrorAction SilentlyContinue

if ($existingService) {
    Write-Host "De service Florisoft.JobAgent.Service bestaat al." -ForegroundColor Yellow
}
else {
    Write-Host "Windows-service wordt aangemaakt..."
    sc.exe create "Florisoft.JobAgent.Service" `
        binPath= "`"$serviceExePath`"" `
        start= auto

    if ($LASTEXITCODE -ne 0) {
        Write-Host "Aanmaken van de Windows-service is mislukt. SC-exitcode: $LASTEXITCODE" -ForegroundColor Red
        Read-Host "Druk op Enter om af te sluiten"
        exit $LASTEXITCODE
    }

    sc.exe config "Florisoft.JobAgent.Service" start= delayed-auto
}

Write-Host ""
Write-Host "Installatie gereed. Start de service of herstart de computer." -ForegroundColor Green
Read-Host "Druk op Enter om af te sluiten"
