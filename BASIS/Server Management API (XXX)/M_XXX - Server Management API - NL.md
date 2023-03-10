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

