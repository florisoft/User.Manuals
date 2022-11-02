<img src = "../../fslogo.png">

# Florisoft Manual Transport Costing (M195)

The module Transport Costing contains the following functionalities and can work in combination with each other:

- Departure/delivery days;
- Order numbers;
- Transport costs.

## Table of contents

[Module Transport Costing basics](#module-transport-costing)  
[Setting up Order Numbers](#setting-up-order-numbers)  
[Configuring debtors](#configuring-debtors)  
[Transport costs](#transport-costs)  
[Article groups](#article-group)  
[Assortment](#assortment)  
[Order number](#order-number)
[Webshop settings](#webshop-settings)

## Module Transport Costing

The basis of Transport Costing is the departure/delivery day system, and you can combine it with the order number system. In addition, you can set the transport costs so the customer knows what the total costs are including transport. Using a wizard, the customer can choose the desired delivery/delivery date and indicate whether something should be delivered or whether it will be picked up. <br>*By using the steps below you can get an example of the system to show*:

|Step|Explanation|
|:--|:--|
|**1**|Click the calendar icon in the top left of te screen, this will show the following wizard.<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image1.png"></details>|
|**2**|After choosing a date you will be given the choice of whether it should be delivered or whether it will be picked up.<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image2.png"></details>|

## Setting up Order Numbers

We'll start by creating an order number, to do this follow the steps below:

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen and navigate to the following path:<br>**System**(#1) → **Order numbers**(#2) → **Order Numbers**(#3)<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image13.png"></details>|
|**2**|Click on the add new button (**+**) #4, a new window opens for the creation of a new order number.|
|**3**|Fill in a order number.**Important**:*Keep in mind that the order number can't be longer than 4 characters, because next to this it will add a 6 character code for pickup/delivery. And in total the order number can be 10 characters long.* (#5)|
|**4**|Write a description (#6) in the description textbox.|
|**5**|Click on the button '*details*'(#7). You will be prompted with a message asking you to confirm the creation of a new order number, click on '*yes*'. Click on '*yes*'again.<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image13.png"></details>|
|**6**|Click on the '*Add*' button to add a new ordernumber, this should make a new window appear in the ordernumber window in which we'll enter the following information: <br><br>- **Code:** *nothing more than a identifier code*<br>- **Ordernumber**:*remember a maximum of four characters!*<br> - **Time to select**: Here you'll specify when you want the ordernumber to be active in the web shop.<br>- **Ordernumber type**: Pickup or delivery<br>- **Assortiment Artikelnummer**: here you can link an assortiment for things like delivery costs, more on this later.<br>- **Translations**: this text will come back in the wizard e.g. whether it's Pickup vs. Delivery. <details><summary><b>Click here for a filled in example image</b></summary><img src="media ENG/image3.png"></details>|
|**7**|Click on the '*Ok*' buttons to save the newly created Order numbers.|

## Configuring debtors

In this chapter we will configure an existing debtor or create a new one if needed. To do this follow the steps below:

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen and navigate to the following path:<br>**Community**→**Debtor data**→**Debtors**<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image14.png"></details>|
|**2**|Open or create a debtor by either double clicking an existing debtor to open it or by clicking the add (**+**) button to create a new one.|
|**3**|In the debtor card screen click on the '**internet**' tab.|
|**4**|In this tab you will need to change the following settings:<br>- **Must select a departure time (#1)**: *Enable this checkbox*<br>- **Departure days according to:** *here you need whether the vaild departure dateis according to: "Debtor departure days" or "Accessible stock|
|**5**|To add the order number we need to navigate to the tab '*Internet Access*' tab (a sub folder of the internet folder).|
|**6**|Enter the correct order number at (#2)<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image15.png"></details>|

## Transport Costs

This chapter elaborates on the transport costs we mentioned before.

### Article group

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen if you didn't have it open already.|
|**2**|Navigate to the following path:<br>**Articles**→**Article information**→**Article groups**|
|**3**|If there is no existing article group create one by clicking on the add (**+**) button.|
|**4**|When creating one, enter the following information:<br>- **Article group**: article group ID<br>- **Description**: The visible description of the article group.<br>- **Prod. group**: Set this too "**Overig (888800)**, miscellaneous in Dutch<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image6.png"></details>|
|**5**|Click the **Ok** button to save the newly created article group.|

### Assortment

Next we are going to create an Assortment, follow the steps below:

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen if you didn't have it open already.|
|**2**|Navigate to the following path:<br>**Articles**→**Assortment information**→**Assortment**<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image16.png"></details>|
|**3**|Creat a new assortment by clicking on the add new button (**+** icon). This opens a new screen.|
|**4**|Fill in the following fields:<br>- **Assortment**: *Give the newly created assortment a unique identifier* <br>- **Description**: Description of the assortment that is visible in the backoffice and webshop.  <br>- **Purchase price**: The cost of transport <br>- **Sales price**: The cost of transport that is offered to the debtor <br>- **Department**: *Set this to your transport or logistics department*. <br>- **Article group**: *It's important to select the Article group which you've created/checked at previous step.*<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image7.png"></details>|

### Order number

We can now add the Assortment from the previous chapter to the order numbers from the first chapter. *Follow the steps below*:

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen and navigate to the following path:<br>**System**→**Order Numbers**→**Order numbers**<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image17.png"></details>|
|**2**|Open an order number by double clicking on it, this opens a new screen click on the '*details*' button.  |
|**3**|We created a new order number here a couple of chapters ago, open it and select the the article number we created in the previous chapter in the '*Assortment Artikelnummer*' drop down.<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image8.png"></details>|
|**4**|You may close the Ordernumber windows.|


### Webshop settings

To enable the Transport Costing Wizard on the webshop follow the steps below:

|Step|Explanation|
|:--|:--|
|**1**|Go to your Florishop website and log in with an admin priveliged user.|
|**2**|Click on the user icon in the top right of the webshop, this opens a dropdown. Now click on the *management* option in the dropdown menu.<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image18.png"></details>|
|**3**|A blackbar should now appear above the webpage, click on the configuration option to once again open a dropdown.|
|**4**|Click on the dropdown option called *Webshop settings*<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image19.png"></details>|
|**5**|The webshop settings page should now be opened use the search bar to search for the following setting: **ORDERNUMMERWIZARD**<details><summary><b>Click here for the example image</b></summary><img src="media ENG/image12.png"></details>|
|**6**|Open the setting by clicking on one of the value cell. This opens a new screen, change the value by enabling the checkbox called '*waarde*' (Dutch for value). <br> The checkbox should be checked to enable the wizard.|
|**7**|Click on the **save** button, to save the made changes.|

## End Result

When configured correctly, you should see following wizard on the shop:

<details><summary><b>Example image</b></summary><img src="media ENG/image9.png"></details>

When you select a delivery option at the shop (and you are done with shopping), the transport costs will come back at the invoice:

<details><summary><b>Example image</b></summary><img src="media ENG/image11.png"></details>