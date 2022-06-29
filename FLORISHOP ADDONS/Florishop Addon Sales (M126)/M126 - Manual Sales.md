<img src="../../fslogo.png"/>

# Florisoft manual setting up Sales

# Index

[Table of Contents](#content)

[Introduction](#introduction)

[Checking settings in advance](#checking-settings-inadvance)

[3 Establishing a relationship between vendor-debtor and system user](#establishing-a-relationship-between-vendor----debtor-and-sysystem-user)

[3.1 Vendor](#vendor)

[3.2 Debtor](#debtor)

[3.3 System user](#systemuser)

[4 Sales functionality Webshop](#sales-functionality-webshop)

[5 FAQ](#faq)


# Introduction

Welcome to the Florisoft manual on setting up Sales. This manual is
intended for employees of Florisoft who want to set up the module Sales.
sales module. The manual is divided into a number of chapters.

After this introduction, chapter two describes a number of settings that must be
described which must be set/checked in advance.

Chapter three explains how to set up the relationship between salesman,
debtor & system user.

The fourth chapter shows you exactly what you should see in the Webshop
if you have set everything up correctly.

The fifth and final chapter contains the Frequently Asked Questions
(FAQ).


# Checking settings in advance

For the Sales module to function correctly, a number of settings must be
settings must be checked/adjusted beforehand. These settings are
are described below.

**Required module(s)**.

The Sales & Account Manager module must be activated. See the screenshot below.

<img src="manual sales\.media\picture1.png" />
&nbsp;

# 3 Establishing a relationship between vendor-debtor and system user

After checking that the Sales module is active, we are going to establish the relationship between the salesperson, debtor & system user. Here the salesman to the right debtor group, and he/she will get the right correct authorization in terms of stocks.

## 3.1 Vendor

Follow the steps below to set up the 'Vendor':

1. Go to the constants -> Community -> Seller data -> Sellers
2. Creat a new Seller by clicking on the '+' at the top left
3. When on the page 'Sellers:', fill in the below information:

- Code Seller
- Name Seller
- Seller's first name:
- Debtor group ( this is the group of debtors the Seller is allowed/can sell to)

- The checkmark 'Seller not allowed to logon' should be turned on

<img src="manual sales\.media\picture2.png" />
&nbsp;

On the page 'Online store', fill in the following:
- A checkmark should be turned on at 'Account manager login'
- Password
- Debtor to which the Seller is connected (this is important for the authorisation of the stock)
- A checkmark should be turned on at 'Debtor card;

(Other options can be turned on if instructed or if needed)

<img src="manual sales\.media\picture3.png" />
&nbsp;

## 3.2 Debtor

Follow the steps below to set up the Seller:

1. Go to the Constants -> Community -> Debtor data -> Debtors
2. Creat a new debtor by clicking the '+' symbol at the top left of this page.
(A new screen opens, in which the choice should be made between templates, one for debtors with BTW and one without)
3. On the tab Addresses, fill in: 
    - Deb. number
    - Find
    - Company name

<img src="manual sales\.media\picture4.png" />
&nbsp;

1. Navigate tot the tab 'Internet' and fill in the following things:
    - Go to internet acces-> check "This client has access by means of Internet' on
    - Check the 'This customer may log into Florisoft' on
    - Password for customer


<img src="manual sales\.media\picture5.png" />
&nbsp;

1. To authorise the stock, go to 'Accessible stocks'

<img src="manual sales\.media\picture6.png" />
&nbsp;

1. To authorise a debtor for a stock, put a checkmark in the columns:
    - A - Entry -(toegang)
    - T - Telesales, webshop access -(televerkoop, webshop toegang)

<img src="manual sales\.media\picture7.png" />
&nbsp;

## 3.3 System user

Follow the steps below to set up the system user:

1. Go to the Constants -> System -> Users -> System users
2. Select a system user
3. At 'Seller' you connect the seller you have just created

<img src="manual sales\.media\picture8.png" />
&nbsp;

&nbsp;

# 4. Sales functionality Webshop

Navigate to the webshop and log in with the **<u>System user</u>**. This is connected to a seller, which is in turn connected to the debtor.

After logging in, click on the op right, above the username and choose 'Sales'.

<img src="manual sales\.media\picture9.png" />
&nbsp;

If everything has been set up correctly it should look like this:

<img src="manual sales\.media\picture10.png" />
&nbsp;

(The picture above is just an example and could variate on other machines)

# 5 FAQ

Question: I created an offer for a customer but I can't open it.

Answer: Check whether the customer in question has access to the Webshop (Organs -> Debtors -> Check "This customer has access via the internet").