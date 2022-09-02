![Florisoft Corporate Logo Transparant](../../fslogo.png)

# Florisoft Pre Sales Clock Manual

## Table of contents

[Table of contents](#table-of-contents)  
[Chapter 1. Preface](#1-preface)  
[Chapter 2. Creating incoming stock](#2-creating-incoming-stocks)  
[Chapter 3. Creating suppliers](#3-creating-suppliers)
[Chapter 3.1 Getting the right webservice](#31-getting-the-right-floramondo-webservice)

## 1. Preface

Welcome to the Florishop Manual Clock Pre Sale. In this manual the steps required for implementing the Clock Pre Sale module are explained.

Dutch auctions offers a service called Clock Pre Sale, this service is a stock connection which shows products that are ready to be auctioned off. The twist is that these products can actually be bought before they go through the auction. 

The aim of this manual is to explain the technical implementation of the Clock Pre Sale module in Florisoft so users of the system get a basic understanding on how to work with this module. All steps required for implementing the Clock Pre Sale module are described so the user can activate and use the module on its own.

To get the Clock Pre Sale module working, various components are required in the Florisoft application. These parts are described in the following chapters.

After this Preface, the creation of the incoming stocks is described in chapter two: Creating incoming stocks. The products of the Clock Pre Sale connection are read into a certain place in Florisoft. This place is called an incoming stock.

In chapter three the creation of a supplier is described. This is the most important part of this manual as the auction is defined as a supplier in the Florisoft application. 

The intention of this manual is that after reading you are able to set up a Clock Pre Sale Connection independently. 

If you are reading this manual to see what webservice you will need for your supplier see [chapter 3.1](#31-getting-the-right-floramondo-webservice).

<font color="RoyalBlue">**Important to note**: *Images in this manual may slightly differ from what you are seeing on your screen. The Florisoft application is continually updated so this guide may be slightly out of date. Do however note that big changes are unlikely and that the core process will remain the same.* </font>


## 2. Creating incoming stocks

To get the Clock Pre-Sale option to work in the Florisoft application it is necessary to create incoming stocks. This is because incoming stocks is where the Florisoft system reads in all the available products in the Clock Pre Sale connection. 

The Dutch Auction has three physical locations: Aalsmeer, Naaldwijk, and Rijnsburg. Each location must have its own incoming stocks. This results in you having three incoming stocks for the Clock Pre Sale module by default; one stock per physical location. 

The steps below describe the process of creating an incoming stock.

|# Step | Explanation|
|:--|:--|
|**1**| Start the Florisoft application and log in using your UserID and password. |
|**2**| Navigate to the constants screen within the Florisoft navigator screen. (#1 in the image below.)| 

<img src = "Pre Sales Clock EN Media/GettingToConstants.png" alt="Getting to the constants screen."><br>
*This should open the constants screen, put it on full screen if necessary. Having opened the constants screen follow the following steps*  

|3|Within the constants screen file structure navigate to : *Location*(#2) **→** *Stocks* (#3) **→** *Stocks* (#4).|
|:--|:--|
|**4**|Click the Add new item icon (*plus sign* (**+**), #5) to create a new incoming stock. |
  
<img src="Pre Sales Clock EN Media/ConstantsScreen.png" alt="Constants screen">

|5 | Do make sure that the *Stock* tab is selected in the folder structure on the left side (#6)|
|:--|:--|
|**6**| Fill in the Stock code with an arbitrarily made up stock. The code is made up out of a maximum of six letters and or numbers. (#7)|
|**7**| Give the to be created stock an apt description in the description field (#8).|
|**8**| Click on the '*ok*' button and click '*yes*' to save the newly created record.|

<img src="Pre Sales Clock EN Media/StocksNew.png" alt="Creating a new stock">

|9| Now we need to reopen the newly created stock, to do that double left click on the row that contains the new stock record.|
|:--|:--|
|**10**| Now click on the *Authorization* tab in the file structure screen on the left (#9). |
|**11**| Within the authorization screen you will find a list of users that can be authorized. You can authorize a user by checking the Authorized checkbox for that user (#10). <br><br> **Make sure to authorize the following users:** *ADMINC*, *ADMINF*, *ADMINK*, *DEFAULT*, *SUPER*, *TIMER*, and your own users that require authorization.|
|**12**| Click on the '*Carry out*' on the left side (#11).|

<img src="Pre Sales Clock EN Media/Authorize Users.png">

|13|Activate (check the checkbox) '*Remove zero-stock automatically*' (#12).|
|:--|:--|
|14| Fill the *Minimal age for a parcel to be removed* field with the value **1** (#13).|
|15| Click the *Webshop* tab (#14).|

<img src="Pre Sales Clock EN Media/Carry Out Tab.png" alt = "Carry out tab">

|16| Activate / check the checkbox for '*This stock is available on the webshop*' (#15)|
|:--|:--|
|**17**| Set the '*Open  hours*' field to '*Always open (99)*' or '*Altijd open(99)*' (same but in Dutch) in the dropdown(#16)|
|**18**|Click the OK button to save the settings and to create a new stock. |
| :bulb: | <font color="RoyalBlue"> <b>Important to note:</b> <i>repeat the steps four up until eightteen to create additional stocks for the other locations of the auction if applicable.</i></font>|

<img src="Pre Sales Clock EN Media/WebShopTab.png" alt = "WebShopTAB">

<img src="Pre Sales Clock EN Media/NavigatorStock.png">

|**19**| The newly created stock should now be visible in the stock sections of Florisoft. To check this click on the Stock button in the navigator (#17). |
|:--|:--|

<img src="Pre Sales Clock EN Media/StocksScreen.png">

|20| Click the Clock Pre Sale \<LOCATION name\> (#18) in the left pane of the Stocks screen.|
|:--|:--|

*By default each newly created stock should be empty unless parcels are added manually or automatically added. Later on in this manual the actual Clock Pre Sale stock will be filled with the products available on the respective locations of the auction.*

## 3. Creating suppliers

Another mandatory part of the Clock Pre Sale module is the existence of a supplier. Because the auction supplies products to a company it is defined as a supplier in the Florisoft application. Just like the stocks created in the previous chapter, each different supplier must be made independently. 

*To create a supplier follow the following steps accordingly:*

|# Step| Explanation|
|:--|:--|
|**1**| Open the Florisoft navigator and click on the Constants icon. The constants window should now open.|

<img src="Pre Sales Clock EN Media/GettingToConstants.png">

|**2**| Navigate to the following path within the filestructure like tab to the left:    *Community* (#2) **→** *Supplier data* (#3) **→** *Suppliers* (#4)|
|:--|:--|

<img src="Pre Sales Clock EN Media/SuppliersConstantsNav.png">

|**3**|Click on the add new item icon (#5) to create a new supplier. This should open the Supplier window.|
|:--|:--|
|**4**|Fill in the '*Delivery code*' field in the Delivery field (#6)|
|:bulb:|<font color="RoyalBlue">**Note:** *The delivery code is a unique code for each supplier in the Florisoft application. It is a 6 character code that can contain up to six letters and or numbers.* </font>
|**5**|Fill the field (#7) with a search code for the supplier you are about to create. This is not a mandatory property to fill out but it is recommended to make finding Suppliers easier in Florisoft. |
|**6**|Use the field Company name (#8) to enter the name of the concerning supplier.|
|**7**|Click on the Web Service tab (#9)|

<img src="Pre Sales Clock EN Media/SupplierBaseScreen.png">

### 3.1 Getting the right FloraMondo webservice

Within your Floramondo account you might use multiple webservices that use different filters for certain usecases E.g. one webservice filters direct sales and the other Clock Pre Sales. To see which one you want for the Supplier you are setting up follow the steps below. 

|# Step|Explanation|
|:-:|:--|
|**1**|Login to Floramondo's login page with your company's user credentials. [Link here!](https://identity.royalfloraholland.com/)|
|**2**|Once logged in you should be able to see your companies name on the top right. Click on it and go to the '*Accounts*' section by clicking on the corresponding button. This should bring us to the account page.<br><details><summary>Click here to reveal the image</summary> <img src="Pre Sales Clock EN Media/FloraMondoUserMenu.png" alt="webservice name"> </details> |
|**3**| Scroll down until you see the '*Webservice*' section. In this section we can inspect and edit the webservices. Getting the right webservice is of utmost importance as some webservices work with different protocolls and have different filters.<br><details><summary>Click here to reveal the image</summary> <img src="Pre Sales Clock EN Media/FloraMondoWebservicesListed.png" alt="webservice name"> </details>|
|**4**| To see what the webservice filters on click on the settings button next to a webservice row and scroll down to Filter. Here we see the filters which filter out the stocks we don't want.<br><details><summary>Click here to reveal the image</summary> <img src="Pre Sales Clock EN Media/Filters.png" alt="webservice name"> </details> |
|:memo:|**A short explanation of some of the stock filters**:<br>&nbsp;&nbsp; - **Main group**: filter based on group I.e. Flowers or Gardenplants<br>&nbsp;&nbsp; - **Sales channel**: either Direct Sales or Clock Pre sales, for the purpose of this manual the webservice needs to be Clock Pre Sales.<br>&nbsp;&nbsp; - **Delivery location**: which auction locations stock do we allow in this webservice stock. **For the purpose of this manual we can ignore the webservices that are Direct sales based (see sales channel)**|
|**5**|After inspecting the available webservices for your FloraMondo account select the right service for the supplier you are creating. For example if you are creating a FloraHolland Aalsmeer supplier within Florisoft select the webservice that permits the delivery location Aalsmeer.|
|**6**|Be sure to remember the webservice's name/userid and to have its password available to you. <br>If the userID and or password are unknown or lost be sure to contact FloraHolland to retrieve the credentials.<details><summary>Click here to reveal the image</summary> <img src="Pre Sales Clock EN Media/WebserviceNameUserID.png" alt="webservice name"> </details> |


|**8**| Activate / check the checkbox for the '*Stock-linking*' property (#10).|
|:--|:--|
|**9**| Select the Klokvoorverkoop 0p7 – Floramondo (Dutch for Clock Pre Sale 0p7 – Floramondo) option in the Type Webservice dropdown list (#11).|
|**10**| Copy and paste the URL provided by the auction in the URL field. (no. 12)|
|**11**| Provide the correct Userid in the concerning field (no. 13)|
|**12**| Use the field Wachtwoord (Dutch for Password) to enter the accompanying password for this Clock Pre Sale account.|
|**13**| Select the concerning incoming stock in the field '*incoming stock*' (#15). <br><br> &nbsp;At this step it is important to select the correct stock. As mentioned earlier in the previous chapter, each location must have its own incoming stock.<br><br>So for the supplier Clock Pre Sale Aalsmeer, choose the Incoming Aalsmeer stock. For the supplier Clock Pre Sale Naaldwijk, choose the incoming Naaldwijk stock. The same principle counts for location Rijnsburg.|
|**14**| Click on the '*Parcel request*' tab which resides under the Web Service tab. (#16)|

<img src="Pre Sales Clock EN Media/SuppliersWebService.png">

|**15**| Activate / check the always get full stock instead of modifications checkbox. (#17)|
|:--|:--|
|**16**| Give the GLN code (Agent party) the following value: 8713783248188 (#18)|
|**17**| Click on the '*Parcel Response*' tab (#19)|
|**18**| Set the '*Default Article group*' to: '*Nieuw Artikel (00000001)*' (#20)|
|**19**| Activate / check the checkboxes for '*Don't use external pictures*' **and** '*fill parcel with picture data*' (#21) |
|**20**| Click the '*Afleverlocaties voorraden (Dutch for: Delivery locations stocks)*' button. This should open Win_LeverancierFustInstellingen window. (#22)|

<img src="Pre Sales Clock EN Media/SupplierParcelResponse.png">

|**21**| Fill the first row (column Aflever EAN, #24 ) with the Delivery no. which is supplied by the auction.|
|:--|:--|

<img src="Pre Sales Clock EN Media/LeverancierFustInstellingWithSVC.png">

|22| Fill the Voorcod column (no. 25) with the corresponding incoming stock code of the current auction location.|
|:--|:--|
|**23**| Fill the first line of the MarketCode column with the value of 002 (no. 26)|
|**24**| Repeat the steps 21 up and till 23 with this exception: fill the MarketCode of the second row with the value 003.|
|**25**| Click the Ok button (no. 27) to confirm the settings.|
|**26**| Click the Buy request tab (no. 23) in the Supplier screen.|

<img src="Pre Sales Clock EN Media/SelectBuyRequest.png">

|27| Fill in the '*Delivery Location EAN field (#28)*' with the same code as filled in step 21. |
|:--|:--|
|**28**| Activate / check the checkbox '*Send the 'real' customercode*' (#29)|
|**29**|Fill in the field Customer Party EAN-code (#30) the GLN code of the receiving company.<br>This code can be found on the Floricode website: <a href="https://www.floricode.com/en-us/distribution/finding-codes/company-code-search">Floricode > Distribution > Finding codes > Company code search</a>.<br> Choose for 'Company name' in the Search method and fill in the company name in the field Company name. Then click on the Search button.<br> The concerning code can be found in the column GLN bedrijfscode|

<img src="Pre Sales Clock EN Media/SuppliersBuyRequest.png">

|30| Click the OK button (#31) to confirm the newly set settings. |
|:--|:--|

<img src="Pre Sales Clock EN Media/OkButton.png">

|31| Reopen the newly created supplier by double clicking its name in the Constants. (#32)|
|:--|:--|

<img src="Pre Sales Clock EN Media/ClickOnNewSupplier.png">

|32|Navigate to the '*Web Service*' tab (#33) and click the '*Receive Parcels*' button (#34).<br><br>*The system might appear to freeze but in the background it is requesting the webservice for products which are provided in the Clock Pre Sales link for the current auction location.*<br><br>*At the same time a small (Events logger) appears in the screen which shows the behaviour of the system during the communication with the Clock Pre Sale connection.*<br><br>*When all the products are read into the system, a small message windows appears telling how many parcels were read into the incoming stock.* |
|:--|:--|

<img src="Pre Sales Clock EN Media/receiveparcels.png" alt = "receive parcels">

<img src="Pre Sales Clock EN Media/RetrievedMessage.png">

|33| Click the OK button in the Message window to confirm the message. |
|:--|:--|
|**34**| Click the Ok button (#31) in the Suppliers Windows to close the supplier.|
|**35**| Repeat step 31 for each authorized supplier.|

<img src="Pre Sales Clock EN Media/PressOk31.png">

|36|Navigate to  the *Web Service* **→** *Parcel request* tab (no. 33) in the Suppliers window.|
|:--|:--|

<img src="Pre Sales Clock EN Media/SupplierParcelRequest.png">

|||
|:--|:--|
|37| **Deactivate** the '*Always get full stock instead of modifications*' checkbox (#34).|
|**38**|Click the OK button in the Suppliers Window to confirm the settings.|

**Important to note!:** *repeat all steps in this chapter (the creation of suppliers) to create unique suppliers for each Clock Pre Sales webservice. This may not only be for each location of the auction but also for the different main groups (product type) in a webservice.* 

**This manual roughly describes the working of the Clock Pre Sale module. If things are still unclear, please contact the Florisoft helpdesk by e-mail or telephone.**

**E-mail:** support@florisoft.nl  
**Telephone:** +31 (0)71 40 806 10
