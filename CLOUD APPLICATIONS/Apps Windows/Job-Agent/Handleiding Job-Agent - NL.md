![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding Job-Agent

In deze handleiding leert u hoe u de Job-Agent start vanuit de Florisoft Windows Hub-App.

## Vereisten

Om de stappen in deze handleiding te volgen, dient u te beschikken over het volgende:

- Een recente installatie van de cloudserver.
- De Hub-App dient geïnstalleerd te zijn. Is deze nog niet geïnstalleerd? Lees dan [hier](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/App%20Hub/Hub-App%20Installatie%20NL.md) hoe u dit doet.

## Job-Agent

| Stap | Uitleg |
|:-:|:--|
| **1** | Open de lokale Windows Hub-App en log in met de toegewezen Florisoft Hub-App gebruiker, of druk op **Catalogue**. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/1.png"></details>|
| **2** | Klik op de paarse pijltjestoets in de balk om de Job-Agent applicatie te starten.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/2.png"></details>|
| **3** | De Job-Agent applicatie wordt nu gestart. U ziet een loginscherm verschijnen. Klik rechtsboven in het loginscherm op het hamburgermenu. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/3.png"></details>|
| **4** | Controleer of bij het wolk-icoontje de juiste cloudserver-URL is ingevuld. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/4.png"></details>|
| **5** | Zorg ervoor dat de volgende instellingen zijn ingeschakeld:<br><br>- **Handles print jobs locally**<br>- **Login automatically**<br>- **Launch on Windows login** <details><summary><b>Click here for the example image!</b></summary><img src="Media/4.png"></details>|
| **6** | Nadat u deze instellingen heeft gecontroleerd, drukt u op de **Save**-knop. U wordt nu gevraagd om de Job-Agent te herstarten. Klik op **Yes**. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/5.png"></details>|
| **7** | Log in met uw persoonlijke Job-Agent gebruiker.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/6.png"></details> |
| **8** | U bevindt zich nu in het **Jobs**-scherm. Hier ziet u de taken (jobs) die uw lokale Job-Agent binnenhaalt via de cloudserver.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/7.png"></details> |

## Printer groepen

In Florisoft (en de apps) zijn enkel printers zichtbaar die ingesteld zijn onder een printergroep.
Systeemgebruikers moeten vervolgens gekoppeld worden aan een printergroep om de ingesteld printers te zien in zijn of haar werkzaamheden.

*Printers die beschikbaar zijn via de jobagent worden automatisch aangemaakt in Florisoft, deze hoeft u dus <u>niet</u> zelf aan te maken.*

Volg de onderstaande stappen (in uw Florisoft backoffice) om de printers, printergroepen en gebruikers in te stellen.

|Stap|Uitleg|
|:-:|:--|
|**1**|Vanuit de Florisoft Navigator opent u de constanten.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/PrinterGroup/1.png"></details>|
|**2**|In de constanten navigeer je naar :<br>**Systeem→Printen→Printergroep**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/PrinterGroup/2.png"></details>|
|**3**|Gebruik het + icoon om een nieuwe printergroep aan te maken, vul hier de volgende velden in:<br><br>**Omschrijving**, dit is de in de grid zichtbare naam.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/PrinterGroup/2.png"></details>|
|**4**|Sla de nieuwe groep op door op **Ok** te drukken.|
|**5**|Navigeer nu naar **Systeem→Printen→Job agent printer**, open vervolgens een printer object en stel onder Printer Group in onder welke printergoep het valt.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/PrinterGroup/3.png"></details>|
|**6**|Herhaal de laatste stap voor alle relevante printer voor de aangemaakte groep|