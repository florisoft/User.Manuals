<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Manual Florishop Addon Shopping List (M135)

Welcome to the Florishop Shoppinglist Addon, this manual shows you how to set up this module and gives a walkthrough of how it works.

**Disclaimer #1**: At the moment this module only works for stocks and thus doesn't work for orderlists or hybrid lists.

**Disclaimer #2**: The shopping list is only available for the desktop version; this module doesn't work for the mobile version.

## Settings for the back-office

*Debtors need to be authorized to add parcels to the order summary, in case the debtor isn't authorized parcels won't be shown in the shoppinglist.*

|Step|Explanation|
|:-:|:--|
|**1**|Open the debtor card:<br>**Community→Debtor data→Debtors**|
|**2**|In the debtor card navigate to:<br>**Internet→Modules**|
|**3**|Enable the option **Order overview**:<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img1.png"></details>|


## Florishop Settings

*Follow the steps below to activate the shopping list module on your Florishop:*

|Step|Explanation|
|:-:|:--|
|**1**|Log into your Florishop with a management account and enable the management mode.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img2.png"></details>|
|**2**|Open the webshop settings screen:<br>**Configuration→Webshop settings**<br>Or by adding **/settings** to the webshop URL.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img3.png"></details>|
|**3**|Search the settings screen for the setting **SHOPPINGLISTACTIVE** en make sure this setting is enabled.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img4.png"></details>|
|**4**|Search for the setting **MATCHWEIGHTINGS**, with this setting you can influence the way the matchrate is calculated based characteristics weight.<Br><Br>The matchscore gives insight into how much a parcel matches with a potential in stock alternate product.|
|**5**|Now fill in the weights to indicate how much each value contributes to calculating a match score. The absolute size of the numbers does not matter, it can range from 1-10 or 1-100.<Br><br>For the "S" values, the weight is calculated in a different way. Here, it is considered whether the difference is 5%, 10% or 20%. Based on this, it is determined whether the whole value, 2/3, 1/3 or not at all is included. "S" values that are zero are not included.<Br><br>When adding a lot to a shopping list, the lot number is stored. Lots with the same lot number will have a match score regardless of the weights.<br><br>**The image below is a good example of set weights**<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img5.png"></details>|
|**6**|**Good to know information**:<br><br>**When is something a duplicate:** if artnr, S1, S2 and S3 match, they won't be shown.<Br><br>**CELCOD**: a parcel must always be linked to a CELCOD (productgroup), otherwise these won't be found.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img5.png"></details>|

## How to create a Shopping list

*The shopping list module has multiple ways to create a shopping list, they are described in the tables below.*

### Creating a shoppinglist from a parcel

|Step|Explanation|
|:-:|:--|
|**1**|In stock, you will see a shopping list icon next to each stock lot. Click on this icon to open the pop-up window.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img7.png"></details>|
|**2**|In the pop-up screen you can choose to use either an existing shopping list or an entirely new one.|
|**2.a**|If you want to make use of an existing list, then choose an existing shopping list from the list. Now press **Ok**.Click on the pen/edit icon next to the shoppinglist row.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img8.png"></details>|
|**2.b**|Want to create a new list? Then click on **Add new shoppinglist**, enter a name and press **Ok**. The parcel you created the new shoppinglist on will be automatically added to the shoppinglist.Click on the pen/edit icon next to the shoppinglist row.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img9.png"></details>|

### Creating shopping lists using the side menu screen

|Step|Explanation|
|:-:|:--|
|**1**|Click on the shopping list icon on the left side of the screen. This opens a pop-up screen.Click on the pen/edit icon next to the shoppinglist row.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img10.png"></details>|
|**2**|In this pop-up screen you can choose to use an existing or create a new shopping list.|
|**2.a**|In case you want to use an existing shopping list, choose a list item from the list and press **Ok**.Click on the pen/edit icon next to the shoppinglist row.<details><summary><b>Click here for the example image!</b></summary><img src=""></details>|
|**2.b**|If you want to create a new shoppinglist then do the following, click on the option **Add new shopping list** this opens a pop-up screen, enter a name and click on **Ok**.Click on the pen/edit icon next to the shoppinglist row.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img10.png"></details>|

### Adding orders to the shopping list

|Step|Explanation|
|:-:|:--|
|**1**|Click on the shopping list icon in the left sidebar, this opens the shoppinglist sidebar option.|
|**2**|In the order overview screen you'll see the orders made on your account.Click on the pen/edit icon next to the shoppinglist row.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img6.png"></details>|
|**3**|In the order overview you'll see the orders linked to your account with purchased parcels per order. In this screen you can add entire orders(#1) or individual items(#2) in the order to the shoppinglist. <details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img12.png"></details>|
|**4**|When you click on the shopping list icon a a pop-up appears asking you to use an existing or create a new shoppinglist.Click on the pen/edit icon next to the shoppinglist row.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img11.png"></details>|
|**5**|If you don't see your orders on screen, they may be filtered out based on the datefilter settings.Click on the pen/edit icon next to the shoppinglist row.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img13.png"></details>|

## Shopping list management screen

|Step|Explanation|
|:--|:--|
|**1**|Click on the shopping list icon in the leftside of the screen.|
|**2**|Now click on the **Manage Shopping list**, this opens the managementscreen.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img14.png"></details>|
|**3**|If you can't find the shoppinglist in the list look it up using the searchbar.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img15.png"></details>|
|**4**|If you want to delete a shopping list, click on the bin icon and confirm the deletion.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img16.png"></details>|
|**5**|If you want to create a new shopping list click on the + sign button next to the searchbar.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img17.png"></details>|
|**6**|When creating a shopping list using the managementscreen you'll be taken to the a screen where you can add parcels to the shoppinglist.<br><br>In this screen you can add parcels to the list by clicking on the checkmark in the parcels product card. On the left side of the screen you'll see an updated list of parcels in the shopping list. You can click on the checkmark again to remove it from the shopping list.<br><br>When you are done adding parcels to the shoppinglist **do not** forget to press the **save selection** button. If you don't do this the changes won't be saved.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img18.png"></details>|
|**7**|Want to edit shopping lists? Then click on the pen icon in the shopping list row. You are now taken to the management page of the relevant shopping list.<Br><br>Remove parcels from the shopping list by clicking on the bin icon and confirming deletion.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img19.png"></details>|

## Opening shopping lists in the stock page

|Step|Explanation|
|:-:|:--|
|**1**|Open the shoppinglist managementscreen.|
|**2**|Click on the pen/edit icon next to the shoppinglist row.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img19.png"></details>|
|**3**|In the edit screen click on **open in stock**.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img20.png"></details>|
|**4**|The content of the shopping should now be shown in the lower left of the screen. Click on one of the articles.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img21.png"></details>|
|**5**|You will now see that the stock is filtered based on the contents of the shopping list article. The resulting parcel card image shows the matching percentage.<br><br>The matching score is calculated based on the **MATCHWEIGHTINGS** florishop setting we set up earlier.Click on the pen/edit icon next to the shoppinglist row.<details><summary><b>Click here for the example image!</b></summary><img src="Shopping List Media EN/img22.png"></details>|