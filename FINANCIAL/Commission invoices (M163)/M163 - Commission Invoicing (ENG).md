<img src="../../fslogo.png">

# Florisoft User Manual: Grower Portal

###   

#### For setup, see the manual below.
#### For the user manual, navigate via the table of contents.

# Florisoft Manual: Grower Portal

## Table of Contents

1. [Foreword](#foreword)
2. [Creating Debtors](#creating-debtors)
3. [Creating Handling Codes](#creating-handling-codes)
4. [Creating Customer Profiles](#creating-customer-profiles)
5. [Creating Auctions](#creating-auctions)
6. [Creating Growers](#creating-growers)
7. [Creating Suppliers](#creating-suppliers)
8. [Creating Order Lists](#creating-order-lists)
9. [Creating Transfer Stocks](#creating-transfer-stocks)
10. [Delivering Lots via Grower Portal](#delivering-lots-via-grower-portal)
11. [How does the module work?](#how-does-the-module-work)

&nbsp;

## Foreword

Welcome to the Florisoft manual for the Grower Portal. The grower portal is a functionality within the webshop that allows growers to supply their products to a trading organization that trades and sells the delivered products.

This module makes it easy for the grower to gain direct and efficient insight into their assortment. Because the module is displayed in a web interface, the license costs are limited. Management must be facilitated by the hardware supplier or another third party when a grower needs access. There are also no separate licenses involved. At this moment, the web interface is operational, and it does not matter whether there is one grower or a thousand growers.

This manual is intended for Florisoft administrators and regular users of the Grower Portal. Its purpose is to provide a comprehensive yet clear explanation of the implementation process and the use of the grower portal. Below you will find an overview of the chapters in this manual.

After this foreword, chapter two describes the creation of debtors in Florisoft. Debtors are used to give a person access to the grower portal within the webshop.

Chapter three explains the definition of handling codes. These are used to determine the handling options related to the delivered packages.

Next, chapter four provides an overview of the process of creating customer profiles. Customer profiles can be used to link a grower to a group of growers with shared or similar settings. These can be used to filter growers by customer profile. This function is optional, but it can be useful when many growers supply through the grower portal.

Chapter five describes the creation of auctions. Through auctions, a grower is linked to an auction. Not all growers trade through all auctions, so it is possible to link a grower to a specific auction in order to connect information about this grower to the lots they deliver.

Chapter six describes the creation of growers. This is the process of actually creating a grower in Florisoft. This means that the Grower Portal recognizes the logged-in user as a grower.

Because a grower delivers packages, they must also be created as a supplier in Florisoft. This is described in chapter seven.

A grower can only deliver packages that are on a linked order list. The order lists determine which lots a grower can deliver. Chapter eight describes how an order list works in combination with the grower portal.

When a grower confirms a shipment, the shipped packages become stock packages in a so-called transfer stock. From this stock, the delivered packages can be sold. This transfer of packages to stock happens fully automatically. Creating a transfer stock is described in chapter 9.

The final chapter, chapter ten, describes the actual Grower Portal in the webshop. It has a user-friendly interface in which a grower can deliver their lots. A number of general and specific settings are available. These settings can be configured in cooperation with Florisoft according to the customer’s wishes.

In addition to a web interface, Florisoft also contains a supply overview. This overview is briefly described in chapter ten. The grower portal is still under development. Most functions in the supply overview are already available or will become available.

**Grower Portal in the webshop**

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image1.png"></details>

&nbsp;

**Supply overview in Florisoft**

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image2.png"></details>

### Note: The images in this manual may differ

## Creating Debtors

The first step in setting up the grower portal in the webshop is to create one or more debtors. Debtors have two different functions in combination with the grower portal. The first function is linking them to the supplier, which is the grower. The second function is to log in to the webshop. The following describes how creating a debtor works.

1. Start Florisoft by double-clicking the Florisoft logo on the desktop.
2. Open **Constants** by clicking the icon as shown in the image below.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image3.png"></details>

3. In **Constants**, navigate to **Relations / Community (1) → Debtors (2)**.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image4.png"></details>

4. Click the **feather icon** to create a new debtor.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image5.png"></details>

If example debtors have been implemented in the system, the **Debtor Index** screen will open. Double-click the screen to select an example. These are templates containing standard information, which makes it easier to create a debtor correctly.

If the **Debtor Index** screen does not appear when you click the feather icon, there are no templates in the system.

If you do not want to base the debtor on one of the templates, you can click **Cancel**. If a message appears saying that you must choose a template, you can ignore it and simply click **OK**.

5. In the debtor screen, fill in the name and address details of the debtor in the corresponding sections under **Address**.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image6.png"></details>

6. Then go to the internet settings by clicking **Internet** and then **Internet Access**.

7. Check the checkboxes **This customer has access via the internet** and **This customer may log in to Florishop** (7 & 8).

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image7.png"></details>

8. Fill in the field **Password for customer** with a password for the customer. This password can be used to log in to the webshop and gain access to the grower portal.

9. Under the **Supply / Grower Supply** section, select the supplier code **Levcode** and select the grower you want to link to this debtor.

The correct supplier can only be selected if it already exists in the system. How to create a supplier is described in chapter 7.

**Note: set the system setting `AANVOERSCHERMEN` to `True` to make this setting visible.**

10. Click **OK** to save the settings.

A debtor has now been created. The settings above define the grower as a debtor so that they can log in to the webshop. This gives access to the grower portal.

11. Under **Accessible order lists**, select from which order lists the assortment for the logged-in supplier should be retrieved.  
    Check the following 3 boxes: **A**, **T**, and **Supply**.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image38.png"></details>

12. Set the webshop setting **SUPPLY - ORDER AUTHORIZATION** to **ON**.  
    Together with the previous checkboxes, this setting ensures that only the assortment of the logged-in supplier from the selected order list or lists is shown in the supply screen. This prevents the assortment of this supplier that may exist in another order list from being displayed.

13. Under **Modules**, enable the **Supply** module.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image39.png"></details>

**Note: a separate debtor is required for each supplying grower. Repeat steps 4 to 13 for each grower you want to create.**

## Creating Handling Codes

Handling codes are used to define different types of product handling, together with the company that handles and sells the products supplied by growers. The processing can include splitting, rebundling, repacking, placing in water, etc.

Handling codes are optional, but they are often used because a trading organization adds value to the delivered product by processing it correctly. Handling codes are linked to the supplier but must first be defined in Florisoft. The process is described below.

1. Open **Constants** and navigate to **System > Handlings > Handling Codes**.
2. Click the **feather icon** to create a new handling code. A new screen opens, see the image below.
3. The following settings can be changed for each handling code.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image8.png"></details>

**No. 1:** The sequence number determines the order on the webshop. Multiple handling codes can be linked to a supplier. This number determines which handling is displayed first, second, etc.

The higher the number, the higher the handling code appears in the dropdown menu on the webshop.

**No. 2:** The handling code is used for technical purposes in Florisoft and the webshop.

**No. 3:** The description is the visible value of the handling code in the webshop.

**No. 4:** The stem price is calculated when a customer chooses this handling code in the webshop.

**No. 5:** Determines the new length of the product after choosing the handling option in the webshop.

**No. 6:** Select the dust code for the corresponding handling.

The other settings are more specific and are usually filled in separately per debtor. These settings are usually implemented with the help of a Florisoft implementation consultant.

**Need help with the Handling Code settings? Feel free to contact Florisoft by phone (+31 (0)71 40 806 10) or by email: support@florisoft.nl**

## Creating Customer Profiles

Customer profiles are used to group certain growers and can be used as a filter or category on the webshop. Customers can then filter by profile, such as **Dutch growers**, **Kenyan growers**, etc. In this way, all products from Dutch growers can be found under one filter, just like growers from Kenya under another.

Customer profiles are optional, just like handling codes, but they are helpful in categorizing growers.

Later in the process, the grower can be linked to a customer profile. Below is the process for creating a customer profile.

1. Go to **Constants > Statistics > Customer Profiles**.
2. Click the **feather icon** to create a new customer profile.
3. Fill in the branch code (no. 1). This is for technical reasons.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image9.png"></details>

4. Enter a clear description for the customer profile in **Description** (2). The description is used in the webshop and is visible to customers.

5. Choose **Customer** in the **Type** field (3). This determines that it is visible on the webshop.

##### **ATTENTION: Make 100% sure that `Customer` is selected in `Type`. Otherwise it will not be visible on the webshop and customers cannot use it.**

## Creating Auctions

Generally speaking, growers trade their products through an auction. In Florisoft, a number of physical Dutch auctions from Royal FloraHolland are already defined as standard. However, it is also possible to create auctions yourself if the desired one is not listed.

In addition to a debtor and supplier, a grower must also be defined as an actual grower in order to be linked to an auction. It is therefore important to create an auction first. This is described below.

1. Go to **Constants > Locations > Auctions**.
2. Click the **feather icon** to create a new auction.
3. Enter a number in **Auction code** (1).
4. Enter a descriptive name (2), for example the name of the auction.

Think of auctions as a grouping function. Growers often supply to certain auctions, but not all of them. This way, you can distinguish between auctions and choose the correct one yourself.

5. Click **OK** to save everything and create the auction.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image10.png"></details>

## Creating Growers

After creating one or more auctions, the next step is defining one or more growers. See the steps below.

1. Go to **Constants > Relations > Grower Data > Growers**.
2. Click the **feather icon** to create a new grower.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image11.png"></details>

3. Enter a grower number in the corresponding field (1).
4. Enter the name of the grower in the **Description** field (2).
5. Link the grower to the desired auction via the **Auction** dropdown (3).

##### **ATTENTION: Double-check that you selected the correct auction at no. 3. It is NOT possible to change the auction later.**

6. Fill in the rest of the information as indicated in purple in the image.
7. Click **OK** to create the grower.

**Note: each supplying grower must be defined separately in Florisoft. Repeat the steps to create multiple growers.**

## Creating Suppliers

In addition to being defined as a debtor, the grower must also be defined as a supplier. To create a new supplier, follow the steps below.

1. Go to **Constants > Relations > Supplier Data > Suppliers**.
2. Click the **feather icon** to create a new supplier.
3. Fill in fields no. 1 and no. 2 with a **Supplier code** and a **Search code**. These must be created for technical reasons.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image12.png"></details>

4. Fill in the rest of the data as shown in the image.
5. In the same screen, link the created grower to the debtor (3). This can be done under the **Supplier as Customer** section.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image13.png"></details>

6. Link the supplier to one of the created customer profiles (4).
7. Link one of the created auctions (5).
8. Link one of the created growers (6).
9. Select the **Supply** tab on the left side of the screen (7).

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image14.png"></details>

10. Click the large button **Set Supply Handlings** at the top (8). A new screen opens with all created handling codes.
11. Select the desired handling codes for the supplier by checking them (9). Selected handlings are added to the supplier.
12. Click **OK** (10).
13. Click **OK** again (11).

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image15.png"></details>

The grower is now defined as a supplier.

**Note: each supplying grower must be created separately in Florisoft. Repeat the steps for every supplying grower.**

##### **ATTENTION: Do not forget to link the supplier to the corresponding debtor; this is described in chapter 2, step 9.**

## Creating Order Lists

The next step consists of creating order lists. An order list is used as a container for products supplied by the grower. A grower can only supply products through an order list if the products are defined on that specific order list.

It is important to know that at least one order list is required per supplying grower. Each order list is linked to a stock. This is because every order product becomes a stock product once the grower submits new stock for certain products. How to create an order list is described below.

1. Go to **Constants > Locations > Order Lists > Order Lists**.
2. Add a new order list by clicking the **feather icon**.
3. Give the order list a clear **List code** (1) and **Description** (2). Keep in mind that an order list belongs to a supplier, so include this in the code and description. It is therefore recommended to add the supplier or grower name to the description.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image16.png"></details>

4. Then go to the **Transfer** tab (3), under **General**.
5. Choose a **Transfer stock** here. This is a transfer stock to which the delivered products are moved. Creating a stock is described in chapter 9.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image17.png"></details>

6. Check the checkbox **This order list may be transferred** to allow the order list to transfer order products to the specified stock (4).
7. Now click the **Authorization** tab (6) on the left side of the screen. Here, give the desired users access to the order list by double-clicking their name in the right column (7). You can also give all users access by clicking **All** (8).

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image18.png"></details>

8. Now click the **Internet Access** tab (9) to adjust settings related to the behavior of the order list.
9. Check **This order list is open on the webshop** (10).

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image19.png"></details>

10. Select the correct time schedules under **Webshop opening times** (11). This setting determines when the order list is open on the webshop.

These schedules can be defined in **Constants > System > Days and Times > Times**.

11. Now click the **Stock** tab.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image20.png"></details>

12. Link the order lists to the correct transfer stocks by checking the checkbox (13). The stock is only visible if it exists in Florisoft; creating a stock is described in chapter 9.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image21.png"></details>

13. Then click **OK**. The order list is now linked to the transfer stocks.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image22.png"></details>

**Note: each supplying grower must have their own order list in Florisoft. Repeat the steps above to create an order list for each grower.**

The screenshot below shows an example of an order list in Florisoft with several test products. These products can be supplied by the grower. Other growers may have different products.

An order list can be filled in several ways:
- By transferring products from a stock to an order list
- By using a stock connection to move products from another company to your own stock, after which they can be moved to the order list
- By manually adding order products

Which method is best for adding order products to an order list depends on the customer’s wishes. In most cases, this is discussed with a Florisoft consultant.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image23.png"></details>

##### **ATTENTION: Make sure that the `Sup/Lev` column, indicated in purple, is filled with the supplier code of the supplying grower.**

##### **This is the supplier code you created in chapter 7. Each grower has their own supplier code. Make sure the correct one is selected.**

## Creating Transfer Stocks

New stock supplied by a grower is converted into stock products in a so-called transfer stock. This process takes place when a grower confirms the delivered products in the webshop. How to create such a transfer stock is described below.

1. Go to **Constants > Locations > Stocks > Stocks**.
2. Add a new stock by clicking the **feather icon**.
3. Fill in both the stock code and the description with a name that can be recognized for the supplying grower.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image24.png"></details>

4. Then go to the **Authorization** tab.
5. Give the desired users access to the stock; there is a short explanation at the bottom of the screen.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image25.png"></details>

6. Then click the **Stock** tab as indicated in the image (4).
7. Check the option **Remove zero stock only for lots without a reservation**.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image26.png"></details>

8. Click the **Order List** tab.
9. Fill in **Linked to this order list** with the created order list.
10. Fill in **Stock to order list** with the created order list.
11. Go to the **Posting 2** tab.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image27.png"></details>

12. Check **ALWAYS create pick orders for this stock**.
13. Go to the **Webshop** tab.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image28.png"></details>

14. Check **This stock is open on the webshop**.
15. Choose opening times for the stock.
16. Click **OK**.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image29.png"></details>

A stock has now been created with an order list linked to it, which in turn belongs to one grower.

**Note: each grower has their own transfer stock. This means each grower needs their own stock. Repeat the steps to create new stocks for your growers.**

## Delivering Lots via Grower Portal

When all settings from the previous chapters have been configured correctly, it is possible to deliver products through the grower portal. See the steps below:

1. Log in to the webshop with the debtor details as configured in chapter 2.

Normally, the username is the debtor code and the password is the password created in chapter 2, step 8.

2. Click **Supply** or a similar function in the top-right corner to open the grower portal.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image30.png"></details>

3. Click the **NEW** button to create a new delivery. A new screen will open.

It is also possible to edit existing deliveries using the **Choose Shipment** dropdown menu.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image31.png"></details>

4. Enter an offer number (4).
5. Set a date for the validity of the offer by choosing the dates in the **Valid From** and **Valid Until** fields.

It is also possible to define times.

6. Click **Save** to create the delivery.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image32.png"></details>

7. Choose how many boxes (8) or colli (9) should be delivered.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image33.png"></details>

8. Then click **PUBLISH** (10) to confirm the delivery.
9. A small confirmation screen will appear to indicate that the action was completed successfully. Click **OK**.

It is possible to check sent deliveries from the **Overview** section.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image34.png"></details>

Florisoft users can also view, create, and edit deliveries themselves. This works as follows.

Click **Supply Overview** in the Navigator.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image35.png"></details>

The screen that appears is divided into 2 parts. The left part is shown below.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image36.png"></details>

All individual deliveries are shown here. At the bottom left are filter options for the deliveries.

The right section looks as follows.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/image37.png"></details>

This section shows the delivered products per offer.

After deliveries arrive in Florisoft, the products automatically become stock products. Once the products are in stock, it is possible to do various things with them. This is customer-specific and is often determined together with a Florisoft consultant.

## How does the module work?

When logging in to the webshop account of the debtor, you will find a section called **Supply** and a section called **Overview**.

Within the **Supply** section, you can choose between viewing/editing an existing shipment or creating a new one.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/img1.png"></details>

When opening a new or existing shipment, this overview shows the grower’s assortment that is included in the previously configured order list in Florisoft. Here, the number of colli/boxes in the shipment can be entered, and the purchase price can also be entered. After that, the user can click **Publish**.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/img2.png"></details>

After publishing, the shipment appears in the back office in the **Supply Overview**.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/img3.png"></details>

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/img4.png"></details>

In this overview, you check and approve the shipment. The prices entered by the supplier when creating the shipment are the supplier’s sales prices and therefore not purchase prices. In the supply overview, you can enter and confirm the sales prices of the lots, enable the **Priced** checkbox, and click the **Publish Shipment** button.

<details><summary><b>Click here for the example image!</b></summary><img src=".manual%20Grower%20Portal/img5.png"></details>

The lots are now in the intermediate stock of the stock that we filled in when configuring the order list. Once the shipment has arrived, it can be transferred to the current stock or from the intermediate stock to the cell/sales stock.

**If you still have any questions about the Grower Portal, please do not hesitate to call Florisoft (+31 (0)71 40 806 10) or email us (support@florisoft.nl).**
