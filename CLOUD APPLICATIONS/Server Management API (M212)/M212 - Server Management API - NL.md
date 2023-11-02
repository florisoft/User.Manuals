<img src="../../fslogo.png">

# Florisoft Handleiding Server Management API - M212

Welkom bij de handleiding over de Florisoft Server Management API. Deze module vervangt de hiervoor gebruikte ODBC connectie waarmee gegevens uit de database werden gehaald.

## Inhoudsopgave

[Inhoudsopgave](#inhoudsopgave)  
[Autoriseren van een gebruiker](#autoriseren-van-een-gebruiker)  
[Endpoints](#endpoints)  
[Articles](#articles)  
[Articlegroups](#articlegroups)  
[Band](#band)  
[Carriers](#carriers)  
[Customers](#customers)  
[CustomerGroups](#customergroups)  
[CustomerGroupRelations](#customergrouprelations)  
[Countries](#countries)  
[Currencies](#currencies)  
[Divisions](#divisions)  
[Divisionmethods](#divisionmethods)  
[Financial administrations](#financialadministrations)  
[Growers](#growers)  
[Packages](#packages)  
[Producgroups](#productgroups)  
[Sellers](#sellers)  
[Stocks](#stocks)  
[Suppliers](#suppliers)  
[Users](#users)  
[Vats](#vats)  
[Bandref](#bandref)  
[Bandreflog](#bandreflog)  
[Customer orders](#customerorders)  
[Sales Divisions](#salesdivisions)  
[Division Price Log](#divisionpricelog)  
[Invoice credits](#invoicecredits)  
[Orderlist Assortment](#orderlistassortment)  
[Orderlist components](#orderlistcomponents)  
[Outstanding invoices](#outstandinginvoices)  
[Package history](#packagehistory)  
[Payment History](#paymenthistory)  
[Purchase History](#purchasehistory)  
[Payments](#payments)  
[Shipments](#shipments)  
[Sales History](#saleshistory)  
[Order approvals](#orderapprovals)  
[Sales History Cost and Rebates](#saleshistorycostandrebates)  
[Sales History Bouquets](#saleshistorybouquets)  
[Sales History Invoice Headers](#saleshistoryinvoiceheaders)   
[Shoplog](#shoplog)   

## Autoriseren van een gebruiker

Niet elke systeemgebruiker kan gegevens ophalen van de Florisoft API, systeemgebruikers moeten hier speciaal permissie voor krijgen. Volg de onderstaande stappen om hier een systeemgebruik voor te autoriseren.


|Stap|Uitleg|
|:-:|:--|
|**1**|Open het constantenscherm en navigeer naar:<br>**Systeem→Users→Systeemgebruikers**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="media NL/image4.png"></details>|
|**2**|Open de desbetreffende systeem gebruiker. <br>Klik vervolgens op de autorisatie knop.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="media NL/image2.png"></details>|
|**3**|Zoek vervolgens in het autorisatie scherm (met de F3 knop) naar 971.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="media NL/image3.png"></details>|
|**4**|Open de instelling en zet dit op de optie 'Alle handelingen toegestaan'<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="media NL/image1.png"></details>|
|**5**|Druk op de ok knop om de wijzigingen op te slaan.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="media NL/image1.png"></details>|

# Endpoints

De server management API heeft verschillende endpoints deze worden hieronder beschreven. 

# ArticleGroups

|Variabeles|
|:--|
|id|
|description|
|version|
|productGroupId|
|productCharacteristic1|
|productCharacteristic2|
|productCharacteristic3|
|productCharacteristic4|
|productCharacteristic5|
|productCharacteristic6|
|productCharacteristic7|
|description_D|
|description_E|
|description_F|
|maxAgeInDays|

# Articles

|Variabeles|
|:--|
|id|
|description|
|version|
|productCharacteristic1|
|productCharacteristic2|
|productCharacteristic3|
|productCharacteristic4|
|productCharacteristic5|
|productCharacteristic6|
|productCharacteristic7|
|botanicalName|
|eanCode|
|colorId|
|auctionArticleNumber|
|packageId|
|supplierId|
|articleGroupId|
|productGroupId|
|description_D|
|description_E|
|french|
|description_F|

# Band

|Variabeles|
|:--|
|productionLineId|
|description|
|version|

# Cariers

|Variabeles|
|:--|
|carrierId|
|name|
|address|
|zipCode|
|place|
|countryID|
|phoneNr|
|contactPerson|
|email|
|version|
|niwOcod|
|trolleyHeight|
|inActive|
|glnCode|
|faxNr|

# Customers

| Variabele |
|:--------|
| version |
| customerId |
| customerKey |
| companyName |
| contact |
| address |
| postal |
| city |
| countryId |
| regionId |
| profile |
| phoneNr |
| mobile |
| faxNr |
| email |
| customerEANCode |
| customerGLNAddress |
| offerTreeId |
| customerTreeId |
| priceTree2Id |
| priceTree3Id |
| customerGroupId |
| seatNo |
| plateNr |
| sellerId |
| vatnr |
| cocNr |
| debtorFinancialNr |
| paymentConditionId |
| financialAdministrationId |
| businessUnitId |
| priceConfigurationId |

# CustomerGroups

| Variabele |
|:--------|
| customerGroupId |
| description |
| version |
| mainGroup |
| saleUnit |
| logisticsUnit |

# CustomerGroupRelations

| Variabele |
|:--------|
| customerId |
| customerGroupId |
| version |
| sequenceNumber |

# Countries

| Variabele |
|:--------|
| id |
| description |
| version |
| currencyCode |

# Carriers

| Variabele |
|:--------|
| carrierId |
| name |
| address |
| zipCode |
| place |
| countryID |
| phoneNr |
| contactPerson |
| email |
| version |
| niwOcod |
| trolleyHeight |
| inActive |
| glnCode |
| faxNr |

# Currencies

| Variabele |
|:--------|
| id |
| description |
| version |

# Divisions

| Variabele |
|:--------|
| id |
| description |
| version |

# Divisionmethods

| Variabele |
|:--------|
| id |
| description |

# FinancialAdministrations

| Variabele |
|:--------|
| id |
| description |
| version |

# Growers

| Variabele |
|:--------|
| growerId |
| name |
| address |
| zipCode |
| place |
| countryId |
| growerEAN |
| phone |
| email |
| varbNr |
| customerId |
| webserviceRaise |
| plantPasport |
| remark |
| accManager |
| mps |
| mpsNr |
| mpsType |
| mpsCert |
| mpsStart |
| mpsEnd |
| mps2Nr |
| mps2Type |
| mps2Cert |
| mps2Start |
| mps2End |
| version |

# Packages

| Variabele |
|:--------|
| packageId |
| packagePrice |
| packageGrpID |
| description |
| description_D |
| description_E |
| description_F |
| packageType |
| transportType |
| packagePrice2 |
| packagePrice3 |
| packagePrice4 |
| packagePurchaseAmount |
| packageRentAmount |
| packageRentAmount2 |
| rentBTWCod |
| btwCod |
| packageCombi1 |
| packageCombi2 |
| packageCombi3 |
| packageCombi4 |
| ledgerAccount |
| costUnit |
| costUnitRent |
| auctionPackage |
| ownPackage |
| lockPlate |
| supplierId |
| germanVBNcod |
| barcodePrefix |
| markCod |
| material |
| netWeight |
| grossWeight |
| volumeWeight |
| collectionCode |
| amountPerPallet |
| packageLength |
| packageWidth |
| packageHeight |
| plateHeight |
| standardPackageContent |
| standardAmountPerLayer |
| standardAmountPerCart |
| calculateVolume |
| isBox |
| loadCarrier |
| version |

# ProductGroups

| Variabele |
|:--------|
| id |
| description |
| version |

# Sellers

| Variabele |
|:--------|
| id |
| description |
| version |

# Stocks

| Variabele |
|:--------|
| id |
| description |
| version |

# Suppliers

| Variabele |
|:--------|
| supplierId |
| name |
| contact |
| address |
| postal |
| city |
| countryId |
| supplierPhoneNr |
| supplierFax |
| supplierEmail |
| eanCode |
| glnCode |
| glnLocCode |
| supplierIdCod |
| customerId |
| staff |
| certCod |
| growerAuction |
| growerId |
| finBTWCod |
| btwNr |
| version |

# Users

| Variabele |
|:--------|
| id |
| description |
| version |

# Vats

| Variabele |
|:--------|
| id |
| description |
| version |

# BandRef

| Variabele |
|:--------|
| productionLineId |
| parcelId |
| vParcelId |
| bouquetTask |
| bouquetDebtor |
| status |
| bouquetPriority |
| deadline |
| quantityInProcess |
| quantityDone |
| productionLineReferenceId |
| start |
| end |
| paused |
| timePaused |
| workerOnLine |
| part |
| packageQuantity |
| divisionId |
| contentColli |
| creation |
| packageId |
| readyForProduction |
| printTime |
| printUser |
| totalQuantity |
| malfunction |
| planned |
| startDivision |
| endDivision |
| version |
| pKey |

# BandRefLog

| Variabele |
|:--------|
| lineReferenceID |
| logType |
| logTime |
| userId |
| productionLineId |
| status |
| quantity |
| workerOnLine |
| reason |
| processId |
| processCode |
| version |
| pKey |

# CustomerOrders

| Variabele |
|:--------|
| parcelId |
| orderListId |
| orderlistSubId |
| customerId |
| orderNr |
| description |
| quantity |
| colli |
| original |
| orginalColli |
| contentColli |
| packageQuantity |
| packageId |
| priceParcelPurchase |
| price |
| qualityId |
| delivery |
| barcode |
| currencyId |
| registrationDate |
| registrationTime |
| colliText |
| remark |
| handling |
| userId |
| code |
| orderDate |
| deliveryTime |
| contentPlate |
| contentTrolley |
| contentPackage |
| sellerId |
| externalOrderId |
| compositionOrderId |
| orderId |
| remark2 |
| packageCarrier |
| externalSupplierId |
| auctionGrp |
| creation |
| bouquet |
| deliveryDate |
| orderApprovalId |
| priceFixed |
| shipmentNo |
| maxPurchasePrice |
| purchaseDate |
| productionDate |
| contentBunch |
| monoBouquetContent |
| priced |
| orderType |
| shippingId |
| s01 |
| s02 |
| s03 |
| s04 |
| s05 |
| s06 |
| s07 |
| customerOrderNr |
| remark3 |
| priceBase |
| confirmationUser |
| confirmationTime |
| eanCode |
| divisionId |
| customerPriceInCurrency |
| externalBarcode |
| holdOrder |
| bouquetId |
| scanCode |
| deadlineNr |
| supplierNote |
| version |

# SalesDivisions

| Variabele |
|:--------|
| parcelId |
| orderListId |
| orderlistSubId |
| customerId |
| orderNr |
| description |
| quantity |
| colli |
| original |
| orginalColli |
| contentColli |
| packageQuantity |
| packageId |
| priceParcelPurchase |
| price |
| qualityId |
| delivery |
| barcode |
| currencyId |
| registrationDate |
| registrationTime |
| colliText |
| remark |
| handling |
| userId |
| code |
| orderDate |
| deliveryTime |
| contentPlate |
| contentTrolley |
| contentPackage |
| sellerId |
| externalOrderId |
| compositionOrderId |
| orderId |
| remark2 |
| packageCarrier |
| externalSupplierId |
| auctionGrp |
| creation |
| bouquet |
| deliveryDate |
| orderApprovalId |
| priceFixed |
| shipmentNo |
| maxPurchasePrice |
| purchaseDate |
| productionDate |
| contentBunch |
| monoBouquetContent |
| priced |
| orderType |
| shippingId |
| s01 |
| s02 |
| s03 |
| s04 |
| s05 |
| s06 |
| s07 |
| customerOrderNr |
| remark3 |
| priceBase |
| confirmationUser |
| confirmationTime |
| eanCode |
| divisionId |
| customerPriceInCurrency |
| externalBarcode |
| holdOrder |
| bouquetId |
| scanCode |
| deadlineNr |
| supplierNote |
| version |

# DivisionPriceLog

--

# InvoiceCredits

| Variabele |
|:--------|
| historicalBarcode |
| barcode |
| creditReason |
| returnToStock |
| sellerId |
| date |
| vParcelId |
| creditQuantity |
| creditPrice |
| remark |
| processingChoice |
| userId |
| creditReasonId |
| pKey |
| version |

# OrderlistAssortment

| Variabele |
|:--------|
| parcelId |
| stockId |
| articleKey |
| lineArticleId |
| orgParcelId |
| growerArticleId |
| exArticleId |
| articleId |
| description |
| qualityId |
| externalSupplierId |
| supplierId |
| basePrice |
| consumerPrice |
| priceBare |
| costPrice |
| price |
| contentColli |
| packageId |
| auctionGrp |
| volume |
| deselect |
| packageContent |
| remark |
| exCode |
| newDate |
| scanCode |
| code |
| valid |
| priceParcelPurchase |
| buyerId |
| minPurchase |
| amount2 |
| amount3 |
| price2 |
| price3 |
| contentBunch |
| contentPlate |
| contentTrolley |
| s01 |
| s02 |
| s03 |
| s04 |
| s05 |
| s06 |
| s07 |
| parcelS01Id |
| parcelS02Id |
| parcelS03Id |
| parcelS04Id |
| parcelS05Id |
| parcelS06Id |
| parcelS07Id |
| raiseCnt |
| available |
| countryId |
| sellerId |
| priceGroup1 |
| priceGroup2 |
| priceGroup3 |
| priceGroup4 |
| priceGroup5 |
| priceGroup6 |
| priceGroup7 |
| priceGroup8 |
| priceGroup9 |
| priceGroup10 |
| priceGroup11 |
| priceGroup12 |
| priceGroup13 |
| priceGroup14 |
| priceGroup15 |
| priceGroup16 |
| priceGroup17 |
| priceGroup18 |
| priceGroup19 |
| priceGroup20 |
| priceModified |
| exDecription |
| feature |
| creation |
| growerEan |
| modified |
| contenBox |
| volumeKilo |
| priceModifyUser |
| bestOrigin |
| volumeStem |
| bouquet |
| exPhotoURL |
| raisePrcnt |
| featureCod |
| colorId |
| remark2 |
| minRest |
| priceInCurrency |
| orderApproval |
| location |
| xdays |
| monoBouquetDescription |
| monoBouquetContent |
| description_D |
| description_E |
| description_F |
| description_G |
| description_H |
| description_I |
| description_J |
| description_K |
| description_L |
| eanCode |
| brokenColliRaise |
| fromParcelId |
| volumeTrolleyPackageId |
| priceFixed |
| version |

# OrderlistComponents

| Variabele |
|:--------|
| articleId |
| description |
| colorId |
| priceParcelPurchase1 |
| priceParcelPurchase2 |
| quantity |
| parcelId |
| bParcelId |
| s01 |
| s02 |
| remark |
| supplierId |
| contentColli |
| componentWeight |
| version |
| pKey |

# OutstandingInvoices

| Variabele |
|:--------|
| productionLineId |
| reminder1 |
| reminder2 |
| reminder3 |
| reminder4 |
| reminder5 |
| invoiceAmount |
| dontCollect |
| calculateInterest |
| log |
| hasUnprocessedPayments |
| realCustomerId |
| customerId |
| invoiceNr |
| currency |
| lineId |
| userId |
| remark |
| orderNr |
| financialAdministrationid |
| processed |
| pKey |
| version |

# PackageHistory

| Variabele |
|:--------|
| customerId |
| auctionDate |
| date |
| packageId |
| invoiceNr |
| totalPackageOut |
| totalPackageIn |
| customerPrice |
| amountOfDaysInvoiced |
| rentFree |
| rentPrice |
| exportTime |
| remark |
| sellerId |
| treePrice |
| registrationDate |
| orderNr |
| colliTrackerTransactionID |
| colliTrackerExport |
| colliTrackerTransactionID1 |
| trackOnlineGUID |
| id |
| pKey |
| version |

# PaymentHistory

--

# PurchaseHistory

| Variabele         |
| :--------------   |
| articleId        |
| description      |
| colli            |
| contentColli     |
| restQuantity     |
| packageQuantity  |
| packageId        |
| vParcelId        |
| auctionId        |
| transId          |
| transIdLong      |
| clockTrans       |
| buyerNo          |
| growerId         |
| plateNo          |
| seatNo           |
| s01              |
| s02              |
| s03              |
| s04              |
| s05              |
| s06              |
| s07              |
| parcelS01Id      |
| parcelS02Id      |
| parcelS03Id      |
| parcelS04Id      |
| parcelS05Id      |
| parcelS06Id      |
| parcelS07Id      |
| countryId        |
| contentBunch     |
| supplierId       |
| parcelDate       |
| writeOffQuantity |
| writeOffId       |
| paymentDate      |
| paymentTime      |
| paymentUSer      |
| remark           |
| barePrice        |
| price            |
| priceIncl        |
| creation         |
| shipmentNo       |
| eInvoiceBarcode  |
| stockId          |
| version          |
| pKey             |
| deadlineNr       |

# Payments

| Variabele |
|:--------|
| customerId |
| invoiceNr |
| invoiceDate |
| paymentDate |
| paymentId |
| amount |
| currency |
| userId |
| checkId |
| description |
| creation |
| feature |
| uniqueId |
| webPaymentId |
| terminalId |
| sendEmail |
| printInvoiceNr |
| surchargePrcnt |
| surchargeRaise |
| adherrentLedgerNr |
| pKey |
| version |

# Shipments

| Variabele |
|:--------|
| shipmentId |
| departurePort |
| arrivalPort |
| shipmentType |
| shipmentNumber |
| shipmentDate |
| offloadDate |
| expectedOffloadDate |
| offloadCarrier |
| creationDate |
| transportCost |
| shipName |
| arrivalDate |
| quantity |
| departurePortId |
| arrivalPortId |
| final |
| loadingCarrier |
| clearanceCountry |
| clearningAgentId |
| logisticalAgentId |
| freightForwarderLocation |
| freightContainerNumber |
| awbNumber |
| customsInspection |
| airportDepartureID |
| airportArrivalId |
| deliveryLocationId |
| version |
| pKey |

# SalesHistory

| Variabele |
|:--------|
| articleGroupId |
| articleId |
| contentBox |
| contentBunch |
| contentColli |
| currencyId |
| customerCompanyName |
| customerCountryId |
| customerFinId |
| customerId |
| department |
| description |
| divisionId |
| divisionMethodId |
| financialAdmId |
| growerEAN |
| growerId |
| invoiceDate |
| invoiceGoodsAmount |
| invoiceNr |
| invoiceTotalAmount |
| orderDate |
| orderNr |
| packageQuantity |
| packagePrice |
| packageId |
| parcelDate |
| parcelNo |
| parcelPurchaseNo |
| parcelS01Id |
| parcelS02Id |
| parcelS03Id |
| parcelS04Id |
| parcelS05Id |
| parcelS06Id |
| parcelS07Id |
| pKey |
| priceBare |
| priceEndCustomer |
| priceOnInvoicePurchase |
| priceOnInvoiceSales |
| priceOnPurchase |
| priceParcelPurchase |
| priceParcelSales |
| priceWithCostsReductions |
| productGroupId |
| regDate |
| s01 |
| s02 |
| s03 |
| s04 |
| s05 |
| s06 |
| s07 |
| salesUnit |
| sellerId |
| stockId |
| subCustomerId |
| supplierId |
| totalStems |
| userId |
| vatId |
| version |

# OrderApprovals

| Variabele |
|:--------|
| orderId |
| state |
| deadlineNr |
| supplierId |
| divisionId |
| deadline |
| shippingDate |
| confirmationDate |
| salesUser |
| orderDate |
| contentColli |
| articleID |
| transportCostPerStem |
| growerConfirmationStatus |
| growerConfirmationDate |
| confirmedPrice |
| loadCarrier |
| deliveryLocationId |
| deliveryMethodId |
| shipmentId |
| version |
| pKey |

# SalesHistoryCostAndRebates

| Variabele           |
|:------------------|
| id                 |
| customerId       |
| orderNr         |
| invoiceNr        |
| department     |
| description     |
| amount           |
| percentage      |
| calculationMethod |
| vatId             |
| exchangeRate |
| totalAmount   |
| totalAmountOver |
| creation           |
| version           |
| costCode       |

# SalesHistoryBouquets

| Variabele                |
| :---------------------- |
| articleGroupId          |
| articleId               |
| contentBox              |
| contentBunch            |
| contentColli            |
| currencyId              |
| customerCompanyName     |
| customerCountryId       |
| customerFinId           |
| customerId              |
| department              |
| description             |
| divisionId              |
| divisionMethodId        |
| financialAdmId          |
| growerEAN               |
| growerId                |
| invoiceDate             |
| invoiceGoodsAmount      |
| invoiceNr               |
| invoiceTotalAmount      |
| orderDate               |
| orderNr                 |
| packageQuantity         |
| packagePrice            |
| packageId               |
| parcelDate              |
| parcelNo                |
| parcelPurchaseNo        |
| parcelS01Id             |
| parcelS02Id             |
| parcelS03Id             |
| parcelS04Id             |
| parcelS05Id             |
| parcelS06Id             |
| parcelS07Id             |
| pKey                    |
| priceBare               |
| priceEndCustomer        |
| priceOnInvoicePurchase  |
| priceOnInvoiceSales     |
| priceOnPurchase         |
| priceParcelPurchase     |
| priceParcelSales        |
| priceWithCostsReductions |
| productGroupId          |
| regDate                 |
| s01                     |
| s02                     |
| s03                     |
| s04                     |
| s05                     |
| s06                     |
| s07                     |
| salesUnit               |
| sellerId                |
| stockId                 |
| subCustomerId           |
| supplierId              |
| totalStems              |
| userId                  |
| vatId                   |
| version                 |

# SalesHistoryInvoiceHeaders

| Variabele                    |
| :-------------------------- |
| customerId                  |
| orderNr                     |
| customerName                |
| invoiceNr                   |
| currencyId                  |
| exchangeRate                |
| exhangeRateActual           |
| invoiceDate                 |
| commission                  |
| oneTimePackageAmount        |
| returnablePackageAmount     |
| packageRentAmount           |
| vatLow                      |
| vatHigh                     |
| vatLowOver                  |
| vatHighOver                 |
| vatZeroOver                 |
| invoiceTotalAmount          |
| vatCharged                  |
| financialAdministrationId    |
| goodsAmount                 |
| carrierId                   |
| auctionTradeTransaction     |
| printedBy                   |
| exchangeRateActual          |
| printedByUserId             |
| packageQuantity             |
| packageAmount               |
| totalPurchaseValue          |
| oneTimePackageValue         |
| returnablePackageValue      |
| printTime                   |
| packagePurchaseAmount       |
| version                     |

# ShopLog

| Variabele           |
| :----------------- |
| logId              |
| userId             |
| customerId         |
| stockId            |
| logTime            |
| productGroupID     |
| articleGroupId     |
| searchDescription  |
| s01                |
| color              |
| feature            |
| parcelId           |
| quantity           |
| customerIP         |
| orderlistSubId     |
| orderNr            |
| description        |
| webshop            |
| barcode            |
| divisionType       |
| remark             |
| pKey               |
| version            |
