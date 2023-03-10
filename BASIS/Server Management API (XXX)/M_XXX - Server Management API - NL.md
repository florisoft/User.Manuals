<img src="../../fslogo.png">

# Florisoft Handleiding Server Management API - M(???)

Welkom bij de handleiding over de Florisoft Server Management API. Deze module vervangt de hiervoor gebruikte ODBC connectie waarmee gegevens uit de database werden gehaald.

## Inhoudsopgave

[Inhoudsopgave](#inhoudsopgave)  
[Autoriseren van een gebruiker](#autoriseren-van-een-gebruiker)  
[Endpoints](#endpoints)  
[Article groups](#articlegroups)  
[Articles](#articles)  
[Customers](#customers)  
[Customercountries](#customerscountries)  
[Divisions](#divisions)  
[Division methods](#divisionmethods)  
[Grower](#grower)
[Financial administration](#financial-administration)  
[]()  
[]()  
[]()  
[]()  
[]()  
[]()  
[]()  

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

## ArticleGroups

**Endpoint name:** ArticleGroups  
**Description:** This endpoint is used to retrieve a list of article groups from the database.

**Request parameters:**

- **Version:** A long integer representing the version of the article groups. Only article groups with a version greater than this value will be returned.

**Response parameters:**  

- **ArticleGroupRows:** A list of Domain.ArticleGroupRow objects representing the retrieved article groups. Each article group has the following properties:id: A string representing the article group code.

- **Description:** A string representing the description of the article group.

- **Version**: A long integer representing the version of the article group.

**Error message**: A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**User constraints:**"

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).

- The maximum number of article groups that can be retrieved is 70000.

## Articles

**Endpoint name:** Articles  
**Description:** This endpoint is used to retrieve a list of articles from the database.  
**Request parameters:**  

- **Version:** A long integer representing the version of the articles. Only articles with a version greater than this value will be returned.

**Response parameters:**

- **ArticleRows**: A list of Domain.ArticleRow objects representing the retrieved articles. Each article has the following properties:id: A string representing the article code.

- **Description**: A string representing the description of the article.

- **Version:** A long integer representing the version of the article.

**Error message**: A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**User constraints:**"

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).

- The maximum number of article groups that can be retrieved is 70000.

## Customers

**Endpoint name:** Customers  
**Description:** This endpoint is used to retrieve a list of customers from the database.  

**Request parameters:**

- Version: A long integer representing the version of the customer. Only customers with a version greater than this value will be returned.

**Response parameters**:

- **customerRows:** A list of Domain.customerRow objects representing the retrieved customers. Each customer has the following properties  A string representing the customer code.

- **Name:** A string representing the name of the customer.

- **Version:** A long integer representing the version of the customer.

**ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints**:

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of customers that can be retrieved is 70000.

## CustomersCountries

**Endpoint name:** CustomersCountries  
**Description**: This endpoint is used to retrieve a list of customers countries from the database.  

**Request parameters:**

- **Version:**  A long integer representing the version of the customer countries. Only customer countries with a version greater than this value will be returned.

**Response parameters:**

- **customerCountryRows:** A list of Domain.customerCountryRow objects representing the retrieved customers. Each customer has the following properties  A string representing the customer country code.
- **Description:** A string representing the description of the customer country.
- **Version:** A long integer representing the version of the customer country.

**ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of customer countries that can be retrieved is 70000.

## Currencies

**Endpoint name:** Currencies  
**Description:** This endpoint is used to retrieve a list of currencies from the database.  

**Request parameters:**

- **Version:** A long integer representing the version of the currencies. Only currencies with a version greater than this value will be returned.

**Response parameters:**

- **currencyRows:** A list of Domain.currencyRow objects representing the retrieved currency. Each currency has the following properties  A string representing the currency code.

- **Description:** A string representing the description of the currency.
- **Version:** A long integer representing the version of the currency.

**ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints**:

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of currencies that can be retrieved is 70000.

## Divisions

**Endpoint name:** Divisions  
**Description:** This endpoint is used to retrieve a list of divisions from the database.  

**Request parameters:**

- Version: A long integer representing the version of the divisions. Only divisions with a version greater than this value will be returned.

**Response parameters:**

- **divisionRows:** A list of Domain.divisionRow objects representing the retrieved division. Each division has the following properties  A string representing the division code.

- **Description:** A string representing the description of the division.
- **Version:** A long integer representing the version of the division.

**ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of divisions that can be retrieved is 70000.

## DivisionMethods

**Endpoint name:** DivisionMethods  
**Description:** This endpoint is used to retrieve a list of division methods from the database. 

**Request parameters:**

- **Version:** A long integer representing the version of the division methods. Only division methods with a version greater than this value will be returned.

**Response parameters:**

- **DivisionMethodsRows:** A list of Domain.divisionMethodRows objects representing the retrieved division method. Each division method has the following properties  A string representing the division method code.

- **Description:** A string representing the description of the division method.
 ErrorMessage: A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of division methods that can be retrieved is 70000.

## Grower

**Endpoint name:** Growers  
**Description:** This endpoint is used to retrieve a list of growers from the database.  
**Request parameters:**

- **Version:** A long integer representing the version of the growers. Only growers with a version greater than this value will be returned.

**Response parameters:**

- **growerRows:** A list of Domain.growerRow objects representing the retrieved grower. Each grower has the following properties  A string representing the grower code.
- **Description:** A string representing the description of the grower.
- **Version:** A long integer representing the version of the grower.
- **EAN-code:** A long integer representing the EANcode of the grower

**ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of growers that can be retrieved is 70000.

## Financial Administration

**Endpoint name:** Financial administration
**Description:** This endpoint is used to retrieve a list of the financial administrations from the database.
**Request parameters:**

- **Version:** A long integer representing the version of the financial administrations. Only the financial administrations with a version greater than this value will be returned.

**Response parameters:**

- **BLANK:** A list of Domain.BLANK objects representing the retrieved financial administration. Each financial administration has the following properties  A string representing the financial administration code.
- **Description:** A string representing the description of the financial administration.
- **Version:** A long integer representing the version of the financial administration.

**ErrorMessage**: A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of financial administrations that can be retrieved is 70000.

## Packages

**Endpoint name:** Packages

**Description:** This endpoint is used to retrieve a list of packages from the database.

**Request parameters:**

- **Version:** A long integer representing the version of the package. Only packages with a version greater than this value will be returned.

**Response parameters:**

- **PackageRows:** A list of Domain.packageRow objects representing the retrieved package. Each package has the following properties:
    - A string representing the package code.
    - Description: A string representing the description of the package.
    - Version: A long integer representing the version of the package.

- **ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of packages that can be retrieved is 70000.

## Productgroups

**Endpoint name:** ProductGroups

**Description:** This endpoint is used to retrieve a list of product groups from the database.

**Request parameters:**

- **Version:** A long integer representing the version of the product group. Only product groups with a version greater than this value will be returned.

**Response parameters:**

- **ProductGroupRows:** A list of Domain.productGroupRow objects representing the retrieved product group. Each product group has the following properties:
    - A string representing the product group code.
    - Description: A string representing the description of the product group.
    - Version: A long integer representing the version of the product group.

- **ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of product groups that can be retrieved is 70000.

## Sellers

**Endpoint name:** Sellers

**Description:** This endpoint is used to retrieve a list of sellers from the database.

**Request parameters:**

- **Version:** A long integer representing the version of the seller. Only sellers with a version greater than this value will be returned.

**Response parameters:**

- **SellerRows:** A list of Domain.sellerRow objects representing the retrieved seller. Each seller has the following properties:
    - A string representing the seller code.
    - Name: A string representing the name of the seller.
    - Version: A long integer representing the version of the seller.

- **ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of sellers that can be retrieved is 70000.

## Suppliers

**Endpoint name:** Suppliers
**Description:** This endpoint is used to retrieve a list of suppliers from the database.

**Request parameters:**
- **Version:** A long integer representing the version of the supplier. Only suppliers with a version greater than this value will be returned.

**Response parameters:**
- **supplierRows:** A list of Domain.supplierRow objects representing the retrieved supplier. Each supplier has the following properties: A string representing the supplier code.
- **Name:** A string representing the name of the supplier.
- **Version:** A long integer representing the version of the supplier.
- **ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**
- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of suppliers that can be retrieved is 70000.


## Stocks

**Endpoint name:** Stocks

**Description:** This endpoint is used to retrieve a list of stocks from the database.

**Request parameters:**

- **Version:** A long integer representing the version of the stock. Only stocks with a version greater than this value will be returned.

**Response parameters:**

- **stockRows:** A list of Domain.stockRow objects representing the retrieved stock. Each stock has the following properties:
    - A string representing the stock code.
    - Description: A string representing the description of the stock.
    - Version: A long integer representing the version of the stock.

- **ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of stocks that can be retrieved is 70000.

## Users

**Endpoint name:** Users
**Description:** This endpoint is used to retrieve a list of users from the database.
**Request parameters:**

- **Version:** A long integer representing the version of the user. Only users with a version greater than this value will be returned.

**Response parameters:**

- **userRows:** A list of Domain.userRow objects representing the retrieved user. Each user has the following properties:
  - **UserCode:** A string representing the user code.
  - **Name:** A string representing the name of the user.
  - **Version:** A long integer representing the version of the user.

- **ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of users that can be retrieved is 70000.


## VATs

**Endpoint name:** VAT

**Description:** This endpoint is used to retrieve a list of VATs from the database.

**Request parameters:**

- **Version:** A long integer representing the version of the VAT. Only VATs with a version greater than this value will be returned.

**Response parameters:**

- **vatRows:** A list of Domain.vatRow objects representing the retrieved VAT. Each VAT has the following properties: 
  - A string representing the VAT code.
  - Description: A string representing the name of the VAT.
  - Version: A long integer representing the version of the VAT.
- **ErrorMessage:** A string representing an error message if an error occurs during the retrieval process. This parameter is set to null if there is no error.

**Usage constraints:**

- The endpoint is restricted to users who have the Management API module activated and the required authorization code (971).
- The maximum number of VATs that can be retrieved is 70000.

## Sales History

**Endpoint name:** SaleHistory
**Description:** This endpoint is used to retrieve the sales history of a specific product from the database.

**Request parameters:**

- **productCode:** A string representing the code of the product for which the sales history is being retrieved.
- **startDate:** A string representing the start date of the sales history period in the format YYYY-MM-DD.
- **endDate:** A string representing the end date of the sales history period in the format YYYY-MM-DD.

**Response parameters:**

- **saleHistoryRows:** A list of Domain.saleHistoryRow objects representing the retrieved sales history. Each sale history row has the following properties:
  - **articleGroupId:** A string representing the article group ID.
  - **articleId:** A string representing the article ID.
  - **contentBox:** An integer representing the content box.
  - **contentBunch:** An integer representing the content bunch.
  - **contentColli:** An integer representing the content colli.
  - **currencyId:** A string representing the currency ID.
  - **customerCompanyName:** A string representing the name of the customer's company.
  - **customerCountryId:** A string representing the ID of the customer's country.
  - **customerFinId:** A string representing the financial ID of the customer.
  - **customerId:** A string representing the customer ID.
  - **department:** A string representing the department.
  - **description:** A string representing the description of the product.
  - **divisionId:** An integer representing the division ID.
  - **divisionMethodId:** An integer representing the division method ID.
  - **financialAdmId:** A string representing the financial administration ID.
  - **growerEAN:** A string representing the EAN of the grower.
  - **growerId:** A string representing the ID of the grower.
  - **invoiceDate:** A string representing the date of the invoice in the format YYYY-MM-DDTHH:MM:SS.
  - **invoiceGoodsAmount:** A float representing the amount of goods on the invoice.
  - **invoiceNo:** A string representing the invoice number.
  - **invoiceTotalAmount:** A float representing the total amount on the invoice.
  - **orderDate:** A string representing the date of the order in the format YYYY-MM-DDTHH:MM:SS.
  - **orderNo:** A string representing the order number.
  - **packageAmount:** An integer representing the package amount.
  - **packagePrice:** A float representing the package price.
  - **packageId:** A string representing the package ID.
  - **parcelDate:** A string representing the date of the parcel in the format YYYY-MM-DDTHH:MM:SS.
  - **parcelNo:** An integer representing the parcel number.
  - **parcelPurchaseNo:** An integer representing the parcel purchase number.
  - **parcelS01Id:** An integer representing the S01 ID of the parcel.
  - **parcelS02Id:** An integer representing the S02 ID of the parcel.
  - **parcelS03Id:** An integer representing the S03 ID of the parcel.
  - **parcelS04Id:** An integer representing the S04 ID of the parcel.
  - **parcelS05Id:** An integer representing the S05 ID of the parcel.
  - **parcelS06Id:** An integer representing the S06 ID of the parcel.
  - **parcelS07Id:** An integer representing the S07 ID of the parcel.
  - **pKey:** An integer representing the primary key.
  - **priceBare:** A float representing the bare price.
- **priceEndCustomer:** A float representing the price for the end customer.
- **priceOnInvoicePurchase:** A float representing the price on the purchase invoice.
- **priceOnInvoiceSales:** A float representing the price on the sales invoice.
- **priceOnPurchase:** A float representing the price on the purchase.
- **priceParcelPurchase:** A float representing the price of the parcel at the time of purchase.
- **priceParcelSales:** A float representing the price of the parcel at the time of sale.
- **priceWithCostsReductions:** A float representing the price of the parcel after any cost reductions have been applied.
- **productGroupId:** A string representing the ID of the product group.
- **regDate:** A string representing the registration date of the parcel in the format YYYY-MM-DDTHH:MM:SS.
- **s01:** An integer representing the quantity of S01 items in the parcel.
- **s02:** An integer representing the quantity of S02 items in the parcel.
- **s03:** An integer representing the quantity of S03 items in the parcel.
- **s04:** An integer representing the quantity of S04 items in the parcel.
- **s05:** An integer representing the quantity of S05 items in the parcel.
- **s06:** An integer representing the quantity of S06 items in the parcel.
- **s07:** An integer representing the quantity of S07 items in the parcel.
- **salesUnit:** An integer representing the number of items in a sales unit.
- **sellerId:** A string representing the ID of the seller.
- **stockId:** A string representing the ID of the stock.
- **subCustomerId:** A string representing the ID of the sub-customer.
- **supplierId:** A string representing the ID of the supplier.
- **totalStems:** An integer representing the total number of stems in the parcel.
- **userId:** A string representing the ID of the user.
- **vatId:** An integer representing the VAT ID of the parcel.
- **version:** An integer representing the version number of the parcel.



