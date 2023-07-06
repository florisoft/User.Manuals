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

<details><summary><b>Click here for the example image!</b></summary><img src="Connect EN/img1.png"></details>

## Prepare necessary information

The invoice to be sent to Floriday requires a number of information fields for full functionality. This module works on the basis of the completed LEVCOD field in the order lines to be used.

In case an invoice line has a different supplier code than the Floriday supplier, you link the Floriday supplier to the 'regular supplier.

You can set this up by following the steps below:

|Step|Explanation|
|:-:|:--|
|**1**|Open the constants and navigate to the following path: <br> Community-> supplierdata> suppliers|
|**2**|Open the specific supplier and go to the subfolder **Connect**|
|**3**|Use the dropdown under the heading **Floriday Connect** and select the right non-standard supplier<details><summary><b>Click here for the example image!</b></summary><img src="Connect EN/img3.png"></details>|



**Make sure the following information is properly set:**

|Informationfield|Where to find and how to setup|
|:--|:--|
|**Debtor GLN Address**|Constants -> Community -> debtor data -> debtor card/Addresses: GLN Code|
|**FloridayOrganizationID**|This is a timerprocess which you need to play/set off once a day|
|**Floriday Grower API**|Constants -> community -> supplier data -> suppliers -> supplier card/webservice: type of webservice|
|**Supplier warehouse**|Constants -> supplier data -> suppliers -> supplier card/Webservice: Default warehouse|
|**Debtor delivery times**|Constants -> community -> debtor data -> debtors -> debtorcard/internet/webservice :Delivery locations, delivery and order times per weekday|
|**Debtor delivery locations**|Constants -> community -> debtor data -> debtors -> debtor card/addresses/delivery address: GLN code|

<details><summary><b>Click here for the example image!</b></summary><img src="Connect EN/img2.png"></details>

# Required information on the order lines

Before submitting a delivery note in this way, the check whether all data on the lots is done in advance (in contrast to the 'old' way where this check was done afterwards ( aperak/PTYVWD ). To perform this check, all parties that we need a TradeItemID to pay.This TradeItemID originates from an order batch, so it comes down to the fact that all invoice lines require an order lot number, you can activate the column for this in the invoice change screen.

This TradeItemID therefore originates from an order batch, this order batch must be synchronized to the Catalog on the Floriday growers platform. We have 2 ways to obtain a TradeItemID:

Setting up the floriday module for offering batches. A TradeItem is also required for placing an offer on floriday. We do this by opening the order list with the offer in the accessible order lists on the florida debtor.

If you do not want to offer, but only want to pay via Floriday, we can also create a TradeItem when submitting the delivery note, this is done as follows:

At the supplier where we have entered the API key, you can indicate the order list in the Web service --> Web service Specific tab in which the order batches must be created if they do not exist. If an invoice line does not yet have an order lot number, we create it here and then immediately try to synchronize it to Floriday to obtain a TradeItemID. If an order line already has an order lot number, we try to sync the lot immediately.
To successfully get an order batch on floriday, the batch must meet a number of criteria:

- The parcel must have a photo.
- The grading characteristics must be filled as required by Floricode.
- The number of kegs per layer must be filled.
- The number of layers per cart must be filled.

It is quite possible that a party you are trying to sync does not meet these criteria, for these situations we can also fill in a template party in the tab Webservice --> Webservice Specific on the Floriday supplier.
For this you create an example order batch with all the necessary data filled in, when we try to sync and we miss data, it will be removed from the template batch.

<details><summary><b>Click here for the example image!</b></summary><img src="Connect EN/img4.png"></details>