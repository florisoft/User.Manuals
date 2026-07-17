# Handleiding – Inventory Slotting (Slotting App)

Deze handleiding beschrijft hoe u de Slotting-functionaliteit van de Florisoft Inventory App gebruikt en configureert. De volledige gebruikersworkflow, relevante policies, systeeminstelling en autorisatie staan in dit document.

---

## Benodigdheden

Voor het gebruik van Slotting heeft u het volgende nodig:

- Florisoft Inventory App
- Backoffice Voorraadmodule
- Module PDA Pickorder location

---

## Wat is Slotting?

Met Slotting koppelt een magazijnmedewerker partijen aan fysieke magazijnlocaties. De medewerker kan beginnen met een locatie en daar meerdere partijen aan koppelen, of eerst een partij identificeren en daarna de gewenste locatie scannen. Vanuit de app kunnen locaties en gekoppelde partijen ook worden ingezien, locaties worden leeggemaakt en labels worden geprint, voor zover dit via policies en autorisaties is toegestaan.

---

## Stappen in de workflow (kort overzicht)

1. Open Slotting in de Inventory App.
2. Scan een locatie of partij, of gebruik de zoekfunctie.
3. Scan het tweede onderdeel om de partij en locatie te koppelen.
4. Controleer de koppeling in de app of Backoffice.
5. Print indien nodig een prijs- of voorraadlabel.

De volgende secties beschrijven per stap welke instellingen en policies van belang zijn.

---

## Stap 1 – Inloggen en Slotting openen

Open de Inventory App via de Florisoft Hub-App of via het Inventory-App-icoon en log in met uw gebruikergegevens. Kies daarna in het navigatiescherm de tegel **Slotting**.

De gebruiker heeft autorisatiecode **424** nodig om Slotting te kunnen openen en gebruiken. Zie [Autorisaties](#autorisaties) voor de inrichting.

---

## Stap 2 – De scanworkflow kiezen

Bij het openen van Slotting verschijnt direct het scanscherm. Kies de workflow die het beste aansluit op de magazijnhandeling:

- **Locatie eerst:** scan eerst de locatie en daarna de partijen die u daar wilt plaatsen. Deze workflow is geschikt wanneer meerdere partijen achter elkaar naar dezelfde locatie gaan.
- **Partij eerst:** scan eerst de partij en daarna de locatie. Deze workflow is geschikt wanneer u een afzonderlijke partij oppakt en naar een locatie brengt.

U kunt de barcodes met een scanner invoeren. Veeg naar rechts om een barcode handmatig in te voeren. Scannen is mogelijk op het startscherm, het locatie-overzicht en het partij-detail. Op het startscherm opent de app het gevonden locatie- of partijscherm. Op een locatie-overzicht wordt een gescande partij direct aan de actieve locatie gekoppeld. Op een partij-detail koppelt een locatiescan de actieve partij direct aan die locatie. Wanneer een scan meerdere resultaten oplevert, kiest u eerst het juiste resultaat in het selectiescherm.

### Een partij handmatig zoeken

Gebruik het zoekicoon op het startscherm of locatie-overzicht wanneer een partij niet kan worden gescand. U kunt zoeken op artikelnaam, partijnummer, V-partijnummer, `Scancode` of `Scancode2`. Het zoekscherm toont normale partijen; na uw selectie past de app de actieve slottingstrategie toe. Zo wordt de geselecteerde partij bijvoorbeeld als volledige V-partij geopend of verschijnt een vervolgkeuze voor deelpartijen of unieke dragers.

Wanneer meerdere voorraden beschikbaar zijn, kunt u de resultaten op voorraad beperken. Welke aanvullende filters beschikbaar zijn, stelt u in met `AvailableStockItemFilterOptions`. Hiermee kunnen filters voor voorraad, verpakking, leverancier, zendingnummer, lege partijen, steellengte, productgroep en partijmarkeringen worden aangeboden.

De volgende policies bepalen welke partijen en locaties beschikbaar zijn en hoe de bijbehorende informatie wordt weergegeven:

- `AvailableStocks`: bepaalt in welke voorraden de app naar partijen zoekt.
- `DisplayedStockItemIdentifier`: toont de laatste vier cijfers van het `StockItemNr` of `VStockItemNr`.
- `LocationDisplayType`: toont de locatiecode of locatieomschrijving.
- `StockItemQuantityDisplay`: toont de partijhoeveelheid als colli × inhoud + restant, of als totaal aantal stelen.
- `ToPickQuantityDisplay`: toont het te picken aantal als colli × inhoud + restant, of als totaal aantal stelen.

---

## Stap 3A – Workflow: locatie eerst

Scan de barcode van de locatie waarop u partijen wilt plaatsen. De app controleert de locatie en opent het locatie-overzicht. Scan daarna achter elkaar de partijen die u aan deze locatie wilt koppelen. Scan een volgende locatie om het proces voor die locatie te herhalen.

Wanneer `CheckPredefinedLocationCodes` is ingeschakeld, accepteert de app alleen locaties die in de tabel **Partij locaties** zijn geregistreerd. Via `AdditionalActions` kan na het koppelen automatisch een aanvullende actie worden uitgevoerd; momenteel is hiervoor `MarkAsReceived` beschikbaar, waarmee de partij direct wordt binnengemeld.

> **Let op:** voor `MarkAsReceived` is een geldige licentie voor **Entry Control** (`Logistics.Receiving.EntryControl`) vereist.

Het locatie-overzicht sluit aan op de actieve slottingstrategie en toont daarom partijen, V-partijen, deelpartijen of unieke dragers. Alleen gegevens uit de beschikbare voorraden worden getoond. Bij V-partijen worden de aantallen van de onderliggende partijen samengevoegd; deelpartijen en unieke dragers van dezelfde partij kunnen op partijnummer worden gegroepeerd.

### Een nieuwe locatie aanmaken

Wanneer `AllowCreateLocation` is ingeschakeld, kunt u een nog niet bestaande locatie als volgt toevoegen:

| Stap | Uitleg |
| --- | --- |
| **1** | Open het hamburger-menu op het Slotting-scanscherm. |
| **2** | Kies **Locatie aanmaken**. |
| **3** | Vul de locatiecode in of scan de locatiebarcode. |
| **4** | Vul de locatienaam of omschrijving in. |
| **5** | Sla de locatie op. |

De locatiecode en locatienaam zijn verplicht. De locatiecode wordt in hoofdletters opgeslagen in de tabel **Partij Locatie** (`PARTIJLOC`). Wanneer de code al bestaat, maakt de app geen duplicaat aan en verschijnt een foutmelding. Na succesvol opslaan is de locatie direct beschikbaar voor de locatiecontrole.

### Partijen bekijken of een locatie leegmaken

Na het scannen van een locatie toont de app de voorraadobjecten die eraan zijn gekoppeld. Wanneer `ClearLocationIsAllowed` is ingeschakeld, is in het hamburger-menu de actie beschikbaar om de locatie leeg te maken. Hiermee worden gekoppelde partijen, deelpartijen en unieke dragers van de locatie verwijderd.

Deze actie is alleen beschikbaar nadat een locatie is gescand. Wanneer u met een partijscan bent begonnen, wordt de knop niet getoond.

---

## Stap 3B – Workflow: partij eerst

Scan een partijbarcode of selecteer een partij via het zoekscherm. Controleer het partij-detail en scan daarna de locatiebarcode om de koppeling te maken. Herhaal dit voor alle partijen die een locatie moeten krijgen.

---

## Na een geslaagde koppeling

De app toont een bevestiging zodra de koppeling is voltooid. Op het partij-detail wordt de nieuwe locatie direct bijgewerkt. Werkt u vanuit een locatie-overzicht, dan wordt het gekoppelde voorraadobject aan de lijst toegevoegd en geselecteerd. Wanneer `ReturnToHomeAfterLinking` is ingeschakeld, gaat de app na iedere geslaagde koppeling terug naar het startscherm.

---

## Werkwijze per slottingstrategie

Met `SlottingStrategy` bepaalt u op welk type voorraadobject beide scanworkflows werken:

- `StockItem`: standaard slotting op partijbasis.
- `VstockItem`: zet de partijen van de betreffende V-partij die binnen de beschikbare voorraden vallen gezamenlijk op locatie.
- `PartialStockItem`: verdeelt een partij via deelpartijen over een of meer locaties.
- `UniqueCarrier`: voert slotting uit op basis van unieke dragers.

Bij `VstockItem` kan één handeling dus meerdere onderliggende partijen wijzigen.

### Deelpartijen aanmaken of verplaatsen

Bij `PartialStockItem` toont de app na het identificeren van een partij de bestaande deelpartijen. Kies een bestaande deelpartij om deze te verplaatsen, kies **Nieuwe deelpartij** om een nieuw deel op locatie te zetten of annuleer om terug te gaan.

Scan vervolgens de doellocatie en voer het aantal in. Bij een nieuwe deelpartij is het voorgestelde maximum gelijk aan het nog niet verdeelde aantal van de hoofdpartij. Bij een bestaande deelpartij is het maximum gelijk aan het aantal van die deelpartij.

- Voert u het volledige aantal van een bestaande deelpartij in, dan wordt deze volledig verplaatst.
- Voert u een lager aantal in, dan wordt de deelpartij gesplitst en verhuist alleen het opgegeven deel.
- Bestaat op de doellocatie al een deelpartij van dezelfde hoofdpartij, dan wordt het opgegeven aantal daaraan toegevoegd.
- Een aantal van nul, een negatief aantal of een aantal boven het beschikbare maximum wordt geweigerd.
- Is de doellocatie gelijk aan de huidige locatie, dan meldt de app dat de deelpartij daar al staat.

### Unieke dragers op locatie zetten

Bij `UniqueCarrier` kunt u de barcode of QR-code van de drager direct scannen. Zoekt of scant u eerst de bijbehorende partij, dan kiest u de juiste drager uit de gevonden dragers. Wanneer er maar één drager beschikbaar is, selecteert de app deze automatisch.

Scan daarna de locatie. U hoeft geen hoeveelheid in te voeren: de hoeveelheid van de unieke drager wordt gebruikt. Als nog geen logistieke deelpartij aan de drager is gekoppeld, maakt het systeem deze tijdens het op locatie zetten aan. Een drager met de status onbekend of onderweg kan niet op locatie worden gezet; de app toont dan een foutmelding.

---

## Stap 4 – Partijlocaties in de Backoffice controleren (optioneel)

In de Backoffice kunt u de huidige en historische locatie van een partij bekijken.

| Stap | Uitleg |
| --- | --- |
| **1** | Open het voorraadscherm via de navigator. |
| **2** | Klik met de rechtermuisknop op een partij in de relevante voorraad. |
| **3** | Kies **Partijlog**. |
| **4** | Bekijk de wijzigingen op de partij. |
| **5** | Gebruik de kolommen **Loc. van** en **Loc. naar** om locatieveranderingen te controleren. Zijn deze kolommen niet zichtbaar, klik dan met de rechtermuisknop op de kolomnamen, schakel `LOCATIEVAN` en `LOCATIENAAR` in en bevestig met **OK**. |

---

## Stap 5 – Prijs- en voorraadlabels printen (optioneel)

In het partij-detail kunt u prijs- en voorraadlabels printen. Open het printdialoog, voer per labelsoort het gewenste aantal in en kies **Print**. Wanneer beide aantallen op nul staan, wordt geen printopdracht verstuurd.

Voor een normale partij wordt het label op basis van het partijnummer gemaakt. Bij een deelpartij of unieke drager gebruikt de app het partijnummer van de bijbehorende hoofdpartij. Bij een V-partij wordt een onderliggende partij uit de V-partij gebruikt.

De policy-groep `PrintSettings` bevat hiervoor:

- `AvailablePrinters`: maakt met de waarden `Price` en/of `Stock` prijs- en voorraadlabels beschikbaar.
- `PriceLabelPrinter` en `StockLabelPrinter`: stellen de printers in.
- `PriceLabelLayout` en `StockLabelLayout`: stellen de labeltemplates in.
- `PriceLabelPrinterDescription` en `StockLabelPrinterDescription`: bepalen de omschrijvingen in de app.

Zonder ingestelde printer is printen niet mogelijk. Voor deze functionaliteit moet ook de **JobAgent** actief zijn. Raadpleeg zo nodig de [handleiding JobAgent](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Windows/Job-Agent/Handleiding%20Job-Agent%20-%20NL.md).

---

## Waar vindt u de Slotting-policies?

De policies configureert u via **Policy Beheer** in het constantenscherm van de Backoffice.

| Stap | Uitleg |
| --- | --- |
| **1** | Open het constantenscherm via de navigator. |
| **2** | Navigeer naar **Systeem → Users → Policy Beheer**. |
| **3** | Selecteer of maak een policy aan en navigeer naar **Apps → Inventory → Slotting**. |

Raadpleeg voor algemeen policybeheer de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

---

## Instelling buiten Policy Beheer

### `LocatieVeldLengte`

Deze systeeminstelling bepaalt de maximale lengte waarmee een gescande waarde als locatiebarcode wordt herkend. De standaardwaarde is `6`; een barcode met zeven tekens wordt dan niet als locatie herkend. Wanneer een afwijkende lengte is ingesteld, moet een locatiecode binnen die lengte minimaal één niet-numeriek teken bevatten.

Na een wijziging moeten tabellen die deze veldstructuur gebruiken mogelijk worden gepurged, zodat opslag en verwerking bij de nieuwe lengte aansluiten.

> **Let op:** pas deze instelling alleen in overleg met Florisoft of uw systeembeheerder aan. Een wijziging kan gevolgen hebben voor alle processen waarin locatieherkenning wordt gebruikt.

---

## Autorisaties

Zonder de juiste autorisatie kan een gebruiker Slotting niet openen of gebruiken.

| Stap | Uitleg |
| --- | --- |
| **1** | Open het constantenscherm via de navigator. |
| **2** | Navigeer naar **Systeem → Users → Systeem gebruikers**. |
| **3** | Open de gebruiker en kies **Autorisatie**. |
| **4** | Druk op **F3** om het zoekvenster te openen. |
| **5** | Zoek op code **424** en selecteer **Navigator palmtop/Locatie_pda_424**. Kies **Alle handelingen toegestaan** en bevestig met **OK**. |
| **6** | Herhaal dit voor andere gebruikers of gebruik **Kopie autorisatie**. |
