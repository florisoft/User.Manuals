![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – TrolleyLoading Policies (Packing App)

Deze handleiding beschrijft alle policies binnen de **TrolleyLoading-functionaliteit** van de Packing App.

Met deze instellingen bepaalt u:

- Welke orders zichtbaar zijn
- Hoe karren worden aangemaakt en genummerd
- Welke barcodes worden herkend
- Hoe producten op karren worden geplaatst
- Welke controles het systeem uitvoert

De uitleg is geschreven vanuit gebruikersperspectief:  
**Wat verandert er in de app wanneer u deze policy instelt?**

---

## Waar vindt u de TrolleyLoading-policies?

U configureert deze via:

**Backoffice → Systeem → Users → Policy Beheer → Apps → Logistics → Packing → TrolleyLoading**

---

# `BarcodeDecodeOptions (Barcode-instellingen)`

Binnen TrolleyLoading zijn er drie aparte instellingen voor barcodeherkenning.  
Hoewel ze technisch hetzelfde werken, gelden ze ieder voor een ander onderdeel van de app.

Met deze policies bepaalt u **welke barcodes in dat specifieke scherm worden herkend en verwerkt**.

> ⚠️ Wanneer een barcodetype niet is geselecteerd, wordt deze in dat onderdeel van de app niet herkend.

---

## `OrderOverview_ValidBarcodeDecodeOptions`

Bepaalt welke barcodes worden herkend in het **orderoverzicht**.

Hiermee bepaalt u welke barcodes gebruikt mogen worden om:

- Een order te openen  
- Een klant te filteren  

Voorbeeld: een barcode waarin het debiteurnummer of ordernummer is verwerkt.

---

## `TrolleyHandling_ValidBarcodeDecodeOptions`

Bepaalt welke barcodes worden herkend bij **kar-gerelateerde handelingen**.

Hiermee stelt u in welke barcode als geldige **karbarcode** wordt gezien bij:

- Het activeren van een bestaande kar  
- Het scannen van een karlabel  
- Het openen van een kar via scan  

---

## `ProductHandling_ValidBarcodeDecodeOptions`

Bepaalt welke barcodes worden herkend bij het **opbouwen van producten op een kar**.

Dit betreft barcodes voor:

- Orderitems  
- Dozen 

Deze instelling bepaalt dus welke productbarcodes verwerkt mogen worden tijdens het scannen.

---

# `OrderOverview`

Deze policies bepalen welke orders zichtbaar zijn in het **orderoverzicht** en hoe gebruikers hiermee werken.

## `DateFilterType`

Met deze policy bepaalt u welke datum wordt gebruikt om het orderoverzicht te filteren.

De gekozen datumsoort is leidend voor welke orders in de app zichtbaar zijn.  
Dit is belangrijk wanneer uw logistieke proces werkt op basis van bijvoorbeeld vertrek- of levermoment.

**Beschikbare keuzes:**

- **Orderdatum**  
- **Vertrekdatum**  
- **Besteldatum**  
- **Leverdatum**  

> ⚠️ Let op: Deze instelling werkt samen met `FilterDateFromDays` en `FilterDateToDays`.  
Samen bepalen deze policies welke orders daadwerkelijk in het overzicht verschijnen.

## `FilterDateFromDays`

Bepaalt hoeveel dagen terug vanaf vandaag worden meegenomen in het overzicht.

- Niet ingesteld → alle orders worden getoond  
- 0 → alleen vandaag  
- 1 → vandaag en gisteren  

Hiermee beperkt u de lijst tot relevante orders.

## `FilterDateToDays`

Bepaalt hoeveel dagen vooruit worden meegenomen.

- Niet ingesteld → alle toekomstige orders  
- 0 → alleen vandaag  
- 1 → vandaag en morgen  

Samen met `FilterDateFromDays` bepaalt dit het datumbereik.

## `AllowOrdersWithEmptyDates`
Wanneer deze policy actief is, worden ook orders zonder ingevulde datum getoond.

Dit kan handig zijn wanneer in uw proces niet altijd alle datumvelden worden gevuld, maar orders toch opgebouwd moeten worden.


## `EnableFilterOnSelectedDate`

Maakt het mogelijk dat gebruikers via de kalender een specifieke datum kiezen.

De app toont dan uitsluitend orders van die geselecteerde dag.

## `FilterOptions`

Met deze policy bepaalt u welke extra controles worden toegepast op het orderoverzicht. Hiermee kunt u sturen welke orders wél en niet zichtbaar zijn voor de gebruiker.

U kunt één of meerdere opties combineren.

**Beschikbare opties:**

- **OrderHasOrderlines**  
  Alleen orders met geldige orderitems worden getoond.  
  Orders zonder orderitems blijven buiten het overzicht.

- **IsCustomerTrolleyLoading**  
  Toont uitsluitend orders van klanten waarbij het vinkje **‘Is karopbouwklant’** actief is.  

- **IsDateInValidRange**  
  Toont alleen orders die binnen het ingestelde datumbereik vallen  
  (op basis van `DateFilterType`, `FilterDateFromDays` en `FilterDateToDays`).

- **IsCustomerNotStockCustomer**  
  Verbergt orders van klanten die zijn ingesteld als **voorraaddebiteur**.  
  Dit voorkomt dat interne voorraadklanten in TrolleyLoading verwerkt worden.

- **HasOrderNumber**  
  Orders zonder ordernummer worden niet getoond.  


> 💡 Advies: Stel deze filters zo in dat medewerkers alleen orders zien die daadwerkelijk opgebouwd mogen worden. Dit voorkomt verwarring en verkleint de kans op foutieve verwerking.


## `SortingOption`

Bepaalt hoe orders standaard worden gesorteerd in het orderoverzicht.

**Opties:**

- **Geen sortering** – Standaard systeemvolgorde.  
- **Debiteurnummer** – Sorteert op klantnummer.  
- **Debiteurnaam** – Sorteert alfabetisch op klantnaam.

Kies een sortering die aansluit bij uw werkproces.

## `FilterOrdersByScanAction`

Wanneer deze policy actief is, kan een gebruiker het orderoverzicht filteren door een barcode te scannen. De gescande waarde (bijvoorbeeld een barcode waarin het **debiteurnummer** is verwerkt) wordt automatisch in het zoekveld geplaatst.  De lijst wordt direct gefilterd op basis van deze waarde.

Dit versnelt het openen van de juiste klant of order.

## `OrderOverview_ValidBarcodeDecodeOptions`

Zie hoofdstuk **BarcodeDecodeOptions (Barcode-instellingen)** voor uitleg.


## `FilterByDefaultTrolleyLocations`

Toont alleen orders van klanten waarvan de standaard karlocatie (`DEFKARLOC`) overeenkomt met de ingestelde lijst.

Dit is vooral nuttig wanneer gewerkt wordt met vaste laad- of verzamelzones.

---

# `TrolleyHandling`

Deze policies bepalen hoe karren worden aangemaakt, geprint, afgerond en beheerd.

---

## `NewTrolley - Karlabel printerinstellingen`

### `TrolleyPrinterName`

Hier stelt u in welke printer gebruikt wordt voor het afdrukken van nieuwe karlabels.

### `TrolleyPrintLayout`

Bepaalt welke lay-out wordt gebruikt voor het karlabel.

### `IsActive`

Schakelt het automatisch printen van een nieuw karlabel in of uit.

Wanneer uitgeschakeld, wordt geen label geprint bij het aanmaken van een kar.

---

### `PrintUseOriginalHub`

Bepaalt welke hubcode op het karlabel wordt afgedrukt.

- **Ingeschakeld** → De hubcode van de actuele order wordt geprint.  
- **Uitgeschakeld** → De hubcode van de ingestelde hub-fustdebiteur wordt gebruikt.

Gebruik deze instelling wanneer de hubinformatie op het label moet overeenkomen met de order.

---

## `TrolleyBarcodeMaxLength`

Bepaalt de maximaal toegestane lengte bij het invoeren van een karbarcode. Wordt een langere barcode ingevoerd, dan wordt deze geweigerd.

Deze instelling is vooral handig wanneer u werkt met **eigen karbarcodes** met een vaste lengte.  
Zo voorkomt u invoerfouten of het scannen van ongeldige barcodes.

## `CreateNewTrolleyAndOpenDetails`
Bepaalt wat er gebeurt na het aanmaken van een nieuwe kar.

- **Ingeschakeld** → De nieuwe kar wordt direct geopend in het kardetail.  
- **Uitgeschakeld** → De gebruiker blijft in het karoverzicht.

## `AdditionalActions`
Hiermee bepaalt u of er direct na het aanmaken van een nieuwe kar automatisch een extra actie wordt uitgevoerd.

**Beschikbare optie:**

- **Slotplaat registratie**  
  De kar wordt op de achtergrond automatisch als slotplaat geregistreerd.  

## `RequireCustomTrolleyBarcode`

Standaard wordt gevraagd om een karbarcode in te voeren.

Met deze policy kunt u:
- Deze invoer verplicht maken  
- Uitschakelen  
- Of per fustcode instellen  

## `TrolleySequenceStrategies`
Met deze policy bepaalt u **hoe nieuwe karnummers automatisch worden gegenereerd**.

U kunt hierbij een aparte strategie kiezen voor:
- **Normale orders**
- **Hub-orders**

Zo kunt u de nummering afstemmen op verschillende logistieke stromen.

**Beschikbare opties:**

- **Standaard**  
  - Normale orders → *Per klant per order*  
  - Hub-orders → *Per hub per factuur*

- **Kar nummer per klant per dag**  
- **Kar nummer per klant per order**  
- **Kar nummer per hub**  
- **Kar nummer per hub per dag**  
- **Kar nummer per hub per factuur**  
- **Kar nummer per hub per orderdatum**

Kies een strategie die aansluit bij uw interne nummerstructuur en administratieve verwerking.

## `AllowedWorkingDays`

Hiermee bepaalt u op welke werkdagen karren aangemaakt mogen worden.

Wordt een kar aangemaakt op een niet-toegestane dag?  
Dan wordt deze automatisch geregistreerd op de eerstvolgende geldige werkdag.

## `DefaultDepartmentId`

Stelt een standaard afdeling in waarop de kar wordt geregistreerd.

## `DefaultTrolleyId`

Voegt automatisch een standaardnummer toe aan nieuwe karren.

## `RegisterTrolleyOnInvoice`

Bepaalt of de kar ook op de factuur moet worden geregistreerd specifiek voor hubs

---

# `CompleteTrolley `

Deze instellingen bepalen wat er gebeurt wanneer een kar wordt afgerond.


### CompleteTrolleyLabel - Printerinstellingen

- `CompleteTrolleyPrinterName`  
- `CompleteTrolleyPrintLayout`  
- `IsActive`  

Hiermee bepaalt u of en hoe een label wordt geprint bij het afronden van een kar.

---

## `ValidPackagingCodesForExtraTrolleyElements`

Hier bepaalt u welke extra elementen (bijvoorbeeld legborden) tijdens het afronden of bewerken van een kar kunnen worden toegevoegd.

## `RemoveEmptyTrolley`

Wanneer actief worden lege karren automatisch verwijderd.

Dit houdt het overzicht schoon.

## `TrolleySortingStrategy`


Bepaalt hoe karren worden gesorteerd in het karoverzicht.

**Opties:**

- **Geen sortering** – Karren worden getoond op volgorde van aanmaken.  
- **Sorteren op nummer** – Karren worden gesorteerd op karnummer.

Kies de optie die het beste aansluit bij uw werkwijze op de werkvloer.

## `TrolleyHandling_ValidBarcodeDecodeOptions`

Zie hoofdstuk **BarcodeDecodeOptions (Barcode-instellingen)** voor uitleg.


## `RegisterExtraElementsOnInvoice`

Zorgt ervoor dat extra elementen ook op de factuur worden geregistreerd.

---

# `ProductHandling`

Deze policies bepalen hoe producten op een kar worden geplaatst.

---

## `PutOnTrolley_AllowReverseLoading`

Maakt **omgekeerd opbouwen** mogelijk.

De gebruiker scant eerst een product (of doos) en daarna de kar ter bevestiging. Het product wordt vervolgens aan die kar gekoppeld.

Dit is vooral handig in situaties waarbij verschillende orderitems via bijvoorbeeld een lopende band worden aangeleverd en direct verdeeld moeten worden over meerdere karren.

## `PutOnTrolley_AllowedPackagingCodesForTrolleyItems`

Hiermee mag de fustcode van een orderitem aangepast worden naar één van de ingestelde codes.

Dit werkt in combinatie met het geavanceerde productdetailscherm.

## `PutOnTrolley_EnabledAdditionalActions`

Bepaalt welke extra handelingen automatisch worden uitgevoerd wanneer een product of doos op een kar wordt geplaatst.

**Beschikbare opties:**

- Box binnenmelden  
- Partij binnen status aanpassen  
- Eindcontrole barcode markeren als verwerkt  
- Registreer barcode als verwerkt voor trolleyloading  
- Eindcontrole verwerken  

## `PutOnTrolley_ShowAdvancedProductDetails`

Toont een uitgebreid productdetailscherm **na het scannen van een orderitem of bij handmatige verwerking**.

In dit scherm kan de gebruiker gegevens aanpassen (bijvoorbeeld fustcode of aantallen).  
Wijzigingen worden direct doorgevoerd op het orderitem.

Gebruik deze instelling wanneer extra controle of aanpassing tijdens het opbouwen gewenst is.

## `PutOnTrolley_ShowProductDetailsOnScan`

Opent automatisch het productdetailscherm na het scannen van een orderitem.

## `PutOnTrolley_ShowSearchBox`

Toont een zoekveld waarmee gebruikers kunnen filteren op nog te verwerken producten.

---

## `AvailableProductDetails`

Hier bepaalt u welke productinformatie zichtbaar is in de app.

De volgorde waarin de velden in deze policy zijn ingesteld, bepaalt ook de volgorde waarin ze op het scherm worden weergegeven.

Wanneer een product in het scherm wordt aangeklikt, wordt het detail­scherm geopend waarin deze productinformatie zichtbaar is.

## `ToProcessQuantityMode`
Bepaalt hoe het aantal te verwerken stelen wordt berekend en opgehoogd tijdens het scannen.

**Beschikbare opties:**

- **Verwerk het aantal uit de barcode**  
  Het aantal wordt overgenomen uit de gescande barcode.

- **Verwerk het aantal per kolli**  
  Elke scan telt het ingestelde aantal per kolli op.

Kies de optie die aansluit bij de manier waarop uw barcodes zijn opgebouwd.


## `ProductHandling_ValidBarcodeDecodeOptions`

Zie hoofdstuk **BarcodeDecodeOptions (Barcode-instellingen)** voor uitleg.

## `EnabledOrderLineValidationOptions`
Hiermee bepaalt u welke controles worden uitgevoerd op een orderitem voordat het op een kar geplaatst mag worden.

De gekozen validaties:

- **Filteren het overzicht ‘Te verwerken’** (alleen geldige orderitems worden getoond)  
- **Controleren de ingestelde waarde bij het scannen of verwerken**

**Voorbeelden van validaties:**

- `IsOrderLocked`  
- `IsStockValid`  
- `IsDepartmentValid`  

Wanneer een orderitem niet voldoet aan één van de ingestelde controles, kan het niet op de kar worden geplaatst.

# Overige policies

## `ValidTrolleyPackagingCodes`

Bepaalt welke fustcodes gebruikt mogen worden bij het registreren van een nieuwe kar.

## `ExcludedOrderNumbers`

Orders met deze ordernummers worden niet getoond in het orderoverzicht en kunnen niet verwerkt worden.

## `ExcludedCustomerCodes`

Orders van deze klanten worden niet getoond in het orderoverzicht.

## `FilterStockCodes`

Filtert het orderitemoverzicht op ingestelde voorraadcodes.

Items buiten deze lijst:
- Worden niet getoond  
- Kunnen alleen niet gescand worden wanneer `IsStockValid` actief is  


## `FilterDepartmentCodes`

Filtert het orderitemoverzicht op ingestelde afdelingscodes.

Items buiten deze lijst:
- Worden niet getoond  
- Kunnen alleen niet gescand worden wanneer `IsDepartmentValid` actief is  


## `EnableHubGrouping`

Wanneer actief worden orders gegroepeerd per hub in het orderoverzicht.


## `ReturnOnLockplateRegistration`

Bij het aanmaken van een kar controleert het systeem of er een uitgegeven slotplaat bestaat.

Indien aanwezig wordt deze automatisch geregistreerd als teruggekeerd, inclusief datum en tijd.

---
