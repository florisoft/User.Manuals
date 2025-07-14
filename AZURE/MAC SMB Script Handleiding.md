# Handleiding: Mac uitvoerbaar script voor toegang tot Storage Account

Let op: macOS onthoudt geen actieve SMB-sessies, dus de klant moet elke keer opnieuw verbinding maken via dit script.

---
| Stap | omschrijving | Actie |
|:-:|:--|:--|
| **1** | **Open Terminal en maak een scriptbestand aan:** | Voer het volgende commando uit in je terminal: <br>```bash nano ~/Desktop/Open_SMB.command```|
| **2** | **Voeg dit toe aan het script:** | In het geopende nano-venster, plak je de volgende regel: <br>```bash open "smb://{Naamstorageaccountklant}:{Keystorageaccountklant}@{Naamstorageaccountklant}.file.core.windows.net/files"``` <br><br>Druk vervolgens op `Ctrl + O` om op te slaan, en `Ctrl + X` om nano te verlaten.<br><br> > *De exacte verbindingsstring kun je opvragen via de Azure Portal of het `#Azure` Slack-kanaal.*|
| **3** | **Maak het script uitvoerbaar:** | Geef het script uitvoerrechten: <br> ```bash chmod +x ~/Desktop/Open_SMB.command```

---

## Uitvoeren van het script

Je kunt nu dubbelklikken op het bestand `Open_SMB.command` op je bureaublad. Het opent dan automatisch de SMB-share van het storage account.

>  **Let op:** Bij de eerste keer dubbelklikken krijg je een beveiligingswaarschuwing. Klik op **Open** als je het vertrouwt.

---

## Opmerking

- Het script opent een directe verbinding naar de fileshare op Azure via SMB.
- De sessie wordt **niet onthouden** door macOS; je moet dit script gebruiken telkens als je opnieuw toegang nodig hebt.
