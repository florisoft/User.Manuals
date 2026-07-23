![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Inventory Consolidation (Consolidation App)

Deze handleiding beschrijft hoe u de Consolidation-functionaliteit van de Inventory App inzet en configureert. Consolidation is bedoeld als praktische workflow voor magazijnmedewerkers en combineert taken uit zowel Slotting als Stock Counting zodat voorraad en locaties direct en efficiënt bijgewerkt worden.

---

## Licentievereisten

Consolidation gebruikt functionaliteit uit zowel `Inventory.Slotting` als `Inventory.StockCounting`. Om de volledige usecase te gebruiken heeft u minimaal één geldige licentie voor beide modules nodig. Zonder de juiste licenties zijn onderdelen van de workflow (zoals partijen koppelen, voorraadupdates of labelprinting) mogelijk niet beschikbaar. Neem bij vragen over licenties contact op met uw accountmanager of systeembeheer.

---

## Wat is Consolidation?

Consolidation is de eenvoudige handeling waarmee een medewerker partijen aan fysieke magazijnlocaties koppelt. In één vloeiende workflow kunnen volgende stappen plaatsvinden: de doel-locatie scannen, één of meerdere partijen selecteren en koppelen, en — indien nodig — direct voorraad corrigeren, een kwaliteitsmelding registreren of labels printen. Dit maakt Consolidation bijzonder geschikt voor ontvangst- en herplaatsingsprocessen waarbij voorraad meteen op locatie wordt gezet en gecontroleerd.

---

## Waarom een gecombineerde workflow?

Omdat Slotting en Stock Counting grotendeels dezelfde handelingen delen (locatie identificeren, partijselectie, koppeling en voorraadactie), is Consolidation ontworpen als een gecombineerde workflow. Door deze processen te combineren bespaart u tijd en beperkt u fouten:

- Minder looproutes: één scan-ronde volstaat vaak voor meerdere taken.
- Kortere doorlooptijd: acties worden in één keer uitgevoerd, in plaats van in meerdere losse stappen.
- Directe correcties: voorraadwijzigingen en kwaliteitsmeldingen zijn meteen zichtbaar in het systeem.

Praktisch voorbeeld: bij geconsolideerde ontvangst plaatsen medewerkers partijen direct op de juiste locatie, controleren aantallen en kwaliteit en printen labels zonder later nog een aparte telronde uit te voeren.

---

## Stappen in de workflow (kort overzicht)

1) Locatie identificeren — scan de barcode van de doel-locatie en controleer of de locatie geldig is.

2) Partijen selecteren — kies de beschikbare partijen of scan partijnummers.

3) Koppelen en bevestigen — bevestig de koppeling, voer waar nodig voorraadcorrecties of kwaliteitsmeldingen uit en print labels.

De volgende secties geven per stap aan welke instellingen en policies van belang zijn.

---

## Stap 1 — Locatie identificeren

Start altijd met het scannen van de doel-locatie. De app controleert of de locatie bestaat en of deze gebruikt mag worden.

Belangrijke instellingen:

- `CheckPredefinedLocationCodes`
- `ClearLocationIsAllowed`
- `LocationDisplayType`

Wanneer de controle op vooraf gedefinieerde locaties (zie boven) is ingeschakeld controleert de app of de gescande locatie voorkomt in de centrale Partij Locatie-tabel; alleen geregistreerde locaties zijn dan bruikbaar. Dit is aanbevolen voor bedrijven met vaste locaties omdat het invoerfouten voorkomt en consistentie verhoogt. Als de reset-optie is toegestaan verschijnt in het menu een actie om een locatie in één keer te resetten (leegmaken); deze actie is zichtbaar nadat een locatie is gescand. De weergave-instelling bepaalt of de app de locatiecode of de locatieomschrijving toont — kies wat uw gebruikers het meest helpt bij herkenning.

Na het scannen komt u op het locatie-overzicht met de lijst van gekoppelde partijen.

---

## Stap 2 — Partijen identificeren en tonen

De app toont partijen op basis van de ingestelde strategie en filters. Belangrijke instellingen:

- `ConsolidationStrategy`
- `AvailableStocks`
- `StockItemQuantityDisplay`

Filters en sortering gebruikt u om snel relevante partijen te vinden (bijv. alleen partijen met voorraad of alleen actieve partijen). Let op bij de keuze van ConsolidationStrategy: vergelijkbaar met Stock Counting kunt u werken op partijbasis of consolideren op VPartijNr; bij consolideren worden geselecteerde partijen intern samengevoegd en volgen verwerkingsregels zoals verdeling van mutaties of het vaststellen welke partij gebruikt wordt voor printen de ingestelde volgorde van de beschikbare voorraden. De instelling voor beschikbare voorraden bepaalt welke bronnen zichtbaar en bewerkbaar zijn in de app, en de hoeveelheidweergave-instelling regelt hetzelfde weergavegedrag als in Stock Counting (bijv. colli × inhoud + restant of stelen).

---

## Stap 3 — Partij en locatie koppelen

Selecteer één of meerdere partijen en bevestig de koppeling met de gescande locatie. Tijdens deze stap kunnen controles plaatsvinden:

- `PickCheckStocks`: bepaal of er vooraf controles op voorraadregels of businessregels moeten plaatsvinden.

Bij succesvolle koppeling wordt de locatie bijgewerkt en verschijnt een bevestiging; bij fouten toont de app een melding met de reden.

---

## Stap 4 — Voorraadcontrole en -correctie (optioneel)

Op het partij-detail kunt u direct aantallen aanpassen en een mutatie doorvoeren.

Wanneer er open pickorders aan de partij zijn gekoppeld, telt Consolidation de nog te picken hoeveelheid standaard mee in het weergegeven voorraadtotaal.

Staat bij de gekoppelde debiteur in de relatie-instellingen, onderdeel **Verdelen**, de optie **Pickorders niet meetellen in voorraad opname** (`PICKNOOPN`) aan, dan worden open pickorders van deze debiteur niet in het weergegeven voorraadtotaal opgenomen. Hierdoor kan het getoonde totaal lager zijn dan bij een debiteur waarvoor deze instelling uitstaat.

Relevante instellingen:

- `StockMutationSettings_StockMutationAsCounting`: bepaalt of mutaties als telling worden verwerkt.
- `StockMutationSettings_StockCountingCustomerCode`: gebruik klantcodes voor specifieke verwerkingen (bijv. 'WASTE').
- `StockMutationSettings_StockCountingCustomerCodePerStock`: laat per voorraad een andere klantcode gebruiken.
- `StockMutationSettings_StockCountingXorder`: koppel mutaties aan interne orders indien nodig.
- `StockMutationSettings_StockQuantityMutAlsoStoredStockItem`: synchroniseer wijzigingen met `StoredStockItem` waar van toepassing.


Praktisch: voer de nieuwe hoeveelheid in, vul indien nodig een reden in en bevestig. Als de mutatie-instellingen geactiveerd zijn, worden afwijkingen die tijdens Consolidation worden ingevoerd direct als mutaties verwerkt (in plaats van als tijdelijke tellingen). Dit kan leiden tot directe boekingen; de ingestelde klantcode bepaalt op welke debiteur afwijkingen worden geboekt, tenzij een voorraad-specifieke klantcode is ingesteld. Optioneel kunnen automatische interne xorders (pickorders) aangemaakt worden voor verdere verwerking. Als uw omgeving werkt met opgeslagen partijen, worden ook die gesynchroniseerd wanneer de optie actief is. Let op: deze instellingen kunnen financiële gevolgen hebben — test daarom altijd eerst in een testomgeving en overleg met uw finance/implementatie-team.

---

## Stap 5 — Kwaliteitsissues registreren (optioneel)

Vindt u bij controle beschadigingen of afwijkingen, registreer dit als kwaliteitsissue:

- `QualityIssue_Authorization`: stel wie issues mag registreren.
- `QualityIssue_CustomerCode`: koppel issues aan een klantcode indien nodig.
- `QualityIssue_Reasons`: gebruik de vooringestelde redenlijst.

Open het quality-issue dialoog, kies een reden, voer een hoeveelheid in en bewaar de melding.


Zorg dat alleen bevoegde medewerkers de autorisatie hebben om issues te registreren; als de autorisatie uit staat kunnen gebruikers geen kwaliteitsissues registreren via de app. Als er geen speciale klantcode voor quality-issues is ingesteld, wordt de standaard klantcode voor voorraadmutaties gebruikt — vul aparte codes in wanneer u kwaliteitsproblemen apart wilt boeken (bijv. 'WASTE'). De lijst met beschikbare redenen wordt centraal beheerd en is verplicht bij registratie.

---

## Stap 6 — Printen van prijs- en voorraadlabels

Vanuit het partij-detail kunt u prijs- of voorraadlabels printen. Instellingen:

- `PrintSettings_AvailablePrinters`: beschikbare printers.
- `PrintSettings_PriceLabelLayout` / `PrintSettings_StockLabelLayout`: kies de templates.
- `PrintSettings_PriceLabelPrinter` / `PrintSettings_StockLabelPrinter`: standaardprinters.


Gebruikersstappen: open het print-dialoog, kies aantallen en printer en start de printopdracht.

Zonder geselecteerde printers is printen niet mogelijk. U kunt instellen of alleen prijslabels, voorraadlabels of beide opties zichtbaar zijn in de app. Voor het correct functioneren van printers en afdrukken is de **JobAgent** vereist; als deze niet actief is verschijnen printers mogelijk niet en werkt de printstroom niet. Test altijd uw printer-templates om te zorgen dat labels correct uitlijnen op uw fysieke etikettering.

---

## Waar vindt u de Consolidation-policies?

De policies voor Consolidation configureert u via het **Policy Beheer** in het constantenscherm van de Backoffice. Volg onderstaande stappen om de Consolidation-policies te vinden:

| Stap  | Uitleg |
| ----- | ------ |
| **1** | Open het **constantenscherm** in de Backoffice via de navigator. |
| **2** | Navigeer naar: **Systeem → Users → Policy Beheer**. |
| **3** | Selecteer of maak een policy aan, en navigeer vervolgens naar: **Apps → Inventory → Consolidation**. |

Wilt u meer weten over het instellen en beheren van policies in het algemeen? Raadpleeg dan de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handlelining%20Policy%20Management%20NL.md).

