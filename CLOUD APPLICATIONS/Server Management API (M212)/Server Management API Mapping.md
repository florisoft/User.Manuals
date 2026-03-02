# API Mapping

## Constants/ArticleGroups (ArtikGRP)  

|API|DATABASE|
|:--|:--|
|id|ARTGRPCOD|
|description|ARTGRPTXT|
|version|_VERSION|
|productGroupId|CELCOD|
|productCharacteristic1|SORT1|
|productCharacteristic2|SORT2|
|productCharacteristic3|SORT3|
|productCharacteristic4|SORT4|
|productCharacteristic5|SORT5|
|productCharacteristic6|SORT6|
|productCharacteristic7|SORT7|
|description_D|TEXT_D|
|description_E|TEXT_E|
|description_F|TEXT_F|
|description_G|TEXT_G|
|description_H|TEXT_H|
|description_I|TEXT_I|
|description_J|TEXT_J|
|description_K|TEXT_K|
|description_L|TEXT_L|
|description_M|TEXT_M|
|description_N|TEXT_N|
|description_O|TEXT_O|
|description_P|TEXT_P|
|description_Q|TEXT_Q|
|description_R|TEXT_R|
|maxAgeInDays|MAXINETDAGEN|
|auctionGrp|VEILGRP|
|cuttingLoss|UITVAL|
|ProductType|PRODSOORT|

## Constants/Articles (Artikel)

|API|DATABASE|
|:--|:--|
|id|ARTNR|
|description|ARTTXT|
|version|_VERSION|
|pKey|PKEY/_RECNO|
|productCharacteristic1|SORT1|
|productCharacteristic2|SORT2|
|productCharacteristic3|SORT3|
|productCharacteristic4|SORT4|
|productCharacteristic5|SORT5|
|productCharacteristic6|SORT6|
|productCharacteristic7|SCRT7|
|botanicalName|BOTNAAM|
|eanCode|EANCODE|
|colorId|COLORNR|
|auctionArticleNumber|VEILART|
|packageId|FUSTCOD|
|supplierId|LEVCOD|
|articleGroupId|ARTGRPCOD|
|productGroupId|CELCOD|
|description_D|TEXT_D|
|description_E|TEXT_E|
|description_F|TEXT_F|
|description_G|TEXT_G|
|description_H|TEXT_H|
|description_I|TEXT_I|
|description_J|TEXT_J|
|description_K|TEXT_K|
|description_L|TEXT_L|
|description_M|TEXT_M|
|description_N|TEXT_N|
|description_O|TEXT_O|
|description_P|TEXT_P|
|description_Q|TEXT_Q|
|description_R|TEXT_R|
|externalCode|EXCODE|
|externalSupplierCode|EXLEVCOD|

## Constants/Bands (Band)

|API|Database|
|:--|:--|
|productionLineId|BANDNR|
|description|OMSCHR|
|version|_VERSION|
|pKey|_pKey|

## Constants/Carriers (Transptr)

|API|DATABASE|
|:--|:--|
|carrierId|TRANSPTR|
|name|TRANSTXT|
|address|ADRES|
|zipCode|PC|
|place|PLAATS|
|countryID|LANDCOD|
|phoneNr|TELNR|
|contactPerson|CONTACTPERS|
|email|EMAIL|
|version|_VERSION|
|niwOcod|NIWO|
|trolleyHeight|KARHOOGTE|
|inActive|INACTIEF|
|glnCode|GLNCODE|
|faxNr|FAXNR|
|afasId|AFASCODE|
|pKey|_PKEY|

## Constants/Colors (Color)

|API|DATABASE|
|:--|:--|
|colorId|COLORNR|
|color|COLORTXT|
|description_D|COLORTXT_D|
|description_E|COLORTXT_E|
|description_F|COLORTXT_F|
|s50_Feature|S50_KENM|
|pKey|_PKEY| 
|version|_VERSION|

## Constants/ComponentTypes (Systeemwaarden geen tabel)

|API|
|:--|
|id|
|description|

## Constants/Customers (Debiteur) (Met verwijzingen naar DEBCONTACT en DEB2)

|API|DATABASE|
|:--|:--|
|version|_VERSION|
|pKey|_PKEY|
|customerId|DEBNR|
|customerKey|DEBKEY|
|companyName|DEBNAAM|
|contact|DEBCONT|
|address|DEBADRES|
|postal|DEBPC|
|city|DEBPLAATS|
|countryId|DEBLANDCOD|
|regionId|REGIOID|
|profile|BRANCHCOD|
|phoneNr|DEBTFNR|
|mobile|DEBMOBIEL|
|faxNr|DEBFAXNR|
|email|EMAIL|
|customerEANCode|EANCODE|
|customerGLNAddress|GLNADRES|
|offerTreeId|AANBSTAFFEL|
|customerTreeId|KPSTAFFEL|
|priceTree2Id|PR2STAFFEL|
|priceTree3Id|PR3STAFFEL|
|customerGroupId|GROEPNR|
|seatNo|ZETELNR|
|plateNr|CPLAATNR|
|sellerId|VERKAGENT|
|vatnr|BTWNRDEB|
|cocNr|KVKNUMMER|
|debtorFinancialNr|FINDEBNR|
|paymentConditionId|BETCONDID|
|financialAdministrationId|FINADMIN|
|businessUnitId|BUNIT|
|priceConfigurationId|PROPCONF|
|dueDateInDays|BETTERMIJN|
|customerTypeId|DEBTYPEID|
|customerCategory|DEBCAT|
|accountManager|ACCTMNGR|
|collectionCustomer|DEB2.VERZAMELDEBITEUR|
|customerCardCode|KLANTCODE|
|invoiceTo|IKLANTVAN|
|creationDate|CREATIEDAT|
|lastModified|MODIFYTIME|
|isSubDebtor|ISSUBDEB|
|invoiceMailAddress|EMAILADRESSES|
|articleGroupSurcharge|ARTGRPOPSLAG|
|transportRouteId|TRANSPID|
|carrierAddress|TRANSADRES|
|deliveryAddressCompanyName|LVNAAMDB|
|deliveryAddressContact|LVCONTDB|
|deliveryAddress|LVADRESDB|
|deliveryAddressPostal|LVPLAATSDB|
|deliveryAddressPlace|LVPCDB|
|deliveryAddressCountry|LVLANDCODDB|
|deliveryAddressPhone|LVTFNRDB|
|deliveryAddressEAN|LEVEANCODE|
|deliveryAddressGLN|GLNLEVADR|
|SupplyAuctionAgentCode|AVOERCODE|
|SupplyAuctionPackAgentCode|AVOERCODFV|
|SupplyAuctionCode|AVOERVEIL|
|packingStation|DOOSLOCATIE|
|packingStationCheckDate|DOOSDATE|

## Constants/CreditReasons (Kieslijst)

|API|DATABASE|
|:--|:--|
|creditReasonCode|LIJSTCODE|
|description|TXT|
|description_E|TXT_EN|
|description_D|TXT_DE|
|description_F|TXT_FR|
|creditCategory|KIESLSTCAT|
|webShop|WEBSHOP|
|toReturn|RETOUR|
|refund|PRIJSCOR|
|pKey|_PKEY|
|version|_VERSION|

## Constants/CustomerGroups (Debgroep)

|API|DATABASE|
|:--|:--|
|customerGroupId|GROEPCOD|
|description|GROEPNAAM|
|version|_VERSION|
|pKey|_PKEY|
|mainGroup|HOOFDGRP|
|saleUnit|SALESUNIT|
|logisticsUnit|ISLOGISTIEKEUNIT|

## Constants/CustomerGroupRelations (DebnrGPCOD)

|API|DATABASE|
|:--|:--|
|customerId|DEBNR|
|customerGroupId|GROEPCOD|
|version|_VERSION|
|pKey|_PKEY|
|sequenceNumber|VOLGORDENUMMER|

## Constants/Countries (Land)

|API|DATABASE|
|:--|:--|
|id|LANDCOD|
|description|LANDTXT|
|version|_VERSION|
|currencyCode|VALCOD|
|isEUMember|EULID|

## Constants/Currencies (Valuta)

|API|DATABASE|
|:--|:--|
|id|VALCOD|
|description|VALTXT|
|version|_VERSION|
|pKey|_PKEY|

## Constants/Divisions (Afdeling)

|API|DATABASE|
|:--|:--|
|id|AFDELING|
|description|AFDTXT|
|version|_VERSION|
|pKey|_PKEY|

## DivisionMethods (Code waarden uit SalesHist)

|API|DATABASE|
|:--|:--|
|id||
|description||

## Constants/FinancialAdministrations (FinAdmin)

|API|DATABASE|
|:--|:--|
|id|ID|
|description|OMS|
|pKey|_PKEY|
|version|_VERSION|

## Constants/Growers (Kweker)

|API|DATABASE|
|:--|:--|
|growerId|KWEKCOD|
|name|KWEKTXT|
|address|ADRES|
|zipCode|POSTCOD|
|place|PLAATS|
|countryId|LANDCODE|
|growerEAN|EANCODE|
|phone|TELNR|
|email|EMAIL|
|varbNr|VARBNR|
|customerId|DEBNR|
|webserviceRaise|WSOPSLAG|
|plantPasport|PPASPOORTL|
|remark|OPMERKING|
|accManager|VERKOOPNR|
|mps|MPS|
|mpsNr|MPSNR|
|mpsType|MPSTYPE|
|mpsCert|MPSCERT|
|mpsStart|MPSSTART|
|mpsEnd|MPSEIND|
|mps2Nr|MPS2NR|
|mps2Type|MPS2TYPE|
|mps2Cert|MPS2CERT|
|mps2Start|MPS2START|
|mps2End|MPS2EIND|
|pkey|_PKEY|
|version|_VERSION|
|auctionCode|VEILCOD|

## Constants/Orderlists (BESTLIST)

|API|DATABASE|
|:--|:--|
|id|BESTCOD|
|subId|BESTSUB|
|description|BESTTXT|
|version|_VERSION|
|pKey|_PKEY|

## Constants/Packages (Fust)

|API|DATABASE|
|:--|:--|
|packageId|FUSTCOD|
|packagePrice|FUSTPRIJS|
|packageGrpID|FUSTGRPCOD|
|description|FUSTTXT|
|description_D|TEXT_D|
|description_E|TEXT_E|
|description_F|TEXT_F|
|packageType|FUSTSRT|
|transportType|TRANSTYPE|
|packagePrice2|FUSTPRIJS2|
|packagePrice3|FUSTPRIJS3|
|packagePrice4|FUSTPRIJS4|
|packagePurchaseAmount|FUSTINK|
|packageRentAmount|FUSTHPRIJS|
|packageRentAmount2|FUSTHPRIJS2|
|rentBTWCod|FUSTBTWHCD|
|btwCod|FUSTBTWCOD|
|packageCombi1|COMBI1|
|packageCombi2|COMBI2|
|packageCombi3|COMBI3|
|packageCombi4|COMBI4|
|ledgerAccount|GBREK|
|costUnit|KOSTENDRAGER|
|costUnitRent|KOSTENDRAGERHUUR|
|auctionPackage|VEILFUST|
|ownPackage|EIGENFUST|
|lockPlate|SLTPLT|
|supplierId|LEVCOD|
|germanVBNcod|GERVBN|
|barcodePrefix|BARCODEPREFIX|
|markCod|MARKERINGSCODE|
|material|MATERIAAL|
|netWeight|FUSTNETGEW|
|grossWeight|FUSTBTOWGEW|
|volumeWeight|FUSTVOL|
|collectionCode|VERZCOD|
|amountPerPallet|PERPALLET|
|packageLength|FUSTLEN|
|packageWidth|FUSTBREED|
|packageHeight|FUSTHOOG|
|plateHeight|PLAATHOOG|
|standardPackageContent|NORMKOLINH|
|standardAmountPerLayer|NORMLGINH|
|standardAmountPerCart|NORMKARINH|
|calculateVolume|BEPAALVOL|
|isBox|ISDOOS|
|loadCarrier|DRAAGCOD|
|version|_VERSION|
|pkey|_PKEY|

## Constants/ProductGroups (Cel)

|API|DATABASE|
|:--|:--|
|id|CELCOD|
|description|CELTXT|
|exCode|EXCODE|
|description_D|TEXT_D|
|description_E|TEXT_E|
|description_F|TEXT_F|
|description_G|TEXT_G|
|description_H|TEXT_H|
|description_I|TEXT_I|
|description_J|TEXT_J|
|description_K|TEXT_K|
|description_L|TEXT_L|
|description_M|TEXT_M|
|description_N|TEXT_N|
|description_O|TEXT_O|
|description_P|TEXT_P|
|description_Q|TEXT_Q|
|description_R|TEXT_R|
|pkey|_PKEY|
|version|_VERSION|

## Constants/ReservationTexts (ReservationTexts)

|API|DATABASE|
|:--|:--|
|reservationTextId|ReservationTextId|
|description|DESCRIPTION|
|reservationTextCode|RESERVATIONTEXTCODE|
|version|_VERSION|
|pKey|_PKEY|

## Constants/Sellers (Verkoper)

|API|DATABASE|
|:--|:--|
|id|VERKOOPNR|
|name|VERKOOPTXT|
|version|_VERSION|
|pKey|_PKEY|

## Constants/SortCodes (S_CODES)

|API|DATABASE|
|:--|:--|
|productCharacteristicCode|SORTCODE|
|feature|KENMERK|
|productCharacteristicDescription|SORTTXT|
|description_D|TEXT_D|
|description_E|TEXT_E|
|description_F|TEXT_F|
|pKey|_PKEY|
|version|_VERSION|

## SConstants/ources (Geen tabel waarden uit purchasehist)

|API|DATABASE|
|:--|:--|
|id||
|description||

## Constants/Suppliers (lever)

|API|DATABASE|
|:--|:--|
|supplierId|LEVCOD|
|name|LEVNAAM|
|contact|LEVCONT|
|address|LEVADRES|
|postal|LEVPC|
|city|LEVPLAATS|
|countryId|LEVLANDCD|
|supplierPhoneNr|LEVTFNR|
|supplierFax|LEVFAXNR|
|supplierEmail|EMAIL|
|eanCode|WSEAN|
|glnCode|GLNCOD|
|glnLocCode|LOCGLN|
|supplierIdCod|LEVID|
|customerId|DEBNR|
|staff|BESTSTAFF|
|certCod|CERTCOD|
|growerAuction|KWEKVEIL|
|growerId|KWEKCOD|
|finBTWCod|FINCODE|
|btwNr|BTWNRDEB|
|debtorFinancialNumber|FINDEBNR|
|accountManager|VERKOOPNR|
|currency|VALCOD|
|pKey|_PKEY|
|version|_VERSION|

## Constants/Stocks (Voorraad)

|API          |DATABASE      |
|:--          |:--           |
|id           |VOORCOD       |
|description  |VOORTXT       |
|IsVMPStock   |IsVMPStock    |
|BranchID     |VestigingId   |
|pKey         |_PKEY         |  
|version      |_VERSION      |

## Constants/Users (Users)

|API|DATABASE|
|:--|:--|
|id|USERID|
|name|NAAM|
|version|_VERSION|
|userDepartmentId|GEBRUIKERSAFDELINGID|
|email|EMAIL|
|sellerId|VERKCODE|
|phone|TELEFOON|
|pKey|_PKEY|
|version|_VERSION|

## Constants/Vats (BtwTabel)

|API|DATABASE|
|:--|:--|
|id|BWTCODE|
|description|BTWTXT|
|version|_VERSION|
|pKey|_PKEY|

## Constants/Buyers (Inkoper)

|API|DATABASE|
|:--|:--|
|buyerId|INKOPERNR|
|buyerName|INKOPERTXT|
|pKey|_PKEY|
|version|_VERSION|

## Constants/AuctionGroups (Veilgroep)

|API|DATABASE|
|:--|:--|
|auctionGrp|VEILGRP|
|buyerId|INKOPERNR|
|auctionGrpDescription|VEILGRPTXT|
|buyerId2|INKOPERNR2|
|buyerId3|INKOPERNR3|
|pKey|_PKEY|
|version|_VERSION|

## Constants/PaymentConditions (betcond)

|API|DATABASE|
|:--|:--|
|paymentCondtionId|BETCONDID|
|conditionCode|BETCONDCOD|
|conditionCode_G|BETCONDD|
|conditionCode_E|BETCONDE|
|conditionCode_F|BETCONDF|
|conditionCode_I|BETCONDI|
|description|BETCONDTXT|
|description_D|BETCONDTXTD|
|description_E|BETCONDTXTE|
|description_F|BETCONDTXTF|
|description_I|BETCONDTXTI|
|pKey|RECNO/PKEY|
|version|_VERSION|

## Constants/TransportRoutes

|API|DATABASE|
|:--|:--|
|Id|TRANSPID|
|Description|OMSCHR|
|CarrierId|TRANSPTR|
|DepartureTime|VERTREK|
|EndTime|EINDTIJD|
|ExpectedArrivalTime|VERWACHTEAANKOMSTTIJD|
|TravelTimeInMinutes|RITDUURINMINUTEN|
|OfficeOfExit|OFFICEOFEXIT|
|CountryOfDispatch|OFFICEOFDESTINATION|
|SentByDebtor|VERSTURENDEDEBNR|
|PlaceOfLoading|PLACEOFLOADING|
|PlaceOfDestination|PLACEOFDESTINATION|
|ReturningDebtor|RETOURENDEDEBITEUR|
|LoadingPort|LOADINGPORT|
|DestinationPort|DESTINATIONPORT|
|AgreedLocationOfGoods|AGREEDLOCATIONOFGOODS|
|AgreedLocationOfGoodsHouseNumber|AGREEDLOCATIONOFGOODSHOUSENR|
|Version|_VERSION|
|PKey|_PKEY|

## SalesHistory (horder) (joins van HPARTIJ & HORDERKP)

|API|DATABASE|
|:--|:--|
|Department|AFDELING|
|ArticleGroupId|ARTGRPCOD|
|S01|ARTLEN|
|ArticleId|ARTNR|
|Description|ARTTXT|
|DivisionId|BARCODE|
|ProductGroupId|CELCOD|
|CustomerId|DEBNR|
|S02|GEWICHT|
|ContentColli|INHKOLLI|
|InvoiceNr|FACTNR|
|PriceBare|KALEPRIJS|
|PriceEndCustomer|KLANTPRIJS|
|GrowerId|KWEKCOD|
|GrowerEAN|KWEKEREAN|
|SupplierId|LEVCOD|
|TotalStems|LEVTOTAAL|
|OrderDate|ORDDAT|
|OrderNr|ORDNR|
|ParcelNo|PARTIJNR|
|PriceOnInvoicePurchase|PART1PRIJS|
|PriceOnInvoiceSales|PART2PRIJS|
|ParcelDate|PARTIJDAT|
|pKEy|_PKEY|
|S03|POTMAAT|
|regDate|REGDAT|
|subCustomerId|SUBDEBNR|
|userId|USERID|
|priceWithCostReductions|VERKBEDRAG|
|sellerId|VERKCOD|
|parcelPurchaseNo|VPARTIJNR|
|salesUnit|VE|
|version|_VERSION|
|contentBunch|INHBOS|
|contentBox|INHDOOS|
|vatId|BTWCOD|
|customerFinId|HORDERKP.FINDEBNR|
|invoiceGoodsAmount|HORDERKP.TOTGOEDER|
|invoiceTotalAmount|HORDERKP.FACTTOTAAL|
|invoiceDate|FCTDAT|
|priceOnPurchase|HPARTIJ.PRIJS|
|customerCountryId|landcod|
|parcelS01Id|SCODE1|
|parcelS02Id|SCODE2|
|parcelS03Id|SCODE3|
|parcelS04Id|SCODE4|
|parcelS05Id|SCODE5|
|parcelS06Id|SCODE6|
|parcelS07Id|SCODE7|
|DivisionMethodId|VERDTYPE|
|FinancialAdmId|HORDERKP.FINADMIN|
|StockId|DEVISIE|
|packageQuantity|FUSTAANTAL|
|packageId|FUSTCOD|
|packagePrice|VERKFUST|
|S04|S4|
|S05|S5|
|S06|S6|
|S07|S7|
|priceParcelPurchase|PARTIJPRIJS1|
|priceParcelSales|PARTIJPRIJS2|
|ComponentTypeId|PTYPE|
|currencyId|HORDERKP.VALCOD|
|OrderParcelId|BESTPARTNR|
|PackListId|PAKLIJSTNR|
|DepartureDate|VERTREKDAG|
|remark|OPMERKING|
|remark2|OPMERKING2|
|remark3|OPMERKING3|
|orderRemark|BESTOPM|
|orderRemark2|BESTOPM2|
|deliveryDate|LEVERDATUM|
|OriginalOrderParcelId|ORIGINEELBESTELPARTIJNR|
|fromCustomer|FROMDEBNR|
|fromOrderNr|FROMORDNR|
|commercialParcelId|CPARTIJNR|
|deadlineNr|DEADLINENR|
|FloridayDeliveryOrderId|DeliveryOrderId|
|FloridayFulfillmentRequestId|FulfillmentRequestId|
|FloridaySalesOrderId|SalesOrderId|
|ParcelType|PARTTYPE|
|UnitCode|UNITCOD|
|TotalSalesLinePrice|INCLREGKK|
|LineNumber|FACTREGEL|

## PurchaseHistory (hpartij)

| DATABASE            | API                  |
| :--                 | :--                  |
| _PKEY               | pKey                 |
| _VERSION            | version              |
| AFBOEKA             | WriteOffQuantity     |
| AFBOEKM             | WriteOffId           |
| ARTNR               | ArticleId            |
| ARTTXT              | Description          |
| BESTELPARTIJNR      | OrderParcelId        |
| BESTPRIJS           | PriceOrder           |
| BETDAT              | PaymentDate          |
| BETTIME             | PaymentTime          |
| BETUSER             | PaymentUSer          |
| BINNENTIJD          | CheckInDateTime      |
| BOXCOD              | EntryControlId       |
| CREATIE             | Creation             |
| DEADLINENR          | DeadlineNr           |
| DEVISIE             | StockId              |
| EANCODE             | GrowerEan            |
| EFACTBARC           | EInvoiceBarcode      |
| EXPARTIJNR2         | ExParcelId2          |
| EXTERNPARTIJID      | ExternalParcelId     |
| FUSTAANTAL          | PackageQuantity      |
| FUSTCOD             | PackageId            |
| INBTWCODE           | VatId                |
| INHBOS              | ContentBunch         |
| INHOUD              | ContentColli         |
| INKPRIJS1           | PriceParcelPurchase1 |
| KALEPRIJS           | BarePrice            |
| KALEPRIJSINVALUTA   | BarePriceInCurrency  |
| KLEUR               | Color                |
| KLOKTRANS           | ClockTrans           |
| KOLLI               | Colli                |
| KOPERNR             | BuyerNo              |
| KWEKER              | GrowerId             |
| LAND                | CountryId            |
| LEVCOD              | SupplierId           |
| LEVFACTNR           | SupplierInvoiceNr    |
| OORSPRONG           | SourceId             |
| OPMERKING           | Remark               |
| ORDDAT              | OrderDate            |
| PARTIJDAT           | ParcelDate           |
| PARTIJNR            | ParcelId             |
| PARTIJOPMERKING1    | ParcelRemark1        |
| PARTIJOPMERKING2    | ParcelRemark2        |
| PARTINKPR2          | ParcelPurchasePrice2 |
| PLAATNR             | PlateNo              |
| POCode              | POCode               |
| PRIJS               | Price                |
| PRIJSINCL           | PriceIncl            |
| PRIJSINVAL          | PriceInCurrency      |
| RESERVATIONTEXTID   | ReservationTextId    |
| RESERVATIONTEXTCODE | ReservationTextCode  |
| REST                | RestQuantity         |
| S1                  | S01                  |
| S2                  | S02                  |
| S3                  | S03                  |
| S4                  | S04                  |
| S5                  | S05                  |
| S6                  | S06                  |
| S7                  | S07                  |
| SCODE1              | ParcelS01Id          |
| SCODE2              | ParcelS02Id          |
| SCODE3              | ParcelS03Id          |
| SCODE4              | ParcelS04Id          |
| SCODE5              | ParcelS05Id          |
| SCODE6              | ParcelS06Id          |
| SCODE7              | ParcelS07Id          |
| SHIPMNTNO           | ShipmentNo           |
| SORT1               | S01                  |
| SORT2               | S02                  |
| SORT3               | S03                  |
| TOTAALKOSTPRIJS     | TotalCostPrice       |
| TRANS               | TransId              |
| TRANSLANG           | TransIdLong          |
| VEILCOD             | AuctionId            |
| VERSCHEPID          | ShipmentId           |
| VPARTIJNR           | VParcelId            |
| ZETELNR             | SeatNo               |

## BandRef (bandref)

|API|DATABASE|
|:--|:--|
|productionLineId|ProductionLineId|
|parcelId|PARTIJNR|
|vParcelId|VPARTIJNR|
|bouquetTask|BOEKETOPDR|
|bouquetDebtor|BOEKETDEBNR|
|status|STATUS|
|bouquetPriority|BPRIO|
|deadline|DEADLINE|
|quantityInProcess|AANTBEZIG|
|quantityDone|AANTKLAAR|
|productionLineReferenceId|BANDREFID|
|start|START|
|end|EIND|
|paused|PAUSED|
|timePaused|TOTPAUSED|
|workerOnLine|PERSOPBAND|
|part|DEEL|
|packageQuantity|FUSTAANT|
|divisionId|BARCODE|
|contentColli|INHCOLLI|
|creation|CREATIE|
|packageId|FUSTCOD|
|readyForProduction|GEZET|
|printTime|PRINT|
|printUser|PRINTUSER|
|totalQuantity|TOTAAL|
|malfunction|STORING|
|planned|INGEPLAND|
|startDivision|STARTVERDEEL|
|endDivision|EINDVERDEEL|
|version|_VERSION|
|pKey|RECNO/PKEY|

## BandRefLog (BandRefLog)

|API|DATABASE|
|:--|:--|
|lineReferenceID|BANDREFID|
|logType|LOGTYPE|
|logTime|LOGTIME|
|userId|USERID|
|productionLineId|BANDNR|
|status|STATUS|
|quantity|AANTAL|
|workerOnLine|PERSOPBAND|
|reason|REDEN|
|processId|PROCESID|
|processCode|PROCESCODE|
|version|_VERSION|
|pKey|RECNO/PKEY|

## CustomerOrders (BestVerd)

|API|DATABASE|
|:--|:--|
|parcelId|PARTIJNR|
|orderListId|BESTCOD|
|orderlistSubId|BESTSUB|
|customerId|DEBNR|
|orderNr|ORDNR|
|description|ARTTXT|
|quantity|AANTAL|
|colli|KOLLI|
|original|ORIGINAL|
|orginalColli|ORIGIKOL|
|contentColli|INHKOLLI|
|packageQuantity|FUSTAANTAL|
|packageId|FUSTCOD|
|priceParcelPurchase|INKPRIJS|
|price|PRIJS|
|qualityId|KWALCOD|
|delivery|LEVEREN|
|barcode|BARCODE|
|currencyId|VALUTA|
|registrationDate|REGDAT|
|registrationTime|REGTIME|
|colliText|KOLLITXT|
|remark|OPMERKING|
|handling|HANDLING|
|userId|USERID|
|code|CODE|
|orderDate|ORDDAT|
|deliveryTime|LEVERTIJD|
|contentPlate|INHPLAAT|
|contentTrolley|INHKAR|
|contentPackage|INHFUST|
|sellerId|VERKCOD|
|externalOrderId|EXBESTID|
|compositionOrderId|COMPBESTID|
|orderId|BESTID|
|remark2|OPMERK2|
|packageCarrier|FUSTDRAGER|
|externalSupplierId|EXLEVCOD|
|auctionGrp|VEILGRP|
|creation|CREATIE|
|bouquet|BOEKET|
|deliveryDate|LEVERDAT|
|orderApprovalId|ISLEVBEST|
|priceFixed|FIXEDPRICE|
|shipmentNo|SHIPMENTNO|
|maxPurchasePrice|MAXINK|
|purchaseDate|INKOOPDAT|
|productionDate|PRODDAT|
|contentBunch|INHBOS|
|monoBouquetContent|MONOBKINH|
|priced|GEPRIJSD|
|orderType|BESTELTYPE|
|shippingId|VERSCHEPID|
|s01|ARTLEN|
|s02|GEWICHT|
|s03|POTMAAT|
|s04|S4|
|s05|S5|
|s06|S6|
|s07|S7|
|customerOrderNr|KLANTORDNR|
|remark3|OPMERKING3|
|priceBase|BASISPRIJS|
|confirmationUser|BEVESTUSER|
|confirmationTime|BEVESTTIME|
|eanCode|EANCODE|
|divisionId|VERDEELID|
|customerPriceInCurrency|KLANTPRVAL|
|externalBarcode|EXBARCODE|
|holdOrder|VASTHOUDEN|
|bouquetId|BOEKETID|
|scanCode|SCANCODE|
|deadlineNr|DEADLINENR|
|supplierNote|SUPPLIERNOTE|
|version|_VERSION|
|pKey|_PKEY|
|reservationTextId|RESERVATIONTEXTID|

## DivisionPriceLog (VerdPrsLog)

|API|DATABASE|
|:--|:--|
|divisionId|VERDEELID|
|step|STAP|
|basePrice|BASISPRIJS|
|raiseAmount|OPSLAGBEDR|
|raisePrcnt|OPSLAGPERC|
|finalAmount|EINDBEDRAG|
|sequenceNumber|VOLGORDE|
|creation|CREATED|
|priceLogId|PRSLOGID|
|onCustomerId|OPDEBNR|
|pKey|PKEY/RECNO|
|version|_VERSION|

## InvoiceApproval (AccFaccred)

|API|DATABASE|
|:--|:--|
|toDebtor|TODEBNR|
|toOrderNr|TOORDNR (DEBNR)|
|customerId|DEBNR|
|orderNr|ORDNR|
|articleId|ARTNR|
|invoiceNr|FACTNR|
|amount|AANTAL|
|date|DATUM|
|divisionId|BARCODE|
|processingDate|AFWDAT|
|creditVia|CREDITVIA|
|userId|USERID|
|packageCredit|FUSTCRED|
|packageQuantity|FUSTAANTAL|
|reasonForCredit|CREDRED|
|approvingSalesUser|CREDVERK|
|processingChoice|VERWKEUZE|
|creditRemark|CREDOPM|
|processinText|VERWTEXT|
|doneProcessing|VERWDONE|
|creditQuantity|CREDAANT|
|parcelDate|PARTIJDAT|
|supplierId|LEVCOD|
|returnedProduct|PRODRETOUR|
|registrationDate|REGDAT|
|statusId|STATUSID|
|s01|ARTLEN|
|countryId|LANDCOD|
|accountManager|ACCTMNGR|
|stateColor|STATUSKLEUR|
|historicalShipmentNo|HPARTSHIPMENTNO|
|packageCode|FUSTCODE|
|everythingCredited|ALLESGECREDITEERD|
|reasonForCreditId|CREDITREDENID|
|invoiceCreditStatus|FACTUURCREDITSTATUS|
|pKey|PKEY/RECNO|
|version|_VERSION|

## InvoiceCredits (ORDCREDIT + ACCFACCRED)

|API|DATABASE|
|:--|:--|
|creditBarcode|ORDCREDIT.HBARCODE|
|originalBarcode|ORDCREDIT.BARCODE|
|creditReason|ORDCREDIT.REDEN|
|returnToStock|ORDCREDIT.TRGVOOR|
|sellerId|ORDCREDIT.VERKCOD|
|date|ORDCREDIT.DATUM|
|vParcelId| ORDCREDIT.VPARTIJNR|
|creditQuantity|ORDCREDIT.CREDAANTAL|
|creditPrice|ORDCREDIT.CREDPRIJS|
|remark|ORDCREDIT.OPMERKING|
|processingChoice|ORDCREDIT.VERWKEUZE|
|userId|ORDCREDIT.USERID|
|creditReasonId|CREDITREDENID|
|pKey|ORDCREDIT._pkey|
|version|ORDCREDIT._Version|
|approvedBy|ACCFACCRED.USERID|
|approvedDate|ACCFACCRED.AFWDATE|
|packageId|ACCFACCRED.FUSTCODE|
|creditInvoiceDate|ACCFACCRED.DATUM|
|creditInvoiceNumber|ACCFACCRED.FACTNR|

## OrderlistAssortment (Bestel)

|API|DATABASE|
|:--|:--|
|parcelId|PARTIJNR|
|stockId|DEVISIE|
|articleKey|ARTKEY|
|lineArticleId|LIJNARTNR|
|orgParcelId|ORGPARTNR|
|growerArticleId|KWEKARTNR|
|exArticleId|EXARTNR|
|articleId|ARTNR|
|description|ARTTXT|
|qualityId|KWALCOD|
|externalSupplierId|EXLEVCOD|
|supplierId|LEVCOD|
|basePrice|BASISPRIJS|
|consumerPrice|CONSPRIJS|
|priceBare|KALEPRIJS|
|costPrice|KOSTPRIJS|
|price|PRIJS|
|contentColli|INHKOLLI|
|packageId|FUSTCOD|
|auctionGrp|VEILGRP|
|volume|VOLUME|
|deselect|DESELECT|
|packageContent|INHFUST|
|remark|OPMERKING|
|exCode|EXCODE|
|newDate|NEWDATE|
|scanCode|SCANCODE|
|code|CODE|
|valid|VALID|
|priceParcelPurchase|INKOOPPRIJS|
|buyerId|INKOPERNR|
|minPurchase|MINAFNAME|
|amount2|AANTAL2|
|amount3|AANTAL3|
|price2|PRIJS2|
|price3|PRIJS3|
|contentBunch|INHBOS|
|contentPlate|INHPLAAT|
|contentTrolley|INHKAR|
|s01|ARTLEN|
|s02|GEWICHT|
|s03|POTMAAT|
|s04|S4|
|s05|S5|
|s06|S6|
|s07|S7|
|parcelS01Id|SCODE1|
|parcelS02Id|SCODE2|
|parcelS03Id|SCODE3|
|parcelS04Id|SCODE4|
|parcelS05Id|SCODE5|
|parcelS06Id|SCODE6|
|parcelS07Id|SCODE7|
|parcelS01Id|SCODE1|
|parcelS02Id|SCODE2|
|parcelS03Id|SCODE3|
|parcelS04Id|SCODE4|
|parcelS05Id|SCODE5|
|parcelS06Id|SCODE66|
|parcelS07Id|SCODE7|
|raiseCnt|OPSLAGC|
|available|LEVERBAAR|
|countryId|LAND|
|sellerId|VERKCOD|
|priceGroup1|PRIJSGRP_1|
|priceGroup2|PRIJSGRP_2|
|priceGroup3|PRIJSGRP_3|
|priceGroup4|PRIJSGRP_4|
|priceGroup5|PRIJSGRP_5|
|priceGroup6|PRIJSGRP_6|
|priceGroup7|PRIJSGRP_7|
|priceGroup8|PRIJSGRP_8|
|priceGroup9|PRIJSGRP_9|
|priceGroup10|PRIJSGRP_10|
|priceGroup11|PRIJSGRP_11|
|priceGroup12|PRIJSGRP_12|
|priceGroup13|PRIJSGRP_13|
|priceGroup14|PRIJSGRP_14|
|priceGroup15|PRIJSGRP_15|
|priceGroup16|PRIJSGRP_16|
|priceGroup17|PRIJSGRP_17|
|priceGroup18|PRIJSGRP_18|
|priceGroup19|PRIJSGRP_19|
|priceGroup20|PRIJSGRP_20|
|priceModified|PRYSMODIFY|
|exDecription|EXOMSCHR|
|feature|KENMERK|
|creation|CREATIE|
|growerEan|KWEKEREAN|
|modified|MODIFIED|
|contenBox|INHDOOS|
|volumeKilo|VOLKILO|
|priceModifyUser|PRSMODUSR|
|bestOrigin|BESTORIGIN|
|volumeStem|VOLUMELOS|
|bouquet|BOEKET|
|exPhotoURL|EXFOTOURL|
|raisePrcnt|OPSLAGP|
|featureCod|FEATURECOD|
|colorId|COLORNR|
|remark2|OPMERKING2|
|minRest|MINRESTANT|
|priceInCurrency|PRIJSINVAL|
|orderApproval|LEVBESTEL|
|location|LOCATIE|
|xdays|XDAGEN|
|monoBouquetDescription|MONOBKTXT|
|monoBouquetContent|MONOBKINH|
|description_D|TEXT_D|
|description_E|TEXT_E|
|description_F|TEXT_F|
|description_G|TEXT_G|
|description_H|TEXT_H|
|description_I|TEXT_I|
|description_J|TEXT_J|
|description_K|TEXT_K|
|description_L|TEXT_L|
|eanCode|EANCODE|
|brokenColliRaise|GEBKOLOPS|
|fromParcelId|FROMPARTNR|
|volumeTrolleyPackageId|VOLUMEDRAGERFUSTCODE|
|priceFixed|FIXEDPRICE|
|version|_VERSION|
|productGroupId|CELCOD|
|vParcelId|VPARTIJNR|
|noPriceLabel|NOPRIJSSTK|
|floirdayGUID|FDAYGUID|

## OrderlistComponents (bestbos)

|API|DATABASE|
|:--|:--|
|articleId|ARTNR|
|description|ARTTXT|
|colorId|KLEURCOD|
|priceParcelPurchase1|INKPRIJS1|
|priceParcelPurchase2|INKPRIJS2|
|quantity|AANTAL|
|parcelId|PARTIJNR|
|bParcelId|BPARTIJNR|
|s01|LENGTE|
|s02|S2|
|remark|OPMERKING|
|supplierId|LEVCOD|
|contentColli|INHKOLLI|
|componentWeight|COMPONENTGEWICHT|
|quantityPer|AANTALPER|
|assortment|ASSORT|
|version|_VERSION|
|pKey|PKEY/RECNO|

## Constants/Bands (BANDS)

|API|DATABASE|
|:--|:--|
|productionLineId|BANDNR|
|description|OMSCHR|
|version|_VERSION|

## Constants/Carriers (TRANSPTR)

|API|DATABASE|
|:--|:--|
|carrierId|TRANSPTR|
|name|TRANSTXT|
|address|ADRES|
|zipCode|PC|
|place|PLAATS|
|countryID|LANDCOD|
|phoneNr|TELNR|
|contactPerson|CONTACTPERS|
|email|EMAIL|
|version|_VERSION|
|niwOcodNIWO|NIWO|
|trolleyHeight|KARHOOGTE|
|inActive|INACTIEF|
|glnCode|GLNCOD|
|faxNr|FAXNR|
|afasId|AFASCODE|

## Constants/CustomerGroups (DEBGROEP)

|API|DATABASE|
|:--|:--|
|customerGroupId|GROEPCOD|
|description|GROEPNAAM|
|version|_VERSION|
|mainGroup|HOOFDGRP|
|saleUnit|SALESUNIT|
|logisticsUnit|ISLOGISTIEKEUNIT|

## Constants/CustomerGroupRelations (DebnrGPCod)

|API|DATABASE|
|:--|:--|
|customerId|DEBNR|
|customerGroupId|GROEPCOD|
|version|_VERSION|
|sequenceNumber|VOLGORDENUMMER|

## Constants/CostsAndRebates (BERFACT)

|API|DATABASE|
|:--|:--|
|Department|AFDELING|
|Code|BERCOD|
|Description|BERTXT|
|Amount|BERSOM|
|Percentage|BERPERC|
|CalculationOption|BERKSTIEK|
|VatCode|BTWCOD|
|CurrencyCode|VALCOD|
|ScaleId|STAFFELKEY|
|TotalQuantity|LEVTOTAAL|
|Price|PART2PRIJS|
|StemPrice|PRIJSSTEEL|
|ColliPrice|PRIJSKOLLI|
|KoaPrice|KOAPRIJS|
|LinePrice|REGELPRIJS|
|GroupCode|GROEPCOD|
|Type|TYPE|
|ApplyStockOption|VRDCON|
|Id|ID|
|ApplySupplierOption|TOEPASSENLEVERANCIER|
|Version|_VERSION|
|PKey|_pkey|

## OutstandingInvoices (OPENPOST)

|API|DATABASE|
|:--|:--|
|productionLineId|FACTDAT|
|reminder1|MANEN1|
|reminder2|MANEN2|
|reminder3|MANEN3|
|reminder4|MANEN4|
|reminder5|MANEN5|
|invoiceAmount|FACTBEDR|
|dontCollect|NOINCASSO|
|calculateInterest|RENTECALC|
|log|LOG|
|hasUnprocessedPayments|HASUNPROCESSEDPAYMENTS|
|realCustomerId|ECHTEDEBNR|
|customerId|DEBNR|
|invoiceNr|FACTNR|
|currency|VALUTA|
|lineId|LIJNCOD|
|userId|USERID|
|remark|OPMERKING|
|orderNr|ORDNR|
|financialAdministrationid|FINADMIN|
|processed|VEWERWERKT|
|pKey|PKEY/RECNO|
|version|_VERSION|

## PackageHistory (FUSTUIT)

|API|DATABASE|
|:--|:--|
|customerId|DEBNR|
|auctionDate|VEILDATUM|
|date|DATUM|
|packageId|FUSTCOD|
|invoiceNr|FACTNR|
|totalPackageOut|TOTFUSTUIT|
|totalPackageIn|TOTFUSTIN|
|customerPrice|DEBPRIJS|
|amountOfDaysInvoiced|GEFACTDAGEN|
|rentFree|HUURVRIJ|
|rentPrice|HUUPRIJS|
|exportTime|EXPORTTIME|
|remark|OPMERKING|
|sellerId|VERKCOD|
|treePrice|STAFFELPRS|
|registrationDate|REGDAT|
|orderNr|ORDERNR|
|colliTrackerTransactionID|COLLTRACKERTRANSACTIONID|
|colliTrackerExport|COLLITRACKEREXPORT|
|colliTrackerTransactionID1|COLLITRACKERTRANSACTIONID1|
|trackOnlineGUID|TRACKONLINEGUID|
|id|ID|
|pKey|PKEY/RECNO|
|version|_VERSION|

## Payments (BETAAL)

|API|DATABASE|
|:--|:--|
|customerId|DEBNR|
|invoiceNr|FACTNR|
|invoiceDate|FACTDAT|
|paymentDate|BETDAT|
|paymentId|BETCODE|
|amount|BEDRAG|
|currency|VALUTA|
|userId|USERID|
|checkId|CHECKNR|
|description|TEXT|
|creation|CREATIE|
|feature|KENMERK|
|uniqueId|UNIQUEID|
|webPaymentId|WEBBETID|
|terminalId|TERMINALID|
|sendEmail|EMAILSEND|
|printInvoiceNr|PRINTFACTUURNUMMER|
|surchargePrcnt|SURCHARGEPERCENTAGE|
|surchargeRaise|SURCHARGEOPSLAG|
|adherrentLedgerNr|ADWIJKENDGROOTBOEKNUMMER|
|pKey|PKEY/RECNO|
|version|_VERSION|

## PaymentHistory (HBETAAL)

|API|DATABASE|
|:--|:--|
|customerId|DEBNR|
|invoiceNr|FACTNR|
|invoiceDate|FACTDAT|
|expirationDate|VERVDAT|
|paymentDate|BETDAT|
|paymentId|BETCODE|
|amount|BEDRAG|
|currency|VALUTA|
|userId|USERID|
|checkId|CHECKNR|
|description|TEXT|
|invoiceAmount|FACTBEDRAG|
|uniqueId|UNIQUEID|
|surchargePrcnt|SURCHARGEPERCENTAGE|
|surchargeRaise|SURCHARGEOPSLAG|
|pKey|PKEY/RECNO|
|version|_VERSION|

## Shoplog (WEBLOG)

|API|DATABASE|
|:--|:--|
|logId|LOGID|
|userId|USERID|
|customerId|DEBNR|
|stockId|VOORCOD|
|logTime|LOGTIME|
|productGroupID|CELCOD|
|articleGroupId|ARTGRPCOD|
|searchDescription|PARTIJTXT|
|s01|S1|
|color|KLEUR|
|feature|KENMERK|
|parcelId|PARTIJNR|
|quantity|AANTAL|
|customerIP|DEBIP|
|orderlistSubId|BESTSUB|
|orderNr|ORDNR|
|description|PARTIJOMSC|
|webshop|WEBSHOP|
|barcode|BARCODE|
|divisionType|VERDEELTYPE|
|remark|OPMERKING|
|pKey|PKEY/RECNO|
|version|_VERSION|

## SalesDivisions (VERDEEL) (MET JOINS OP PARTIJ)

|API|DATABASE|
|:--|:--|
|stockID|DEVISIE|
|bouquetCustomerId|BOEKETDEBNR|
|customerId|DEBNR|
|orderNr|ORDNR|
|department|AFDELING|
|articleId|ARTNR|
|parcelDate|PARTIJDAT|
|amount|AANTAL|
|parcelId|PARTIJNR|
|packageQuantity|FUSTAANTAL|
|contentColli|INHKOLLI|
|description|ARTTXT|
|s1|ARTLEN|
|salesPrice1|PART1PRIJS|
|saleAmount|VERKPRIJS|
|packageId|FUSTCOD|
|userId|USERID|
|productGroupId|CELCOD|
|vParcelId|VPARTIJNR|
|packlistId|PAKLIJSTNR|
|salesRecordId|BARCODE|
|bouquet|BOEKET|
|orderprice|BESTPRIJS|
|remark|OPMERKING|
|salesUnit|VE|
|creation|CREATIE|
|volume|VOLUME|
|orderDescription|BESTELOMS|
|divisionType|VERDTYPE|
|holdOrder|VASTHOUDEN|
|priceBase|BASISPRIJS|
|deliveryDate|LEVERDATUM|
|contentPlate|INHPLAAT|
|contentTrolley|INHKAR|
|registrationDate|REGDAT|
|orderListId|BESTCOD|
|originalColli|ORGIKOL|
|retailPrice|RETPRIJS|
|orderDate|ORDDAT|
|scanCode|SCANCODE|
|contentBox|INHDOOS|
|pKey|PKEY/RECNO|
|version|_VERSION|
|orderParcelId|BESTELPARTIJNR|
|reservationTextId|RESERVATIONTEXTID|
|OrderId|BESTID|
|articleLength|ARTLEN|
|potsize|POTMAAT|
|s4|S4|
|s5|S5|
|s6|S6|
|s7|S7|
|weight|GEWICHT|
|orderId|BESTID|
|deadlineNR|DEADLINENR|

## SalesHistoryCostAndRebates (HoRDERKK)

|API|DATABASE|
|:--|:--|
|id|BERCOD|
|customerId|DEBNR|
|orderNr|ORDNR|
|invoiceNr|FACTNR|
|department|AFDELING|
|description|BERTXT|
|amount|BERSOM|
|percentage|BERPERC|
|calculationMethod|BERKSTIEK|
|vatId|BTWCOD|
|exchangeRate|KOERS|
|totalAmount|PRINTBEDR|
|totalAmountOver|PRINTOVER|
|creation|CREATIE|
|version|_VERSION|
|costCode|BERCOD|
|deadlinenr|DEADLINENR|

## SalesHistoryBouquets (HORDER) (met join op HORDERKP)

|API|DATABASE|
|:--|:--|
|articleGroupId|ARTGRPCOD|
|articleId|ARTNR|
|contentBox|INHDOOS|
|contentBunch|INHBOS|
|contentColli|INHCOLLI|
|currencyId|VALCOD|
|customerCompanyName|DEBNAAM|
|customerCountryId|LANDCOD|
|customerFinId|DEBFINID|
|customerId|DEBNR|
|department|AFDELING|
|description|ARTTXT|
|divisionId|VERDEELID|
|divisionMethodId|VERDTYPE|
|financialAdmId|FINADMIN|
|growerEAN|KWEKEREAN|
|growerId|KWEKCOD|
|invoiceDate|FCTDAT|
|invoiceGoodsAmount|HORDERKP.TOTGOEDER|
|invoiceNr|FACTNR|
|invoiceTotalAmount|HORDERKP.FACTTOTAAL|
|orderDate|ORDDAT|
|orderNr|ORDNR|
|packageQuantity|FUSTAANTAL|
|packagePrice|VERKFUST|
|packageId|FUSTCOD|
|parcelDate|PARTDAT|
|parcelNo|PARTIJNR|
|parcelPurchaseNo||
|parcelS01Id|SCODE1|
|parcelS02Id|SCODE2|
|parcelS03Id|SCODE3|
|parcelS04Id|SCODE4|
|parcelS05Id|SCODE5|
|parcelS06Id|SCODE6|
|parcelS07Id|SCODE7|
|pKey|PKEY/RECNO|
|priceBare|KALEPRIJS|
|priceEndCustomer|KLANTPRIJS|
|priceOnInvoicePurchase||
|priceOnInvoiceSales||
|priceOnPurchase||
|priceParcelPurchase||
|priceParcelSales||
|priceWithCostsReductions||
|productGroupId|CEL|
|regDate|REGDAT|
|s01|S1|
|s02|S2|
|s03|S3|
|s04|S4|
|s05|S5|
|s06|S6|
|s07|S7|
|salesUnit|VE|
|sellerId|VERKCOD|
|stockId|DEVISIE|
|subCustomerId|SUBDEBNR|
|supplierId|LEVCOD|
|totalStems||
|userId|USERID|
|vatId|BTWCOD|
|componentTypeId||
|version|_VERSION|
|orderParcelId|BESTPARTNR|
|packListId|PAKLIJSTNR|
|departureDate|VERTREKDAG|
|remark|OPMERKING|
|remark2|OPMERKING2|
|remark3|OPMERKING3|
|orderRemark|BESTOPM|
|orderRemark2|BESTOPM2|
|deliveryDate|LEVERDATUM|

## SalesHistoryInvoiceHeaders (HORDERKP)

|API|DATABASE|
|:--|:--|
|customerId|DEBNR|
|orderNr|ORDNR|
|customerName|DEBNAAM|
|invoiceNr|FACTNR|
|currencyId|VALCOD|
|exchangeRate|KOERS|
|exhangeRateActual|KOERSREAL|
|invoiceDate|FCTDAT|
|commission|COMMISSIE|
|oneTimePackageAmount|EMFUST|
|returnablePackageAmount|MMFUST|
|packageRentAmount|FUSTHUUR|
|vatLow|BTWLAAG|
|vatHigh|BTWHOOG|
|vatLowOver|BTWLAAGOVER|
|vatHighOver|BTWHOOGOVER|
|vatZeroOver|BTWNULOVR|
|invoiceTotalAmount|FACTTOTAAL|
|vatCharged|BTWOK|
|financialAdministrationId|FINADMIN|
|goodsAmount|TOTGOEDER|
|carrierId|TRANSPTR|
|auctionTradeTransaction|OVERGEVEN|
|printedBy|PRINTBY|
|exchangeRateActual|KOERSREAL|
|printedByUserId||
|packageQuantity|FUSTAANTAL|
|packageAmount|FUSTPRIJS|
|totalPurchaseValue|INKOOP1|
|oneTimePackageValue|EMFUSTALL|
|returnablePackageValue|MMFUSTALL|
|printTime|PRINTTIJD|
|packagePurchaseAmount|TOTFUSTINK|
|AuctionDate|VEILDATUM|
|DepartureDate|VERTREKDAG|
|pkey|_PKEY|
|version|_VERSION|

## ScanHistory (HPSCAN)

| API            | DATABASE  |
|:--             |:--        |
| pKey           | _pkey     |
| version        | _version  |
| entryControlId | boxcod    |
| scanLocation   | scanloc   |
| scanTime       | scantime  |
| text           | text      |
| userId         | userid    |
| vParcelId      | vpartijnr |


## OrderApprovals (AccLevBestVerd)

|API|DATABASE|
|:--|:--|
|orderId|BESTID|
|state|STATUS|
|deadlineNr|DEADLINENR|
|supplierId|LEVCOD|
|divisionId|VERDEELID|
|deadline|DEADLINE|
|shippingDate|VERSTUURD|
|confirmationDate|BEVESTIGD|
|salesUser|VERUSERID|
|orderDate|ORDDAT|
|contentColli|INHOUDKOLLI|
|articleID|ARTNR|
|transportCostPerStem|TRANSPORTKOSTENPERSTEEL|
|growerConfirmationStatus|KWEKERAKKOORDSTATUS|
|growerConfirmationDate|KWEKERAKKOORDSTATUSDATUM|
|confirmedPrice|BEVESTIGINGSPRIJS|
|loadCarrier|LADINGDRAGER|
|deliveryLocationId|LEVERLOCATIEID|
|deliveryMethodId|LEVERWIJZEID|
|shipmentId|SHIPMENTID|
|version|_VERSION|
|pKey|PKEY/RECNO|
|deviatingBarePrice|AfwijkendeKalePrijs|

## Pickorders (XORDER)

|API|DATABASE|
|:--|:--|
|crossdeck|CROSSDECK|
|stockId|KASSA_ID|
|customerId|DEBNR|
|articleId|ARTNR|
|parcelId|PARTIJNR|
|vparcelId|VPARTIJNR|
|ordernr|ORDNR|
|orderTime|ORDTIME|
|pickTime|PAKTIME|
|totalColli|TOTKOLLI|
|contentColli|INHKOLLI|
|quantity|LEVTOTAAL|
|credit|CREDIT|
|packageamount|FUSTAANTAL|
|divided|VERDEELD|
|parcelcod|BOXCOD|
|divisionId|BARCODE|
|pickingTime|PICKTIJD|
|packListId|PAKLIJSTID|
|divisionType|VERDTYPE|
|supplierId|LEVCOD|
|isBouquet|BOEKET|
|contentBox|INHDOOS|
|packageId|FUSTCOD|
|orderDate|ORDDAT|
|deliveryDate|LEVERDAT|
|seller|VERKCOD|
|picker|Picker|
|Version|_VERSION|
|pKey|_PKEY|

## EntryControl (BOX)

|API|DATABASE|
|:--|:--|
|entryControlId|BOXCOD|
|description|BOXTTXT|
|registerPartialParcels|PARTSKIP|
|lastClearedAt|GELEEGD|
|webshopAvailable|BINNENX|
|pKey|_PKEY|
|version|_VERSION|

## EntryControlDivisions (BOX_VDL)

|API|DATABASE|
|:--|:--|
|entryControlId|BOXCOD|
|stockId|VOORCOD|
|parcelId|PARTIJNR|
|vParcelId|VPARTIJNR|
|description|ARTTXT|
|customerId|DEBNR|
|subCustomerId|SUBDEBNR|
|orderNumber|ORDNR|
|handling|HANDLING|
|colli|KOLLI|
|quantity|AANTAL|
|originalQuantity|ORGAANTAL|
|dividedQuantity|VERDEELD|
|colliCapacity|INHKOLLI|
|packageId|FUSTCOD|
|packageQuantity|FUSTAANTAL|
|loadQuantity|LAADSTUKS|
|loadMark|LAADMARK|
|barcode|BARCODE|
|toStock|TOVRRD|
|fromCustomer|FROMDEB|
|remark|OPMERKING|
|remark2|OPMERKING2|
|createdAt|CREATIE|
|assignmentNumber|OPDRACHTNR|
|pickTime|PICKTIJD|
|startPickTime|SPICKTIJD|
|exPickTime|EXPICKTIJD|
|picker|PICKER|
|pickerUserId|PICKERUID|
|divisionType|VERDTYPE|
|orderParcelId|BESTPARTNR|
|divisionId|VERDEELID|
|createdBy|CREATEDBY|
|isLabelPrint|STICKPRINT|
|firstLabelPrint|EERSTEPRINT|
|reservationTextId|RESERVATIONTEXTID|
|pKey|_PKEY|
|version|_VERSION|


## EntryControlParcels (BOX_PTY)

|API|DATABASE|
|:--|:--|
|entryControlId|BOXCOD|
|stockId|VOORCOD|
|parcelId|PARTIJNR|
|vParcelId|VPARTIJNR|
|wmsParcelId|WMSPARTIJNUMMER|
|buyerId|INKOPERNR|
|articleDescription|ARTTXT|
|articleId|ARTNR|
|colli|KOLLI|
|quantity|AANTAL|
|dividedQuantity|VERDEELD|
|capacity|INHOUD|
|createdQuantity|CREATAANT|
|lastPrintedQuantity|LASTPRINT|
|parcelDate|PARTIJDAT|
|estimatedDeliveryDate|ETDELDAT|
|createdBy|CREATEDBY|
|seatNumber|ZETELNR|
|firstPrintDate|EERSTEPRINT|
|checkInDate|BINNENMDT|
|pkey|_PKEY|
|version|VERSION|

## Shipments (Verschep)

|API                       |DATABASE           |
|:--                       |:--                |
|ShipmentId                |VID                |
|DeparturePort             |HAVENVERT          |
|ArrivalPort               |HAVENAANK          |
|ShipmentType              |VTYPE              |
|ShipmentNumber            |VNUMMER            |
|ShipmentDate              |VDATE              |
|OffloadDate               |LOSDATE            |
|ExpectedOffloadDate       |VERWLOSDATE        |
|OffloadCarrier            |LOSTRANS           |
|CreationDate              |CREATIE            |
|TransportCost             |TRANSKOST          |
|ShipName                  |SCHIPNAAM          |
|ArrivalDate               |AANKDATUM          |
|Quantity                  |AANTAL             |
|DeparturePortId           |HAVAANTID          |
|ArrivalPortId             |HAVAANKID          |
|Final                     |DEFINITIEF         |
|LoadingCarrier            |LAADTRANSPORTEUR   |
|ClearanceCountry          |LANDVANINKLAREN    |
|ClearningAgentId          |INKLAARDERID       |
|LogisticalAgentId         |TUSSENPERSOONID    |
|FreightForwarderLocation  |EXPEDITIELOCATIE   |
|FreightContainerNumber    |CONTAINERNUMMER    |
|AWBNumber                 |AWBNUMMER          |
|CustomsInspection         |DUANEINSPECTIE     |
|AirportDepartureID        |AIRPORDEPARTUREID  |
|AirportArrivalId          |AIRPORTARRIVALID   |
|DeliveryLocationId        |LEVERLOCATIEID     |
|ShippingCode              |VERVCOD            |
|pKey                      |_PKEY              |
|version                   |_VERSION           |

## Sales (Orderreg) (joined met ORDERKOP )

|API|DATABASE|
|:--|:--|
|allocationId|VERDEELID|
|Amountpackagepurchase|FUSTINK|
|amountPacked|INGEPAKT|
|amountSale|VERKBEDRAG|
|articleGroupId|ARGRPCOD|
|articleId|ARTNR|
|barePrice|KALEPRIJS|
|BRType20Barcode|BRType20Barcode|
|ColorId|COLORNRPARTIJ|
|CommercialParcelId|CPARTIJNR|
|ContentBox|INHDOOS|
|ContentColli|INHKOLLI|
|Country|LANDSTAT|
|Creation|CREATIE|
|CustomerId|DEBNR|
|DeadlineNr|DEADLINENR|
|DeliveryDate|LEVERDATUM|
|DepartureDate|VERTREKDAG|
|Description|ARTTXT|
|Division|AFDELING|
|DivisionId|BARCODE|
|DivisionType|VERDTYPE|
|FinalCheck|EINDCHECK|
|FloridayDeliveryOrderId|DeliveryOrderId|
|FloridayFulfillmentRequestId|FulfillmentRequestId|
|FloridaySalesOrderId|FloridaySalesOrderId|
|FromCustomer|FROMDEBNR|
|FromOrderNr|FROMORDNR|
|GrowerID|KWEKCOD|
|ImageName|FOTONAAM|
|IsBouquet|BOEKET|
|IsCommercialParcel|ISCOMPART|
|NoPriceLabel|NOPRIJSSTK|
|Offer|AANBIED|
|orderDate|ORDDAT|
|orderNr|ORDNR|
|OrderParcelId|BESTPARTNR|
|PackageId|FUSTCOD|
|ParcelId|PARTIJNR|
|ParcelPurchaseNo|VPARTIJNR|
|parcelReceived|BOXBINNEN|
|ParcelS01Id|SCODE1|
|ParcelS02Id|SCODE2|
|ParcelS03Id|SCODE3|
|ParcelS04Id|SCODE4|
|ParcelS05Id|SCODE5|
|ParcelS06Id|SCODE6|
|pickerId|PICKER|
|price1Sales|PART1PRIJS|
|Price2Sales|PART2PRIJS|
|Price3Sales|PART3PRIJS|
|PriceBase|BASISPRIJS|
|PriceCustomer|KLANTPRIJS|
|PriceGroup1|PRIJSGRP_1|
|PriceGroup2|PRIJSGRP_2|
|PriceGroup3|PRIJSGRP_3|
|PriceGroup4|PRIJSGRP_4|
|PriceGroup5|PRIJSGRP_5|
|PriceGroup6|PRIJSGRP_6|
|PriceGroup7|PRIJSGRP_7|
|PriceGroup8|PRIJSGRP_8|
|PriceGroup9|PRIJSGRP_9|
|PriceGroup10|PRIJSGRP_10|
|PriceGroup11|PRIJSGRP_11|
|PriceGroup12|PRIJSGRP_12|
|PriceGroup13|PRIJSGRP_13|
|PriceGroup14|PRIJSGRP_14|
|PriceGroup15|PRIJSGRP_15|
|PriceGroup16|PRIJSGRP_16|
|PriceGroup17|PRIJSGRP_17|
|PriceGroup18|PRIJSGRP_18|
|PriceGroup19|PRIJSGRP_19|
|PriceGroup20|PRIJSGRP_20|
|priceIncl|INCLPRIJS|
|priceOrder|BESTPRIJS|
|priceOriginalParcel|ORGPARTPR|
|pricePackage|FUSTVERK|
|pricePurchase|TOTINK2|
|priceRetail|RETPRIJS|
|productGroupId|CELCOD|
|RegistrationDate|REGDAT|
|Remark|OPMERKING|
|Remark2|OPMERKING2|
|Remark3|OPMERKING3|
|S01|S1|
|S02|S2|
|S03|S3|
|S04|S4|
|S05|S5|
|S06|S6|
|SalesRecordId|BARCODE|
|ScanCode|SCANCODE|
|SellerId|VERKCOD|
|StockId|DEVISIE|
|SubCustomerId|SUBDEBNR|
|SupplierId|LEVCOD|
|TotalColli|TOTKOLLI|
|TotalStems|LEVTOTAAL|
|UserId|USERID|
|exPhotoURL|EXFOTOURL|
|growerEAN|KWEKEREAN|
|InvoiceDate|ORDERKOP.FCTDAT|
|InvoiceNr|ORDERKOP.FACTNR|
|InvoicePrinted|ORDERKOP.FCTPRNID|
|InvoiceName|ORDERKOP.ORDNAAM|
|InvoiceAddress|ORDERKOP.ORDADRES|
|InvoicePostalCode|ORDERKOP.ORDPC|
|InvoiceCity|ORDERKOP.ORDPLAATS|
|InvoiceCountryId|ORDERKOP.ORDLANDCOD|
|InvoiceSaleAmount|ORDERKOP.TOTGOEDER|
|InvoiceTotalQuantity|ORDERKOP.TOTSTUKS|
|TransportRouteId|ORDERKOP.TRANSPID|
|InvoiceTotalQuantityCache|ORDERKOP.AANTALSTELENCACHE|
|InvoiceSalesAmountCache|ORDERKOP.GOEDERENBEDRAGCACHE|
|pKey|_PKEY|
|version|VERSION|

## BouquetComposition (SGART)

|API|Database|
|:--|:--|
|ArticleId|ARTNR|
|Description|ARTTXT|
|ComponentArticleId|ARTNRDEEL|
|Quantity|AANTAL|
|S1|S1|
|S2|S2|
|S3|S3|
|Remark|OPMERKING|
|SupplierId|LEVCOD|
|QuantityPer|AANTALPER|
|OrderParcelId|BESTELPARTIJNR|
|Version|_VERSION|

## Assortment (ASSORT)

|API|Database|
|:--|:--|
|Version|_VERSION|
|pKey|_PKEY|
|ArticleId|ARTNR|
|PurchasePrice|ARTNRDEEL|
|SalesPrice|VERKOOP|
|Description|ARTTXT|
|ArticleGroupId|ARTGRPCOD|
|DivisionCode|AFDELING|
|IsCredit|ISCREDIT|
|AmountCredited|CREDITAANT|
|Special|SPECIAL|
|PriceTree|PRIJSSTAF|
|Selectable|KIESBAAR|
|Description_D|TEXT_D|
|Description_E|TEXT_E|
|Description_F|TEXT_F|
|Description_G|TEXT_G|
|Description_H|TEXT_H|
|Description_I|TEXT_I|
|Description_J|TEXT_J|
|Description_K|TEXT_k|
|Description_L|TEXT_L|
|Minute|NINUUT|
|OnFloriline|FLORILINE|
|Ordernr|ORDERNR|

## AssortmentGroupAssignments (ASSORTGP)

| API                 | Database |
| :--                 | :--      |
| PKey                | _pkey    |
| Version             | _version |
| ArticleId           | artnr    |
| AssortmentGroupCode | groepcod |

## AssortmentGroups (ASSORTGROEP)

| API                 | Database  |
| :--                 | :--       |
| PKey                | _pkey     |
| Version             | _version  |
| Code                | groepcod  |
| Description         | groeptxt  |
| Mandatory           | verplicht |

# ArticleComponents (SGART)

|API|Database|
|:--|:--|
|articleId|ARTNR|
|description|ARTTXT|
|componentArticleId|ARTNRDEEL|
|quantity|AANTAL|
|s1|S1|
|s2|S2|
|s3|S3|
|remark|OPMERKING|
|supplierId|LEVCOD|
|quantityPer|AANTALPER|
|OrderparcelId|BESTELPARTIJNR|
|version|VERSION/RECNO|
|pkey|PKEY|

## Constants/Costs (KOSTEN)

|API|Database|
|:--|:--|
|Id|KEY|
|Description|TEXT|
|Version|_VERSION|

## Constants/ParcelTypes (Geen database tabel, systeemwaarden)

|API|Database|
|:--|:--|
|Id||
|Description||

## Constants/Auctions (VEILING)

|API|Database|
|:--|:--|
|Id|VEILCOD|
|Description|VEILTEXT|
|EntryControlId|BOXCOD|
|BuyerNo|KOPERNR|
|pKey|_PKEY|
|version|_VERSION|

## SalesHistoryCosts (HorderKK)

|API|Database|
|:--|:--|
|customerId|DEBNR|
|orderNr|ORDNR|
|Invoicenr|FACTNR|
|costsId|KOSTENKEY|
|amount|BEDRAG|
|remark|OPMERKING|
|checked|CHECKED| 
|pKey|_PKEY|
|version|_VERSION|

## BoxContent (DOOSINH)

|API|Database|
|:--|:--|
|link|KOPPEL|
|barcode|BARCODE|
|packageCode|FUSTCOD|
|quantity|AANTAL|
|sequenceNr|VOLGNR|
|letterNr|BRIEFNR|
|sequenceLetter|VOLGLET| 
|packingDate|INPAKDAT|
|pKey|_PKEY|
|version|_VERSION|

## UniqueCarriers (uniekedrager)

| DATABASE      | API           |
| :--           | :--           |
| id            | Id            |
| barcode       | Barcode       |
| vestiging     | Branch        |
| creatie       | Creation      |
| locatie       | Location      |
| partijnr      | ParcelId      |
| aantal        | Quantity      |
| status        | Status        |
| vpartijnr     | VParcelId     |
| xorderbarcode | XOrderBarcode |

## ParcelCustomerSettings (Voorraad Debiteur instellingen)

|API              |DATABASE   |
|:--              |:--        |
|parcelNo         |PARTIJNR   |
|customerID       |DEBNR      |
|visible          |ZICHTBAAR  |
|maxQuantity      |MAXAFNAME  |
|pricePercentage  |PRIJSPERC  |
|priceEuro        |PRIJSEURO  |
|priceFixed       |PRIJSFIXED |
|version          |_VERSION   |

## PackageCosts (FustKost)

|API                    |DATABASE   |
|:--                    |:--        |
|packageId              |FUSTCOD    |
|pricePurchase2         |INKPRIJS2  |
|contentColli           |INHKOLLI   |
|s1                     |S1         |
|s2                     |S2         |
|s3                     |S3         |
|version                |_VERSION   |
