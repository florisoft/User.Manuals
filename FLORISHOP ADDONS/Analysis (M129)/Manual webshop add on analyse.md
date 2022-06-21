<img src="../../fslogo.png"/>

# Florishop manual analysis

# Index

[1 Introduction](#introduction)

[2 Set up Google Analytics](#set-up-google-analytics)

[3 Set up Google Tag Manager](#set-up-google-tag-manager)

[4 Change webshop settings](#change-webshop-settings)

[5 Practical operation add-on Analysis](#practical-operation-add-on-analysis)

[6 Other webshop add-ons](#other-webshop-add-ons)

# 1 Introduction

Welcome to the Florishop Analsye manual. The add on Analysis gives
users, especially administrators and commercial employees, understand
the behavior of customers on the webshop.

The add-on works together with Google Analytics and Google Tag Manager. This
are two free-to-use services from Google to provide information about a
to provide insight into the web application with the help of graphs,
line charts and other statistical elements. These elements become
jointly displayed on a dashboard, so that all relevant
information is clearly displayed on one screen.

The dashboard can then be set up completely according to your own insight.
In addition, Google Analytics also offers the possibility to
to show detailed views about the sales via the webshop.

Chapter two describes how to create and set up Google
analytics. This is the software used for displaying
information in the form of graphs, bar charts, tables, etc.

Chapter three describes how Google Tag Manager works. The
Tag Manager is background software that performs various activities
on the webshop and forwards it to Google Analytics.

In the following, chapter four describes the linking of Google Analytics to
the webshop, so that it can forward data to the Tag Manager and
analytics.

Finally, chapter five provides an overview of the other
add us. In addition to the Analysis add on, the webshop offers even more interesting
extensions. For each add-on is briefly described what this
in terms of function.

The purpose of this manual is that the user himself installs the add on Analysis
can set up and use.

**Note: Illustrations in this manual may vary slightly
of what you see on your own screen.**

**Google Analytics may collect privacy sensitive information
of web shop users. This should be in accordance with the
applicable AVG legislation or to be included in the delivery conditions
from the customer. For this, the customer of Florisoft itself
responsible.**

**Florisoft is in no way liable for any damage that
arises from unlawful use of privacy-sensitive information
from customers.**

# 2 Set up Google Analytics

The first step when using the Analysis add on is to set it up
from Google Analytics. This requires a number of steps. This one
are described below.

**Note: only create a Google Account if you haven't yet
consists. If a Google account is already available, it can be
being used. It is recommended to use business and private accounts
to keep separate.**

1. Search Google for 'Google Analytics' and login or create a new one
     Google Account on. After logging in to Google Analytics for the first time
     a welcome screen appears.

2. Click on the 'Sign Up' button. (no. 1) The 'New Account' window
     appears. See next page.

<img src=".manual analyse\media\pic1.png"/>


Now you are asked to create a new account within Google
analytics. The webshop is linked to this account. In this way
Google Analytics is able to monitor the webshop within this account.

> It is possible to monitor multiple web applications within one
> Google Analytics environment. Each application is linked to a
> own account.

1. Enter a name for the account to be created at 'Account name'. This can be any name. It is recommended that a clear think of a name that is related to the webshop, so that it is clear is that this account is used in relation to the webshop.

<img src=".manual analyse\media\pic2.png"/>
(the checkmarks should all be turned on)

<img src=".manual analyse\media\pic3.png"/>

**Make sure the correct currency is set!**

<img src=".manual analyse\media\pic4.png"/>
(The category is in this case: Business & industrial)
(The checkmarks can be configured to the user's own preference)

1. Enter the name of the web application at 'Website name'.  Also this name is up to the user to come up with. It is recommended to use a
     choose a clear name that is related to the webshop.

2. Enter the address of the webshop at 'URL of website', without
     /florishop. For example: <http://www.domainname.nl>  On the
     The place of domain name will then be the domain name on which the webshop is hosted
     is becoming.

3. Under 'Industry organisation', select 'Companies and industry' 

4. At 'Time zone for reporting' choose the country where the web application is used. Choose the Netherlands with time zone (GMT+02:00) Amsterdam for a Dutch webshop.
 
 
 
 
 
 
 
     Click on the Settings wheel -> Account settings and you will find the Account ID, save this code.
<img src=".manual analyse\media\pic5.png"/>


Now a window with terms of service will appear.
1. Choose the country in which Google Analytics is used.
2. Read this and click on agree.


# 3 Set Google Tag manager

In addition to setting up Google Analytics, Google Tag Manager
to be configured. Like Analytics, Google Tag Manager is a
free to use software product from google. Tag manager becomes
used to schedule predetermined events within the web shop
capture and then forward it to Google Analytics.


Below are the steps to properly set up Google Tag Manager:
1. In Google, search for Google Tag Manager
2. Log into Google Tag Manager with the same account that we have used before in this manual.  Google Analytics.

The starting page of Tag Manager appears:

1. Click on the link 'Click here to create account' in the middle of the screen.

<img src=".manual analyse\media\pic6.png"/>


The screen 'Add a new account' appears. 

<img src=".manual analyse\media\pic7.png"/>

1. Enter any name for the account at 'Account name' (no.1) account to be created. It is recommended to choose a clear name in relation to the webshop, so that it is easy to recognize.



1. At 'Country' (no. 2), select the country where the webshop runs. In this example is the Netherlands selected.

2.  Step 2 "Container Setup-> See the screenshot above

3. Enter the URL of the webshop at 'Container name' (no. 3). (without /Florishop) For example:  [www.domainname.nl](http://www.domainname.nl), where the container name should be replaced by your own domain name.


4. At 'Target platform', choose 'Internet' (no. 4).

5. Click on the 'CREATE' button. (no. 5)

6. Accept the Google Tag Manager Service Agreement by checkmark 'I also agree to the data processing conditions as required by the GDPR.”

7. Click on the 'YES' button in the top right corner of the screen.


The 'Install Google Tag Manager' window appears

Click the 'OK' button to continue. The management environment of Tag Manager
opens. See next page.

1. In the Tag Manager management environment, click on 'A NEW TAG (no. 1)'.
<img src=".manual analyse\media\pic8.png"/>

The window to create a new tag appears. See screenshot below.

1. Enter the name for the new tag at no. 1. Page view is a appropriate name for this tag. Another name is also allowed.

<img src=".manual analyse\media\pic9.png"/>

1. Click on the 'Choose a tag type to start setup' link. (no. 2)


The “Choose Tag Type” window appears on the right side of the
screen.

1. Select the option 'Google Analytics – Universal Analytics'. (no. 1)

<img src=".manual analyse\media\pic10.png"/>


1. At 'Tracking type', choose the option 'Page view'. (no. 2)

2. At 'Google Analytics settings', choose the option 'New variable' (no. 3)

The "Variable Configuration" window appears

1. Give the variable any name. It is recommended to choose a clear name, so that the variable can be traced to the Florisoft webshop. See the screenshot below. (no. 1)


In the "Variable configuration" window, set the following information.

1. Enter Google's tracking ID in the "Tracking ID" field (No. 2) Analytics. This is the ID which had to be stored in an earlier step in chapter 2. It should look like this: (UA-XXXXX-X)

2. Click on 'More settings' (no. 3) -> E-commerce (no. 4)

3. Check the "Enable Optimized Ecommerce Features" (No. 5) and 'Use data layer'. (no. 6)

4. Click the 'SAVE' button in the top right corner of the screen. (no. 7)

<img src=".manual analyse\media\pic11.png"/>


After saving this, a pop up will appear: 

<img src=".manual analyse\media\pic12.png"/>


- Click on "Add trigger" and select "all pages". Then click save. The page looks like this:

<img src=".manual analyse\media\pic13.png"/>


Now that one tag with an associated trigger has been created. To the Analytics module to work properly there needs to be a second tag with a linked trigger are created. This tag and trigger have something settings other than the first tag.

1. Again go through the steps to create a tag.

2. Give the tag a meaningful name, just like before.

3. Perform the the following stepsbut, choose at 'Tracking type' for the option 'Event'. Fill in the 'Tag configuration' window the following information:

<img src=".manual analyse\media\pic14.png"/>

1. In the 'Category' field, enter the value 'Ecommerce' (without
     quotation marks). (no. 2)

2. In the 'Action' field, enter the value {{Event}} (including braces)
     in. (no. 3)

3. In the 'Label' field, enter the value {{Page URL}} (including braces)
     in. (no. 4)

4. Under 'Google Analytics Settings', choose the name of the variable
     created earlier. (no. 5) Note that this value is also enclosed in double braces, as in the screenshot on the previous one page.

Now create a trigger for the second tag. This works like this:

1. Scroll further and click on the triggering space, just like before

2. Now click on the plus icon in the top right corner of the screen. 

<img src=".manual analyse\media\pic15.png"/>


1. Give the new trigger a meaningful name

2. Click on 'Choose a trigger to start the setup...' (no. 33) The
     'Choose trigger' window opens on the right side of the screen.


3. Select 'Custom event' under 'Other.' This option is at the bottom of the "Choose trigger" window.

Complete the following in the 'Trigger Configuration' window. 
1. Fill the 'Event Name' field with the following value: addToCart|removeFromCart|transaction


2. Check the box 'Use matching regular expression'.

3. Click on the 'SAVE' button at the top right of the screen.

It should look like this before saving:

<img src=".manual analyse\media\pic16.png"/>

- Click again on the 'SAVE' button at the top right of the screen of the 'Tag Configuration' window to save the second tag.

In the top right corner of the Tag Manager admin environment is a
second ID visible. This ID is required to link the webshop to the
Tag Manager.

<img src=".manual analyse\media\pic17.png"/>


> **Note: remember the above ID. This is necessary to register the webshop
> Tag Manager to connect.**

1. Click on the 'Submit' button to confirm all changes. The "Submit Changes" window opens.

2. Select 'Publish and create version' 

3. Enter a descriptive name for . in the 'Version name' field  this publication.

4. **Optional:** fill in the field 'Version description' what more detailed information regarding this publication.


1. Click on the 'PUBLISH' button in the top right corner of the screen to "Submit changes'.

A summary of the publication appears. Tag Manager can now be closed.

# 4 Change webhop settings

In addition to the settings in Google Analytics and Tag Manager, there must be a
number of settings in the webshop can be adjusted.

1. Log in to the webshop with a management account and activate the Management environment. (Done by clicking on admin florishop and then on 'management')

<img src=".manual analyse\media\pic18.png"/>

- Click on the menu 'Configuration'

<img src=".manual analyse\media\pic19.png"/>

The webshop settings open in a new tab.

-  In the Item field, search for 'GTMID'

- Click on item GTMID The 'Change setting' window opens.

<img src=".manual analyse\media\pic20.png"/>

1. Enter the second ID from Tag Manager in the 'Value' field. This one is too to be found after step after step 41 in chapter three.

2. Enter the management password of the webshop in the 'Password' field.

3. Click on the 'Save' button to save the changes.

<img src=".manual analyse\media\pic21.png"/>


These are all the settings needed to make the add-on Analysis.

# 5 Practical operation add on Analysis

Chapters two to four describe a large number of settings
with regard to Google Analytics, Google Tag Manager and the webshop.
When these settings are set correctly, it is possible to
Google Tag Manager to capture a number of actions on the webshop.
A number of examples are described below.

After logging in to Google Analytics, the home page appears. the home
page has the appearance of a dashboard which is at your own discretion
can be adjusted. Below are a few examples.

<img src=".manual analyse\media\pic22.png"/>


Example of number of conversions (transactions) in the last 7 days.
This can be adjusted by clicking on 'Last 7 days' and another time frame to choose.

The chart can be adjusted by clicking on tabs
'Users', 'Revenue', 'Conversion rate' and 'Sessions'.

Another overview is the table of best-selling products. This gives
an overview of the best-selling products via the webshop. By
clicking on 'E-COMMERCE REVIEW' will show a more detailed view shown of the products sold.

<img src=".manual analyse\media\pic23.png"/>

Detailed overview of the sold products

<img src=".manual analyse\media\pic24.png"/>
The above picture is just an empty example.

The picture below is an example of how this could look like.

<img src=".manual analyse\media\pic25.png"/>

On the left side of the dashboard you will find the menu for more open detailed views. To do this, click on the 'Configure' menu and click on 'conversions' to see various related pages open if applicable.

The screenshots above give a global impression of Google Analytics in combination with the webshop.

Google Analytics can be further configured according to your own wishes, so that the
desired information is displayed. This is of course per customer different.

**Do you have specific questions regarding Google Analytics or the to set up this, please contact us by telephone or e-mail
Florisoft.**

**Telephone:** (0)71 40 806 10
**Email:** support@florisoft.nl

# 6 Other webshop add ons

Enthusiastic about the possibilities of the Analysis add-on? The webshop
has even more interesting expansion options in the form of add ons. Below is a brief description of all available add-ons.

**Florishop WhatsApp offers**
With the Florishop add on WhatsApp Offers, users in Florishop have the opportunity to share an interesting offer with a contact or group via WhatsApp.

A whole stock as well as a specific batch can be shared
become. After clicking the WhatsApp button, WhatsApp is started and you can then choose the contact or group with which the stock or the item is shared.

In WhatsApp, a party card is shown in the form of a message with
it contains the article description, a photo and some article characteristics. If you click on the message, the webshop will navigate directly to the concerning stock or article.

**Florishop CMS**
With the launch of the Florishop add on CMS, Florisoft brings your
website and webshop together into one platform. This also allows you to provide customers with company information as well as the option to shop directly in the webshop.
  
The management of this website is housed in an extensive CMS system with online management option.

**Florishop Credit**
The Credit add on within Florishop has been developed to give the user a provide an easy way to credit items to the through a step-by-step process where most of the information is already is available and only needs to be supplemented. Besides being easier for the user, there is also less administrative effort, because the process is completely is processed automatically.

When completing an application, emails will be sent to the
addresses set within Florisoft using a professional looking layout.

The credit requests are visible in . after completing the request
the approval screen within Florisoft and can be assessed here.

**Florishop Dashboard (CMS add on is required)**
With the add on Dashboard, Florishop can be used as a valuable source of relevant business critical information. Think
this includes sales figures per unit of time, turnover, number of purchasers
customers on the webshop, canceled purchases, stocks and many other types of information.

In principle, all information in the database can be accessed via different types
views are made available in a dashboard. Think of circle
and bar charts, line graphs, gauges and tables. The dashboard add on is widely used in the workplace to monitor the performance of a certain
process, such as the number of picked orders or packed boxes.

This add-on comes complete with associated hardware. It is a special way to gain insight into the performance of both the company and the behavior of the customer.

**FloriShop App**

The Florishop App add on makes the webshop available as an Android or Apple app that customers can download from the corresponding app stores
from both companies. With this app, the webshop is even closer to your customer: they can buy in their own time, wherever they are.

The app is also an excellent way to build even more brand awareness; the app is published in the Google Play Store and the App Store with the company name and logo. This allows potential customers to download the app from anywhere in the world.

There is also an option to offer the app to customers as a shop in shop principle. Your stock will be visible in the app, but the design and data within the app will be visible under your customer's name with its own logo and login screen.

**Florishop FloriGrow**
The FloriGrow add on provides insight into the income and depreciation of
a nursery within a certain period. With FloriGrow you always have all the information you need at your fingertips.

FloriGrow is a successful software package that has been specially developed
for growers. This professional and easy to use software
gives the company more insight into the state of affairs. Own
servers and various software packages are a thing of the past. FloriGrow completely unburdens you. Do you want to work with other packages? No problem: FloriGrow has excellent export opportunities. FloriGrow supports the following functions:

- Import harvest

- Predicting crop yield

- To sort

- Inventory management

- Customer distributions & order picking

- Sales and pre-orders

- Invoicing, packing list and consolidation

- Electronic product information using EKT

- Policy information

- Turnover and benefit calculation

- Export connections to external software such as accounting

**Florishop Mobile Photo**
The add on Mobile Photo allows you to edit photos manually
linking to products in the webshop, both for stock and
order parties. Sometimes photos from external sources are not displayed correctly
loaded on the web shop. This add-on solves this problem. You can take and link your own photos.

For stock lots, it is also possible to process the photo with the photo studio in Florisoft. This allows you to adjust the dimensions and add watermarks. With the add on Mobile Photo it is even possible to take a photo directly with a smartphone and link it to a product.

**Florishop Payment Gateway**
To complete a webshop, a payment module (payment gateway) can be linked, so that customers can pay outstanding items before making new purchases. The rules can be fully managed from the Florisoft package, for example the maximum credit limit, how old the oldest open post can be or the maximum number of open invoices.

This add-on makes it possible for the customer to create a
make a payment using an external payment provider.
The following providers are in any case supported by this gateway in any case:

- OmniKassa

- SagePay

- Multi safe pay

- Buckaroo

Other providers can also be supported in consultation.

**Florishop Sales**
The Florishop add-on Sales offers account managers the opportunity to optimally use the webshop in collaboration with the customer.
Functionality that was previously only available in Florisoft is now
now also available via the webshop. This produces the following
benefits on:

- The Florishop sales functionality is much more accessible via
    the web shop. (at home, on the road, in the office, device independent,
    no remote desktop connection required)

- The account manager gains more insight into the customer and his
    buying behaviour.

- The account manager can easily make purchases for his customers. The customer can be served better with offers.

This add-on is still under development. Debtor management, bid management, sharing offers via WhatsApp and adjusting prices are already implemented. Over time, this add-on will contain much more functionality. Below is an overview of the features implemented in the add-on:

- Debtor management (consulting, creating and changing debtors)

- Offers (with the following media: email, WhatsApp, MailChimp, push notification on the app)

- Record events

- Timeline (with information about: customer visit, telephone conversation,
    e-mail conversation, login, buying moments, credit applications, it
    setting offers)

- Buy for debtors sub debtors

- Adjust prices

- Transport planning

- Arrange opening hours per stock

- Order processing

**Florishop Shopping List**
With the add on Shopping List you can easily create a 'shopping list' based on recent orders. This feature makes it easier to find and buy products. It is common for customers to have the same order. When customers are used to ordering in this way, this add-on certainly has added value.

When the user logs in for the first time and chooses an inventory, a window with recent orders is displayed. This one
orders can be checked and imported to the
shopping list.

Previous orders can be expanded so that the user can see what kind of products are associated with them. The user can determine exactly which orders should be imported.

**Interested in one or more of these add ons? Do not hesitate to
to contact Florisoft by telephone or e-mail. We stand
open to advice regarding the above add ons and how to fit them into your organization.**

**Telephone:** (0)71 40 806 10
**Email:** sales@florisoft.nl