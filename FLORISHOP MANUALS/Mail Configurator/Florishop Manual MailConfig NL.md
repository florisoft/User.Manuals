<img src="../../fslogo.png">

# Handleiding voor MailConfig in Florishop

Vanuit de webshop worden verschillende e-mails naar klanten verstuurd, zoals aanbiedingen en voorraadbevestigingen. Deze e-mails moeten natuurlijk passen bij de huisstijl van uw organisatie. Met MailConfig kunt u eenvoudig zelf bepalen hoe deze e-mails eruitzien en welke informatie erin wordt getoond. Zo kunt u mailtemplates aanmaken, aanpassen, bekijken en activeren—allemaal vanuit één centrale plek.

- [Wat is MailConfig?](#wat-is-mailconfig)
- [Beschikbare mailsoorten](#beschikbare-mailsoorten)
- [MailConfig openen](#mailconfig-openen)
- [Overzicht van templates](#overzicht-van-templates)
- [Een nieuwe template maken](#een-nieuwe-mailtemplate-maken)
- [Een template bewerken](#een-mailtemplate-bewerken)
- [De voorbeeldweergave gebruiken](#de-voorbeeldweergave-gebruiken)
- [Een mailtemplate opslaan](#een-mailtemplate-opslaan)
- [Een mailtemplate activeren](#een-mailtemplate-activeren)
- [Een mailtemplate verwijderen](#een-mailtemplate-verwijderen)
- [Specifieke aandachtspunten per mailsoort](#specifieke-aandachtspunten-per-mailsoort)

## Wat is MailConfig?
MailConfig is de beheeromgeving voor de automatische e-mails die vanuit de webshop worden verstuurd. Een e-mail wordt opgebouwd aan de hand van een mailtemplate.

In een mailtemplate kunnen onder andere de volgende onderdelen worden ingesteld:
- Teksten
- Kleuren
- Afbeeldingen
- Afmetingen en tussenruimtes
- De informatie die in de e-mail wordt getoond
- Complete templateonderdelen (header, body, footer enzovoort)

De beschikbare instellingen kunnen per mailsoort en gekozen basistemplate verschillen.

## Beschikbare mailsoorten

Binnen MailConfig kunnen momenteel twee soorten e-mails worden beheerd:

### Aanbiedingsmail

De aanbiedingsmail wordt gebruikt om een aanbieding naar een klant te versturen.

### Voorraadbevestiging

De voorraadbevestiging wordt gebruikt om een bestelling uit de voorraad aan de klant te bevestigen.

Het aanmaken en beheren van de templates werkt voor beide mailsoorten grotendeels hetzelfde. De specifieke mogelijkheden en aandachtspunten worden later per mailsoort behandeld.

## MailConfig openen

Open MailConfig vanuit de navigatiebalk van de webshop.
<img src="./Mail configuratie link.png">

### Voorraadbevestigingen
*Omdat de functionaliteit voor bevestigingsmails redelijk nieuw is, is een extra stap nodig om deze te activeren. Dit doet u via de webshopinstelling **CONFIRMATIONMAILLAYOUT**.*
<img src="./Mjml Layout Webshopsetting Link.png">

*Klik op de webshopinstelling en kies de optie **MailConfig**.*
<img src="./Webshopsetting scherm.png">

*FRPT is de oude methode om bevestigingen te versturen. MailConfig kan dit overnemen, maar daarvoor moet deze instelling worden geactiveerd.*

## Overzicht van templates

Op de overzichtspagina worden uw gemaakte mailtemplates getoond. Per template ziet u onder andere:

- Of de template actief is
- Bij welk thema de template hoort
- Voor welke mailsoort de template wordt gebruikt
- De naam van de template

*Dit is een voorbeeld van een overzichtspagina:*
<img src="./MailConfig overzichtspagina.png">

Met het zoekveld kunt u een bestaande template op naam vinden. U kunt ook filteren op actieve templates.

Vanuit het overzicht kunt u een nieuwe template maken, een bestaande template openen of bepalen welke template actief is.

## Een nieuwe mailtemplate maken

1. Klik op het groene plusicoon linksboven.
<img src="./MailConfig nieuwe template aanmaken.png">

2. Het aanmaakmenu wordt geopend.
<img src="./MailConfig aanmaakmenu.png">

3. Kies de gewenste mailsoort.
4. Selecteer het thema waarvoor de template wordt gebruikt.
5. Geef de nieuwe template een duidelijke en herkenbare naam.
6. Kies een van de getoonde startertemplates.

De template wordt automatisch toegevoegd aan het overzichtsscherm. U kunt deze nu bekijken, bewerken of verwijderen.

*De template is in principe direct klaar voor gebruik. Elke startertemplate is compleet en bevat standaardwaarden. U kunt met de bewerktool experimenteren om uw eigen stijl samen te stellen.*

## Een mailtemplate bewerken
Open de gewenste template vanuit het overzicht.
<img src="./MailConfig template bewerken.png">

In het bewerkscherm ziet u de instellingen van de template en een voorbeeld van de e-mail.
<img src="./MailConfig template bewerkscherm.png">

De instellingen zijn verdeeld over verschillende onderdelen van de e-mail. Welke velden beschikbaar zijn, hangt af van de gekozen mailsoort en de basistemplate.

Pas alleen de onderdelen aan die u wilt wijzigen. Controleer na iedere belangrijke wijziging of de e-mail nog correct wordt weergegeven.

## De voorbeeldweergave gebruiken
De voorbeeldweergave is ook beschikbaar in het bewerkscherm. Met deze optie ziet u uitsluitend een voorbeeld van de e-mail.
<img src="./MailConfig voorbeeldweergave knop.png">

## Een mailtemplate opslaan
Klik na het aanpassen op **Opslaan**. De wijzigingen worden dan in de mailtemplate bewaard. Een opgeslagen template is niet automatisch de actieve template.
<img src="./MailConfig template opslaan.png">

## Een mailtemplate activeren
Hieronder wordt het activatieproces toegelicht.

Per thema kan maximaal één template actief zijn voor een specifieke mailsoort. Stel dat u de thema's **Florisoft** en **StarterKit** hebt. Het Florisoft-thema kan één actieve bevestigingstemplate en één actieve aanbiedingstemplate hebben. Hetzelfde geldt voor StarterKit.

Wanneer voor een combinatie van thema en mailsoort nog geen actieve template bestaat, wordt de eerste aangemaakte template automatisch actief gemaakt.

Het is verstandig om altijd minimaal één actieve template per combinatie te hebben. Dit wordt ook door MailConfig gehandhaafd. U kunt de actieve status daarom naar een andere template verplaatsen, maar niet verwijderen als er geen alternatief is.

## Een mailtemplate verwijderen

Een mailtemplate die niet meer nodig is, kan vanuit MailConfig worden verwijderd.

Controleer vóór het verwijderen:

- Of u de juiste template hebt geselecteerd
- Of de template nog actief is
- Of de template niet later opnieuw nodig is

Na bevestiging wordt de template verwijderd. Deze handeling kan mogelijk niet ongedaan worden gemaakt.
<img src="./MailConfig template verwijderen.png">

## Specifieke aandachtspunten per mailsoort
De algemene werkwijze is voor beide mailsoorten vrijwel gelijk. Sommige instellingen en gedragingen zijn echter specifiek voor een bepaalde mailsoort.

Deze onderwerpen worden in afzonderlijke hoofdstukken verder uitgewerkt:

- [MJML-bevestigingen](./Florishop%20Guide%20MailConfig%20Bevestigingen%20NL.md)
