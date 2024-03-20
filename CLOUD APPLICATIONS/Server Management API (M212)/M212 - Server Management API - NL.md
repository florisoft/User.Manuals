<img src="../../fslogo.png">

# Florisoft Handleiding Server Management API - M212

Welkom bij de handleiding over de Florisoft Server Management API. Deze module vervangt de hiervoor gebruikte ODBC connectie waarmee gegevens uit de database werden gehaald.
Je API-url is als volgt: https://\<cloud server URL>.com/ext/management/\<endpoint>


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

|Value|
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

|Value|
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

# Carriers

|Value|
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

# Colors

|Value|
|:--|
|colorId|
|color|
|description_D|
|description_E|
|description_F|
|s50_Feature|
|version|

# ComponentTypes

|Value|
|:--|
|id|
|description|

# Customers

|Value|
|:--|
|version|
|customerId|
|customerKey|
|companyName|
|contact|
|address|
|postal|
|city|
|countryId|
|regionId|
|profile|
|phoneNr|
|mobile|
|faxNr|
|email|
|customerEANCode|
|customerGLNAddress|
|offerTreeId|
|customerTreeId|
|priceTree2Id|
|priceTree3Id|
|customerGroupId|
|seatNo|
|plateNr|
|sellerId|
|vatnr|
|cocNr|
|debtorFinancialNr|
|paymentConditionId|
|financialAdministrationId|
|businessUnitId|
|priceConfigurationId|
|dueDateInDays|
|customerTypeId|
|customerCategory|
|accountManager|

# CreditReasons

|Value|
|:--|
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

# CustomerGroups

|Value|
|:--|
|customerGroupId|
|description|
|version|
|mainGroup|
|saleUnit|
|logisticsUnit|

# CustomerGroupRelations

|Value|
|:--|
|customerId|
|customerGroupId|
|version|
|sequenceNumber|

# Countries

|Value|
|:--|
|id|
|description|
|version|
|currencyCode|

# Currencies

|Value|
|:--|
|id|
|description|
|version|

# Divisions

|Value|
|:--|
|id|
|description|
|version|

# DivisionMethods

|Value|
|:--|
|id|
|description|

# FinancialAdministrations

|Value|
|:--|
|id|
|description|
|version|

# Growers

|Value|
|:--|
|growerId|
|name|
|address|
|zipCode|
|place|
|countryId|
|growerEAN|
|phone|
|email|
|varbNr|
|customerId|
|webserviceRaise|
|plantPasport|
|remark|
|accManager|
|mps|
|mpsNr|
|mpsType|
|mpsCert|
|mpsStart|
|mpsEnd|
|mps2Nr|
|mps2Type|
|mps2Cert|
|mps2Start|
|mps2End|
|version|
|auctionCode|

# Packages

|Value|
|:--|
|packageId|
|packagePrice|
|packageGrpID|
|description|
|description_D|
|description_E|
|description_F|
|packageType|
|transportType|
|packagePrice2|
|packagePrice3|
|packagePrice4|
|packagePurchaseAmount|
|packageRentAmount|
|packageRentAmount2|
|rentBTWCod|
|btwCod|
|packageCombi1|
|packageCombi2|
|packageCombi3|
|packageCombi4|
|ledgerAccount|
|costUnit|
|costUnitRent|
|auctionPackage|
|ownPackage|
|lockPlate|
|supplierId|
|germanVBNcod|
|barcodePrefix|
|markCod|
|material|
|netWeight|
|grossWeight|
|volumeWeight|
|collectionCode|
|amountPerPallet|
|packageLength|
|packageWidth|
|packageHeight|
|plateHeight|
|standardPackageContent|
|standardAmountPerLayer|
|standardAmountPerCart|
|calculateVolume|
|isBox|
|loadCarrier|
|version|

# ProductGroups

|Value|
|:--|
|id|
|description|
|version|

# ReservationTexts

|Value|
|:--|
|reservationTextId|
|description|
|reservationTextCode|
|version|

# Sellers

|Value|
|:--|
|id|
|name|
|version|

# SortCodes

|Value|
|:--|
|productCharacteristicCode|
|feature|
|productCharacteristicDescription|
|description_D|
|description_E|
|description_F|
|version|

# Sources

|Value|
|:--|
|id|
|description|

# Suppliers

|Value|
|:--|
|supplierId|
|name|
|contact|
|address|
|postal|
|city|
|countryId|
|supplierPhoneNr|
|supplierFax|
|supplierEmail|
|eanCode|
|glnCode|
|glnLocCode|
|supplierIdCod|
|customerId|
|staff|
|certCod|
|growerAuction|
|growerId|
|finBTWCod|
|btwNr|
|debtorFinancialNumber|
|accountManager|
|version|

# Stocks

|Value|
|:--|
|id|
|description|
|version|

# Users

|Value|
|:--|
|id|
|name|
|version|
|userDepartmentId|

# Vats

|Value|
|:--|
|id|
|description|
|version|

# SalesHistory

|Value|
|:--|
|articleGroupId|
|articleId|
|contentBox|
|contentBunch|
|contentColli|
|currencyId|
|customerCompanyName|
|customerCountryId|
|customerFinId|
|customerId|
|department|
|description|
|divisionId|
|divisionMethodId|
|financialAdmId|
|growerEAN|
|growerId|
|invoiceDate|
|invoiceGoodsAmount|
|invoiceNr|
|invoiceTotalAmount|
|orderDate|
|orderNr|
|packageQuantity|
|packagePrice|
|packageId|
|parcelDate|
|parcelNo|
|parcelPurchaseNo|
|parcelS01Id|
|parcelS02Id|
|parcelS03Id|
|parcelS04Id|
|parcelS05Id|
|parcelS06Id|
|parcelS07Id|
|pKey|
|priceBare|
|priceEndCustomer|
|priceOnInvoicePurchase|
|priceOnInvoiceSales|
|priceOnPurchase|
|priceParcelPurchase|
|priceParcelSales|
|priceWithCostsReductions|
|productGroupId|
|regDate|
|s01|
|s02|
|s03|
|s04|
|s05|
|s06|
|s07|
|salesUnit|
|sellerId|
|stockId|
|subCustomerId|
|supplierId|
|totalStems|
|userId|
|vatId|
|componentTypeId|
|version|
|orderParcelId|
|packlistId|

# PurchaseHistory

|Value|
|:--|
|articleId|
|description|
|colli|
|contentColli|
|restQuantity|
|packageQuantity|
|packageId|
|vParcelId|
|auctionId|
|transId|
|transIdLong|
|clockTrans|
|buyerNo|
|growerId|
|plateNo|
|seatNo|
|s01|
|s02|
|s03|
|s04|
|s05|
|s06|
|s07|
|parcelS01Id|
|parcelS02Id|
|parcelS03Id|
|parcelS04Id|
|parcelS05Id|
|parcelS06Id|
|parcelS07Id|
|countryId|
|contentBunch|
|supplierId|
|parcelDate|
|writeOffQuantity|
|writeOffId|
|paymentDate|
|paymentTime|
|paymentUSer|
|remark|
|barePrice|
|price|
|priceIncl|
|creation|
|shipmentNo|
|eInvoiceBarcode|
|stockId|
|version|
|pKey|
|deadlineNr|
|sourceId|
|color|
|orderParcelId|
|priceInCurrency|

# CustomerOrders

|Value|
|:--|
|parcelId|
|orderListId|
|orderlistSubId|
|customerId|
|orderNr|
|description|
|quantity|
|colli|
|original|
|orginalColli|
|contentColli|
|packageQuantity|
|packageId|
|priceParcelPurchase|
|price|
|qualityId|
|delivery|
|barcode|
|currencyId|
|registrationDate|
|registrationTime|
|colliText|
|remark|
|handling|
|userId|
|code|
|orderDate|
|deliveryTime|
|contentPlate|
|contentTrolley|
|contentPackage|
|sellerId|
|externalOrderId|
|compositionOrderId|
|orderId|
|remark2|
|packageCarrier|
|externalSupplierId|
|auctionGrp|
|creation|
|bouquet|
|deliveryDate|
|orderApprovalId|
|priceFixed|
|shipmentNo|
|maxPurchasePrice|
|purchaseDate|
|productionDate|
|contentBunch|
|monoBouquetContent|
|priced|
|orderType|
|shippingId|
|s01|
|s02|
|s03|
|s04|
|s05|
|s06|
|s07|
|customerOrderNr|
|remark3|
|priceBase|
|confirmationUser|
|confirmationTime|
|eanCode|
|divisionId|
|customerPriceInCurrency|
|externalBarcode|
|holdOrder|
|bouquetId|
|scanCode|
|deadlineNr|
|supplierNote|
|version|
|reservationTextId|

# InvoiceApproval

|Value|
|:--|
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

# InvoiceCredits

|Value|
|:--|
|historicalBarcode|
|barcode|
|creditReason|
|returnToStock|
|sellerId|
|date|
|vParcelId|
|creditQuantity|
|creditPrice|
|remark|
|processingChoice|
|userId|
|creditReasonId|
|pKey|
|version|

# OrderlistAssortment

|Value|
|:--|
|parcelId|
|stockId|
|articleKey|
|lineArticleId|
|orgParcelId|
|growerArticleId|
|exArticleId|
|articleId|
|description|
|qualityId|
|externalSupplierId|
|supplierId|
|basePrice|
|consumerPrice|
|priceBare|
|costPrice|
|price|
|contentColli|
|packageId|
|auctionGrp|
|volume|
|deselect|
|packageContent|
|remark|
|exCode|
|newDate|
|scanCode|
|code|
|valid|
|priceParcelPurchase|
|buyerId|
|minPurchase|
|amount2|
|amount3|
|price2|
|price3|
|contentBunch|
|contentPlate|
|contentTrolley|
|s01|
|s02|
|s03|
|s04|
|s05|
|s06|
|s07|
|parcelS01Id|
|parcelS02Id|
|parcelS03Id|
|parcelS04Id|
|parcelS05Id|
|parcelS06Id|
|parcelS07Id|
|raiseCnt|
|available|
|countryId|
|sellerId|
|priceGroup1|
|priceGroup2|
|priceGroup3|
|priceGroup4|
|priceGroup5|
|priceGroup6|
|priceGroup7|
|priceGroup8|
|priceGroup9|
|priceGroup10|
|priceGroup11|
|priceGroup12|
|priceGroup13|
|priceGroup14|
|priceGroup15|
|priceGroup16|
|priceGroup17|
|priceGroup18|
|priceGroup19|
|priceGroup20|
|priceModified|
|exDecription|
|feature|
|creation|
|growerEan|
|modified|
|contenBox|
|volumeKilo|
|priceModifyUser|
|bestOrigin|
|volumeStem|
|bouquet|
|exPhotoURL|
|raisePrcnt|
|featureCod|
|colorId|
|remark2|
|minRest|
|priceInCurrency|
|orderApproval|
|location|
|xdays|
|monoBouquetDescription|
|monoBouquetContent|
|description_D|
|description_E|
|description_F|
|description_G|
|description_H|
|description_I|
|description_J|
|description_K|
|description_L|
|eanCode|
|brokenColliRaise|
|fromParcelId|
|volumeTrolleyPackageId|
|priceFixed|
|version|

# OutstandingInvoices

|Value|
|:--|
|productionLineId|
|reminder1|
|reminder2|
|reminder3|
|reminder4|
|reminder5|
|invoiceAmount|
|dontCollect|
|calculateInterest|
|log|
|hasUnprocessedPayments|
|realCustomerId|
|customerId|
|invoiceNr|
|currency|
|lineId|
|userId|
|remark|
|orderNr|
|financialAdministrationid|
|processed|
|pKey|
|version|

# Carriers

|Value|
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

# CustomerGroups

|Value|
|:--|
|customerGroupId|
|description|
|version|
|mainGroup|
|saleUnit|
|logisticsUnit|

# CustomerGroupRelations

|Value|
|:--|
|customerId|
|customerGroupId|
|version|
|sequenceNumber|

# InvoiceCredits

|Value|
|:--|
|historicalBarcode|
|barcode|
|creditReason|
|returnToStock|
|sellerId|
|date|
|vParcelId|
|creditQuantity|
|creditPrice|
|remark|
|processingChoice|
|userId|
|creditReasonId|
|pKey|
|version|

# OutstandingInvoices

|Value|
|:--|
|productionLineId|
|reminder1|
|reminder2|
|reminder3|
|reminder4|
|reminder5|
|invoiceAmount|
|dontCollect|
|calculateInterest|
|log|
|hasUnprocessedPayments|
|realCustomerId|
|customerId|
|invoiceNr|
|currency|
|lineId|
|userId|
|remark|
|orderNr|
|financialAdministrationid|
|processed|
|pKey|
|version|

# PackageHistory

|Value|
|:--|
|customerId|
|auctionDate|
|date|
|packageId|
|invoiceNr|
|totalPackageOut|
|totalPackageIn|
|customerPrice|
|amountOfDaysInvoiced|
|rentFree|
|rentPrice|
|exportTime|
|remark|
|sellerId|
|treePrice|
|registrationDate|
|orderNr|
|colliTrackerTransactionID|
|colliTrackerExport|
|colliTrackerTransactionID1|
|trackOnlineGUID|
|id|
|pKey|
|version|

# Payments

|Value|
|:--|
|customerId|
|invoiceNr|
|invoiceDate|
|paymentDate|
|paymentId|
|amount|
|currency|
|userId|
|checkId|
|description|
|creation|
|feature|
|uniqueId|
|webPaymentId|
|terminalId|
|sendEmail|
|printInvoiceNr|
|surchargePrcnt|
|surchargeRaise|
|adherrentLedgerNr|
|pKey|
|version|

# Shoplog

|Value|
|:--|
|logId|
|userId|
|customerId|
|stockId|
|logTime|
|productGroupID|
|articleGroupId|
|searchDescription|
|s01|
|color|
|feature|
|parcelId|
|quantity|
|customerIP|
|orderlistSubId|
|orderNr|
|description|
|webshop|
|barcode|
|divisionType|
|remark|
|pKey|
|version|

# SalesDivisions

|Value|
|:--|
|stockID|
|bouquetCustomerId|
|customerId|
|orderNr|
|department|
|articleId|
|parcelDate|
|amount|
|parcelId|
|packageQuantity|
|contentColli|
|description|
|s1|
|salesPrice1|
|saleAmount|
|packageId|
|userId|
|productGroupId|
|vParcelId|
|packlistId|
|salesRecordId|
|bouquet|
|orderprice|
|remark|
|salesUnit|
|creation|
|volume|
|orderDescription|
|divisionType|
|holdOrder|
|priceBase|
|deliveryDate|
|contentPlate|
|contentTrolley|
|registrationDate|
|orderListId|
|originalColli|
|retailPrice|
|orderDate|
|scanCode|
|contentBox|
|pKey|
|version|

# SalesHistory

|Value|
|:--|
|articleGroupId|
|articleId|
|contentBox|
|contentBunch|
|contentColli|
|currencyId|
|customerCompanyName|
|customerCountryId|
|customerFinId|
|customerId|
|department|
|description|
|divisionId|
|divisionMethodId|
|financialAdmId|
|growerEAN|
|growerId|
|invoiceDate|
|invoiceGoodsAmount|
|invoiceNr|
|invoiceTotalAmount|
|orderDate|
|orderNr|
|packageQuantity|
|packagePrice|
|packageId|
|parcelDate|
|parcelNo|
|parcelPurchaseNo|
|parcelS01Id|
|parcelS02Id|
|parcelS03Id|
|parcelS04Id|
|parcelS05Id|
|parcelS06Id|
|parcelS07Id|
|pKey|
|priceBare|
|priceEndCustomer|
|priceOnInvoicePurchase|
|priceOnInvoiceSales|
|priceOnPurchase|
|priceParcelPurchase|
|priceParcelSales|
|priceWithCostsReductions|
|productGroupId|
|regDate|
|s01|
|s02|
|s03|
|s04|
|s05|
|s06|
|s07|
|salesUnit|
|sellerId|
|stockId|
|subCustomerId|
|supplierId|
|totalStems|
|userId|
|vatId|
|componentTypeId|
|version|
|orderParcelId|
|packlistId|

# SalesHistoryCostAndRebates

|Value|
|:--|
|id|
|customerId|
|orderNr|
|invoiceNr|
|department|
|description|
|amount|
|percentage|
|calculationMethod|
|vatId|
|exchangeRate|
|totalAmount|
|totalAmountOver|
|creation|
|version|
|costCode|

# SalesHistoryBouquets

|Value|
|:--|
|articleGroupId|
|articleId|
|contentBox|
|contentBunch|
|contentColli|
|currencyId|
|customerCompanyName|
|customerCountryId|
|customerFinId|
|customerId|
|department|
|description|
|divisionId|
|divisionMethodId|
|financialAdmId|
|growerEAN|
|growerId|
|invoiceDate|
|invoiceGoodsAmount|
|invoiceNr|
|invoiceTotalAmount|
|orderDate|
|orderNr|
|packageQuantity|
|packagePrice|
|packageId|
|parcelDate|
|parcelNo|
|parcelPurchaseNo|
|parcelS01Id|
|parcelS02Id|
|parcelS03Id|
|parcelS04Id|
|parcelS05Id|
|parcelS06Id|
|parcelS07Id|
|pKey|
|priceBare|
|priceEndCustomer|
|priceOnInvoicePurchase|
|priceOnInvoiceSales|
|priceOnPurchase|
|priceParcelPurchase|
|priceParcelSales|
|priceWithCostsReductions|
|productGroupId|
|regDate|
|s01|
|s02|
|s03|
|s04|
|s05|
|s06|
|s07|
|salesUnit|
|sellerId|
|stockId|
|subCustomerId|
|supplierId|
|totalStems|
|userId|
|vatId|
|componentTypeId|
|version|
|orderParcelId|
|packlistId|

# SalesHistoryInvoiceHeaders

|Value|
|:--|
|customerId|
|orderNr|
|customerName|
|invoiceNr|
|currencyId|
|exchangeRate|
|exhangeRateActual|
|invoiceDate|
|commission|
|oneTimePackageAmount|
|returnablePackageAmount|
|packageRentAmount|
|vatLow|
|vatHigh|
|vatLowOver|
|vatHighOver|
|vatZeroOver|
|invoiceTotalAmount|
|vatCharged|
|financialAdministrationId|
|goodsAmount|
|carrierId|
|auctionTradeTransaction|
|printedBy|
|exchangeRateActual|
|printedByUserId|
|packageQuantity|
|packageAmount|
|totalPurchaseValue|
|oneTimePackageValue|
|returnablePackageValue|
|printTime|
|packagePurchaseAmount|
|version|

# Shipments

|Value|
|:--|
|shipmentId|
|departurePort|
|arrivalPort|
|shipmentType|
|shipmentNumber|
|shipmentDate|
|offloadDate|
|expectedOffloadDate|
|offloadCarrier|
|creationDate|
|transportCost|
|shipName|
|arrivalDate|
|quantity|
|departurePortId|
|arrivalPortId|
|final|
|loadingCarrier|
|clearanceCountry|
|clearningAgentId|
|logisticalAgentId|
|freightForwarderLocation|
|freightContainerNumber|
|awbNumber|
|customsInspection|
|airportDepartureID|
|airportArrivalId|
|deliveryLocationId|
|version|
|pKey|

# OrderApprovals

|Value|
|:--|
|orderId|
|state|
|deadlineNr|
|supplierId|
|divisionId|
|deadline|
|shippingDate|
|confirmationDate|
|salesUser|
|orderDate|
|contentColli|
|articleID|
|transportCostPerStem|
|growerConfirmationStatus|
|growerConfirmationDate|
|confirmedPrice|
|loadCarrier|
|deliveryLocationId|
|deliveryMethodId|
|shipmentId|
|version|
|pKey|

