<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Manual Floriday Connect transactions EN - M165

Welcome to the Floriday Connect API manual. With this module you can send sales orders to Floriday via the API. In this manual you can read about the necessary settings and what information you need to collect for sending sales orders.

## Required setting

*To use the functionalities of this module, you must enable the FS2000 setting **FloridayConnectTransaction** on the user.<br><br>By following the steps below you will learn how to do this:*

Go thorugh the following steps to learn this process:

|Step|Explanation|
|:-:|:--|
|**1**|Open the constants screen and navigate to the following path: <br><br> System-> Users -> Systemusers|
|**2**|Open the user and click in the system user card on the button **Inifiles**|
|**3**|In the dropdown, make sure the settingfile **FS2000** is selected|
|**4**|Look for the setting **FloridayConnectTransaction**. You can also press F3 to use the search engine|
|**5**|Put the setting on **TRUE** and save the changes|

<details><summary><b>Click here for the example image!</b></summary><img src="Connect En/img1.png"></details>

## Prepare necessary information

The invoice to be sent to Floriday requires a number of information fields for full functionality. This module works on the basis of the completed LEVCOD field in the order lines to be used.

In case an invoice line has a different supplier code than the Floriday supplier, you link the Floriday supplier to the 'regular supplier.

You can set this up by following the steps below:

|Step|Explanation|
|:-:|:--|
|**1**|Open the constants and navigate to the following path: <br> Community-> supplierdata> suppliers|
|**2**|Open the specific supplier and go to the subfolder **Connect**|
|**3**|Use the dropdown under the heading **Floriday Connect** and select the right non-standard supplier<details><summary><b>Click here for the example image!</b></summary><img src="Connect En/img3.png"></details>|



**Make sure the following information is properly set:**

|Informationfield|Where to find and how to setup|
|:--|:--|
|**Debtor GLN Address**|Constants -> Community -> debtor data -> debtor card/Addresses: GLN Code|
|**FloridayOrganizationID**|This is a timerprocess which you need to play/set off once a day|
|**Floriday Grower API**|Constants -> community -> supplier data -> suppliers -> supplier card/webservice: type of webservice|
|**Supplier warehouse**|Constants -> supplier data -> suppliers -> supplier card/Webservice: Default warehouse|
|**Debtor delivery times**|Constants -> community -> debtor data -> debtors -> debtorcard/internet/webservice :Delivery locations, delivery and order times per weekday|
|**Debtor delivery locations**|Constants -> community -> debtor data -> debtors -> debtor card/addresses/delivery address: GLN code|

<details><summary><b>Click here for the example image!</b></summary><img src="Connect En/img2.png"></details>