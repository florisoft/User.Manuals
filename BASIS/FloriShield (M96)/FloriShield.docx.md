<img src="../../fslogo.png"/>

# FloriShield

## Licentie

Om de Florisoft Monitor te kunnen gebruiken is de licentie voor
“*~FloriShield*” vereist. Na activatie in het licentiebestand moet er
een licentie update in een cliënt gedaan worden.

## Werking

De FloriShield bestaat uit meerdere onderdelen. De normale Florisoft
cliënt waar bijvoorbeeld de Timer draait. Als de *FloriShield* licentie
actief is en voor de ingelogde gebruiker staat aan dat er gemonitord
moet worden, dan wordt de ***FloriShieldService*** gestart. Daarnaast is
er een ***FloriShield Client*** nodig, dit is het deel dat de Florisoft
cliënt controleert, corrigeert en rapporteert.

In de toekomst komt daar nog een ***FloriShield IT Client*** en
***FloriShield Support Client*** bij. De ***FloriShield IT Client***
komt bijvoorbeeld bij de Florisoft applicatie beheerder te draaien en
toont de resultaten en meldingen van meerdere ***FloriShield Cliënts***
in zijn netwerk. De ***FloriShield Support Client*** komt bij Florisoft
Support te draaien en toont resultaten en meldingen van meerdere
Florisoft klanten.

## Configuratie

### Florisoft client

Om te zorgen dat een Florisoft client gemonitord kan worden dient dit
aangezet te worden voor de ingelogde gebruiker. Hiervoor dient *FS-2000
instelling FloriShield* op **True** gezet worden.  
<img src=".FloriShield.docx\media\image1.png" />

Als deze gebruiker Florisoft start, wordt de ***FloriShield service***
mee gestart en kan deze Florisoft gecontroleerd worden door de
***FloriShield Client***.

<img src=".FloriShield.docx\media\image2.png" style="width:4.91735in;height:1.08348in" />

Het geselecteerde icoon geeft aan dat de service actief is.  
Zorg dat in de snelkoppeling om de Florisoft Client te starten ook de
parameter MEER is opgenomen.

### FloriShield Client

Om de ***FloriShield Client*** te starten dient er een snelkoppeling
gemaakt te worden naar florisoft 2000.exe met als optie /MONITOR MEER

*C:\\fsnet\\Splash\\florisoft 2000.exe /MONITOR MEER*

Als deze gestart wordt, krijg je het volgende scherm:  
<img src=".FloriShield.docx\media\image3.png" style="width:6.26806in;height:3.11461in" />

In de constanten onder Systeem &gt; Florishield

<img src=".FloriShield.docx\media\image4.png"/>

Email: Werkt niet. We werken met Telegram  
SMSNummer: Werkt niet. We werken met Telegram  
Interval: Tijd in seconden tussen 2 controles  
ProcessTime: De maximale tijd dat een timerproces mag duren in
seconden  
Uri: Het adres van de monitor service in de Florisoft Client default
is:  
net.tcp://localhost:8733/Design\_Time\_Addresses/Florisoft\_Monitor\_Service/MonitorService/  
Password: Het wachtwoord van de timer gebruiker die ingelogd moet zijn  
User: Gebruikersnaam van de timer gebruiker die ingelogd moet zijn

## Controles

Beschikbare controles:  
1\. Is Florisoft actief? Zo niet dan wordt Florisoft gestart met de
ingestelde gebruiker en wachtwoord en wordt de timer gestart.

2\. Is de juiste gebruiker actief? Zo niet dan wordt er een nieuwe
Florisoft gestart met de ingestelde gebruiker en wachtwoord en wordt de
timer gestart.

3\. Is de timer actief? Zo niet dan wordt de timer gestart.

4\. Is er nog recente timer activiteit? Een proces mag maximaal zo lang
duren als ingesteld in ProcessTime. Als een proces al langer draait dan
de ingestelde tijd, wordt er een melding gestuurd naar het ingestelde
email adres. Er wordt nog geen actie ondernomen.

Zijn alle testen succesvol, dan ziet dat er als volgt uit:  
<img src=".FloriShield.docx\media\image5.png" style="width:6.26806in;height:3.06237in" />

**LET OP!**

Als er op dezelfde machine meerdere monitors dienen te draaien.(denk
bijv. aan een virtual machine) Moet het poort nummer afwijkend van
elkaar zijn.

<img src=".FloriShield.docx\media\image6.png" style="width:3.11806in;height:3.47178in" />

> **ATTENTIE**: In de DOTNET versie verloopt de communicatie niet meer via TCP maar via HTTP
> de Windows user die de Florishield Server draait moet rechten krijgen om te mogen luisteren naar HTTP:
> `netsh http add urlacl url=http://+:8733/Design_Time_Addresses/Florisoft_Monitor_Service/MonitorService/ user=DOMAIN\Username`

## FloriShield Client stoppen

De FloriShield client kan niet gestopt worden door op het kruisje te
klikken. Dit is gedaan om te voorkomen dat iemand zomaar, per ongeluk de
FloriShield client stopt. Als je toch op het kruisje klikt, dan wordt de
FloriShield Client geminimaliseerd naar de System Tray en blijft gewoon
doorlopen met controleren.

<img src=".FloriShield.docx\media\image7.png" style="width:4.56314in;height:2.52119in" />

De FloriShield client kan gestopt worden door met de rechtermuisknop op
het icoon te klikken en te kiezen voor Close FloriShield

<img src=".FloriShield.docx\media\image8.png" style="width:4.10474in;height:1.85443in" />

Waarna je moet bevestigen om de FloriShield Client te stoppen.

Als de ***FloriShield Client*** geminimaliseerd is, kan er dubbel
geklikt worden op het icoon in de System Tray om de FloriShield Client
weer te tonen.

## FloriShield Service stoppen

De ***FloriShield Service*** stopt automatisch als de Florisoft Client
wordt gestopt. Het stoppen van de Florisoft Client duurt dan wel iets
langer, omdat alle verbindingen met de ***FloriShield Service*** moeten
worden gestopt.

## Meldingen

De FloriShield Client stuurt verschillende berichten naar Telegram
gebruikers (Zie Telegram instellen hoe dit geconfigureerd dient te
worden). Deze berichten kunnen ingesteld worden in de Constanten van
Florisoft onder ‘Financieel – Factuurteksten’. De teksten 26 t/m 31
worden gebruikt voor het versturen van de diverse berichten. Op dit
moment kunnen de vertalingen nog niet ingevoerd worden. Er kunnen wel 2
variabelen ingesteld worden in de teksten, dat zijn {MACHINE} en {USER}
waarbij {MACHINE} vervangen wordt door de computernaam waar de Monitor
Client op draait en {USER} door de Florisoft gebruikersnaam die volgens
de instellingen actief moet zijn.

## Updates

De ***FloriShield Client*** loopt mee met de *scheduled updates*. Zodra
er een scheduled update wordt ingepland, pakt ook de FloriShield Client
deze op net als de Florisoft client die op de bewuste machine draait. Op
de ingestelde tijd worden zowel de Florisoft client als de FloriShield
Client afgesloten, echter met het verschil dat de FloriShield Client de
opdracht meekrijgt om te herstarten.  
Het volgende scherm wordt getoond:  
<img src=".FloriShield.docx\media\image9.png" style="width:3.1046in;height:2.51077in" />

Nadat de geplande update is afgelopen, zal er een herstart van de
***FloriShield Client*** plaatsvinden, die direct de update uitvoert,
zoals dat bij elke Florisoft client gebeurd. Na de update start de
***FloriShield Client*** opnieuw en deze zal Florisoft en de timer
starten als onderdeel van de ingestelde controles.

## Telegram instellen

Om Telegram in te stellen dienen er een aantal stappen doorlopen te
worden.

### 1. Telegram account aanmaken

Ga in je browser naar <https://web.telegram.org/#/login>  
Voer hier het juiste land en het mobiele telefoonnummer in dat je wilt
gebruiken om je bot aan te koppelen. Let op, gebruik een bestaand
nummer, je ontvangt namelijk een sms met de inlog code.

<img src=".FloriShield.docx\media\image10.tmp" style="width:2.43478in;height:2.47843in" />

Na het invoeren van het nummer klik je op “Volgende”, Voer de ontvangen
autorisatiecode in en daarna je gegevens. Je komt nu in de web-versie
van de Telegram App.

<img src=".FloriShield.docx\media\image11.png" style="width:6.26806in;height:2.22328in" />

### 2. Telegram bot aanmaken

Nu je ingelogd bent bij Telegram kun je een bot aanmaken. Hiervoor start
je een nieuw gesprek met de BotFather, voer hiervoor @botfather in het
Zoeken veld en klik op het enige resultaat.

<img src=".FloriShield.docx\media\image12.png" style="width:3in;height:2.2425in" />

Klik nu onderaan op “Begin”

<img src=".FloriShield.docx\media\image13.png" style="width:3.17391in;height:2.42486in" />

Je bent nu een ‘gesprek’ begonnen met de BotFather

<img src=".FloriShield.docx\media\image14.png" style="width:6.26806in;height:4.79479in" />

Stuur nu het volgende commando: /newbot (inclusief de /)

Er wordt gevraagd om een naam voor je bot, geef de gewenste naam in.

Vervolgens wordt er gevraagd om de gebruikersnaam van je bot, hier mogen
geen spaties in zitten, en moet eindigen op ‘bot’, dat is niet
hoofdletter gevoelig en alles mag er voor staan, de naam moet wel uniek
zijn bij Telegram.

De bot is gemaakt en je ontvangt de API Token, die hebben we nodig:

![](.FloriShield.docx/media/image15.png)

### 3. Aanmelden bij je Telegram bot

Om je aan te melden bij de nieuw aangemaakte Telegram bot, moet dit
ingesteld worden in Florisoft.

Ga naar ‘Onderhoud -&gt; Setup Systeem -&gt; Telegram IT Bot’

![](.FloriShield.docx/media/image16.png)

Vervolgens moet bij 1 gebruiker de FloriShield IT Bot worden aangezet,
alleen als deze Florisoft online is kunnen gebruikers zich aanmelden bij
de bot om berichten te ontvangen.

Om de FloriShield IT Bot aan te zetten moet FS2000 – FloriShieldItBot
aangezet worden.

<img src=".FloriShield.docx\media\image17.png" style="width:3.32338in;height:3.75052in" />

Start nu de Florisoft met de gebruiker waarbij de FloriShield IT Bot is
aangezet.

In Telegram type je de gebruikersnaam van je bot in het zoeken veld en
klik op het gevonden resultaat

<img src=".FloriShield.docx\media\image18.png" style="width:6.26806in;height:4.85105in" />

Klik onderaan op Begin

<img src=".FloriShield.docx\media\image19.png" style="width:3.57391in;height:2.74649in" />

Stuur nu je gebruikersnaam en daarna je wachtwoord

![](.FloriShield.docx/media/image20.png)

Je bent nu aangemeld bij de bot.

Let op! Er moet een bekende Florisoft gebruikersnaam en wachtwoord
ingevoerd worden (systeem gebruiker) en de gebruiker mag niet
geblokkeerd zijn.

Om af te melden stuur je /unsubscribe naar de bot en je wordt verwijderd
van de lijst met ontvangers.

### 4. Telegram berichten vanuit de FloriShield

Als FloriShield nu een probleem constateert of verhelpt wordt de tekst
uit de Factuur teksten naar alle aangemelde Telegram gebruikers
gestuurd. Hier zijn geen extra instellingen voor nodig. Zodra de
Telegram bot API key is ingevoerd en de FloriShield wordt geherstart,
worden de berichten verstuurt.
