![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)
# Licentie Keys ophalen en beheren

Om de Florisoft Apps te kunnen gebruiken, is een geldige licentie vereist.  
De licentie controle vindt automatisch plaats via de cloudserver.  
Zonder geldige licentie zullen de apps niet opstarten of beperkt functioneren.

Florisoft-licenties worden per use-case afgenomen, zodat alleen de benodigde onderdelen of gebruikers een licentie krijgen.  
Het is daarom belangrijk om te begrijpen welke licentietypes beschikbaar zijn en hoe deze worden beheerd.

> Let op: om licenties te kunnen beheren via het scherm **Manage Licenses**, moet voor de gebruiker eerst de policy `CanManageLicenses` zijn ingeschakeld. Zonder deze policy is dit scherm niet toegankelijk.

## 1. Licentietypes

Er zijn twee hoofdtypen licenties beschikbaar binnen Florisoft:

 **User-licentie**
- Een user-licentie is specifiek gekoppeld aan één systeemgebruiker.
- Alleen deze gebruiker kan de licentie gebruiken; andere gebruikers hebben er geen toegang toe.
- Dit type licentie is geschikt wanneer een specifieke gebruiker altijd toegang moet hebben tot bepaalde functionaliteit of modules.

**Floating-licentie**
- Een floating-licentie kan door meerdere gebruikers worden gedeeld.
- Bij het inloggen wordt automatisch gezocht naar een vrije licentie key.
- Zodra een gebruiker uitlogt, komt de licentie weer beschikbaar voor iemand anders.
- Dit type licentie is ideaal in situaties waar meerdere medewerkers afwisselend met Florisoft werken.

## 2. Licenties beheren via het _Manage licenses_-scherm

### Toegangsrechten

Om toegang te krijgen tot dit scherm, moet de **policy** `CanManageLicenses` zijn ingeschakeld voor de gebruiker. Zonder deze policy is het scherm niet toegankelijk.

Om het licentieoverzicht te openen, ga je in **Florisoft.NET Navigator** naar:
**Systeem → Manage licenses**

Het scherm **App licentiefeatureoverzicht** toont de beschikbare onderdelen van Florisoft en de bijbehorende licentiestatus.

<img src="Media/Licentie Keys ophalen en beheren/app-licentiefeatureoverzicht.png" alt="App licentiefeatureoverzicht met featurestructuur, licentiestatussen en licentiesleuteldetails" />

### Opbouw van het scherm

Bovenaan staat een samenvatting met:

- **Licentieerbaar:** het aantal onderdelen waarvoor een licentie kan worden gebruikt.
- **Actief gelicenseerd:** het aantal onderdelen waarvoor een actieve licentie aanwezig is.
- **Ontbrekend:** het aantal licentieerbare onderdelen waarvoor geen actieve licentie is gevonden.

Aan de linkerkant worden de licentiefeatures hiërarchisch weergegeven. De kleur en status van een onderdeel geven aan of het volledig, gedeeltelijk of niet is gelicenseerd.

### Featuredetails en licentiekeys

Selecteer links een onderdeel om rechts de bijbehorende licentiegegevens te bekijken. Hier zie je onder andere de geldigheid, status, gekoppelde gebruiker en eventuele claiminformatie.

### Licentie aan een gebruiker toewijzen

Alleen een **user-licentie** kan aan een specifieke systeemgebruiker worden gekoppeld.

Selecteer de gewenste feature en klik in de kolom **Gebruikers-ID** bij de betreffende user-licentie. Druk op **F3** om een systeemgebruiker te zoeken en te selecteren.

Een lege, bewerkbare gebruikers-ID wordt met een afwijkende achtergrondkleur aangegeven. Bij andere licentietypes kan deze waarde niet worden gewijzigd.

### Gegevens in het scherm vernieuwen

Het scherm bevat twee verschillende vernieuwfuncties:

- **Vernieuwen:** laadt de actuele licentie- en claiminformatie opnieuw in het scherm.
- **Licentiesleutels vernieuwen:** haalt de nieuwste licentiekeys op en synchroniseert deze met Florisoft.

Gebruik **Licentiesleutels vernieuwen** wanneer nieuwe of gewijzigde licenties nog niet in het overzicht zichtbaar zijn. Gebruik daarna zo nodig **Vernieuwen** om de meest recente scherminformatie te tonen.

## 3. Automatisch ophalen van licentie keys

Om licentie keys automatisch op te halen, moet de **timerfunctie _Licentie keys vernieuwen_ (GETLICENSEKEYS)** worden ingesteld.  
Wij raden aan deze functie **één keer per week** uit te voeren, zodat alle licenties up-to-date blijven.

**Aanbevolen instelling:**

- **Timer functie:** `Licentie keys vernieuwen (GETLICENSEKEYS)`
    
- **Frequentie:** 1x per week
    
- **Doel:** Vernieuwen en synchroniseren van licentiegegevens
