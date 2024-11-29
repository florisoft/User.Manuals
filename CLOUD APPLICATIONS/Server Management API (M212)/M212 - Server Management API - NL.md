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
[Pickorders](#Pickorders)  
[Buyers](#Buyers)  
[AuctionGroups](#AuctionGroups)  
[OrderApprovals](#OrderApprovals) 
[Shipments](#Shipments)  
[EntranceControl](#EntryControl)  
[EntranceControlDivisions](#EntryControlDivisions)  
[EntranceControlParcels](#EntryControlParcels)  

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
Each chapter will contain a table with the endpoints return object fields with an indication of their datatype (loosely based in SQL server types).

# constants/Sources

|Name|
|:--|
|id|
|description|

# constants/Packages

|Name|
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
|pKey|

# constants/Articles

|Name|
|:--|
|id|
|description|
|version|
|pKey|
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
|description_G|
|description_H|
|description_I|
|description_J|
|description_K|
|description_L|
|description_M|
|description_O|
|description_P|
|description_Q|
|description_R|
|externalCode|
|externalSupplierCode|

# constants/Users

|Name|
|:--|
|id|
|name|
|version|
|pKey|
|userDepartmentId|
|email|
|sellerId|
|phone|

# constants/ComponentTypes

|Name|
|:--|
|id|
|description|

# constants/Colors

|Name|
|:--|
|colorId|
|color|
|description_D|
|description_E|
|description_F|
|s50_Feature|
|version|
|pKey|

# constants/CreditReasons

|Name|
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
|pKey|

# constants/Currencies

|Name|
|:--|
|id|
|description|
|version|
|pKey|

# constants/Countries

|Name|
|:--|
|id|
|description|
|version|
|pKey|
|currencyCode|

# constants/Divisions

|Name|
|:--|
|id|
|description|
|version|
|pKey|

# constants/DivisionMethods

|Name|
|:--|
|id|
|description|

# constants/Buyers

|Name|
|:--|
|buyerId|
|buyerName|
|version|
|pKey|

# constants/AuctionGroups

|Name|
|:--|
|auctionGrp|
|buyerId|
|auctionGrpDescription|
|buyerId2|
|buyerId3|
|version|
|pKey|

# constants/ProductGroups

|Name|
|:--|
|id|
|description|
|exCode|
|description_D|
|description_E|
|description_F|
|description_G|
|description_H|
|description_I|
|description_J|
|description_K|
|description_L|
|description_M|
|description_O|
|description_P|
|description_Q|
|description_R|
|version|
|pKey|

# constants/ArticleGroups

|Name|
|:--|
|id|
|description|
|version|
|pKey|
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
|description_G|
|description_H|
|description_I|
|description_J|
|description_K|
|description_L|
|description_M|
|description_O|
|description_P|
|description_Q|
|description_R|
|maxAgeInDays|
|auctionGrp|
|cuttingLoss|

# constants/Vats

|Name|
|:--|
|id|
|description|
|version|
|pKey|

# constants/Sellers

|Name|
|:--|
|id|
|name|
|version|
|pKey|

# constants/Stocks

|Name|
|:--|
|id|
|description|
|version|
|pKey|

# constants/ReservationTexts

|Name|
|:--|
|reservationTextId|
|description|
|reservationTextCode|
|version|
|pKey|

# constants/CustomerGroups

|Name|
|:--|
|customerGroupId|
|description|
|version|
|pKey|
|mainGroup|
|saleUnit|
|logisticsUnit|

# constants/PaymentConditions

|Name|
|:--|
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

# constants/FinancialAdministrations

|Name|
|:--|
|id|
|description|
|version|
|pKey|

# constants/Customers

|Name|
|:--|
|version|
|pKey|
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
|collectionCustomer|
|customerCardCode|
|invoiceTo|
|creationDate|
|lastModified|
|isSubDebtor|
|invoiceMailAddresses|
|articleGroupSurcharge|

# constants/Growers

|Name|
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
|pKey|
|auctionCode|

# constants/Suppliers

|Name|
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
|pKey|

# constants/CustomerGroupRelations

|Name|
|:--|
|customerId|
|customerGroupId|
|version|
|pKey|
|sequenceNumber|

# constants/Carriers

|Name|
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
|pKey|
|niwOcod|
|trolleyHeight|
|inActive|
|glnCode|
|faxNr|
|afasId|

# StockParcels

|Name|
|:--|
|parcelId|
|parcelPurchaseNo|
|parcelDate|
|orderId|
|stockId|
|supplierId|
|growerId|
|productGroupId|
|articleId|
|description|
|contentBunch|
|contentColli|
|contentRest|
|originalColli|
|amountReceived|
|creation|
|s01|
|s02|
|s03|
|s04|
|s05|
|s06|
|s07|
|productCharacteristic01|
|productCharacteristic02|
|productCharacteristic03|
|productCharacteristic04|
|productCharacteristic05|
|productCharacteristic06|
|productCharacteristic07|
|countryId|
|remark2|
|location|
|contentTrolley|
|packageId|
|version|
|pKey|
|reservationTextId|
|priceParcelPurchase2|
|priceParcelPurchase1|
|barePrice|
|manufacturingCost|
|creditInvoiceNumber|
|deadlineNumber|
|growerEAN|
|qualityId|
|handlingCosts|
|orderParcelId|

# OrderlistAssortment

|Name|
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
|pKey|
|productGroupId|
|vParcelId|
|noPriceLabel|

# OrderlistComponents

|Name|
|:--|
|articleId|
|description|
|colorId|
|priceParcelPurchase1|
|priceParcelPurchase2|
|quantity|
|parcelId|
|bParcelId|
|s01|
|s02|
|remark|
|supplierId|
|contentColli|
|componentWeight|
|version|
|pKey|
|quantityPer|
|assortment|

# SalesDivisions

|Name|
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
|orderParcelId|
|reservationTextId|
|articleLength|
|potsize|
|s4|
|s5|
|s6|
|s7|
|weight|
|orderId|

# Sales

|Name|
|:--|
|salesRecordId|
|amountPackagePurchase|
|amountPacked|
|amountSale|
|articleGroupId|
|articleId|
|barePrice|
|colorId|
|contentBox|
|contentColli|
|creation|
|description|
|growerId|
|orderDate|
|orderNr|
|orderParcelId|
|packageId|
|packlistId|
|parcelId|
|parcelS01Id|
|parcelS02Id|
|parcelS03Id|
|parcelS04Id|
|parcelS05Id|
|parcelS06Id|
|price1Sales|
|price2Sales|
|price3Sales|
|priceBase|
|priceCustomer|
|priceIncl|
|priceOrder|
|priceOrginalParcel|
|pricePackage|
|pricePurchase|
|priceRetail|
|remark|
|remark2|
|remark3|
|s01|
|s02|
|s03|
|s04|
|s05|
|s06|
|supplierId|
|totalColli|
|pKey|
|version|
|customerId|
|divisionType|
|userId|
|divisionId|
|stockId|
|departureDate|
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
|noPriceLabel|
|parcelReceived|
|pickerId|
|deliveryDate|
|totalStems|
|parcelPurchaseNo|
|isCommercialParcel|
|commercialParcelId|
|brType20Barcode|
|scanCode|
|productGroupId|
|country|
|sellerId|
|registrationDate|
|fromCustomer|
|division|
|isBouquet|
|allocationId|
|imageName|
|subCustomerId|
|offer|
|fromOrderNr|
|finalCheck|
|invoiceNr|
|invoiceDate|
|invoicePrinted|
|invoiceName|
|invoiceAddress|
|invoicePostalCode|
|invoiceCity|
|invoiceCountryId|
|invoiceSaleAmount|
|invoiceTotalQuantity|
|transportRouteId|

# SalesHistory

|Name|
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
|packListId|
|departureDate|
|remark|
|remark2|
|remark3|
|orderRemark|
|orderRemark2|
|deliveryDate|
|originalOrderParcelId|
|fromCustomer|
|fromOrderNr|

# SalesHistoryBouquets

|Name|
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
|packListId|
|departureDate|
|remark|
|remark2|
|remark3|
|orderRemark|
|orderRemark2|
|deliveryDate|
|originalOrderParcelId|
|fromCustomer|
|fromOrderNr|

# SalesHistoryInvoiceHeaders

|Name|
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
|pKey|

# ShopLog

|Name|
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

# SalesHistoryCostAndRebates

|Name|
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
|pKey|
|costCode|

# Shipments

|Name|
|:--|

# PurchaseHistory

|Name|
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
|totalCostPrice|
|externalParcelId|
|exParcelId2|
|parcelPurchasePrice2|

# Pickorders

|Name|
|:--|
|packageId|
|contentBox|
|isBouquet|
|supplierId|
|divisionType|
|packListId|
|pickingTime|
|divisionId|
|parcelCod|
|divided|
|packageAmount|
|credit|
|quantity|
|contentColli|
|totalColli|
|pickTime|
|orderTime|
|orderNr|
|vParcelId|
|parcelId|
|articleId|
|customerId|
|stockId|
|crossdock|
|orderDate|
|deliveryDate|
|version|
|pKey|
|seller|
|picker|

# Payments

|Name|
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

# PaymentHistory

|Name|
|:--|
|customerId|
|invoiceNr|
|invoiceDate|
|expirationDate|
|paymentDate|
|paymentId|
|amount|
|currency|
|userId|
|checkId|
|description|
|invoiceAmount|
|uniqueId|
|surchargePrcnt|
|surchargeRaise|
|pKey|
|version|

# BandRef

|Name|
|:--|
|productionLineId|
|parcelId|
|vParcelId|
|bouquetTask|
|bouquetDebtor|
|status|
|bouquetPriority|
|deadline|
|quantityInProcess|
|quantityDone|
|productionLineReferenceId|
|start|
|end|
|paused|
|timePaused|
|workerOnLine|
|part|
|packageQuantity|
|divisionId|
|contentColli|
|creation|
|packageId|
|readyForProduction|
|printTime|
|printUser|
|totalQuantity|
|malfunction|
|planned|
|startDivision|
|endDivision|
|version|
|pKey|

# BandReflog

|Name|
|:--|
|lineReferenceID|
|logType|
|logTime|
|userId|
|productionLineId|
|status|
|quantity|
|workerOnLine|
|reason|
|processId|
|processCode|
|version|
|pKey|

# CustomerOrders

|Name|
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
|pKey|
|reservationTextId|

# PackageHistory

|Name|
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

# InvoiceApproval

|Name|
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

# DivisionPriceLog

|Name|
|:--|
|divisionId|
|step|
|basePrice|
|raiseAmount|
|raisePrcnt|
|finalAmount|
|sequenceNumber|
|creation|
|priceLogId|
|onCustomerId|
|pKey|
|version|

# EntryControl

|Name|
|:--|
|pKey|
|version|
|entryControlId|
|description|
|registerPartialParcels|
|lastClearedAt|
|webshopAvailable|

# EntryControlParcels

|Name|
|:--|
|pKey|
|version|
|entryControlId|
|stockId|
|parcelId|
|vParcelId|
|wmsParcelId|
|buyerId|
|articleDescription|
|articleId|
|colli|
|quantity|
|dividedQuantity|
|capacity|
|createdQuantity|
|lastPrintedQuantity|
|parcelDate|
|estimatedDeliveryDate|
|createdBy|
|seatNumber|
|firstPrintDate|
|checkInDate|

