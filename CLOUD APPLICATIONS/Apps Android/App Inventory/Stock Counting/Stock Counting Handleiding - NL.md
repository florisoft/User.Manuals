![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Inventory Stock Counting (Stock Counting App)

Deze handleiding beschrijft hoe u de Stock Counting-functionaliteit van de Florisoft Inventory App gebruikt en configureert. De gebruikersworkflow, bijbehorende policies en autorisatie staan in dit document. Voor de uitgebreide uitleg over partijfoto’s wordt verwezen naar de aparte handleiding.

---

## Benodigdheden

- Florisoft Inventory App met toegang tot Stock Counting
- Backoffice Voorraadmodule
- Module Stock Control
- De juiste [autorisatie](#autorisaties) en ingerichte policies voor de gebruiker

Voor afdrukken moet de **JobAgent** actief zijn. Voor partijfoto’s moeten de foto-opslag en de beschikbaarheid via de webshop zijn ingericht.

---

## Wat is Stock Counting?

Met Stock Counting vergelijkt u de fysieke voorraad met de geregistreerde voorraad in Florisoft. U scant of zoekt een partij, controleert de aantallen en eigenschappen en bevestigt de controle. Waar toegestaan kunt u voorraad corrigeren, een kwaliteitsprobleem registreren, een partijfoto maken of labels printen.

Een scan registreert een **Scanaantal**. Dit is een afzonderlijke registratie: scannen is niet hetzelfde als de voorraadstand wijzigen of de partij als gecontroleerd bevestigen.

---

## Stappen in de workflow

1. Bereid de voorraadcontrole in de Backoffice voor.
2. Open Stock Counting en scan of zoek een partij.
3. Controleer de partij volgens de ingestelde telstrategie.
4. Pas waar nodig aantallen, locatie of andere toegestane gegevens aan.
5. Registreer eventueel een kwaliteitsprobleem, maak een foto of print labels.
6. Bevestig de controle en controleer de verwerking in de Backoffice.

De volgende secties beschrijven de handelingen en de policies die daarbij horen. De [inrichting via Policy Beheer](#waar-vindt-u-de-stock-counting-policies) staat verderop.

---

## Stap 1 – Voorraadcontrole voorbereiden

Open het voorraadscherm in de Backoffice en bekijk welke partijen gecontroleerd moeten worden.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/3.png"></details>

Activeer de voorraadopname via **Opties → Voorraadopname → Activeren**. Met de app gecontroleerde voorraadregels worden in dit overzicht groen gemarkeerd.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/4A.png"></details>

---

## Stap 2 – Stock Counting openen en een partij vinden

Open de Inventory App vanuit de Florisoft Hub-app of via het Inventory-app-icoon. Log in met uw gebruikersgegevens en kies de tegel **Stock Counting**. Selecteer een medewerker als de app daarom vraagt.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/1.png"></details>
<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/2.png"></details>

Scan een partijbarcode of open het zoekscherm. In de zoeklijst zoekt u op artikelomschrijving of `Scancode`. Bij numerieke invoer zoekt de app ook op de laatste vier cijfers van het partijnummer. Voer minimaal drie tekens in om de zoekresultaten te vernieuwen; maak het zoekveld leeg om de lijst zonder tekstfilter te laden.

De zoeklijst gebruikt een andere zoekroute dan de barcodescanner. Zoeken op V-partijnummer of `Scancode2` is in dit tekstveld geen afzonderlijk ondersteunde zoekmogelijkheid. Kies na selectie **Select stock item** om het detail te openen. Bij een scan opent dit scherm automatisch; bij meerdere resultaten kiest u eerst de juiste partij.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/4B.png"></details>
<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/5.png"></details>

### Beschikbare partijen, filters en weergave

| Policy | Werking |
| --- | --- |
| `AvailableStocks` | Beperkt de beschikbare partijen tot de ingevulde voorraden. Configureer deze lijst expliciet: bij een lege lijst past de zoeklijst geen voorraadfilter toe. Bij telling op V-partijbasis bepaalt de volgorde ook welke onderliggende partijen als eerste worden aangepast. |
| `StockItemDetailSettings_AvailableStockItemFilterOptions` | Bepaalt welke zoekfilters beschikbaar zijn en in welke volgorde. U kunt filters aanbieden voor voorraad, verpakking, leverancier, zendingnummer, lege partijen, steellengte, productgroep en partijmarkeringen. |
| `ToPickQuantityDisplay` | Toont de nog te picken hoeveelheid als totaal aantal stelen of als colli × inhoud + restant. De policy heeft als standaard **Stelen**; controleer de effectieve waarde in uw policyprofiel. |
| `StockItemDetailSettings_StockItemQuantityDisplay` | Toont de partijhoeveelheid als colli × inhoud + restant of als totaal aantal stelen. |

Onder **Apps → Inventory** staat daarnaast `DisplayedStockItemIdentifier`. Hiermee kiest u **PartijNr** (`StockItemNr`) of **VPartijNr** (`VStockItemNr`) als getoonde identificatie. De app toont hiervan de laatste vier cijfers. Op dit niveau bestaat ook `ToPickQuantityDisplay` voor de Inventory-brede weergave; controleer voor Stock Counting de instelling binnen de eigen usecase.

### Zoekfilters toepassen en wissen

Open de filterknop naast het zoekveld, selecteer de gewenste waarden en pas het filter toe. De knop toont het aantal actieve filtervelden. Met de resetactie wist u de aanvullende filters; de tekst in het zoekveld blijft daarbij staan. Wilt u ook de tekstbeperking verwijderen, maak dan het zoekveld leeg.

De productgroepkeuze toont alleen groepen die voorkomen bij partijen binnen de ingestelde voorraden. Een bestaande productgroep zonder bijbehorende partijen verschijnt daardoor niet in deze keuzelijst. Bij de unieke-dragerstrategie toont de zoeklijst alleen hoofdpartijen met dragers; bij de deelpartijstrategie alleen hoofdpartijen met een deelpartij zonder unieke drager.

Let op de huidige werking van **Lege artikelen** (`EmptyItems`): als dit filter is ingeschakeld, worden alleen partijen met vrije voorraad groter dan 0 getoond. Het levert dus geen lijst met uitsluitend lege partijen op. Reset het filter wanneer u ook partijen met nul of negatieve vrije voorraad zoekt.

### Scanaantal registreren

Een herkende partijscan verhoogt het **Scanaantal** nadat de juiste partij is geselecteerd. De verhoging volgt de verkoopeenheid in de voorraadinstelling (`VERKEH`):

| Verkoopeenheid | Verhoging per partijscan |
| --- | --- |
| Stelen | 1 |
| Bos | Inhoud van één bos |
| Verkoopeenheid | Verkoopeenheid van de partij |
| Colli | Inhoud van één colli |
| Doos | Inhoud van één doos; bij een lege inhoud of 0 wordt de inhoud van één colli gebruikt. |

Zonder geldige verkoopeenheid wordt het Scanaantal met 1 verhoogd. Handmatig zoeken en selecteren verhoogt het Scanaantal niet.

De verhoging is minimaal 1, ook als een ingestelde bos-, verkoop- of colli-inhoud ontbreekt. Bij telling op V-partijbasis wordt de scan geregistreerd op de onderliggende partijen binnen de beschikbare voorraden; het getoonde Scanaantal is de som van hun registraties. Eén scan kan daardoor meer toevoegen dan de inhoud van één onderliggende partij. Een rechtstreekse unieke-dragerscan opent de drager zonder deze afzonderlijke partijscanregistratie uit te voeren.

Voeg `ScanQuantity` toe aan de zichtbare partijdetails om het Scanaantal te tonen. Voeg dit veld ook toe aan de bewerkbare details wanneer gebruikers het handmatig mogen corrigeren of op **0** mogen zetten.

---

## Stap 3 – Tellen volgens de ingestelde strategie

Met `StockCountingStrategy` bepaalt u welk voorraadobject wordt gecontroleerd.

| Waarde | Werkwijze |
| --- | --- |
| `StockItem` – Standaard telling op partijbasis | Iedere geselecteerde partij wordt afzonderlijk geteld en bevestigd. |
| `VstockItem` – Telling op V-partijbasis | Zoeken en scannen blijven op partijniveau werken. Na selectie verwerkt de app de partijen met hetzelfde VPartijNr binnen `AvailableStocks` als één geconsolideerde telling. |
| `UniqueCarrier` – Telling op basis van unieke dragers | U telt één fysieke unieke drager. De hoofdpartij is pas volledig gecontroleerd nadat alle bijbehorende dragers zijn bevestigd. |
| `PartialStockItem` – Telling op basis van deelpartijen | U telt een deelpartij zonder gekoppelde unieke drager. Bij bevestiging worden de geselecteerde deelpartij en de hoofdpartij direct als gecontroleerd geregistreerd. Dit betekent niet dat alle overige deelpartijen afzonderlijk zijn geteld. |

### Tellen op V-partijbasis

De sortering van `AvailableStocks` bepaalt de verwerkingsvolgorde van de onderliggende partijen. Aantalswijzigingen worden over deze partijen verdeeld. Detailwijzigingen, controle-vinkjes en kwaliteitsregistraties worden op de onderliggende partijen binnen de selectie verwerkt. Printen gebruikt de eerste onderliggende partij volgens deze volgorde.

> **Gegevensvoorwaarde:** alle voorraadregels met hetzelfde VPartijNr moeten dezelfde colli-inhoud (`INHKOLLI`) hebben. Bij verschillende waarden kan de verdeling in colli en restant afwijken, ook als het totale aantal correct is. Gebruik voor afwijkende colli-inhoud een apart VPartijNr of kies telling op partijbasis. Deze voorwaarde geldt ook wanneer u een barcode met het PARTIJNR scant: de verwerking gebeurt na selectie alsnog op VPartijNr-niveau.

### Tellen op unieke drager

Scan de unieke drager direct of scan/zoek eerst de hoofdpartij. Bij één beschikbare drager opent de app deze direct; bij meerdere kiest u de juiste drager. De drager moet de status `Arrived` hebben.

De drager-ID, locatie en hoeveelheid horen bij de geselecteerde drager. Overige partijeigenschappen blijven eigenschappen van de hoofdpartij. Configureer de unieke-dragerprinter en -lay-out wanneer u dragerlabels wilt printen.

### Tellen op deelpartij

Scan of zoek de hoofdpartij en selecteer daarna de deelpartij. Bij één beschikbare deelpartij opent de app deze direct. Deelpartijen hebben geen eigen scanbare barcode. Deelpartijen met een unieke drager worden via de unieke-dragerstrategie verwerkt.

Locatie en hoeveelheid horen bij de geselecteerde deelpartij. Een aantalscorrectie werkt ook door op de hoofdpartij; de andere partijeigenschappen blijven eigenschappen van de hoofdpartij. Controleer de overige deelpartijen afzonderlijk, ook wanneer de hoofdpartij al als gecontroleerd is gemarkeerd.

<details><summary><b>Klik hier voor uw voorbeeld van het partij-detail!</b></summary><img src="Media/Doorloop/6.png"></details>

---

## Stap 4 – Gegevens controleren en aanpassen

Controleer in het partij-detail de fysieke voorraad en de getoonde eigenschappen. Een oranje banner geeft aan dat de partij eerder is gecontroleerd.

Bij normale partijen bevat het getoonde totaal de vrije voorraad plus de nog te picken hoeveelheid uit open pickorders. Op V-partijniveau worden de betreffende onderliggende partijen samengevoegd. Bij een unieke drager of deelpartij gebruikt u de hoeveelheid van dat geselecteerde voorraadobject.

Staat bij de debiteur van een open pickorder onder **Relatie-instellingen → Verdelen** de optie **Pickorders niet meetellen in voorraad opname** (`PICKNOOPN`) aan, dan telt die pickorder niet mee. Zijn er geen mee te tellen pickorders, dan wordt de regel **To pick** niet getoond.

### Zichtbare en bewerkbare partijdetails

De policy-groep heet `StockItemDetailSettings` en bevat:

| Policy | Werking |
| --- | --- |
| `AvailableStockitemDetails` | Selecteert de zichtbare eigenschappen en hun volgorde in het scherm. |
| `AllowEditStockitemDetails` | Bepaalt welke zichtbare eigenschappen de gebruiker mag aanpassen. Alleen zichtbaar maken geeft geen wijzigingsrecht. |
| `StockItemQuantityDisplay` | Bepaalt de hoeveelheidweergave, zoals beschreven bij stap 2. |
| `AvailableStockItemFilterOptions` | Bepaalt de beschikbare zoekfilters, zoals beschreven bij stap 2. |
| `AllowManageStockItemPhotos` | Staat het maken of vervangen van partijfoto’s toe, zoals beschreven bij stap 6. |

De volgende eigenschappen zijn beschikbaar:

| Eigenschap | Policywaarde | Bewerkbaar indien toegestaan |
| --- | --- | --- |
| Locatie | `Location` | Ja |
| Kolli | `Colli` | Ja |
| Inhoud kolli | `ContentColli` | Ja |
| Restant | `Remainder` | Ja |
| Verkoopeenheid | `SalesUnit` | Ja |
| Fustcode | `PackagingCode` | Ja |
| Inhoud bos | `ContentBunch` | Ja |
| Inkoopprijs | `PurchasePrice` | Ja |
| Verkoopprijs | `Price` | Ja |
| Prijsgroep 1, 2 en 3 | `PriceGroup1`, `PriceGroup2`, `PriceGroup3` | Ja |
| Partijmarkering | `StockItemMark` | Ja |
| Totaal | `Total` | Ja |
| Dagen oud | `DaysOld` | Ja |
| Laatste scantijd | `LatestScanTime` | Nee |
| Scancode | `ScanCode` | Ja |
| Webshopzichtbaarheid | `WebshopVisibility` | Ja |
| Scanaantal | `ScanQuantity` | Ja |
| Inhoud doos | `ContentBox` | Ja |
| Voorraadomschrijving | `StockDescription` | Nee |
| Kwaliteitscode | `QualityCode` | Ja |

Voeg bijvoorbeeld `QualityCode` aan beide lijsten toe wanneer een gebruiker de kwaliteitscode moet kunnen zien én wijzigen. Voorraadomschrijving en Laatste scantijd blijven altijd alleen-lezen.

### Een scancode met de scanner vastleggen

Selecteer in het partij-detail eerst het veld **Scancode** en scan daarna de gewenste barcode. Als `ScanCode` bewerkbaar is, vult de app de gescande waarde in dit veld in. De scan opent dan geen volgende partij. Zonder wijzigingsrecht verschijnt een melding en wordt de scancode niet aangepast.

Verlaat de selectie van het scancodeveld voordat u een barcode weer wilt gebruiken om naar een volgende partij te gaan. Bevestig de gewijzigde scancode via de normale opslagactie.

### Webshopzichtbaarheid en partijmarkering wijzigen

Met het veld **Webshopzichtbaarheid** bepaalt u of de partij op de webshop zichtbaar is. Voeg `WebshopVisibility` toe aan zowel de zichtbare als bewerkbare details, wijzig de keuze en sla deze samen met de overige wijzigingen op. De app toont de functionele betekenis van de keuze. De systeeminstelling `VoorraadBlock` bepaalt hoe die keuze naar de bestaande Backoffice-X/IBLOCK-waarde wordt vertaald; keer de keuze in de app daarom niet zelf om. Open de partij opnieuw om de actuele opgeslagen waarde te controleren.

**Partijmarkering** kiest u uit de centraal beschikbare markeringen. De keuzelijst toont de omschrijving en, indien ingesteld, de bijbehorende kleur. Ook hiervoor moet `StockItemMark` zichtbaar én bewerkbaar zijn. Het veld **Fustcode** gebruikt eveneens een keuzelijst; **Kwaliteitscode** is een tekstveld.

### Totaal en colli samenhangend aanpassen

Wijzigt u **Totaal**, dan berekent de app het aantal colli en het restant opnieuw met de colli-inhoud. Wijzigt u **Kolli**, **Inhoud kolli** of **Restant**, dan berekent de app het totaal opnieuw als colli × inhoud + restant.

Tijdens een wijziging kunt u één van deze twee invoerwijzen gebruiken: na een totaalwijziging worden de losse hoeveelheidvelden tijdelijk geblokkeerd; na een wijziging van de losse velden wordt het totaal geblokkeerd. Zet de gewijzigde hoeveelheidvelden terug op de oorspronkelijke waarden om de andere invoerwijze weer beschikbaar te maken. De ingestelde wijzigingsrechten blijven daarbij gelden. De colli-inhoud moet minimaal 1 zijn; colli en restant kunnen niet negatief worden ingevoerd.

### Hoeveelheden verhogen of verlagen

De Inventory-brede policy `Apps_Inventory_SalesUnit` bepaalt de stapgrootte bij het verhogen of verlagen van aantallen: **Stelen**, **Bos**, **Verkoopeenheid**, **Colli**, **Doos** of **Gebruik verkoopeenheid van de voorraad** (`UseStock`). Zonder policywaarde wordt de bestaande **CC VerkoopEenheid** gebruikt. Bij `UseStock` volgt de app de verkoopeenheid van de voorraad; zonder waarde gebruikt zij Colli.

Bij **Doos** gebruikt de app de inhoud doos, of de inhoud kolli als de doosinhoud leeg of 0 is. De stapgrootte is minimaal 1. Deze instelling wijzigt de afzonderlijke registratie van het Scanaantal niet.

### Locatie wijzigen

Wanneer `Location` zichtbaar én bewerkbaar is, kunt u een locatie invoeren of scannen. Met `CheckPredefinedLocationCodes` accepteert de app alleen codes uit **Partij locaties** (`PARTIJLOC`) in het constantenscherm. Een onbekende locatie wordt afgekeurd en de bestaande locatie blijft behouden.

Deze controle vervangt de normale herkenning op locatielengte en tekenformaat. Ook volledig numerieke locatiecodes kunnen dan worden gebruikt, mits vooraf geregistreerd. Zonder deze policy is de systeeminstelling `LocatieVeldLengte` van belang voor de locatieherkenning. Laat wijzigingen daarin afstemmen met uw beheerder.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/7.png"></details>

### Voorraadverschillen verwerken

De policy-groep `StockMutationSettings` bepaalt hoe aantalscorrecties worden verwerkt:

| Policy | Werking |
| --- | --- |
| `StockMutationAsCounting` | Verwerkt voorraadverschillen via de voorraadopnameverdeling op de ingestelde voorraadopnamedebiteur. Hiervoor moet een geldige debiteur zijn ingesteld en moet de voorraad deze verwerking toestaan. |
| `StockCountingCustomerCode` | Stelt de algemene voorraadopnamedebiteur in. Deze wordt gebruikt binnen de verwerking met `StockMutationAsCounting`. |
| `StockCountingCustomerCodePerStock` | Gebruikt de voorraadinstelling **Voorraadopname debiteur** in plaats van de algemene debiteur. Zorg ook dat de algemene debiteur is ingevuld. Voor het wijzigen van de voorraadinstelling moet de gebruiker de bijbehorende Backoffice-policy mogen gebruiken. |
| `StockCountingXorder` | Maakt bij een voorraadopnameverdeling met een verschil ook een nieuwe xorder/pickorder aan. Dit vereist de verwerking via `StockMutationAsCounting`; het verlaagt op zichzelf geen bestaande klantpickorders. |
| `StockQuantityMutAlsoStoredStockItem` | Voert een voorraadwijziging ook door naar gekoppelde logistieke partijen. De laagste logistieke partij wordt als eerste aangepast. |
| `ReducePickItemsOnStockDecrease` | Staat toe dat een voorraadcorrectie bestaande open pickorders verlaagt wanneer de vrije voorraad onvoldoende is. Controleer de effectieve policywaarde: deze kan terugvallen op de bestaande Backoffice-instelling. |

### Open pickorders corrigeren bij een tekort

Wanneer `ReducePickItemsOnStockDecrease` is ingeschakeld, kunnen geschikte open pickorders van dezelfde V-partij worden verlaagd, van nieuw naar oud. Bij telling op V-partijbasis wordt eerst de beschikbare vrije voorraad verlaagd en daarna een resterend tekort op de geschikte pickorders verwerkt.

Daarbij gelden ook instellingen buiten de Stock Counting-policygroep:

- `Backoffice_Logistics_Stock_Counting_OrderPickStockCodes` bepaalt welke pickordervoorraden in aanmerking komen. Een lege effectieve lijst levert geen kandidaten op. Deze lijst staat los van `AvailableStocks`.
- Pickorders van debiteuren met **Pickorders niet meetellen in voorraad opname** blijven buiten de correctie.
- `Apps_Inventory_StockCorrectionExceptionReasonId` selecteert de reden voor de automatisch aangemaakte verdeelcontroles. Selecteer onder **Apps → Inventory** een bestaande, geldige reden uit de lijst **Verdeelcontrole reden** (`VERDCONT`). Zonder geldige reden kan deze registratie mislukken.
- De systeeminstelling `OpnamePartijAltijdMuteren` bepaalt of negatieve partijvoorraad mag worden opgeslagen. Uitschakelen herstelt een al negatieve voorraad niet automatisch en schakelt de correctie van pickorders niet uit.

`StockMutationAsCounting` en `StockCountingXorder` regelen de voorraadopnameboeking en het aanmaken van een nieuwe pickorder. `ReducePickItemsOnStockDecrease` regelt afzonderlijk het aanpassen van bestaande pickorders.

> **Let op bij voorraadcorrecties:** controleer na verwerking het opnieuw geopende voorraadtotaal, de aangepaste pickorders en de verdeelcontroles. Bij telling op partijbasis kunnen negatieve vrije voorraad en het verlagen van pickorders een afwijkend heropend totaal opleveren. Ook de combinatie met nieuw aangemaakte voorraadopname-pickorders vraagt controle. Een fout bij het registreren van een verdeelcontrole kan optreden nadat voorraad of pickorders al zijn aangepast. Controleer daarom eerst de Backoffice voordat u dezelfde correctie opnieuw uitvoert. Laat de inrichting voor dit proces met Florisoft afstemmen.

---

## Stap 5 – Kwaliteitsproblemen registreren (optioneel)

Veeg in het partij-detail de productheader naar links en tik op het prullenbak-icoon. Selecteer een reden, vul het aantal in en voeg zo nodig een opmerking toe. Bevestig vervolgens de registratie.

Het icoon verschijnt alleen wanneer `QualityIssue_Authorization` aan staat én de geïntegreerde functionaliteit **Quality Issue Registration** voor de gebruiker beschikbaar is. Alleen de policy inschakelen is dus niet voldoende wanneer de toegang tot deze functionaliteit ontbreekt.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/14.png"></details>
<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/15.png"></details>

De opmerking wordt in het memo van de verdeling opgeslagen. De geselecteerde reden is terug te vinden in de partijlog. Op V-partijbasis volgt de verwerking de volgorde van de beschikbare voorraden. Bij een deelpartij werkt een aantalsverlaging ook door op de hoofdpartij.

Na een geslaagde registratie keert u terug naar het partij-detail en haalt de app de hoeveelheden opnieuw op. Niet-opgeslagen wijzigingen aan andere partijeigenschappen blijven behouden en moeten nog afzonderlijk worden opgeslagen. Controleer het nieuwe totaal voordat u verder corrigeert.

De policy-groep `QualityIssue` bevat:

| Policy | Werking |
| --- | --- |
| `Authorization` | Staat kwaliteitsregistratie toe. Standaard uit (`False`). |
| `CustomerCode` | Bepaalt de debiteur waarop kwaliteitsproblemen worden geboekt. Stel deze expliciet in wanneer u kwaliteitsproblemen apart wilt registreren; de bestaande voorraadopnamedebiteur wordt als standaard gebruikt. |
| `Reasons` | Selecteert de redenen die gebruikers mogen kiezen. Een reden is verplicht bij registratie. |

Beheer de redenen via **Financieel → Credit Reden**. Voeg een reden toe met als typeomschrijving **Verdeelcontrole reden** en vul een duidelijke omschrijving in. Selecteer de bedoelde redenen daarna in `Reasons`. Is de keuzelijst leeg, controleer dan of de redenen in de juiste lijstsoort zijn aangemaakt. De app controleert hierbij niet automatisch op vertalingen.

De door de gebruiker gekozen kwaliteitsreden staat los van `StockCorrectionExceptionReasonId`. De policy voor het corrigeren van open pickorders voegt geen automatische pickordercorrectie toe aan deze kwaliteitsregistratie.

---

## Stap 6 – Partijfoto maken of wijzigen (optioneel)

Met `StockItemDetailSettings_AllowManageStockItemPhotos` staat u toe dat gebruikers vanuit het partij-detail met de camera een partijfoto maken of vervangen. Uploaden vanuit de galerij of bestanden wordt niet ondersteund. Fotobeheer binnen de deelpartijstrategie wordt momenteel niet ondersteund.

Raadpleeg voor de bediening, uploadmeldingen, foto-opslag en webshopverwerking de aparte handleiding [Technische werking – Partijfoto’s maken of wijzigen](Technische%20werking%20%E2%80%93%20Partijfoto%E2%80%99s%20maken%20of%20wijzigen.md).

---

## Stap 7 – Prijs-, voorraad- of dragerlabels printen (optioneel)

Open vanuit het partij-detail het printdialoog, geef de gewenste aantallen op en kies **Print**. Voor gewone prijs- en voorraadlabels wordt geen opdracht verstuurd wanneer beide aantallen nul zijn.

Heeft u nog niet-opgeslagen wijzigingen, dan vraagt de app vóór het printen eerst om deze op te slaan. U ziet de oude en nieuwe waarden en kiest **Opslaan** of **Annuleren**. Na annuleren of een mislukte opslag wordt niet geprint. Bij unieke dragers vraagt de app vervolgens of u het label van de geselecteerde drager wilt printen; hiervoor verschijnt geen gewoon aantaldialoog voor prijs- en voorraadlabels.

Op V-partijbasis wordt de eerste onderliggende partij volgens de voorraadvolgorde gebruikt. Bij deelpartijen gebruikt het gewone partijlabel de hoofdpartijgegevens; hoeveelheid en locatie worden voor die afdruk niet vervangen door de deelpartijgegevens. Bij unieke dragers wordt het label van de geselecteerde drager afgedrukt.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/8.png"></details>

De policy-groep `PrintSettings` bevat:

| Policy | Werking |
| --- | --- |
| `AvailablePrinters` | Maakt met `Price` en/of `Stock` prijslabels en voorraadlabels beschikbaar. Selecteer beide voor beide labelsoorten. |
| `PriceLabelPrinter` | Printer voor prijslabels. |
| `PriceLabelLayout` | Lay-out voor prijslabels. |
| `PriceLabelPrinterDescription` | Omschrijving van de prijslabelprinter in de app. |
| `StockLabelPrinter` | Printer voor voorraadlabels. |
| `StockLabelLayout` | Lay-out voor voorraadlabels. |
| `StockLabelPrinterDescription` | Omschrijving van de voorraadlabelprinter in de app. |
| `UniqueCarrierLabelPrinter` | Printer voor labels van unieke dragers. |
| `UniqueCarrierLabelLayout` | Lay-out voor labels van unieke dragers. |

Zonder de bijbehorende printer en lay-out is printen niet mogelijk. Ook de **JobAgent** moet actief zijn. Raadpleeg de [handleiding JobAgent](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Windows/Job-Agent/Handleiding%20Job-Agent%20-%20NL.md).

---

## Stap 8 – Bevestigen en doorgaan

Druk op de groene knop om de controle te bevestigen en eventuele wijzigingen op te slaan. Zijn er wijzigingen, dan ziet u eerst een overzicht van de oude en nieuwe waarden. Kies **Opslaan** om ze te verwerken of **Annuleren** om in het huidige detail te blijven zonder ze op te slaan.

U kunt vanuit het detail ook direct de volgende partij of unieke drager scannen. Bij wijzigingen verschijnt eerst hetzelfde bevestigingsoverzicht; na annuleren blijft u bij de huidige partij. Zonder wijzigingen voert de app de controlebevestiging uit voordat de volgende selectie wordt geopend. Controleer steeds de bevestiging of melding voordat u verdergaat.

Bij een fout tijdens opslaan gaat de app niet verder naar de volgende gescande partij en wordt een daaropvolgende printactie niet uitgevoerd. Bij een waarschuwing controleert u welke verwerking heeft plaatsgevonden.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/9.png"></details>
<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/11.png"></details>

### Pick-checkstatus bijwerken

Met `PickCheckStocks` stelt u de voorraadcodes in van partijen waarvan de pick-checkstatus bij het verwerken van wijzigingen moet worden bijgewerkt. Dit is een lijst van voorraadcodes in een tekstinstelling, geen aan/uit-optie. Zonder expliciete policywaarde kan de bestaande Backoffice-instelling worden gebruikt.

### Partij automatisch binnenmelden

Met `AdditionalActions` kunt u `MarkAsReceived` selecteren om bij het opslaan van partijwijzigingen ook de partij binnen te melden. Hiervoor is een geldige licentie voor **Entry Control** (`Logistics.Receiving.EntryControl`) vereist. Een controle bevestigen zonder wijzigingen is een afzonderlijke handeling; gebruik dat niet als garantie dat de binnenmeldactie is uitgevoerd. Controleer de binnenmeldstatus in uw proces.

---

## Stap 9 – Controle in de Backoffice en afronden

Na bevestiging is de bijbehorende voorraadregel groen gemarkeerd en voorzien van datum en tijd, gebruiker en gekoppelde verkoper. Houd rekening met de voltooiingsregels per strategie: een unieke-dragerpartij is pas klaar als alle dragers zijn bevestigd; bij een deelpartij wordt de hoofdpartij direct als gecontroleerd geregistreerd.

Open vanuit de voorraadregel het verdelingsscherm om gemaakte verdelingen te controleren.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/12.png"></details>

Herhaal de controle voor alle te tellen voorraadobjecten. Controleer de niet-gemarkeerde regels en rond eventuele verschillen af. Reset het voorraadopnamescherm pas wanneer de ronde is afgerond, via **Opties → Voorraadopname → Resetten**. Bij de volgende controle kunt u opnieuw beginnen.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/13.png"></details>

---

## Waar vindt u de Stock Counting-policies?

| Stap | Uitleg |
| --- | --- |
| **1** | Open het constantenscherm in de Backoffice via de navigator. |
| **2** | Navigeer naar **Systeem → Users → Policy Beheer**. |
| **3** | Selecteer of maak een policy aan en navigeer naar **Apps → Inventory → Stock Counting**. |
| **4** | Open voor details, mutaties, kwaliteitsregistratie of printen de bijbehorende groep: **StockItemDetailSettings**, **StockMutationSettings**, **QualityIssue** of **PrintSettings**. |

De namen in deze handleiding zijn relatief aan deze route. Zo is `StockItemDetailSettings_AllowManageStockItemPhotos` de volledige policy `Apps_Inventory_StockCounting_StockItemDetailSettings_AllowManageStockItemPhotos`.

De gedeelde instellingen `DisplayedStockItemIdentifier`, `ToPickQuantityDisplay`, `SalesUnit` en `StockCorrectionExceptionReasonId` staan één niveau hoger onder **Apps → Inventory**. De genoemde Backoffice- en systeeminstellingen hebben hun eigen route. Controleer steeds de effectieve policy van de gebruiker en situatie; bestaande Backoffice-waarden kunnen als standaard worden overgenomen.

Raadpleeg voor algemeen beheer de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

---

## Autorisaties

Zonder de juiste autorisatie kan een gebruiker Stock Counting niet openen of gebruiken.

| Stap | Uitleg |
| --- | --- |
| **1** | Open het constantenscherm via de navigator. |
| **2** | Navigeer naar **Systeem → Users → Systeem gebruikers**. |
| **3** | Open de gebruiker en kies **Autorisatie**. |
| **4** | Druk op **F3** om het zoekvenster te openen. |
| **5** | Zoek op code **425** en selecteer **Navigator palmtop/Voorraad opname_425**. Kies **Alle handelingen toegestaan** en bevestig met **OK**. |
| **6** | Herhaal dit voor andere gebruikers of gebruik **Kopie autorisatie**. |

De policies voor bewerkbare details, foto’s en kwaliteitsregistratie bepalen vervolgens welke acties binnen Stock Counting beschikbaar zijn.
