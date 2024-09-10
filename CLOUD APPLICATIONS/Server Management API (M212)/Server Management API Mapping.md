# API Mapping

In dit document staat een algemene mapping van de API, sommige velden zijn mij onbekend. Weet jij welk veld hier bij hoort schrijf deze er dan bij.

## ArticleGroups (ArtikGRP)  

|API|DATABASE|
|:--|:--|
|id|ARTGRPCOD|
|description|ARTGRPTXT|
|version|_VERSION|
|productGroupId|CELCOD|
|productCharacteristic1|SCODE1|
|productCharacteristic2|SCODE2|
|productCharacteristic3|SCODE3|
|productCharacteristic4|SCODE4|
|productCharacteristic5|SCODE5|
|productCharacteristic6|SCODE6|
|productCharacteristic7|SCODE7|
|description_D|TEXT_D|
|description_E|TEXT_E|
|description_F|TEXT_F|
|maxAgeInDays|MAXINETDAGEN|
|auctionGrp|VEILGRP|

## Articles (Artikel)

|API|DATABASE|
|:--|:--|
|id|ARTNR|
|description|ARTTXT|
|version|_VERSION|
|productCharacteristic1|SCODE1|
|productCharacteristic2|SCODE2|
|productCharacteristic3|SCODE3|
|productCharacteristic4|SCODE4|
|productCharacteristic5|SCODE5|
|productCharacteristic6|SCODE6|
|productCharacteristic7|SCODE7|
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
|french|TEXT_F|
|description_F|TEXT_F|

## Bands (Band)

|API|Database|
|:--|:--|
|productionLineId|BANDNR|
|description|OMSCHR|
|version|_VERSION|

## Carriers (Transptr)

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

## Colors (Color)

|API|DATABASE|
|:--|:--|
|colorId|COLORNR|
|color|COLORTXT|
|description_D|COLORTXT_D|
|description_E|COLORTXT_E|
|description_F|COLORTXT_F|
|s50_Feature|S50_FEATURE|
|version|_VERSION|

## ComponentTypes (Systeemwaarden geen tabel)

|API|
|:--|
|id|
|description|

## Customers (Debiteur)

|API|DATABASE|
|:--|:--|
|version|_VERSION|
|customerId|DEBNR|
|customerKey|DEBKEY|
|companyName|DEBNAAM|
|contact|DEBCONT|
|address|DEBADRES|
|postal|DEBPC|
|city|DEBPLAATS|
|countryId|DEBLANDCOD|
|regionId|REGIOID|
|profile|branchcod|
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
|plateNr|PLAATNR|
|sellerId|VERKCOD|
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

## CreditReasons (Kieslijst)

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
|version|_VERSION|

## CustomerGroups (Debgroep)

|API|DATABASE|
|:--|:--|
|customerGroupId|GROEPCOD|
|description|GROEPNAAM|
|version|_VERSION|
|mainGroup|HOOFDGRP|
|saleUnit|SALESUNIT|
|logisticsUnit|ISLOGISTIEKEUNIT|

## CustomerGroupRelations (DebnrGPCOD)

|API|DATABASE|
|:--|:--|
|customerId|DEBNR|
|customerGroupId|GROEPCOD|
|version|_VERSION|
|sequenceNumber|VOLGORDENUMMER|

## Countries (Land)

|API|DATABASE|
|:--|:--|
|id|LANDCOD|
|description|LANDTXT|
|version|_VERSION|
|currencyCode|VALCOD|

## Currencies (Valuta)

|API|DATABASE|
|:--|:--|
|id|VALCOD|
|description|VALTXT|
|version|_VERSION|

## Divisions (Afdeling)

|API|DATABASE|
|:--|:--|
|id|AFDELING|
|description|AFDTXT|
|version|_VERSION|

## DivisionMethods (Code waarden uit SalesHist)

|API|DATABASE|
|:--|:--|
|id||
|description||

## FinancialAdministrations (FinAdmin)

|API|DATABASE|
|:--|:--|
|id|ID|
|description|OMS|
|version|_VERSION|

## Growers (Kweker)

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
|version|_VERSION|
|auctionCode||

## Packages (Fust)

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
|packageRentAmount|FUSTHPRS|
|packageRentAmount2|FUSTHRPS2|
|rentBTWCod|fustbtwhcd|
|btwCod|fustbtwcod|
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
|calculateVolume|RENTECALC|
|isBox|ISDOOS|
|loadCarrier|DRAAGCOD|
|version|_VERSION|

## ProductGroups (Cel)

|API|DATABASE|
|:--|:--|
|id|CELCOD|
|description|CELTXTX|
|exCode|EXCODE|
|version|_VERSION|

## ReservationTexts (ReservationTexts)

|API|DATABASE|
|:--|:--|
|reservationTextId|ReservationTextId|
|description|DESCRIPTION|
|reservationTextCode|RESERVATIONTEXTCODE|
|version|_VERSION|

## Sellers (Verkoper)

|API|DATABASE|
|:--|:--|
|id|VERKOOPNR|
|name|VERKOOPTXT|
|version|_VERSION|

## SortCodes (S_CODES)

|API|DATABASE|
|:--|:--|
|productCharacteristicCode|SORTCODE|
|feature|KENMERK|
|productCharacteristicDescription|SORTTXT|
|description_D|TEXT_D|
|description_E|TEXT_E|
|description_F|TEXT_F|
|version|_VERSION|

## Sources (Geen tabel waarden uit purchasehist)

|API|DATABASE|
|:--|:--|
|id||
|description||

## Suppliers (lever)

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
|eanCode|EANCODE|
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
|version|_VERSION|

## Stocks (Voorraad)

|API|DATABASE|
|:--|:--|
|id|VOORCOD|
|description|VOORTXT|
|version|_VERSION|

## Users (Users)

|API|DATABASE|
|:--|:--|
|id|USERID|
|name|NAAM|
|version|_VERSION|
|userDepartmentId||
|email|EMAIL|
|sellerId|VERKCODE|
|phone|TELEFOON|

## Vats (BtwTabel)

|API|DATABASE|
|:--|:--|
|id|BWTCODE|
|description|BTWTXT|
|version|_VERSION|

## Buyers (Inkoper)

|API|DATABASE|
|:--|:--|
|buyerId|INKOPERNR|
|buyerName|INKOPERTXT|
|version|_VERSION|

## AuctionGroups (Veilgroep)

|API|DATABASE|
|:--|:--|
|auctionGrp|VEILGRP|
|buyerId|INKOPERNR|
|auctionGrpDescription|VEILGRPTXT|
|buyerId2|INKOPERNR2|
|buyerId3|INKOPERNR3|
|version|_VERSION|

## PaymentConditions (betcond)

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

## SalesHistory (horder)

|API|DATABASE|
|:--|:--|
|articleGroupId|ARTGRPCOD|
|articleId|ARTNR|
|contentBox|INHDOOS|
|contentBunch|INHBOS|
|contentColli|INHKOLLI|
|currencyId||
|customerCompanyName||
|customerCountryId||
|customerFinId|FINDEBNR|
|customerId|DEBNR|
|department|AFDELING|
|description||
|divisionId|VERDEELID|
|divisionMethodId|VERDTYPE|
|financialAdmId|FINADMIN|
|growerEAN|KWEKEREAN|
|growerId|KWEKCOD|
|invoiceDate|FACTDAT|
|invoiceGoodsAmount||
|invoiceNr|FACTNR|
|invoiceTotalAmount||
|orderDate|ORDAT|
|orderNr|ORDNR|
|packageQuantity|fustaantal|
|packagePrice||
|packageId|FUSTCOD|
|parcelDate|PARTIJDAT|
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
|priceEndCustomer|EINDKLANT|
|priceOnInvoicePurchase||
|priceOnInvoiceSales||
|priceOnPurchase||
|priceParcelPurchase|INKPRIJS|
|priceParcelSales||
|priceWithCostsReductions||
|productGroupId|CELCOD|
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
|stockId|VOORCOD|
|subCustomerId||
|supplierId|LEVCOD|
|totalStems||
|userId|USERID|
|vatId|BTWCOD|
|componentTypeId||
|version|_VERSION|
|orderParcelId|BESTPARTNR|
|packListId|PAKLIJSTNR|
|departureDate|VETREKDAG|
|remark|OPMERKING|
|remark2|OPMERKING2|
|remark3|OPMERKING3|
|orderRemark|OrderRemark|
|orderRemark2|OrderRemark2|
|deliveryDate|LEVERDATUM|

## PurchaseHistory (hpartij)

|API|DATABASE|
|:--|:--|
|articleId|ARTNR|
|description||
|colli|KOLLI|
|contentColli|INHKOLLI|
|restQuantity|REST|
|packageQuantity|FUSTAANTAL|
|packageId|FUSTCOD|
|vParcelId|VPARTIJNR|
|auctionId|VEILCOD|
|transId|TRANS|
|transIdLong|TRANSLANG|
|clockTrans|KLOKTRANS|
|buyerNo|INKOPER|
|growerId|KWEKER|
|plateNo|PLAATNR|
|seatNo|ZETELNR|
|s01|S1|
|s02|S2|
|s03|S3|
|s04|S4|
|s05|S5|
|s06|S6|
|s07|S7|
|parcelS01Id|S1CODE|
|parcelS02Id|S2CODE|
|parcelS03Id|S3C0DE|
|parcelS04Id|S4CODE|
|parcelS05Id|S5CODE|
|parcelS06Id|S6CODE|
|parcelS07Id|S7CODE|
|countryId|LANDCOD|
|contentBunch|INHBOS|
|supplierId|LEVCOD|
|parcelDate|PARTIJDAT|
|writeOffQuantity|AFBOEKA|
|writeOffId|AFBOEKM|
|paymentDate|BETDAT|
|paymentTime|BETTIME|
|paymentUSer|BETUSER|
|remark|OPMERKING|
|barePrice|KALEPRIJS|
|price|PRIJS|
|priceIncl|PRIJSINCL|
|creation|CREATIE|
|shipmentNo|VERSCHEPID|
|eInvoiceBarcode||
|stockId|VOORCOD|
|version|_VERSION|
|pKey|RECNO/PKEY|
|deadlineNr|DEADLINENR|
|sourceId||
|color|KLEUR|
|orderParcelId|BESTELPARTIJNR|
|priceInCurrency|PRIJSINVAL|
|totalCostPrice|TOTAALKOSTPRIJS|
|externalParcelId|EXPARTIJNR|

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
|description||
|quantity|AANTAL|
|colli|KOLLI|
|original|ORIGINAL|
|orginalColli|ORIGIKOL|
|contentColli|INHKOLLI|
|packageQuantity|FUSTAANTAL|
|packageId|FUSTCOD|
|priceParcelPurchase||
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
|orderId|ORDNR|
|remark2|OPMERKING2|
|packageCarrier|FUSTDRAGER|
|externalSupplierId|EXLEVCOD|
|auctionGrp|VEILGRP|
|creation|CREATIE|
|bouquet|BOEKET|
|deliveryDate|LEVERDAT|
|orderApprovalId|LEVBESTEL|
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
|s01|S1|
|s02|S2|
|s03|S3|
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
|creation|CREATIE|
|priceLogId|PRSLOGID|
|onCustomerId|OPDEBNR|
|pKey|PKEY/RECNO|
|version|_VERSION|

## InvoiceApproval (AccFaccred)

|API|DATABASE|
|:--|:--|
|toDebtor|TODEBNR|
|toOrderNr|TOORDNR|
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
|reasonForCredit|REDENR|
|approvingSalesUser|USERID|
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
|s01|S1|
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

## InvoiceCredits

|API|DATABASE|
|:--|:--|
|creditBarcode||
|originalBarcode||
|creditReason||
|returnToStock||
|sellerId||
|date||
|vParcelId||
|creditQuantity||
|creditPrice||
|remark||
|processingChoice||
|userId||
|creditReasonId||
|pKey|PKEY/RECNO|
|version|_VERSION|
|approvedBy||
|approvedDate||
|packageId||
|creditInvoiceDate||
|creditInvoiceNumber||

## OrderlistAssortment (Bestel)

|API|DATABASE|
|:--|:--|
|parcelId|PARTIJNR|
|stockId|VOORCOD|
|articleKey|ARTKEY|
|lineArticleId|LIJNARTNR|
|orgParcelId|ORGPARTNR|
|growerArticleId|KWEKARTNR|
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
|priceParcelPurchase||
|buyerId|INKOPERNR|
|minPurchase|MINAFNAME|
|amount2|AANTAL2|
|amount3|AANTAL3|
|price2|PRIJS2|
|price3|PRIJS3|
|contentBunch|INHBOS|
|contentPlate|INHPLAAT|
|contentTrolley|INHKAR|
|s01|S1|
|s02|S2|
|s03|S3|
|s04|S4|
|s05|S5|
|s06|S6|
|s07|S7|
|parcelS01Id|SCODE0|
|parcelS01Id|SCODE1|
|parcelS02Id|SCODE2|
|parcelS03Id|SCODE3|
|parcelS04Id|SCODE4|
|parcelS05Id|SCODE5|
|parcelS06Id|SCODE6|
|parcelS07Id|SCODE7|
|raiseCnt|OPSLAGC|
|available|LEVERBAAR|
|countryId|LANDCOD|
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
|exPhotoURL|EXTURL|
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

## OrderlistComponents (bestbos)

|API|DATABASE|
|:--|:--|
|articleId|ARTNR|
|description|ARTTXT|
|colorId|KLEURCODE|
|priceParcelPurchase1|INKPRIJS1|
|priceParcelPurchase2|INKPRIJS2|
|quantity|AANTAL|
|parcelId|PARTIJNR|
|bParcelId|BPARTIJNR|
|s01|S1|
|s02|S2|
|remark|OPMERKING|
|supplierId|LEVCOD|
|contentColli|INHKOLLI|
|componentWeight|COMPONENTGEWICHT|
|version|_VERSION|
|pKey|PKEY/RECNO|

## Bands (BANDS)

|API|DATABASE|
|:--|:--|
|productionLineId|BANDNR|
|description|OMSCHR|
|version|_VERSION|

## Carriers (TRANSPTR)

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
|niwOcodNIWO||
|trolleyHeight|KARHOOGTE|
|inActive|INACTIEF|
|glnCode|GLNCOD|
|faxNr|FAXNR|
|afasId|AFASCODE|

## CustomerGroups (DEBGROEP)

|API|DATABASE|
|:--|:--|
|customerGroupId|GROEPCOD|
|description|GROEPNAAM|
|version|_VERSION|
|mainGroup|HOOFDGRP|
|saleUnit|SALESUNIT|
|logisticsUnit|ISLOGISTIEKEUNIT|

## CustomerGroupRelations (DebnrGPCod)

|API|DATABASE|
|:--|:--|
|customerId|DEBNR|
|customerGroupId|GROEPCOD|
|version|_VERSION|
|sequenceNumber|VOLGORDENUMMER|

## OutstandingInvoices (OPENPOST)

|API|DATABASE|
|:--|:--|
|productionLineId||
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
|treePrice|STAFFELPRIJS|
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
|paymentId|BETCOD|
|amount|BEDRAG|
|currency|VALUTA|
|userId|USERID|
|checkId|CHECKNR|
|description|TEXT|
|creation|CREATIE|
|feature|KENMERK|
|uniqueId|UNIQUEID|
|webPaymentId|WEBBETTYPE|
|terminalId|TERMINALID|
|sendEmail|EMAILSEND|
|printInvoiceNr|PRINTFACTUURNUMMER|
|surchargePrcnt|SURCHARGEPERCENTAGE|
|surchargeRaise|SURCHARGEOPSLAG|
|adherrentLedgerNr|ADWIJKENDGROOTBOEKNUMMER|
|pKey|PKEY/RECNO|
|version|_VERSION|

## PaymentHistory

|API|DATABASE|
|:--|:--|
|customerId|DEBNR|
|invoiceNr|FACTNR|
|invoiceDate|FACTDAT|
|expirationDate||
|paymentDate|BETDAT|
|paymentId|BETCOD|
|amount|BEDRAG|
|currency|VALUTA|
|userId|USERID|
|checkId|CHECKNR|
|description|TEXT|
|invoiceAmount|FACTBEDR|
|uniqueId|UNIQUEID|
|surchargePrcnt||
|surchargeRaise||
|pKey|PKEY/RECNO|
|version|_VERSION|

## Shoplog (WEBBLOG)

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
|orderlistSubId||
|orderNr|ORDNR|
|description|PARTIJOMSC|
|webshop|WEBSHOP|
|barcode|BARCODE|
|divisionType|VERDEELTYPE|
|remark|OPMERKING|
|pKey|PKEY/RECNO|
|version|_VERSION|

## SalesDivisions (VERDEEL)

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
|description||
|s1|S1|
|salesPrice1|VERKPRIJS|
|saleAmount|BESTAANT|
|packageId|FUSTCOD|
|userId|USERID|
|productGroupId|CELCOD|
|vParcelId|VPARTIJNR|
|packlistId|PAKLIJSTNR|
|salesRecordId||
|bouquet|BOEKET|
|orderprice|BESTPRIJS|
|remark|OPMERKING|
|salesUnit|VE|
|creation|CREATIE|
|volume|VOLUME|
|orderDescription||
|divisionType|VERDTYPE|
|holdOrder|VASTHOUDEN|
|priceBase|BASISPRIJS|
|deliveryDate|LEVERDATUM|
|contentPlate|INHPLAAT|
|contentTrolley|INHKAR|
|registrationDate|REGDAT|
|orderListId||
|originalColli||
|retailPrice|VERKPRIJS|
|orderDate||
|scanCode|SCANCODE|
|contentBox|INHDOOS|
|pKey|PKEY/RECNO|
|version|_VERSION|
|orderParcelId||
|reservationTextId|RESERVATIONTEXTID|
|articleLength|S1|
|potsize|POTMAAT|
|s4|S4|
|s5|S5|
|s6|S6|
|s7|S7|
|weight||
|orderId||

## SalesHistoryCostAndRebates (HoRDERKK)

|API|DATABASE|
|:--|:--|
|id||
|customerId|DEBNR|
|orderNr|ORDNR|
|invoiceNr|FACTNR|
|department|AFDELING|
|description||
|amount||
|percentage||
|calculationMethod||
|vatId|BTWCOD|
|exchangeRate|KOERS|
|totalAmount||
|totalAmountOver||
|creation|CREATIE|
|version|_VERSION|
|costCode||

## SalesHistoryBouquets (HORDER)

|API|DATABASE|
|:--|:--|
|articleGroupId|ARTGRPCOD|
|articleId|ARTNR|
|contentBox|INHDOOS|
|contentBunch|INHBOS|
|contentColli|INHCOLLI|
|currencyId||
|customerCompanyName||
|customerCountryId|LANDCOD|
|customerFinId||
|customerId|DEBNR|
|department|AFDELING|
|description|ARTTXT|
|divisionId|VERDEELID|
|divisionMethodId|VERDTYPE|
|financialAdmId|FINADMIN|
|growerEAN|KWEKEREAN|
|growerId|KWEKCOD|
|invoiceDate|FCTDAT|
|invoiceGoodsAmount||
|invoiceNr|FACTNR|
|invoiceTotalAmount||
|orderDate|ORDDAT|
|orderNr|ORDNR|
|packageQuantity|FUSTAANTAL|
|packagePrice||
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
|priceEndCustomer||
|priceOnInvoicePurchase||
|priceOnInvoiceSales||
|priceOnPurchase||
|priceParcelPurchase||
|priceParcelSales||
|priceWithCostsReductions||
|productGroupId||
|regDate||
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
|oneTimePackageAmount||
|returnablePackageAmount||
|packageRentAmount|FUSTHUUR|
|vatLow|BTWLAAG|
|vatHigh|BTWHOOG|
|vatLowOver|BTWLAAGOVER|
|vatHighOver|BTWHOOGOVER|
|vatZeroOver|BTWNULOVR|
|invoiceTotalAmount|FACTTOTAAL|
|vatCharged||
|financialAdministrationId|FINADMIN|
|goodsAmount|TOTGOEDER|
|carrierId|TRANSPTR|
|auctionTradeTransaction||
|printedBy|PRINTBY|
|exchangeRateActual|KOERSREAL|
|printedByUserId||
|packageQuantity|FUSTAANTAL|
|packageAmount|FUSTPRIJS|
|totalPurchaseValue||
|oneTimePackageValue||
|returnablePackageValue||
|printTime|PRINTTIJD|
|packagePurchaseAmount|FUSTPRIJS|
|version|_VERSION|

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
|contentColli|INHCOLLI|
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
|packageId|FUSTID|
|contentBox|INHDOOS|
|isBouquet|BOEKET|
|supplierId|LEVCOD|
|divisionType|VERDTYPE|
|pickerId|verkcod|
|packListId|PAKLIJSTID|
|pickingTime|PICKTIJD|
|divisionId|BARCODE|
|parcelCod|BOXCOD|
|divided|VERDEELD|
|packageAmount|FUSTAANTAL|
|credit|CREDIT|
|quantity|LEVTOTAAL|
|contentColli|INKHOLLI|
|totalColli|TOTCOLLI|
|pickTime|PAKTIME|
|orderTime|ORDTIME|
|orderNr|ORDNR|
|vParcelId|VPARTIJNR|
|parcelId|PARTIJNR|
|articleId|ARTNR|
|customerId|DEBNR|
|stockId|KASSA_ID|
|crossdock|CROSSDOCK|
|orderDate|ORDDAT|
|deliveryDate||
|version|_VERSION|

## EntryControl (BOX)

|API|DATABASE|
|:--|:--|
|entryControlId|BOXCOD|
|description|BOXTTXT|
|registerPartialParcels|PARTSKIP|
|lastClearedAt|GELEEGD|
|webshopAvailable|BINNENX|

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
|colliCapacity|ContentColli|
|packageId|FUSTCOD|
|packageQuantity|FUSTAANTAL|
|loadQuantity|LAADSTUKS|
|loadMark|LAADMARK|
|barcode|BARCODE|
|toStock|toVRRD|
|fromCustomer|FROMDEB|
|remark|OPMERKING|
|remark2|OPMERKING2|
|createdAt|CREATIE|
|assignmentNumber|OPDRACHTNR|
|pickTime|PICKTIJD|
|startPickTime|SPICKTIJD|
|exPickTime|EXPICKTIJD|
|picker|PICKER|
|divisionType|VERDTYPE|
|orderParcelId|BESTPARTNR|
|divisionId|VERDEELID|
|createdBy|CREATEDBY|
|pickerUserId|PICKERUID|
|isLabelPrint|STICKPRINT|
|firstLabelPrint|EERSTEPRINT|
|reservationTextId|RESERVATIONTEXTID|

## EntryControlParcels (BOX_PTY)

|API|DATABASE|
|:--|:--|
|entryControlId||
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
|capacity||
|createdQuantity|CREATAANT|
|lastPrintedQuantity|LASTPRINT|
|parcelDate||
|estimatedDeliveryDate|ETDELDAT|
|createdBy||
|seatNumber|ZETELNR|
|firstPrintDate|EERSTEPRINT|
|checkInDate|BINNENMDT|
|version|VERSION|

## Shipments (Verschep)

|API|DATABASE|
|:--|:--|
|ShipmentId|VID|
|DeparturePort|HAVENVERT|
|ArrivalPort|HAVENAANK|
|ShipmentType|VTYPE|
|ShipmentNumber|VNUMMER|
|ShipmentDate|VDATE|
|OffloadDate|LOSDATE|
|ExpectedOffloadDate|VERWLOSDATE|
|OffloadCarrier|LOSTRANS|
|CreationDate|CREATIE|
|TransportCost|TRANSKOST|
|ShipName|SCHIPNAAM|
|ArrivalDate|AANKDATUM|
|Quantity|AANTAL|
|DeparturePortId|HAVAANTID|
|ArrivalPortId|HAVAANKID|
|Final|DEFINITIEF|
|LoadingCarrier|LAADTRANSPORTEUR|
|ClearanceCountry|LANDVANINKLAREN|
|ClearningAgentId|INKLAARDERID|
|LogisticalAgentId|TUSSENPERSOONID|
|FreightForwarderLocation|EXPEDITIELOCATIE|
|FreightContainerNumber|CONTAINERNUMMER|
|AWBNumber|AWBNUMMER|
|CustomsInspection|DUANEINSPECTIE|
|AirportDepartureID|AIRPORDEPARTUREID|
|AirportArrivalId|AIRPORTARRIVALID|
|DeliveryLocationId|LEVERLOCATIEID|

## Sales

|API|DATABASE|
|:--|:--|
|salesRecordId||
|amountPackagePurchase||
|amountPacked||
|amountSale||
|articleGroupId|ARTGRPCOD|
|articleId|ARTNR|
|barePrice|KALEPRIJS|
|colorId||
|contentBox|INHDOOS|
|contentColli|INHKOLLI|
|creation|CREATIE|
|description||
|growerId|KWEKCOD|
|orderDate||
|orderNr||
|orderParcelId||
|packageId||
|packlistId||
|parcelId||
|parcelS01Id||
|parcelS02Id||
|parcelS03Id||
|parcelS04Id||
|parcelS05Id||
|parcelS06Id||
|price1Sales||
|price2Sales||
|price3Sales||
|priceBase||
|priceCustomer||
|priceIncl|INCLPRIJS|
|priceOrder||
|priceOrginalParcel||
|pricePackage||
|pricePurchase||
|priceRetail||
|remark|OPMERKING|
|remark2|OPMERKING2|
|remark3|OPMERKING3|
|s01|S1|
|s02|S2|
|s03|S3|
|s04|S4|
|s05|S5|
|s06|S6|
|supplierId|LEVCOD|
|totalColli||
|pKey|PKEY/RECNO|
|version|_VERSION|
|invoicePrinted||
|invoiceNr||
|invoiceDate||
|customerId|DEBNR|
|divisionType|VERDTYPE|
|userId|USERID|
|divisionId|BARCODE|
|stockId|DEVISIE|
|departureDate|VERTREKDAG|
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
|noPriceLabel|NOPRIJSSTK|
|parcelReceived|BOXBINNEN|
|pickerId|PICKER|
|deliveryDate||
|totalStems||
|parcelPurchaseNo||
|isCommercialParcel||
|commercialParcelId||
|brType20Barcode||
|scanCode||
|productGroupId|CELCOD|
|country|LANDSTAT|
|sellerId|VERKCOD|
|registrationDate||
|fromCustomer|FROMDEBNR|
|division||
|isBouquet|BOEKET|
|allocationId||
|imageName|FOTONAAM|
|subCustomerId|SUBDEBNR|
|offer|AANBIED|

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
