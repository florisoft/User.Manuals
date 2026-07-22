![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – TrolleyLoading

## Wat is TrolleyLoading?

TrolleyLoading ondersteunt het volledige karopbouwproces: een order selecteren, een kar aanmaken of openen, producten en dozen registreren en de kar gereedmelden voor transport.

De app helpt magazijnmedewerkers om steeds met de juiste order en kar te werken. De voortgang is direct zichtbaar en iedere scan wordt gecontroleerd voordat een product of verpakking op de kar wordt geregistreerd.

Welke orders, productgegevens, filters, barcodes en karacties beschikbaar zijn, hangt af van de ingestelde policies.

## Voorwaarden

Voor het gebruik van TrolleyLoading zijn minimaal nodig:

- toegang tot de usecase `Logistics.Packing.TrolleyLoading`;
- een geldige Florisoft-gebruiker en verkoperscode;
- minimaal één toegestane karfustcode in `ValidTrolleyPackagingCodes`;
- de juiste barcodedecoders voor de gebruikte order-, product-, doos- en karstickers;
- een scanner wanneer de scanflows worden gebruikt.

Voor het automatisch afdrukken van karlabels en karklaarlijsten moeten ook een printer en afdruklay-out zijn ingesteld. Adreslabels en uitzonderingsregistratie vereisen daarnaast de bijbehorende add-on en licentie.

## Werkwijze

### Stap 1: een order zoeken of scannen

Na het invoeren van de verkoperscode opent het orderoverzicht. Per order ziet u de klant of hub, het ordernummer en de voortgang van de karren en colli. Als `EnableVolumeIndication` actief is, toont het overzicht ook het opgebouwde, totale en resterende volume.

U kunt een order op verschillende manieren openen:

1. selecteer de order in de lijst;
2. zoek op klant- of hubcode, naam of sleutel;
3. kies een datum in de kalender;
4. scan een ondersteunde order- of productbarcode;
5. scan de barcode van een bestaande kar.

Een scan van een bestaande kar opent automatisch de bijbehorende order en activeert de kar. Wanneer geen order of kar wordt gevonden, toont de app een melding en blijft de huidige context ongewijzigd.

Trek de lijst omlaag om orders en voortgang te verversen. Actieve filters en de ingestelde sortering blijven daarbij behouden.

De lijst wordt vooraf beperkt door de policies. Daardoor kunnen bijvoorbeeld alleen karopbouwklanten, bepaalde datums, afdelingen, voorraden of standaard karlocaties zichtbaar zijn. Orders zonder zichtbare op te bouwen regels worden niet getoond.

### Stap 2: de order controleren en het werk plannen

Het orderdetail toont de actieve klant of hub, het ordernummer en de voortgang van de order. U ziet hoeveel karren compleet zijn en hoeveel colli al zijn opgebouwd.

Via het menu zijn, afhankelijk van de configuratie, de volgende read-only overzichten beschikbaar:

- **Vooruitkijken / Look ahead:** toont alleen de nog op te bouwen colli, gegroepeerd op fustcode en steellengte. Bij een hub worden de gegevens per klant gegroepeerd.
- **Toon order:** toont de volledige order, inclusief de opgebouwde en nog op te bouwen regels en de voortgang per product.

Gebruik deze overzichten om de verdeling over de beschikbare karren te plannen. Teruggaan sluit de order niet en behoudt de actieve context.

### Stap 3: een kar openen of toevoegen

Bestaande karren staan in het orderdetail. De status en voortgang zijn per kar zichtbaar. Afgeronde karren krijgen de status **Compleet**.

Een bestaande kar opent u door deze te selecteren of door de karbarcode te scannen.

Een nieuwe kar maakt u als volgt aan:

1. kies **Nieuwe kar toevoegen**;
2. selecteer de fustcode van de kar;
3. scan of voer een karbarcode in wanneer dit verplicht is;
4. bevestig de invoer.

Als maar één karfustcode is toegestaan, wordt deze automatisch gebruikt. Handmatig ingevoerde barcodes worden als hoofdletters opgeslagen. De app controleert onder andere de maximale lengte en of de barcode al binnen de order wordt gebruikt.

Na het aanmaken opent de nieuwe kar direct of blijft u in het karoverzicht. Dit wordt bepaald door `CreateNewTrolleyAndOpenDetails`. Als de labelprinter actief is, wordt automatisch een karlabel afgedrukt. Een mislukte print blokkeert de aangemaakte kar niet; het label kan later via het actiemenu opnieuw worden afgedrukt.

Bij hubs kan de kar, afhankelijk van `RegisterTrolleyOnInvoice`, ook op de daarvoor bestemde fustfactuur worden geregistreerd. Wanneer slotplatenregistratie als aanvullende aanmaakactie is ingesteld, wordt de nieuwe kar tevens in de slotplatenregistratie opgenomen.

### Stap 4: producten en dozen op de kar plaatsen

Open een kar. Het kardetail bevat twee hoofdonderdelen:

- **Opgebouwd:** producten en verpakkingen die al op de actieve kar staan;
- **Op te bouwen:** producten die nog voor de actieve order moeten worden verwerkt.

U kunt de op-te-bouwen lijst filteren met de beschikbare filters en, als `ShowSearchBox` actief is, zoeken op productomschrijving.

#### Handmatig registreren

1. selecteer een product in **Op te bouwen**;
2. controleer de productgegevens;
3. kies **Zet op kar**;
4. voer zo nodig het aantal colli, stelen of bossen in;
5. bevestig de registratie.

De ingestelde `ToProcessQuantityMode` bepaalt welke hoeveelheid wordt gevraagd. Wanneer precies één colli resteert, kan de app deze direct verwerken zonder een overbodige aantalsvraag.

Als `ShowAdvancedProductDetails` actief is, kunt u voor het plaatsen ook het aantal en de fustcode aanpassen. Een aangepast aantal kan de oorspronkelijke orderregel splitsen. Alleen fustcodes uit `AllowedPackagingCodesForTrolleyItems` zijn dan beschikbaar.

#### Registreren met een scan

Scan in het kardetail een ondersteunde product- of doosbarcode. De app zoekt het bijbehorende orderitem en voert de ingestelde controles uit. Bij een geldige scan wordt het item op de actieve kar gezet en wordt de voortgang direct bijgewerkt.

Afhankelijk van `ShowProductDetailsOnScan` opent eerst het productdetail of wordt de registratie direct uitgevoerd. Een volledig opgebouwd of al verwerkt item wordt niet nogmaals toegevoegd; de melding vermeldt dat het item al is gescand of volledig is opgebouwd.

Wanneer een gescande verpakking meerdere producten bevat, worden de bijbehorende inhoudsregels samen op de kar geregistreerd.

#### Productdetails bekijken

Selecteer een product of verpakking in **Opgebouwd** of **Op te bouwen** om details te bekijken. Welke gegevens zichtbaar zijn en in welke volgorde, wordt bepaald door `AvailableProductDetails`.

Bij een verpakking ziet u de inhoud. Bij een product kunnen onder andere aantal, lengte, klant, leverancier, picktijd, picker, fustcode, fustaantal, fustomschrijving en voorraadgegevens worden getoond. Wanneer het product al gedeeltelijk is opgebouwd, ziet u ook op welke karren de aantallen zijn geregistreerd.

Als **Fustcode** en **Fustaantal** via `AvailableProductDetails` worden getoond, kunt u deze waarden wijzigen. Voor **Fustcode** opent een lookup met de waarden uit `AllowedPackagingCodesForTrolleyItems`; de bestaande fustcode blijft direct zichtbaar. Na bevestiging worden de gewijzigde waarden op de orderregel opgeslagen. Bij een reeds geprinte factuur wordt de wijziging geblokkeerd en meldt de app dat de orderitems niet meer gewijzigd mogen worden.

### Stap 5: de opbouw controleren en corrigeren

Controleer in **Opgebouwd** of alle producten en dozen op de juiste kar staan. Een afzonderlijk product of een verpakking kan na bevestiging van de kar worden verwijderd. De ordervoortgang wordt daarna hersteld zodat het item opnieuw kan worden opgebouwd.

Voor meerdere correcties kunt u via **Acties → Correctiemodus starten** werken:

1. start de correctiemodus;
2. scan het product of de verpakking die van de actieve kar moet worden verwijderd;
3. controleer de bevestigingsmelding;
4. scan zo nodig het volgende item;
5. sluit de correctiemodus via de actieve melding.

De app verwijdert alleen items die bij de actieve order en kar horen. Bij een ongeldige scan blijft het item staan en wordt de reden getoond.

Als de add-on `ExceptionRegistration` actief is, kunt u vanuit zowel **Opgebouwd** als **Op te bouwen** een afwijking registreren, bijvoorbeeld voor een beschadigd of niet leverbaar product. De regel verdwijnt daarna uit de normale opbouwlijst en de uitzondering wordt als TrolleyLoading-registratie vastgelegd.

### Stap 6: de kar afronden

Kies **Compleet melden** wanneer de kar gereed is.

Afhankelijk van de configuratie kunt u vóór het afronden nog extra elementen registreren, zoals platen, opzetrekken of ander fust. Controleer de aantallen en bevestig daarna dat de kar compleet is.

Na een succesvolle afronding:

- krijgt de kar de status **Compleet**;
- keert u terug naar het orderdetail;
- wordt de bijgewerkte kar- en ordervoortgang getoond;
- wordt, wanneer de afrondprinter actief is, automatisch de karklaarlijst of het karlabel afgedrukt.

Een complete kar blijft zichtbaar volgens de ingestelde bewaartermijn in `CompletedTrolleyVisibleFromDays`.

## Karacties

Het menu **Acties** kan de volgende functies bevatten. `AvailableTrolleyActions` bepaalt welke acties zichtbaar zijn en in welke volgorde.

| Actie | Werking |
| --- | --- |
| **Zet kar over** | Vervangt de externe barcode van de actieve kar door een nieuw gescande of ingevoerde barcode. |
| **Extra elementen beheren** | Registreert aantallen platen, rekken of ander toegestaan fust bij de order en kar. |
| **Kar wijzigen** | Wijzigt de karfustcode. Als de nieuwe fustcode een barcode vereist, moet deze direct worden gescand of ingevoerd. |
| **Karsticker herprinten** | Drukt het label van de bestaande kar opnieuw af. |
| **Adreslabel afdrukken** | Start de adreslabelworkflow voor de actieve klant of hub, als licentie en add-on actief zijn. |
| **Kar verwijderen** | Haalt alle producten en dozen van de kar en verwijdert de kar uit de order. |
| **Kar leegmaken** | Haalt alle producten en dozen van de kar, maar behoudt de kar zelf. |
| **Correctiemodus starten** | Verwijdert reeds opgebouwde producten of verpakkingen één voor één door ze te scannen. |

Voor leegmaken en verwijderen vraagt de app altijd om bevestiging. De voortgang van de betreffende orderregels wordt hersteld.

## Omgekeerd karren opbouwen

Als `AllowReverseLoading` actief is, begint de medewerker met het product in plaats van met de kar:

1. scan een productbarcode op de omgekeerd-opbouwen scanpagina;
2. de app zoekt de bijbehorende order en actieve karren;
3. bij één actieve kar opent de app die kar; bij geen of meerdere actieve karren opent het orderdetail;
4. controleer de banner met het wachtende product en het nog op te bouwen aantal;
5. scan de barcode van de juiste kar om de koppeling te bevestigen.

Alleen het openen of selecteren van een kar registreert het product nog niet. De karbevestigingsscan is verplicht. Na een geldige scan wordt het product gekoppeld en keert de app terug naar de scanpagina voor het volgende product.

U kunt het wachtende product via de banner annuleren. Een nieuwe productscan vervangt altijd de bestaande wachtende scan.

## Externe leveranciersbarcodes

TrolleyLoading kan KOWADI-product- en doosbarcodes van leveranciers verwerken. Hiervoor moeten `ExternalBarcodePrefixes`, de juiste decoder en, voor externe dozen, `DefaultExternalPackagingCode` zijn ingesteld.

Externe barcodes kunnen alleen binnen een actieve kar worden gescand en kunnen geen order openen.

- Een geldige productbarcode koppelt het nog te verwerken aantal van het gevonden orderitem aan de actieve kar.
- Een geldige doosbarcode maakt een doos aan en koppelt alle geldige inhoudsregels in één handeling aan de actieve kar.
- Als een hub meerdere mogelijke klanten bevat, vraagt de app voor welke klant wordt opgebouwd.

De normale controles en aanvullende acties voor het op de kar zetten blijven van toepassing.

## Policies instellen

Open in de Backoffice het constantenscherm en ga naar **Systeem → Users → Policy Beheer**. De instellingen staan onder `Apps → Logistics → Packing → TrolleyLoading`.

### Algemene instellingen

De inrichting begint met `ValidTrolleyPackagingCodes`. Hier legt u vast welke fustcodes als kar of ladingdrager mogen worden gebruikt. Zonder minimaal één geldige code kan een medewerker geen nieuwe kar aanmaken. Met `ExcludedOrderNumbers` sluit u specifieke ordernummers uit van zowel het orderoverzicht als de verwerking via een productscan. `ExcludedCustomerCodes` doet hetzelfde voor alle orders van de gekozen klanten.

Wanneer verschillende klanten via een hub worden verwerkt, bepaalt `EnableHubGrouping` of de orders per hub worden samengevoegd. Daarna kunt u de inhoud van de order verder beperken. `FilterStockCodes` zorgt ervoor dat alleen regels uit de ingestelde voorraden zichtbaar zijn en `FilterDepartmentCodes` doet dit op basis van afdeling. Deze filters verbergen de regels in de overzichten. Wilt u ook voorkomen dat een verborgen regel alsnog wordt gescand, neem dan de bijbehorende controles op in `EnabledOrderLineValidationOptions`. Nieuwe karren en externe dozen krijgen de afdeling uit `DefaultDepartmentId` wanneer die instelling is ingevuld.

### OrderOverview

Bij het openen van TrolleyLoading stelt Florisoft eerst het orderoverzicht samen. `DateFilterType` bepaalt of daarvoor bijvoorbeeld de orderdatum, besteldatum, vertrekdatum of leverdatum wordt gebruikt. Met `FilterDateFromDays` en `FilterDateToDays` stelt u de standaardperiode rond vandaag in. Orders waarbij het gekozen datumveld leeg is, worden alleen meegenomen als `AllowOrdersWithEmptyDates` actief is. Wanneer een medewerker zelf een datum in de kalender kiest, zorgt `EnableFilterOnSelectedDate` ervoor dat uitsluitend orders van die ene datum worden getoond.

Niet iedere order binnen die periode hoeft geschikt te zijn voor karopbouw. In `FilterOptions` kiest u daarom de controles waarmee Florisoft bepaalt welke orders worden ingeladen. `FilterByDefaultTrolleyLocations` kan het resultaat verder beperken tot klanten met een ingestelde standaard karlocatie. Nadat de selectie is gemaakt, bepaalt `SortingOption` in welke volgorde de orders verschijnen.

Ook het gedrag van zoeken en scannen wordt in dit onderdeel ingesteld. Met `FilterOrdersByScanAction` wordt een gescande waarde als zoekopdracht gebruikt. `ValidBarcodeDecodeOptions` bepaalt welke order-, product- of karbarcodes vanuit het orderoverzicht worden herkend. Als medewerkers naast colli en karren ook de volumeverdeling moeten zien, schakelt u `EnableVolumeIndication` in. Afgeronde karren blijven ten slotte nog het aantal dagen zichtbaar dat in `CompletedTrolleyVisibleFromDays` is vastgelegd.

### TrolleyHandling en NewTrolley

Zodra een order is geopend, bepaalt `TrolleySortingStrategy` hoe de bijbehorende karren worden gerangschikt. De `ValidBarcodeDecodeOptions` onder `TrolleyHandling` geven aan welke barcodes een kar mogen openen of activeren. In het kardetail bouwt Florisoft het actiemenu op basis van `AvailableTrolleyActions`; niet alleen de beschikbare acties, maar ook hun volgorde komt uit deze instelling.

Bij het aanmaken van een kar wordt eerst gecontroleerd of een eigen barcode nodig is. `RequireCustomTrolleyBarcode` bepaalt de algemene verplichting en `TrolleyBarcodeMaxLength` begrenst de toegestane invoer. Vervolgens berekent Florisoft het karnummer met de strategieën uit `TrolleySequenceStrategies`. `DefaultTrolleyId` kan daarbij een vast nummer aan iedere nieuwe kar toevoegen. Met `AllowedWorkingDays` bepaalt u op welke dagen karren mogen worden geregistreerd. Valt de actuele dag daarbuiten, dan gebruikt Florisoft de eerstvolgende toegestane werkdag.

Na het opslaan voert Florisoft de acties uit `AdditionalActions` uit, bijvoorbeeld de registratie van een slotplaat. Voor een hub bepaalt `RegisterTrolleyOnInvoice` of de kar ook op de fustfactuur wordt gezet. Daarna stuurt `CreateNewTrolleyAndOpenDetails` de medewerker rechtstreeks naar de nieuwe kar of terug naar het karoverzicht.

Tijdens het opbouwen kunnen extra platen, rekken of andere fustelementen nodig zijn. De medewerker kan alleen kiezen uit `ValidPackagingCodesForExtraTrolleyElements`. Als `RegisterExtraElementsOnInvoice` actief is, worden deze aantallen ook op de factuur geregistreerd. Wanneer een verwijderactie alle inhoud van een kar haalt, bepaalt `RemoveEmptyTrolley` of de lege kar zelf eveneens uit de order verdwijnt.

### ProductHandling en PutOnTrolley

In het kardetail bepaalt `AvailableProductDetails` welke informatie een medewerker bij een product ziet en in welke volgorde die gegevens verschijnen. `ShowSearchBox` voegt een zoekveld toe aan de op-te-bouwen lijst en `AvailableOrderItemFilterOptions` bepaalt welke aanvullende filters daar kunnen worden gebruikt.

Bij een handmatige registratie bepaalt `ToProcessQuantityMode` of de medewerker aantallen in colli, stelen of bossen verwerkt. Als `ShowAdvancedProductDetails` actief is, opent een uitgebreider zet-op-kar-scherm waarin een orderregel kan worden aangepast of gesplitst. De fustcode kan daar alleen worden gewijzigd naar een waarde uit `AllowedPackagingCodesForTrolleyItems`.

Voor scanregistratie kiest u met de `ValidBarcodeDecodeOptions` onder `ProductHandling` welke product- en doosbarcodes geldig zijn. `ShowProductDetailsOnScan` bepaalt of na de scan eerst het detail wordt geopend. Voordat Florisoft het item op de kar zet, worden de controles uit `EnabledOrderLineValidationOptions` uitgevoerd. Na een geslaagde plaatsing kunnen de handelingen uit `EnabledAdditionalActions` volgen, bijvoorbeeld het registreren van de barcode als verwerkt.

Wanneer de werkwijze met een productscan moet beginnen, activeert u `AllowReverseLoading`. De medewerker scant dan eerst het product en bevestigt daarna de juiste kar. Voor externe KOWADI-barcodes legt `ExternalBarcodePrefixes` vast welke voorvoegsels worden herkend. Als zo'n scan een nieuwe externe doos aanmaakt, gebruikt Florisoft de fustcode uit `DefaultExternalPackagingCode`.

### Labels en add-ons

Het label van een nieuwe kar wordt ingericht onder `TrolleyHandling → NewTrolley → TrolleyLabel`. Met `PrintUseOriginalHub` kiest u of het label de hub van de actuele order gebruikt. In de onderliggende categorie `Printer` schakelt `IsActive` de print in. `TrolleyPrinterName` bepaalt waar het label wordt afgedrukt en `TrolleyPrintLayout` welke lay-out daarvoor wordt gebruikt.

Voor een afgeronde kar gebruikt u `TrolleyHandling → CompleteTrolley → CompleteTrolleyLabel → Printer`. Ook hier schakelt `IsActive` de afdrukfunctie in. `CompleteTrolleyPrinterName` verwijst naar de printer en `CompleteTrolleyPrintLayout` naar de karklaarlijst- of stickerlay-out.

Aanvullende usecases worden niet alleen via het karactiemenu beschikbaar gemaakt. Onder `Addons` bepaalt `EnableAddons` welke integraties TrolleyLoading mag starten. Voeg bijvoorbeeld `ExceptionRegistration` toe om afwijkingen bij orderregels vast te leggen en `AdressLabel` om vanuit de actieve klant of hub een adreslabel af te drukken. Voor deze onderdelen moeten ook de benodigde licenties aanwezig zijn.

Meer informatie over het instellen en toewijzen van policies vindt u in de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

## Veelgestelde vragen

**Waarom zie ik een order niet?**

Controleer de gekozen datum en zoekfilters. Controleer daarna `FilterOptions`, `ExcludedOrderNumbers`, `ExcludedCustomerCodes`, de voorraad- en afdelingsfilters en `FilterByDefaultTrolleyLocations`. Een order zonder zichtbare op te bouwen regels wordt niet getoond.

**Waarom kan ik geen nieuwe kar aanmaken?**

Controleer of `ValidTrolleyPackagingCodes` minimaal één geldige fustcode bevat. Controleer bij een eigen barcode ook `RequireCustomTrolleyBarcode`, `TrolleyBarcodeMaxLength` en of de barcode al binnen de order wordt gebruikt.

**Waarom wordt mijn scan niet herkend?**

De toegestane decoders worden per scherm ingesteld. Controleer daarom de `ValidBarcodeDecodeOptions` van `OrderOverview`, `TrolleyHandling` of `ProductHandling`, afhankelijk van waar u scant.

**Waarom kan ik een product niet op de kar zetten?**

Lees de getoonde validatiemelding. Het product kan al volledig zijn opgebouwd, de barcode kan al verwerkt zijn, het item kan buiten de ingestelde voorraad of afdeling vallen of niet bij de actieve order horen. Controleer `EnabledOrderLineValidationOptions`.

**Waarom zie ik een karactie niet?**

Controleer `AvailableTrolleyActions`. Voor **Adreslabel afdrukken** moet bovendien de juiste licentie actief zijn en moet `EnableAddons` de add-on `AdressLabel` bevatten.

**Waarom wordt geen label afgedrukt?**

Controleer of `IsActive` aanstaat en of de printernaam en lay-out in de juiste labelcategorie zijn ingesteld. Een mislukte nieuwe-karprint maakt de kar wel aan; gebruik daarna **Karsticker herprinten**.

**Hoe herstel ik een product dat op de verkeerde kar staat?**

Verwijder het afzonderlijke item, gebruik de correctiemodus voor meerdere scans of kies **Kar leegmaken** wanneer de volledige inhoud opnieuw moet worden verdeeld.

**Kan ik een complete kar nog openen?**

Complete karren blijven tijdelijk zichtbaar. De periode wordt bepaald door `CompletedTrolleyVisibleFromDays`.
