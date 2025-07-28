<img src="../../fslogo.png"/>

# Manual FloriShop addon Sales

# Index

[Table of Contents](#content)


[1 Establishing a relationship between vendor-debtor and system user](#1establishing-a-relationship-between-vendor----debtor-and-sysystem-user)

[1.1 Vendor](#11vendor)

[1.2 Debtor](#12debtor)

[1.3 System user](#13systemuser)

[2 Sales functionality Webshop](#2sales-functionality-webshop)

[3 FAQ](#3faq)


**Required module(s)**.

The Sales module must be activated. See the screenshot below.

<details><summary><b>Click here for the example image</b></summary><img src="https://github.com/user-attachments/assets/f6b1fc23-0f54-4e73-af63-e7659bd12119"/></details>

&nbsp;

# 1 Establishing a relationship between vendor-debtor and system user

After checking that the Sales module is active, we are going to establish the relationship between the salesperson, debtor & system user. Here the salesman to the right debtor group, and he/she will get the right correct authorization in terms of stocks.

## 1.1 Vendor

Follow the steps below to set up the 'Vendor':

|Step|Explanation|
|:--|:--|
|**1**| Go to the constants -> Community -> Seller data -> Sellers
|**2**| Create a new Seller by clicking on the '+' at the top left
|**3**| When on the page "Sellers:", fill in the information: 
- [X] Code Seller
- [X] Name Seller
- [X] Seller's first name
- [X] Debtor group (this is the group of debtors the Seller is allowed/can sell to)
- [X] Set the checkmarks (if needed)

<details><summary><b>Click here for the example image</b></summary><img src="manual sales\.media\picture2.png" /></details>

&nbsp;

On the page "Online store", fill in the following:
|Step|Explanation|
|:--|:--|
|**1**| A checkmark should be turned on at "Account manager login"
|**2**| Password
|**3**| Debtor to which the Seller is connected (this is important for the authorisation of the stock)
|**4**| A checkmark should be turned on at "Debtor card"

<details><summary><b>Click here for the example image</b></summary><img src="manual sales\.media\picture3.png" /></details>

&nbsp;

## 1.2 Debtor

Follow the steps below to set up the Seller:

|Step|Explanation|
|:--|:--|
|**1**| Go to the Constants -> Community -> Debtor data -> Debtors
|**2**| Create a new debtor by clicking the '+' symbol at the top left of  this page. (A new screen opens, in which the choice should be made between templates, one for debtors with BTW and one without)
|**3**| On the tab Addresses, fill in:
- [X] Deb. number
- [x] Find
- [X] Company name

<details><summary><b>Click here for the example image</b></summary><img src="manual sales\.media\picture4.png" /></details>

&nbsp;

|Step|Explanation|
|:--|:--|
|**1**| Navigate to the tab "Internet" and fill in the following things:
|**1A**| Go to internet acces -> check "This client has access by means of Internet" on
|**1B**| Check the "This customer may log into Florisoft" on
|**1C**| Password for customer<details><summary><b>Click here for the example image</b></summary><img src="manual sales\.media\picture5.png" /></details>

&nbsp;
|Step|Explanation|
|:--|:--|
|**1**| To authorise the stock, go to 'Accessible stocks'<details><summary><b>Click here for the example image</b></summary><img src="manual sales\.media\picture6.png" /></details>

&nbsp;


|Step|Explanation|
|:--|:--|
|**1**| To authorise a debtor for a stock, put a checkmark in the columns:
- [X] A - Entry -(Toegang)
- [x] T - Telesales, webshop acces -(Televerkoop, webshop toegang)<details><summary><b>Click here for the example image</b></summary><img src="manual sales\.media\picture7.png" /></details>

&nbsp;

## 1.3 System user

Follow the steps below to set up the system user:

|Step|Explanation|
|:--|:--|
|**1**|Go to the Constants -> System -> Users -> System users
|**2**|Select a system user
|**3**|At 'Seller' you connect the seller you have just created<details><summary><b>Click here for the example image</b></summary><img src="manual sales\.media\picture8.png" /></details>


## 1.4 Navigator

Follow the steps below to add *Florisoft Sales Login* to the Florisoft Navigator:

|Step|Explanation|
|:--|:--|
|**1**| Open the Navigator and press *F12* |
|**2**| Drag the *Florisoft Sales Login* button to the desired location on the Navigator. <details><summary><b>Click here for the example image</b></summary><img src="https://github.com/user-attachments/assets/a55a5b0f-796a-482f-8ae9-6745b72c7de3"/></details> |
|**3**| Press *F5* to save the changes |

# 2. Sales functionality Webshop


|Step|Explanation|
|:--|:--|
|**1**|Ensure the shop has been restarted to activate the adjusted settings.
|**2**|Navigate to the webshop and log in with the **<u>System user</u>**. This is connected to a seller, which is in turn connected to the debtor.
|**3**|After logging in, click on the op right, above the username and choose 'Sales'.<details><summary><b>Click here for the example image</b></summary><img src="manual sales\.media\picture9.png" /></details>


If everything has been set up correctly it should look like this:<details><summary><b>Click here for the example image</b></summary><img src="manual sales\.media\picture10.png" /></details>
(The picture above is just an example and could variate on other machines)

And at the top left you can search for a customer you want to sell to
<details><summary><b>Click here for the example image</b></summary><img src="manual sales\.media\picture11.png" /></details>


# 3. FAQ

Question: "I created an offer for a customer but I can't open it."

Answer: Check whether the customer in question has access to the Webshop (Organs -> Debtors -> Check "This customer has access via the internet").
