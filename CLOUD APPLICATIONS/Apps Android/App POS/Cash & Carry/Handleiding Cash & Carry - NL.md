![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Cash & Carry (POS App)

## Inleiding

Met **Cash & Carry** verwerkt een verkoopmedewerker directe verkopen in de Florisoft POS App. De medewerker selecteert een klant en order, voegt artikelen toe door te scannen of te zoeken, registreert fust en rondt de verkoop af via een kassa of de interne betaalflow.

De workflow wordt grotendeels door policies ingericht. Daardoor kan per organisatie worden bepaald welke klanten, orders, voorraden, prijzen, verkoopeenheden, betaalmethoden en afrondopties beschikbaar zijn.

Deze handleiding beschrijft de gebruikersstappen en licht bij iedere stap direct toe welke policies het gedrag bepalen.

---

## Licentievereisten en benodigdheden

Voor Cash & Carry zijn minimaal nodig:

- toegang tot de Florisoft **POS App**;
- toegang tot de usecase `Sales.POS.CashCarry`;
- een geldige gebruiker en medewerker;
- een scanner of camera voor de scanflows;
- beschikbare klanten, orders, voorraadpartijen en voorraden;
- voor betalingen: ingerichte betaalmethoden of een koppeling met de externe kassa;
- voor printacties: een ingestelde printer, lay-out en een bereikbare Cloud Server of Job Agent;
- voor e-mail: geldige e-mailadressen en een werkende e-mailinrichting.

Installeer de app via de Florisoft Hub. De app wordt in de catalogus als **Sales.POS** getoond. Controleer bij het eerste gebruik de Cloud Server-URL, taal en aanmeldgegevens voordat u Cash & Carry opent.

## Waar vindt u de policies?

Open in de Backoffice het **constantenscherm** en ga via **Systeem → Users → Policy Beheer** naar **Apps → Sales → POS → CashCarry**.

De onderliggende groepen **OrderActivation**, **ShoppingCart**, **StockItemSelection**, **Returnables**, **Payment** en **PackageListPrintSettings** bevatten de instellingen voor de betreffende processtappen. Onder **OrderActivation** en **ShoppingCart** staan nog verdere subgroepen voor klant-, order- en regelinstellingen.

Meer informatie over het maken, koppelen en prioriteren van policies staat in de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

> Een lege policywaarde kan terugvallen op een bestaande Backoffice-instelling of op standaardgedrag. Test een gewijzigde inrichting daarom eerst met een aparte testpolicy, een testklant en een representatieve order.

---

## Aanvullende inrichting in de Backoffice

Policies bepalen welke functies de POS App aanbiedt, maar zijn niet de enige inrichting. Cash & Carry gebruikt daarnaast stamgegevens en instellingen van de debiteur, gebruiker, artikelen, voorraadpartijen, fust, documenten en printers.

> De precieze naam of plaats van een veld kan per Florisoft-versie verschillen. Sommige velden op het klassieke tabblad **Debiteur → Cash & Carry** zijn afkomstig uit de desktopapp. Waar de huidige POS App een nieuwere instelling gebruikt, staat dat hieronder vermeld.

### Debiteurselectie en blokkades

De POS App gebruikt de volgende debiteurgegevens tijdens het zoeken en selecteren van een klant:

| Instelling of gegeven | Werking in Cash & Carry |
|---|---|
| Debiteurnummer, naam en zoeksleutel | De medewerker kan de klant op deze waarden zoeken. |
| Inactief of gearchiveerd | De klant wordt niet in de klantselectie aangeboden. |
| Financiële unit | Alleen klanten binnen de financiële units van de aangemelde gebruiker worden aangeboden. Extra financiële units van de gebruiker tellen hierbij mee. |
| Accountmanager | Wanneer bij de gebruiker filtering op accountmanager actief is, worden alleen klanten van de bijbehorende verkoper aangeboden. |
| Niet leveren en reden | De app toont de leverstop. Met `BlockDoNotSupplyCustomers` kan selectie van deze klant volledig worden geblokkeerd. |
| Verdeelinfo | Kan bij de klant worden getoond wanneer `ShowCustomerDivisionInfo` actief is. |
| Voorraadklant | `IncludeStockCustomers` bepaalt of voorraadklanten in de selectie mogen voorkomen. |

Controleer bij een ontbrekende klant dus niet alleen de policy, maar ook de status, financiële unit en accountmanager van de debiteur.

### Klantpas en scanidentificatie

In de huidige POS App wordt een klantpas bij voorkeur als **contactgegeven van de debiteur** vastgelegd:

- contactsoort: **Cash & Carry**;
- lijstsoort: **Klantpas**;
- waarde: de code die op de pas of barcode staat;
- status: actief.

De standaard barcode-inrichting kan zowel het debiteurnummer als dit klantcontact herkennen. Welke barcodetypen werkelijk worden geaccepteerd, wordt bepaald door `ValidBarcodeDecodeOptions`.

Het veld **Klant pas code** (`KLANTCODE`) op het klassieke tabblad **Debiteur → Cash & Carry** hoort bij de oudere desktopwerkwijze en kan daar samenhangen met de systeeminstelling `CCScanKlantPas`. Gebruik voor de huidige POS App het klantcontact, tenzij voor de betreffende omgeving aantoonbaar nog de klassieke koppeling wordt gebruikt.

### Debiteur → Cash & Carry

Op het klassieke Cash & Carry-tabblad van een debiteur kunnen de volgende gegevens voorkomen:

| Instelling | Beschrijving |
|---|---|
| Standaard betaalwijze | Standaard betaalwijze voor de klassieke Cash & Carry-flow, bijvoorbeeld rekening, contant, incasso, pinnen of check. |
| Toegestane betaalwijzen | Beperkt in de klassieke flow welke betaalwijzen voor deze debiteur zijn toegestaan. In de huidige POS App zijn vooral `PaymentMethods` en de toegestane betaalwijzen van de gebruiker bepalend. |
| Opslag per voorraad | Legt per debiteur en voorraad een procentuele en/of vaste opslag vast. Deze debiteuropslag kan door de prijsberekening worden toegepast. |
| Inkoop | Geeft bij een debiteuropslag aan dat de inkoopprijs van de voorraadpartij als grondslag wordt gebruikt. Controleer de uitkomst met een testartikel, omdat verdere prijsregels eveneens van invloed kunnen zijn. |
| Automatisch e-mailen naar | Kan in de klassieke flow het automatisch e-mailen van een paklijst activeren. Het doeladres wordt vastgelegd bij **Paklijst e-mailadres**. |
| Paklijst e-mailadres (`PAKEMAIL`) | Eerste voorkeursadres dat de huidige POS App voor het e-mailen van een paklijst gebruikt. |
| Altijd vragen om extra info | Laat de klassieke paklijst- of pickorderflow om aanvullende tekst vragen die op de paklijst kan worden afgedrukt. |
| Standaard afdeling | Standaardafdeling voor de PDA/Cash & Carry-verwerking. De praktische toepassing kan per inrichting verschillen en moet daarom in de eigen orderflow worden getest. |
| Nooit minimale afnameprijs gebruiken | Sluit deze debiteur uit van minimale afnameprijs 1. |
| Nooit minimale afnameprijs 2 gebruiken | Sluit deze debiteur uit van minimale afnameprijs 2. |
| Altijd minimale afnameprijs gebruiken | Dwingt het gebruik van de minimale afnameprijs voor deze debiteur af. Laat deze instelling controleren wanneer zij samen met een van de twee uitsluitingen is ingevuld. |
| Afdeling en kostensoort | Kunnen bij het maken van een factuur een klantspecifieke kosten- of kortingsregel bepalen, bijvoorbeeld een afhaalkorting. |
| Klant pas code | Klassieke klantpascode; gebruik voor de huidige POS App bij voorkeur het klantcontact zoals hierboven beschreven. |

De prijs die uiteindelijk in Cash & Carry verschijnt, kan behalve door de debiteuropslag ook worden beïnvloed door prijslijsten, staffels, minimale afnameprijzen, artikel- en partijgegevens en de policies voor prijswijzigingen.

### Klantspecifieke POS-instellingen

In de debiteuruitbreiding voor Cash & Carry kunnen klantspecifieke instellingen worden vastgelegd. De exacte plaats van deze velden kan per release of scherminrichting verschillen.

| Instelling | Beschrijving |
|---|---|
| `CCOrdernumberInputMandatory` | Maakt het invoeren van een ordernummer of ordernaam voor deze debiteur verplicht. Dit geldt ook wanneer de debiteur niet in `RequireOrderNumberForCustomers` staat. |
| `CCFinaliseOrdersPackingListSetting` | Bepaalt de voorkeur van deze debiteur voor het printen en/of e-mailen van de paklijst bij het afronden van de winkelwagen. |
| `CCFinaliseOrdersInvoiceSetting` | Bepaalt de voorkeur van deze debiteur voor het printen en/of e-mailen van de factuur bij het afronden van de winkelwagen. |

Voor de twee afrondinstellingen zijn de volgende waarden mogelijk:

| Waarde | Betekenis |
|---|---|
| Policy | Gebruik de algemene policy-inrichting. |
| Uit | Toon de betreffende print- en e-mailvragen niet. |
| Printen | Selecteer printen standaard. |
| E-mailen | Selecteer e-mailen standaard. |
| Printen en e-mailen | Selecteer beide opties standaard. |
| Niet printen of e-mailen | Selecteer beide opties standaard niet; de beschikbare vragen kunnen wel zichtbaar blijven. |

Deze klantvoorkeuren zijn vooral van toepassing op de afronding van de winkelwagen. De uitvoer na een betaling wordt daarnaast bepaald door de policies onder **Payment → OrderFinalization**.

### Factuur, paklijst en e-mailadressen

Controleer voor documentuitvoer de volgende Backoffice-gegevens:

| Gegeven | Gebruik |
|---|---|
| Factuurlay-out (`FACTLAYOUT`) | Nodig om een factuur correct te genereren, printen of e-mailen. |
| Paklijstlay-out (`PAKLAYOUT`) | Overschrijft voor deze debiteur de algemene `PackageListPrintLayout` wanneer een klantspecifieke lay-out is ingevuld. |
| Paklijst e-mailadres (`PAKEMAIL`) | Eerste voorkeursadres voor de paklijst. |
| Actieve klantcontacten – lijst Paklijst, type E-mail | Worden gebruikt wanneer geen paklijst-e-mailadres is ingevuld. |
| Algemeen e-mailadres van de debiteur | Laatste terugvaladres voor de paklijst. |
| Actieve klantcontacten – lijst Factuur, type E-mail | Worden als aanvullende factuuradressen aangeboden. |

Voor fysiek printen blijven daarnaast de policies `PackageListPrinter` en `Invoice_Printing_PrinterName` en een bereikbare Cloud Server of Job Agent noodzakelijk.

### Gebruiker en medewerker

De inrichting van de aangemelde gebruiker heeft direct invloed op de beschikbare gegevens en handelingen:

| Instelling | Gevolg |
|---|---|
| Verkoper/medewerker | Wordt gebruikt voor registratie van verkopen, wijzigingen en betalingen. |
| Financiële unit en extra financiële units | Bepalen welke debiteuren de gebruiker kan selecteren. |
| Filteren op accountmanager | Beperkt de klantlijst tot klanten van de verkoper die aan de gebruiker is gekoppeld. |
| Toegestane betaalwijzen | Kunnen de betaalwijzen van de huidige POS App beperken of als standaard dienen wanneer `PaymentMethods` geen expliciete afwijking bevat. |
| Rechten op de usecase en vervolgprocessen | Bepalen of de gebruiker Cash & Carry, betalen, printen en eventuele gekoppelde workflows mag uitvoeren. |

### Artikel, voorraadpartij, verkoopeenheid en fust

Voor een volledige artikel- en scanflow moeten ook deze stamgegevens correct zijn:

- het artikel en de voorraadpartij moeten actief, verkoopbaar en op een toegestane voorraad aanwezig zijn;
- artikelbarcodes moeten aan het juiste artikel en barcodetype zijn gekoppeld;
- verkoopeenheid, inhoud, colli en eventuele deelverkoop moeten correct zijn ingericht;
- inkoop- en verkoopprijzen moeten op de juiste prijsgrondslagen en eenheden zijn vastgelegd;
- fustartikelen en fustcodes moeten overeenkomen met `PackageCodes`;
- eventuele partijmarkeringen moeten aansluiten op `AllowedStockItemMarksForSellingBelowPurchasePrice`.

`AllowedStockCodes`, `AllowSellingBelowSalesUnit`, `ShowPurchasePrice` en de overige artikel- en prijs-policies bepalen vervolgens wat de gebruiker van deze stamgegevens mag zien of wijzigen.

### Terugval op klassieke systeeminstellingen

Een aantal policies kan, wanneer geen expliciete waarde is ingevuld, terugvallen op een bestaande systeem- of desktopinstelling:

| Policy | Mogelijke klassieke terugval |
|---|---|
| `OrderNumberDeterminationType` | `CCOrdernummerBepalingType` |
| `TransferToCheckout` | `CCOverhevelenNaarKassa` |
| `ShowWarningWithoutAddedReturnables` | `CCWaarschuwingGeenFustIngevrd` |
| `RequireInvoiceSignature` | `HandtekeningVoorFactuur` |
| `AllowSellingBelowSalesUnit` | `CashCarryOnderVEVerkoop` |
| `ShowPurchasePrice` | `CCPDAInkPrijs1KolomWeergeven` |
| `AllowEditOrderitemDetails` | onder andere `CashCarryPrijsWijzigen` en `CashCarryVEWijzigen` |

Gebruik voor nieuwe inrichtingen bij voorkeur expliciete policies. Leg per omgeving vast welke klassieke terugvallen nog bewust worden gebruikt; zo voorkomt u dat een oude desktopinstelling ongemerkt het gedrag van de POS App bepaalt.

---

## Het Cash & Carry-proces in het kort

1. Open **Cash & Carry** en identificeer de medewerker.
2. Selecteer een klant of scan een klant- of orderbarcode.
3. Kies een bestaande order of maak een nieuwe order.
4. Controleer de winkelwagen.
5. Scan artikelen of voeg ze toe via het voorraadpartijenoverzicht.
6. Controleer en wijzig zo nodig aantallen, verkoopeenheden, prijzen en details.
7. Registreer uitgaand en retour ontvangen fust.
8. Rond de winkelwagen af.
9. Kies, afhankelijk van de inrichting, voor de kassa of de interne betaalflow.
10. Selecteer de te betalen facturen en registreer één of meer betalingen.
11. Controleer de factuur, leg zo nodig een handtekening vast en kies printen of e-mailen.
12. Sluit de verkoop af; Florisoft keert terug naar de klantselectie.

---

## Stap 1 – De app en medewerkerscontext starten

Open de POS App en kies **Cash & Carry**. Florisoft laadt de policies en de bewaarde gebruikersstatus. Als nog geen medewerker bekend is, vraagt de app eerst om een medewerker-ID. Alle verkopen, wijzigingen en betalingen worden daarna aan deze medewerker gekoppeld.

De app bewaart gebruikerskeuzes die voor de volgende sessie relevant zijn, zoals filters in het voorraadpartijenoverzicht en de laatst gekozen verkoopeenheid.

`DefaultEmployeeGroup` bepaalt de standaardmedewerkersgroep wanneer vanuit Cash & Carry een werkopdracht wordt aangemaakt. Stel deze waarde alleen in wanneer de gekoppelde vervolgprocessen met medewerkersgroepen werken.

> Kan de medewerker niet worden geïdentificeerd, dan start de verkoopflow niet. Controleer de medewerker, de autorisaties en de verbinding met de Cloud Server.

---

## Stap 2 – Een klant selecteren of scannen

Op het scherm **Klanten** kunt u door de lijst bladeren, zoeken of een barcode scannen. Selecteer de klant en controleer de getoonde naam en adresgegevens voordat u doorgaat.

De policies onder **OrderActivation → CustomerSelection** bepalen welke klanten en hulpmiddelen beschikbaar zijn:

- `IncludeStockCustomers` bepaalt of voorraadklanten in de zoekresultaten worden opgenomen;
- `ShowRecentlyUsedCustomersInSearch` toont recent gebruikte klanten bovenaan of als snelle keuze;
- `BlockDoNotSupplyCustomers` blokkeert klanten met de status **Niet leveren**;
- `ValidBarcodeDecodeOptions` bepaalt welke barcodevarianten voor klant- en orderherkenning worden gebruikt.

Bij een geldige klantbarcode opent Florisoft de gevonden klant. Verwijst de scan naar een orderregel, dan zoekt Florisoft de bijbehorende klant en order op.

Een order van een andere klant wordt niet automatisch onder de actieve klant geopend. Florisoft toont dan een melding, zodat niet per ongeluk op de verkeerde debiteur wordt verkocht.

---

## Stap 3 – Een order kiezen of aanmaken

Na de klantselectie toont Florisoft de beschikbare orders. U kunt een bestaande order openen of een nieuwe order maken.

### Bestaande order selecteren

De policies onder **OrderActivation → OrderSelection** bepalen welke orders worden getoond:

- `ExcludePastOrders` verbergt orders uit het verleden;
- `OrderDateFilter` bepaalt op welke datum de openstaande orders worden gefilterd. De standaardwaarde is `OrderDate`.

Selecteer de order, controleer ordernummer en datum en ga verder naar de winkelwagen.

Wanneer `EnableOrderLocking` actief is, vergrendelt Florisoft de order zodra deze in Cash & Carry wordt geopend. Een andere gebruiker kan dezelfde order dan niet gelijktijdig wijzigen. Bij het sluiten van de order of beëindigen van de sessie wordt de vergrendeling vrijgegeven.

### Nieuwe order aanmaken

De policies onder **OrderActivation → OrderCreation** bepalen welke invoer wordt gevraagd:

- `InputType` kiest het eerste invoerscherm:
  - `None`: geen aanvullend invoerscherm;
  - `OrderDetails`: ordergegevens invullen;
  - `DeliveryChoice`: een leverkeuze maken;
- `RequireOrderNumberForCustomers` bevat de klanten waarvoor een ordernummer of ordernaam verplicht is;
- `DeliveryOrderSuffix` voegt de ingestelde suffix aan leverorders toe;
- `OrderNumberDeterminationType` bepaalt hoe Florisoft het nieuwe ordernummer vaststelt.

Vul de gevraagde gegevens in en bevestig de order. Een verplicht ordernummer moet geldig en uniek zijn volgens de gekozen nummerbepaling.

### Ordersessies

In de Cash & Carry-usecase is een optionele ordersessiemodus beschreven. Hiermee kunnen meerdere verkoopmomenten op dezelfde order gescheiden worden verwerkt. Nieuwe orderregels en fustregistraties krijgen dan het actieve sessienummer, terwijl de betaalstap de volledige order kan tonen.

De bijbehorende instellingen `UseOrderSessions` en `FilterCartByActiveSession` staan wel in de usecasebeschrijving, maar worden niet in iedere appversie als instelbare Cash & Carry-policy aangeboden. Gebruik deze werkwijze alleen wanneer ordersessies in uw gebruikte release beschikbaar en getest zijn.

---

## Stap 4 – De winkelwagen controleren

Na het openen of aanmaken van de order verschijnt de **Winkelwagen**. Bij een bestaande order laadt Florisoft de toegestane orderregels opnieuw.

`ShoppingCartItemsPurchaseTypes` bepaalt welke aanvullende distributietypen naast Cash & Carry in de winkelwagen worden geladen. Regels uit een ander distributietype kunnen met een vak- of slotsymbool worden gemarkeerd.

De volgende policies bepalen de algemene weergave:

- `ProductQuantityDisplayType` bepaalt hoe productaantallen worden getoond;
- `ShowPurchasePrice` toont of verbergt de inkoopprijs;
- `ShowCustomerDivisionInfo` toont aanvullende klantverdelingsinformatie;
- `AllowViewInvoiceDetails` bepaalt of u via het totaalbedrag de volledige prijsopbouw kunt openen;
- `InvoiceTotalsDisplayType` onder **Payment** kiest een eenvoudige of volledige totalenweergave.

Controleer bij een bestaande order altijd of de verwachte regels en aantallen zichtbaar zijn voordat u nieuwe artikelen toevoegt.

---

## Stap 5 – Een artikel scannen en toevoegen

1. Kies zo nodig de gewenste verkoopeenheid.
2. Scan de barcode van de voorraadpartij of het artikel.
3. Controleer de herkende omschrijving, het aantal en de prijs.
4. Scan opnieuw om de bestaande regel te verhogen of pas het aantal handmatig aan.

`ValidBarcodeDecodeOptions` op het niveau **CashCarry** bepaalt welke barcodedecoders bij het toevoegen van artikelen geldig zijn. Een niet-toegestane of onbekende barcode wordt geweigerd.

`AllowedStockCodes` beperkt uit welke voorraden in Cash & Carry mag worden verkocht. Een geldige partij kan daardoor toch ontbreken of niet toegevoegd kunnen worden wanneer de voorraadcode niet is toegestaan.

### Verkoopeenheid en aantallen

De policies onder **ShoppingCart** bepalen hoe de medewerker aantallen invoert:

- `ShowSalesUnitSelector` toont de keuze tussen **Colli** en **VE/SU**;
- `DefaultSalesUnit` stelt `Colli` of `SU` als standaard in;
- `AllowSellingBelowSalesUnit` bepaalt of minder dan één volledige verkoopeenheid mag worden verkocht;
- `ResetSalesUnitAfterScan` zet na iedere scan de gekozen eenheid terug naar `DefaultSalesUnit`. Wanneer deze policy uit of leeg is, blijft de gekozen eenheid actief.

In de Backoffice kan per barcodetype een verkoopeenheid zijn gekoppeld, bijvoorbeeld voor Scancode, EAN-code of Scancode 2. Wanneer die koppeling bestaat en de bijbehorende eenheid op de voorraadpartij is gevuld, bepaalt de gescande barcode automatisch de verkoopeenheid. Zonder bruikbare koppeling gebruikt Florisoft het normale gedrag uit `DefaultSalesUnit` en de actieve gebruikerskeuze.

`ShowOrderItemDetailsAfterAdd` opent na het toevoegen automatisch het detailscherm. Staat deze policy uit, dan blijft de gebruiker in de winkelwagen.

---

## Stap 6 – Een artikel handmatig zoeken

Kan een artikel niet worden gescand, tik dan op het **vergrootglas** om het voorraadpartijenoverzicht te openen.

1. Zoek op naam, code, omschrijving of artikelnummer.
2. Gebruik zo nodig de uitgebreide filters.
3. Selecteer de juiste voorraadpartij.
4. Voeg de partij toe en controleer het resultaat in de winkelwagen.

`AvailableStockItemFilterOptions` onder **StockItemSelection** bepaalt welke uitgebreide filters beschikbaar zijn:

- `StockIds`: voorraadcodes;
- `PackagingIds`: fustcodes;
- `SupplierIds`: leveranciers;
- `ShipmentNumber`: aanvoernummer;
- `EmptyItems`: lege partijen;
- `StemLength`: steellengte;
- `ProductGroupIds`: productgroepen;
- `StockItemMarks`: partijmarkeringen.

De app bewaart de gekozen filters in de gebruikersstatus en past ze de volgende keer opnieuw toe. Wis filters wanneer een verwachte partij niet wordt gevonden.

In het voorraadpartijenoverzicht kan een markering aangeven dat de partij al in de winkelwagen staat. Nogmaals toevoegen verhoogt dan de bestaande orderregel.

`SetPurchasePriceType` bepaalt welk configureerbaar prijsveld wordt getoond. Mogelijke waarden zijn `DoNotShow`, `PurchasePrice1`, `PurchasePrice2`, `PriceGroup1` en `PriceGroup2`. Deze instelling staat los van `ShowPurchasePrice`: afhankelijk van de combinatie kunnen geen, één of twee prijsvelden zichtbaar zijn.

---

## Stap 7 – Aantallen, prijs en regeldetails wijzigen

Open een orderregel om de details te bekijken. Welke velden zichtbaar en wijzigbaar zijn, wordt bepaald door de geordende lijsten onder **ShoppingCart → OrderItemDetails**:

- `AvailableOrderitemDetails` bepaalt welke velden worden getoond en in welke volgorde;
- `AllowEditOrderitemDetails` bepaalt welke van deze velden de medewerker mag wijzigen.

Beschikbare detailvelden zijn:

- `Description`: omschrijving;
- `Price`: verkoopprijs;
- `Quantity`: aantal;
- `PackageAmount`: fustaantal;
- `PackageCode`: fustcode;
- `SalesUnit`: verkoopeenheid;
- `Colli`: aantal colli;
- `ArticleNumber`: artikelnummer;
- `ArticleKey`: artikelsleutel;
- `StockItemMark`: partijmarkering.

Na het opslaan herberekent Florisoft de regel en het ordertotaal.

### Verkopen onder de inkoopprijs

`AllowSellingBelowPurchasePrice` bepaalt wat er gebeurt wanneer de verkoopprijs lager is dan de inkoopprijs:

- `AllowWithoutWarning`: opslaan zonder waarschuwing;
- `AllowWithWarning`: na een waarschuwing toch toestaan;
- `DoNotAllowWithWarning`: blokkeren en een waarschuwing tonen;
- `AllowWithStockItemMark`: alleen toestaan voor partijen met een toegestane markering.

Bij `AllowWithStockItemMark` moet de partijmarkering voorkomen in `AllowedStockItemMarksForSellingBelowPurchasePrice`. Anders blijft de oorspronkelijke prijs staan.

`ShoppingcartSaleUnder0` bepaalt of de verdeling bij verkoop onder nul mag komen. Gebruik deze instelling alleen wanneer negatieve of nog niet beschikbare voorraad volgens de bedrijfsprocedure bewust is toegestaan.

---

## Stap 8 – Kortingen en orderacties gebruiken

### Korting via een barcode

Een kortingsbarcode kan een percentage of vast bedrag voor de volgende productscan activeren. Scan eerst de kortingsbarcode en daarna het artikel. Controleer altijd of de korting op de bedoelde regel en in het nieuwe totaal is verwerkt.

`DiscountCategory` bepaalt welke kortingscategorie Florisoft voor deze registratie gebruikt.

### Korting op de order

`EnableDiscount` onder **Payment** bepaalt of vanuit het factuurtotalenscherm een korting op de open order mag worden toegevoegd of gewijzigd. Dit staat los van de kortingsbarcode voor een afzonderlijke productscan.

### Order wijzigen

`EnabledOrderActions` onder **ShoppingCart** bepaalt welke aanvullende orderacties beschikbaar zijn:

- `MoveOrder`: de order naar een andere klant verplaatsen;
- `DeleteOrder`: de order verwijderen;
- `NewOrderLine`: een nieuwe orderregel zonder normale scanflow aanmaken.

Florisoft vraagt bij ingrijpende acties om bevestiging. Controleer vóór verplaatsen of verwijderen altijd klant, ordernummer en inhoud van de winkelwagen.

---

## Stap 9 – Fust registreren

Open **Fust** om uitgaande en retour ontvangen verpakkingen vast te leggen.

1. Selecteer een bestaande fustcode of voeg een toegestane code toe.
2. Vul het uitgaande aantal in.
3. Vul het retour ontvangen aantal in.
4. Controleer het saldo.
5. Sla de registratie op en keer terug naar de winkelwagen.

De volgende policies bepalen het gedrag:

- `PackageCodes` bevat de fustcodes die de medewerker mag kiezen;
- `DisplayedReturnableIdentifier` toont per fust de `Description` of de `Code`;
- `ShowWarningWithoutAddedReturnables` waarschuwt bij afronden wanneer geen fust is geregistreerd;
- `RegisterPackagingInOrderlineType` bepaalt hoe fust in de orderregels wordt vastgelegd.

Een reeds gebruikte fustcode wordt niet dubbel toegevoegd. Wijzig in dat geval de bestaande regel.

Wanneer QR-barcodes met fustinformatie zijn ingericht, kan een scan de fustcode en aantallen toevoegen of een bestaande fustregel verhogen. Controleer na iedere scan het uitgaande aantal, het retouraantal en het saldo.

---

## Stap 10 – De winkelwagen afronden

Tik op **Afronden** of **Betalen** wanneer alle artikelen en fusten zijn gecontroleerd.

`ProcessPayments` onder **Payment** bepaalt de volgende stap:

- `Yes`: altijd doorgaan naar de interne betaalflow;
- `No`: zonder interne betaling afronden, bijvoorbeeld via paklijst of externe kassa;
- `UserChoice`: de medewerker kiest betalen of zonder interne betaling doorgaan.

`TransferToCheckout` bepaalt of de order naar een externe kassa wordt overgeheveld. Controleer bij deze werkwijze of de order op de kassa is aangekomen voordat u de Cash & Carry-sessie sluit.

De policies onder **ShoppingCart → OrderFinalization** bepalen welke afrondopties vóór de betaalflow beschikbaar en standaard geselecteerd zijn:

- `AllowedShoppingCartFinalizationOptions`;
- `DefaultShoppingCartFinalizationValues`.

Mogelijke opties zijn `PrintPackageList`, `MailPackageList`, `PrintInvoice` en `MailInvoice`. Alleen opties uit de toegestane lijst kunnen worden gekozen. De standaardlijst bepaalt welke opties vooraf op **Ja** staan.

`AdditionalActions` kan aanvullende handelingen uitvoeren bij het afronden van een Cash & Carry-order. Welke waarden bruikbaar zijn, hangt af van de ingerichte appversie en gekoppelde processen.

---

## Stap 11 – Facturen selecteren en betalen

In de interne betaalflow toont Florisoft een orderoverzicht en de openstaande facturen van de actieve klant.

1. Controleer de producten en het volledige factuurbedrag.
2. Selecteer één of meer openstaande facturen.
3. Controleer het totaal van de selectie.
4. Voeg één of meer betalingen toe.
5. Controleer het resterende of terug te geven bedrag.
6. Ga verder wanneer de registratie klopt.

`PaymentMethods` bepaalt welke betaalwijzen beschikbaar zijn, bijvoorbeeld contant en pin. Meerdere betaalwijzen kunnen worden gecombineerd.

De overige betaalpolicies bepalen:

- `RequirePaymentBeforeCompletion`: de verkoop kan niet zonder betaling worden afgerond;
- `ShowPaymentSummary`: toont een samenvatting van betaald, te betalen en verschil;
- `InvoiceTotalsDisplayType`: `Simple` toont een beknopt totaal en `Complete` de volledige prijsopbouw;
- `EnableDiscount`: staat orderkorting vanuit de factuurdetails toe.

Wanneer betaling niet verplicht is, kan Florisoft na een expliciete bevestiging zonder betaalregistratie doorgaan. Gebruik dit alleen voor klanten en situaties waarvoor de bedrijfsprocedure dit toestaat.

### Openstaande facturen zonder actieve order betalen

Wanneer `ProcessPayments` op `Yes` of `UserChoice` staat, kan vanuit de klant- of orderselectie een aparte betaalroute beschikbaar zijn. Hiermee selecteert en betaalt u openstaande facturen zonder eerst een nieuwe order of lege winkelwagen aan te maken.

Florisoft start hiervoor een schone betaalstatus, zodat facturen, e-mailadressen en printkeuzes van een eerdere verkoop niet worden hergebruikt.

---

## Stap 12 – Factuur, handtekening en uitvoer afronden

Na de betaling haalt Florisoft de factuurbestanden op en vult beschikbare factuur-e-mailadressen van de klant in. Controleer het document en de geadresseerden voordat u verdergaat.

De policies onder **Payment → OrderFinalization** bepalen welke uitvoer beschikbaar is:

- `AllowedPaymentFinalizationOptions`: toegestane print- en e-mailopties;
- `DefaultPaymentFinalizationValues`: vooraf geselecteerde opties;
- `ShowInvoiceSignaturePage`: toont of verbergt de pagina met factuur, e-mailadressen en handtekening;
- `RequireInvoiceSignature`: maakt de handtekening verplicht.

`ShowInvoiceSignaturePage` gedraagt zich als ingeschakeld wanneer de waarde niet expliciet op uit staat. Als `RequireInvoiceSignature` actief is, kan de gebruiker niet afronden zonder handtekening.

Voor e-mail moet minimaal één geldig adres aanwezig zijn. Corrigeer het adres in de app wanneer de inrichting dit toestaat of pas het klantadres in de Backoffice aan.

Voor printen zijn de volgende instellingen van belang:

- `Invoice_Printing_PrinterName`: printer voor facturen via de Cloud Server;
- `PackageListPrintLayout`: lay-out van de paklijst;
- `PackageListPrinter`: printer voor de paklijst;
- `FillPackingListNo`: vult bij het aanmaken van een pickorder het paklijstnummer.

Bevestig de gekozen uitvoer. Na een geslaagde afronding vergrendelt Florisoft de definitieve order, wist de actieve klant-, order-, winkelwagen- en betaalstatus en keert terug naar de klantselectie.

---

## Cash & Carry als onderdeel van een andere workflow

Cash & Carry kan als child usecase vanuit een ander proces worden geopend, bijvoorbeeld om een vervangend artikel te registreren. In dat geval levert de bovenliggende workflow de klant-, order- of werkopdrachtcontext aan.

De gebruiker werkt dan alleen binnen de aangeboden context. Orderregels uit het bovenliggende proces kunnen ter controle zichtbaar maar niet wijzigbaar zijn. Na het toevoegen of selecteren van het gevraagde artikel keert de app terug naar de bovenliggende workflow.

Gebruik in deze variant niet zelfstandig een andere klant of order. Controleer bij een onverwachte context de oorspronkelijke werkopdracht en start de child usecase opnieuw.

---

## Meldingen en oplossingen

### Een klant ontbreekt

- Wis de zoektekst en probeer opnieuw.
- Controleer `IncludeStockCustomers`.
- Controleer of de klant op **Niet leveren** staat en of `BlockDoNotSupplyCustomers` actief is.
- Controleer de klantrechten en de verbinding met de Cloud Server.

### Een order ontbreekt of kan niet worden geopend

- Controleer `ExcludePastOrders` en `OrderDateFilter`.
- Controleer of de order bij de geselecteerde klant hoort.
- Controleer of een verplichte orderreferentie ontbreekt.
- Vraag een andere gebruiker de order te sluiten wanneer deze vergrendeld is.

### De barcode wordt niet herkend

- Controleer of u een klant-, order- of productbarcode in het juiste scherm scant.
- Controleer de betreffende `ValidBarcodeDecodeOptions`.
- Controleer of de voorraadcode in `AllowedStockCodes` staat.
- Zoek het artikel handmatig om vast te stellen of de partij beschikbaar is.

### Een voorraadpartij ontbreekt

- Wis opgeslagen filters in het voorraadpartijenoverzicht.
- Controleer `AvailableStockItemFilterOptions` en de gekozen filterwaarden.
- Controleer `AllowedStockCodes`.
- Controleer of de partij nog voorraad heeft en verkoopbaar is.

### De prijs kan niet worden opgeslagen

- Controleer of `Price` in `AllowEditOrderitemDetails` staat.
- Controleer `AllowSellingBelowPurchasePrice`.
- Controleer bij `AllowWithStockItemMark` ook `AllowedStockItemMarksForSellingBelowPurchasePrice`.
- Controleer of de juiste inkoopprijs in de partij is vastgelegd.

### Fust ontbreekt of wordt dubbel gemeld

- Controleer of de fustcode in `PackageCodes` staat.
- Wijzig een bestaande fustregel in plaats van dezelfde code opnieuw toe te voegen.
- Controleer uitgaand en retour ontvangen aantal.
- Controleer `ShowWarningWithoutAddedReturnables`.

### Betalen is niet beschikbaar

- Controleer `ProcessPayments`.
- Controleer de betaalrechten van de medewerker.
- Controleer of `PaymentMethods` geldige betaalwijzen bevat.
- Controleer bij een externe kassa `TransferToCheckout` en de kassakoppeling.

### Afronden zonder betaling lukt niet

`RequirePaymentBeforeCompletion` verplicht een volledige betaalregistratie. Controleer de geselecteerde facturen, betaalbedragen en het resterende bedrag of wijzig de policy alleen wanneer de bedrijfsprocedure afronden zonder betaling toestaat.

### Printen of e-mailen werkt niet

- Controleer of de gewenste optie is opgenomen in de betreffende `Allowed...FinalizationOptions`.
- Controleer printer, lay-out, Cloud Server of Job Agent.
- Controleer de factuurprinter en de paklijstprinter afzonderlijk.
- Controleer voor e-mail het klantadres en de e-mailinrichting.

### De handtekeningpagina verschijnt niet

Controleer `ShowInvoiceSignaturePage`. Controleer daarnaast `RequireInvoiceSignature` wanneer de handtekening verplicht moet zijn.

---

## Belangrijk voor een correcte inrichting

- Test klantselectie, orderscans en productscans met de ingestelde barcodedecoders.
- Beperk `AllowedStockCodes`, prijsvelden en orderacties tot wat de medewerker werkelijk nodig heeft.
- Kies bewust of de app standaard in `Colli` of `SU` verkoopt en test het gedrag van `ResetSalesUnitAfterScan`.
- Test alle vier varianten voor verkopen onder de inkoopprijs, inclusief de toegestane partijmarkeringen.
- Controleer fustcodes, uitgaande en retouraantallen vóór iedere productie-invoering.
- Test `ProcessPayments`, `TransferToCheckout` en `RequirePaymentBeforeCompletion` als één samenhangende betaalinrichting.
- Test factuur- en paklijstprinters afzonderlijk met de definitieve lay-outs.
- Gebruik ordersessies alleen wanneer deze in de gebruikte appversie beschikbaar en end-to-end getest zijn.
- Rond een testsessie volledig af en controleer dat de volgende verkoop met een lege klant-, order- en betaalstatus begint.
