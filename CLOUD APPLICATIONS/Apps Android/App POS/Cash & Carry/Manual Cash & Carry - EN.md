![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Florisoft Manual Cash & Carry App (POS)

This document describes the process of working with the cash & carry app made by Florisoft. In this document you will read about downloading and installing the app on your device and the general user process.

## Table of contents

[Installing and downloading the app](#installing-and-downloading-the-app)
[Additional Backoffice configuration](#additional-backoffice-configuration)
[User process overview (a walkthrough)](#user-process-overview-a-walkthrough)

## Hub-app

*This app is installed from the Florisoft Hub-App to do this, follow the steps below:*

|Step|Explanation|
|:-:|:--|
|**1**|Open your Hub-app and click on the **Go To Catalog** button.<details><summary><b>Click here for the example image!</b></summary><img src="Media/42.png"></details>|
|**2**|In case you are not logged in yet a login page will be shown, log in.<details><summary><b>Click here for the example image!</b></summary><img src="Media/43.png"></details>|
|**3.a**|You should now see the available apps for your system. Apps that are already installed have a purple emblem next to them. In this screen we are looking for the *Sales.POS* row, if this has a purple emblem next to it, click on it to open the app.<details><summary><b>Click here for the example image!</b></summary><img src="Media/41.png"></details>|
|**3.b**|If the emblem is grayed out the app isn't installed yet. To install the app swipe the row to the left, a download and bin icons should now be shown. Click on the download icon.<details><summary><b>Click here for the example image!</b></summary><img src="Media/42.png"></details> |
|**4**|You have now started the installation process, you will be prompted multiple times to confirm the app's installation, confirm each one.|
|**5**|When having installed the app a purple emblem should now be shown next to it. Click on this emblem to start up the Cash & Carry application.<details><summary><b>Click here for the example image!</b></summary><img src="Media/41.png"></details>|

## Additional Backoffice configuration

Policies determine which functions the POS App provides, but they are not the only configuration. Cash & Carry also uses master data and settings for the customer, user, products, stock items, returnable packaging, documents and printers.

> The exact name or location of a field may differ between Florisoft versions. Some fields on the classic **Customer → Cash & Carry** tab originate from the desktop application. Where the current POS App uses a newer setting, this is stated below.

### Customer selection and blocks

The POS App uses the following customer data when searching for and selecting a customer:

| Setting or data | Behaviour in Cash & Carry |
|---|---|
| Customer number, name and search key | The employee can search for the customer using these values. |
| Inactive or archived | The customer is not offered in customer selection. |
| Financial unit | Only customers within the financial units assigned to the signed-in user are offered. The user's additional financial units are included. |
| Account manager | If account-manager filtering is enabled for the user, only customers belonging to the associated salesperson are offered. |
| Do not supply and reason | The app shows the delivery block. `BlockDoNotSupplyCustomers` can prevent the customer from being selected at all. |
| Division information | Can be shown for the customer when `ShowCustomerDivisionInfo` is enabled. |
| Stock customer | `IncludeStockCustomers` determines whether stock customers may appear in the selection. |

If a customer is missing, check not only the policy but also the customer's status, financial unit and account manager.

### Customer card and scan identification

In the current POS App, a customer card should preferably be recorded as a **customer contact value**:

- contact type: **Cash & Carry**;
- list type: **Customer card**;
- value: the code printed on the card or barcode;
- status: active.

The default barcode configuration can recognise both the customer number and this customer contact. `ValidBarcodeDecodeOptions` determines which barcode types are actually accepted.

The **Customer card code** field (`KLANTCODE`) on the classic **Customer → Cash & Carry** tab belongs to the older desktop workflow and may be used there together with the `CCScanKlantPas` system setting. For the current POS App, use the customer contact unless the environment demonstrably still uses the classic integration.

### Customer → Cash & Carry

The classic Cash & Carry tab for a customer may contain the following data:

| Setting | Description |
|---|---|
| Default payment method | Default payment method for the classic Cash & Carry flow, such as account, cash, direct debit, card or cheque. |
| Allowed payment methods | Limits the payment methods allowed for this customer in the classic flow. In the current POS App, `PaymentMethods` and the user's allowed payment methods are the main controls. |
| Surcharge by stock | Records a percentage and/or fixed surcharge for each customer and stock. The price calculation can apply this customer surcharge. |
| Purchase price | Indicates that the stock item's purchase price is used as the basis for a customer surcharge. Test the result with a representative product because other pricing rules can also affect it. |
| Automatically email to | Can enable automatic packing-list emailing in the classic flow. The destination is recorded in **Packing-list email address**. |
| Packing-list email address (`PAKEMAIL`) | First preferred address used by the current POS App for emailing a packing list. |
| Always request additional information | Makes the classic packing-list or pick-order flow request additional text that can be printed on the packing list. |
| Default department | Default department for PDA/Cash & Carry processing. Its practical effect may differ between configurations and should be tested in the applicable order flow. |
| Never use minimum purchase price | Excludes this customer from minimum purchase price 1. |
| Never use minimum purchase price 2 | Excludes this customer from minimum purchase price 2. |
| Always use minimum purchase price | Forces the minimum purchase price for this customer. Have this configuration checked if it is combined with either exclusion above. |
| Department and cost type | Can determine a customer-specific cost or discount line when an invoice is created, for example a collection discount. |
| Customer card code | Classic customer-card code; for the current POS App, preferably use the customer contact described above. |

The final Cash & Carry price can be affected not only by the customer surcharge but also by price lists, quantity scales, minimum purchase prices, product and stock-item data, and the price-editing policies.

### Customer-specific POS settings

Customer-specific Cash & Carry settings can be recorded in the customer extension. The exact location of these fields may differ by release or screen configuration.

| Setting | Description |
|---|---|
| `CCOrdernumberInputMandatory` | Makes an order number or order name mandatory for this customer. This also applies if the customer is not included in `RequireOrderNumberForCustomers`. |
| `CCFinaliseOrdersPackingListSetting` | Determines this customer's preference for printing and/or emailing the packing list when the shopping cart is finalised. |
| `CCFinaliseOrdersInvoiceSetting` | Determines this customer's preference for printing and/or emailing the invoice when the shopping cart is finalised. |

The following values are available for the two finalisation settings:

| Value | Meaning |
|---|---|
| Policy | Use the general policy configuration. |
| Off | Do not show the applicable print and email questions. |
| Print | Select printing by default. |
| Email | Select emailing by default. |
| Print and email | Select both options by default. |
| Do not print or email | Select neither option by default; the available questions may remain visible. |

These customer preferences primarily apply when finalising the shopping cart. Output after payment is also controlled by the policies under **Payment → OrderFinalization**.

### Invoice, packing list and email addresses

Check the following Backoffice data for document output:

| Data | Use |
|---|---|
| Invoice layout (`FACTLAYOUT`) | Required to generate, print or email an invoice correctly. |
| Packing-list layout (`PAKLAYOUT`) | Overrides the general `PackageListPrintLayout` when a customer-specific layout has been entered. |
| Packing-list email address (`PAKEMAIL`) | First preferred address for the packing list. |
| Active customer contacts – Packing list, Email | Used when no packing-list email address has been entered. |
| Customer's general email address | Final fallback address for the packing list. |
| Active customer contacts – Invoice, Email | Offered as additional invoice addresses. |

Physical printing also requires the `PackageListPrinter` and `Invoice_Printing_PrinterName` policies and an accessible Cloud Server or Job Agent.

### User and employee

The signed-in user's configuration directly affects the available data and actions:

| Setting | Effect |
|---|---|
| Salesperson/employee | Used to record sales, changes and payments. |
| Financial unit and additional financial units | Determine which customers the user can select. |
| Account-manager filtering | Limits the customer list to customers of the salesperson linked to the user. |
| Allowed payment methods | Can limit the current POS App's payment methods or act as the default when `PaymentMethods` contains no explicit alternative. |
| Rights to the use case and follow-up processes | Determine whether the user can run Cash & Carry, take payments, print and use linked workflows. |

### Product, stock item, sales unit and returnable packaging

For a complete product and scanning flow, the following master data must also be correct:

- the product and stock item must be active, saleable and available in an allowed stock;
- product barcodes must be linked to the correct product and barcode type;
- sales unit, contents, colli and any partial-sale configuration must be correct;
- purchase and sales prices must use the correct price bases and units;
- returnable-packaging products and codes must correspond to `PackageCodes`;
- any stock-item marks must match `AllowedStockItemMarksForSellingBelowPurchasePrice`.

`AllowedStockCodes`, `AllowSellingBelowSalesUnit`, `ShowPurchasePrice` and the other product and price policies then determine which of this master data the user may view or change.

### Fallback to classic system settings

If no explicit value is configured, several policies can fall back to an existing system or desktop setting:

| Policy | Possible classic fallback |
|---|---|
| `OrderNumberDeterminationType` | `CCOrdernummerBepalingType` |
| `TransferToCheckout` | `CCOverhevelenNaarKassa` |
| `ShowWarningWithoutAddedReturnables` | `CCWaarschuwingGeenFustIngevrd` |
| `RequireInvoiceSignature` | `HandtekeningVoorFactuur` |
| `AllowSellingBelowSalesUnit` | `CashCarryOnderVEVerkoop` |
| `ShowPurchasePrice` | `CCPDAInkPrijs1KolomWeergeven` |
| `AllowEditOrderitemDetails` | Among others, `CashCarryPrijsWijzigen` and `CashCarryVEWijzigen` |

For new configurations, prefer explicit policies. Document which classic fallbacks are still intentionally used in each environment to prevent an old desktop setting from unexpectedly controlling the POS App.

## User process overview (a walkthrough)

*The steps below give describe a walkthrough through out the app's user process. The scenario used in the steps below is when you open the for the first time.*

|**Step**|**Explanation**|
|:--|:--|
|**1**|After installing the app open the POS app.|
|**2**|Click on the hamburgermenu button in the top right of the screen. <details><summary>**Click here to open the example image!**</summary><img src="Media/1.jpg" height=350px></details>|
|**3**|Click on the button **settings** (1), in the newly opened screen.<details><summary>**Click here to open the example image!**</summary><img src="Media/2.jpg" height=350px></details>|
|**4**|Fill out the cloud server URL in the top textbox.<details><summary>**Click here to open the example image!**</summary><img src="Media/27.png" height=350px></details>|
|**5**|You can ignore the textbox **situation**. |
|**6**|Next, using the dropdown field below the **situation** textbox, select the application language (which is set to English by default).<details><summary>**Click here to open the example image!**</summary><img src="Media/6.jpg" height=350px></details>|
|**7**|Upon first opening the app, you might see a popup with the message **requesting settings from hub**. You can dismiss this message by clicking on **cancel**.<details><summary>**Click here to open the example image!**</summary><img src="Media/4.jpg" height=350px></details>|
|**8**|Now click on the **save** button, this will bring you back to the app's star menu/login page.<details><summary>**Click here to open the example image!**</summary><img src="Media/5.jpg" height=350px></details>|
|**9**|Enter your login information in the username and password fields and click on the **LOGIN** button.<details><summary>**Click here to open the example image!**</summary><img src="Media/7.jpg" height=350px></details>|
|**10**|You should now be prompted with another identification screen asking you to identify yourself with your seller's code, enter that code in the textbox and press on the **select** button.<details><summary>**Click here to open the example image!**</summary><img src="Media/9.jpg" height=350px></details>|
|**11**|You should now be brought to the customer selection screen in which you will need to select a customer to sell to. The list on your screen shows the debtors/customers present in your system. You can find the right customer by scrolling in the list or by using the search function on the top of your screen.<details><summary>**Click here to open the example image!**</summary><img src="Media/10.jpg" height=350px></details>|
|**12**|Once you have found the right debtor/customer click on its card which should prompt a small popup on the bottom of your screen with additional information on the specific customer. If it is the right customer you can go ahead and press the **Go to order**button.<details><summary>**Click here to open the example image!**</summary><img src="Media/11.jpg" height=350px></details>|
|**13**|In this new screen you can create a new order by clicking on the **Create new order** button, if there are existing orders for your seller they will be shown here as well. You can edit these order by selecting one of them and by clicking on the **Go to sales** button you can reopen them. <details><summary>**Click here to open the example image!**</summary><img src="Media/12.jpg" height=350px></details>|
|**14**|When creating a new order you will be prompted with a popup screen asking you to enter the name and date of the order, once you have filled in these fields press the **ok** button.<details><summary>**Click here to open the example image!**</summary><img src="Media/13.jpg" height=350px></details>|
|**15**|You are now in the order screen, you can scan parcels to add them to the shopping cart or you can enter and select parcels manually from the app itself.<details><summary>**Click here to open the example image!**</summary><img src="Media/15.jpg" height=350px></details>|
|**16**|To manually add a parcel click on the magnifying glass icon on the bottom left of your screen.<details><summary>**Click here to open the example image!**</summary><img src="Media/28.jpg" height=350px></details>|
|**17**|You should now see the parcels avaiable to your user on your screen which you can add to the shopping cart by clicking on the + icon next to the parcel. After clicking on the plus sign the standard colli of that parcel will be added to the cart.<details><summary>**Click here to open the example image!**</summary><img src="Media/16.jpg" height=350px></details>|
|**18**|You can also click on the parcel's card itself to display more information about the product.<details><summary>**Click here to open the example image!**</summary><img src="Media/31.jpg" height=350px></details> |
|**19**|Click on the notepad + icon to get even more information and options for this specific parcel.<details><summary>**Click here to open the example image!**</summary><img src="Media/30.jpg" height=350px></details>|
|**20**|This screen gives you the following options:<br>**1.** Raise or lower the price<br>**2.** Raise or lower the sales units<br>**3.** Raise or lower the amount of packaging for this parcel.<br><br>Whether a price below the purchase price can be saved depends on the configured policy. With `AllowWithStockItemMark`, this is allowed only for stock items whose mark is included in `AllowedStockItemMarksForSellingBelowPurchasePrice`. Otherwise, the original price remains and a warning is shown.<details><summary>**Click here to open the example image!**</summary><img src="Media/21.jpg" height=350px></details>|
|**21**|Instead of scrolling through the available parcels you can also search/filter the stock using the parcel's name(#1) and in which product category (#2) it falls (flowers or plants)<details><summary>**Click here to open the example image!**</summary><img src="Media/18.jpg" height=350px></details>|
|**22**|After adding parcels to your order they should now be visible in the visible in main order screen.<details><summary>**Click here to open the example image!**</summary><img src="Media/35.jpg" height=350px></details>|
|**23**|In case a customer is in need of more packaging or is returning packaging you can also fill this out on the order by clicking on the **+ packages** button(#1) in the top left corner.<details><summary>**Click here to open the example image!**</summary><img src="Media/36.jpg" height=350px></details>|
|**24**|In this screen you add packages to the order by clicking on the **add package** button, this opens a small popup screen.<details><summary>**Click here to open the example image!**</summary><img src="Media/24.jpg" height=350px></details>|
|**25**|In this popup screen you can enter the required package code and then press on the **ok** button.<details><summary>**Click here to open the example image!**</summary><img src="Media/23.jpg" height=350px></details>|
|**26**|Once you have added all the packaging to the order you can change the quantities of incoming and outgoing packing per package type by using the **+** and **-** buttons. After changing the quantity of outgoing or incoming packing the table below is updated to summarize the total incoming and outgoing packages.<details><summary>**Click here to open the example image!**</summary><img src="Media/40.jpg" height=350px></details> |
|**27**|After adding the packaging to the order you can click on the **back** button to go back to the main order screen.|
|**28**|You can end the order by clicking on the **Pay** button, the order will then be closed. You don't actually process payments in the app itself, this is done at a checkout location which may use the Florisoft CC-Touch cassiers module.<details><summary>**Click here to open the example image!**</summary><img src="Media/37.jpg" height=350px></details>|
|**29**|After closing the order you will be brought back to the customer selection screen.<details><summary>**Click here to open the example image!**</summary><img src="Media/26.jpg" height=350px></details>|
