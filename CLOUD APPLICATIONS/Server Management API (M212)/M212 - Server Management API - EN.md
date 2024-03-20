<img src="../../fslogo.png">

# Florisoft Manual Server Management API - M212

Welcome to the Florisoft manual about the Server Management API module. This module replaces the previously used ODBC connection that retrieved data from the database.
Your API-URL should be as follows: https://<your cloudserver URL\>.com/ext/management/\<endoint>

## Table of contents

[Table of contents](#table-of-contents)  
[Authorizing a user](#authorizing-a-user)  
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
[CustomerOrders](#customerorders)  
[SalesDivisions](#salesdivisions)  
[Division Price Log](#divisionpricelog)  
[Invoice credits](#invoicecreditw)  
[Orderlist Assortment](#orderlistassortment)  
[Orderlist components](#orderlistcomponents)  
[Outstanding invoices](#outstandinginvoices)  
[Package history](#packagehistory)  
[PaymentHistory](#paymenthistory)  
[PurchaseHistory](#purchasehistory)  
[Payments](#payments)  
[Shipments](#shipments)  
[SalesHistory](#saleshistory)  
[Order approvals](#orderapprovals)  
[Sales History Cost and Rebates](#saleshistorycostandrebates)  
[Sales History Bouquets](#saleshistorybouquets)  
[Sales History Invoice Headers](#saleshistoryinvoiceheaders)   
[Shoplog](#shoplog)   
[Colors](#colors)  
[ComponentTypes](#componenttypes)  
[SortCodes](#sortcodes)   
[ReservationTexts](#reservationtexts)  
[InvoiceApproval](#invoiceapproval)  
[PaymentConditions](#paymentconditions)  
[Sources](#sources)  

## Authorizing a user

Not all system users have the ability to retrieve data from the Florisoft API. 
System users must be granted special permission to do so. Please follow the steps below to authorize a system user.

|Step|Explanation|
|:-:|:--|
|**1**|Open the constants screen and navigate to the following path:<br>**System→Users→System users**<details><summary><b>Click here for the example image!</b></summary><img src="media EN/image4.png"></details>|
|**2**|Open the concerning user. <br> Now click the authorisation button.<details><summary><b>Click here for the example image!</b></summary><img src="media EN/image2.png"></details>|
|**3**|Zoek vervolgens in het autorisatie scherm (met de F3 knop) naar 971.<details><summary><b>Click here for the example image!</b></summary><img src="media EN/image3.png"></details>|
|**4**|Open the setting and click on the radio button called 'Allow all processes'<details><summary><b>Click here for the example image!</b></summary><img src="media EN/image1.png"></details>|
|**5**|Press the OK button to save the made changes<details><summary><b>Click here for the example image!</b></summary><img src="media EN/image1.png"></details>|

# Endpoints

The server management API has many different endpoints they are described in the following chapters.

# ArticleGroups

|Variables|
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

|Variables|
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

|Variables|
|:--|
|productionLineId|
|description|
|version|

# Cariers

|Variables|
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

| Variable |
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
| dueDateInDays|
| customerTypeId|
| customerCategory|
| accountManager|

# CustomerGroups

| Variable |
|:--------|
| customerGroupId |
| description |
| version |
| mainGroup |
| saleUnit |
| logisticsUnit |

# CustomerGroupRelations

| Variable |
|:--------|
| customerId |
| customerGroupId |
| version |
| sequenceNumber |

# Countries

| Variable |
|:--------|
| id |
| description |
| version |
| currencyCode |

# Carriers

| Variable |
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

| Variable |
|:--------|
| id |
| description |
| version |

# Divisions

| Variable |
|:--------|
| id |
| description |
| version |

# Divisionmethods

| Variable |
|:--------|
| id |
| description |

# FinancialAdministrations

| Variable |
|:--------|
| id |
| description |
| version |

# Growers

| Variable |
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

| Variable |
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

| Variable |
|:--------|
| id |
| description |
| version |

# Sellers

| Variable |
|:--------|
| id |
| description |
| version |

# Stocks

| Variable |
|:--------|
| id |
| description |
| version |

# Suppliers

| Variable |
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
|debtorFinancialNumber|
|accountManager|

# Users

| Variable |
|:--------|
| id |
| description |
| version |

# Vats

| Variable |
|:--------|
| id |
| description |
| version |

# BandRef

| Variable |
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

| Variable |
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

| Variable |
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
| ReservationTextId|

# SalesDivisions

| Variable |
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

# InvoiceCredit

| Variable |
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

| Variable |
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

| Variable |
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

| Variable |
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

| Variable |
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

| Variable         |
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
|debtorFinancialNumber|
|accountManager|
|orderParcelid|
|priceInCurrency|

# Payments

| Variable |
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

| Variable |
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

| Variable |
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
| packListId|

# OrderApprovals

| Variable |
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

| Variable           |
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

| Variable                |
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

| Variable                    |
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

| Variable           |
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

# Colors

|Variable|
|:-------|
|colorId|
|color|
|description_D|
|description_E|
|description_F|
|s50_Feature|

# ComponentTypes

|Variable|
|:-------|
|id|
|description|

# CreditReasons

|Variable|
|:-------|
|creditReasonCode|
|description|
|description_E|
|description_D|
|description_F|
|creditCategory|
|webShop|
|toReturn|
|refund|
|version|

# SortCodes

|Variable|
|:-------|
|productCharacteristicCode|
|feature|
|productCharacteristicDescription|
|description_D|
|description_E|
|description_F|
|version|

# ReservationTexts

|Variable|
|:-------|
|reservationTextId|
|description|
|reservationTextCode|
|version|

# InvoiceApproval

|Variable|
|:-------|
|toDebtor|
|toOrderNr|
|customerId|
|orderNr|
|articleId|
|invoiceNr|
|amount|
|date|
|divisionId|
|processingDate|
|creditVia|
|userId|
|packageCredit|
|packageQuantity|
|reasonForCredit|
|approvingSalesUser|
|processingChoice|
|creditRemark|
|processinText|
|doneProcessing|
|creditQuantity|
|parcelDate|
|supplierId|
|returnedProduct|
|registrationDate|
|statusId|
|s01|
|countryId|
|accountManager|
|stateColor|
|historicalShipmentNo|
|packageCode|
|everythingCredited|
|reasonForCreditId|
|invoiceCreditStatus|
|pKey|
|version|

# PaymentConditions

|Variable|
|:-------|
|paymentCondtionId|
|conditionCode|
|conditionCode_G|
|conditionCode_E|
|conditionCode_F|
|conditionCode_I|
|description|
|description_D|
|description_E|
|description_F|
|description_I|
|pKey|
|version|

# Sources

|Variable|
|:-------|
|id|
|description|
