<img src="../../fslogo.png"/>

# Florishop manual analysis

# Index

[1 Introduction](#introduction)

[2 Set up Google Analytics](#set-up-google-analytics)

[3 Set up Google Tag Manager](#set-up-google-tag-manager)

[4 Change webshop settings](#change-webshop-settings)

[5 Practical operation add-on Analysis](#practical-operation add-on-analysis)

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


 FOTO NODIG

Now you are asked to create a new account within Google
analytics. The webshop is linked to this account. In this way
Google Analytics is able to monitor the webshop within this account.

> It is possible to monitor multiple web applications within one
> Google Analytics environment. Each application is linked to a
> own account.

1. Under 'What would you like to keep track of?', choose website. (no. 2)

2. Enter a name for the account to be created at 'Account name'.
     (no. 3) This can be any name. It is recommended that a clear
     think of a name that is related to the webshop, so that it is clear
     is that this account is used in relation to the webshop.

FOTO NODIG

1. Enter the name of the web application at 'Website name'. (no. 4) Also
     this name is up to the user to come up with. It is recommended to use a
     choose a clear name that is related to the webshop.

2. Enter the address of the webshop at 'URL of website', without
     /florishop. For example: <http://www.domainname.nl> (no. 5) On the
     The place of domain name will then be the domain name on which the webshop is hosted
     is becoming.

3. Under 'Industry organisation', select 'Companies and industry' (no. 6)

4. At 'Time zone for reporting' (no. 7) choose the country where the
     web application is used. Choose the Netherlands with time zone
     (GMT+02:00) Amsterdam for a Dutch webshop.

5. Leave all the checks on in the screenshot below.

FOTO NODIG

FOTO NODIG

1. Click on the 'Get Tracking ID' button (no. 8) to retrieve the unique ID (code) for this Google Analytics account.

Now a window with terms of service will eappear. This looks likt this:
1. At no. 9 choose the country in which Google Analytics is used.
2. Check No. 10 and 11 to accept the terms of service.

foto nodig

1. Click on the "I agree" button (No. 12) to continue. Read more on the next page.
The management environment of Google Analytics appears. Close any welcome messages to be able to work in the administration environment.

In the screenshot below, the Tracking ID is circled in purple. A tracking ID acts as a kind of key that is used to link the web application (webshop) to Google Analytics.

Note: copy and paste the Tracking ID into a text file (notepad) or write it down. It is important to remember this Tracking ID.

4x foto

The message 'Success' will appear at the top of the screen

The last step within Google Analytics is to set the correct currency. Follow the steps as described below to set the currency correctly.

1. Click on the gear (no. 18) at the bottom left of the screen of the management environment to open the settings.

foto

- In the 'Display' column click on 'Data Display settings' (no. 19)

foto

The message 'Success' will appear at the top of the screen

# 3 Set Google Tag manager

In addition to setting up Google Analytics, Google Tag Manager
to be configured. Like Analytics, Google Tag Manager is a
free to use software product from google. Tag manager becomes
used to schedule predetermined events within the web shop
capture and then forward it to Google Analytics.

foto nodig 3x

Below are the steps to properly set up Google Tag Manager:
1. In Google, search for Google Tag Manager
2. Log into Google Tag Manager with the same account that we have used before in this manual.
     Google Analytics (nr. 1)

foto nodig

The starting page of Tag Manager appears:

1. Click on the link 'Click here to create account' in the middle of the screen.

foto nodig

The screen 'Add account' appears. 

1. 1. Enter any name for the account at 'Account name' (no.3)
     account to be created. It is recommended to choose a clear name
     in relation to the webshop, so that it is easy to recognize.

Foto nodig

1. At 'Country' (no. 4), select the country where the webshop runs. In
     this example is the Netherlands selected.

2. Click on the 'Continue' button. (no. 5) Step 2 Set up 'Container'
     becomes active. See the screenshot below.

3. Enter the URL of the webshop at 'Container name' (no. 6). (without
     /Florishop) For example:
     [www.domainname.nl](http://www.domainname.nl), where the domain name
     should be replaced by your own domain name.

foto nodig

1. At 'Where is the container used', choose 'Internet' (no. 7).

2. Click on the 'CREATE' button. (no. 8)

3. Accept the Google Tag Manager Service Agreement by
     checkmark 'I also agree to the data processing conditions
     as required by the GDPR.”

Foto nodig

1. Click on the 'YES' button in the top right corner of the screen.

foto nodig

The 'Install Google Tag Manager' window appears

foto nodig

Click the 'OK' button to continue. The management environment of Tag Manager
opens. See next page.

1. In the Tag Manager management environment, click on 'A NEW TAG'
     TO ADD'. (no. 9)


foto nodig

The window to create a new tag appears. See screenshot below.

1. Enter the name for the new tag at no. 10. Page view is a
     appropriate name for this tag. Another name is also allowed.

foto nodig

1. Click on the 'Choose a tag type to start setup' link.
     (no. 11)

Foto nodig

The “Choose Tag Type” window appears on the right side of the
screen.

1. Select the option 'Google Analytics – Universal Analytics'.
     (no. 12)

foto nodig

The 'Tag Configuration' window opens. See screenshot below.

1. At 'Tracking type', choose the option 'Page view'. (no. 13)

2. At 'Google Analytics settings', choose the option 'New variable' (no. 15)

foto nodig

The "Variable Configuration" window appears

1. Give the variable any name. (no. 16) It is recommended to choose a clear name, so that the variable can be traced to the Florisoft webshop.

foto nodig

The "Variable Configuration" window appears

1. Give the variable any name. (no. 16) It is recommended to choose a clear name, so that the variable can be traced to the Florisoft webshop.

foto nodig

In the "Variable configuration" window, set the following information.

1. Enter Google's tracking ID in the "Tracking ID" field (No. 17 Analytics. This is the ID from step thirteen of chapter two

foto nodig

1. Click on 'More settings' (no. 18), E-commerce (no. 19)

2. Check the "Enable Optimized Ecommerce Features" (No. 20) and 'Use data layer'. (no. 21)

3. Click the 'SAVE' button in the top right corner of the screen. (no. 22)

foto nodig

The "Google Analytics Settings" field in the "Tag Configuration" window looks like this:

foto nodig

1. Click on 'Choose a trigger to activate this tag' (no. 23) to select a trigger to associate with this tag. The window a 'A trigger' opens'.

foto nodig

1. Click on 'All Pages' (no. 24) to view all pages of the webshop associate with this tag. Under 'Triggers', 'All pages' is now displayed.

foto nodig

1.  Klik op de knop ‘OPSLAAN’ (nr. 25) in de rechterbovenhoek van het scherm.

foto nodig

Now that one tag with an associated trigger has been created. To the Analytics module to work properly there needs to be a second tag with a linked trigger are created. This tag and trigger have something settings other than the first tag.

1. Perform step 12.

2. Give the tag a meaningful name, as described in step 13.

3. Perform steps 14 to 16. Now choose at 'Tracking type' for the option 'Event'. (no. 26) Fill in the 'Tag configuration' window the following information:

foto nodig

1. In the 'Category' field, enter the value 'Ecommerce' (without
     quotation marks). (no. 27)

2. In the 'Action' field, enter the value {{Event}} (including braces)
     in. (no. 28)

3. In the 'Label' field, enter the value {{Page URL}} (including braces)
     in. (no. 29)

4. Under 'Google Analytics Settings', choose the name of the variable
     created in step 18. (no. 30) Note that this value is also
     enclosed in double braces, as in the screenshot on the previous one
     page.

Now create a trigger for the second tag. This works like this:

1. Perform step 23. The "Choose a trigger" window appears.

2. Now click on the plus icon in the top right corner of the screen. (no. 31)

foto nodig

1. Give the new trigger a meaningful name. (no. 32)
foto nodig

1. Click on 'Choose a trigger to start the setup...' (no. 33) The
     'Choose trigger' window opens on the right side of the screen.

foto nodig

1. Select 'Custom event' (no. 34) under 'Other.' This option is at the bottom of the "Choose trigger" window.

foto nodig

Complete the following in the 'Trigger Configuration' window. 
1. Fill the 'Event Name' field (#35) with the following value: addToCart|removeFromCart|transaction

foto nodig

1. Check the box 'Use matching regular expression' (no. 36).

2. Click on the 'SAVE' button (no. 37) at the top right of the screen.

foto nodig

1. Click again on the 'SAVE' button at the top right of the screen of the 'Tag Configuration' window to save the second tag.

In the top right corner of the Tag Manager admin environment is a
second ID visible. This ID is required to link the webshop to the
Tag Manager.

foto nodig

> **Note: remember the above ID. This is necessary to register the webshop
> Tag Manager to connect.**

1. Click on the 'SEND' button to confirm all changes. The "Send Changes" window opens.

2. Select 'Publish and create version' (no. 39)

3. Enter a descriptive name for . in the 'Version name' field (no. 40) this publication.

4. **Optional:** fill in the field 'Version description' (no. 41) what more detailed information regarding this publication.

foto nodig

1. Click on the 'PUBLISH' button in the top right corner of the screen 'Send changes'. (no. 42)

foto nodig

A summary of the publication appears. Tag Manager can now be closed.

# 4 Change webhop settings

In addition to the settings in Google Analytics and Tag Manager, there must be a
number of settings in the webshop can be adjusted.

1. Log in to the webshop with a management account and activate the Management environment by ticking the box for 'Management'. (no. 1)

foto nodig

1. Click on the menu 'Configuration' (no. 4)

The webshop settings open in a new tab.

1. 1. In the Item field, search for 'GTMID' (No. 5)

foto

1. Click on item GTMID (no. 6) The 'Change setting' window opens.

foto

1. Enter the second ID from Tag Manager in the 'Value' field. This one is too to be found after step after step 41 in chapter three.

2. Enter the management password of the webshop in the 'Password' field.

3. Click on the 'Save' button to save the changes.

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

foto

Example of number of conversions (transactions) in the last 7 days.
This can be adjusted by clicking on 'Last 7 days' and another time frame to choose.

The chart can be adjusted by clicking on tabs
'Users', 'Revenue', 'Conversion rate' and 'Sessions'.

Another overview is the table of best-selling products. This gives
an overview of the best-selling products via the webshop. By
clicking on 'E-COMMERCE REVIEW' will show a more detailed view shown of the products sold.

foto

Detailed overview of the sold products

foto

On the left side of the dashboard you will find the menu for more open detailed views. To do this, click on the 'CONVERSIONS' menu and
click on 'E-commerce' to see various e-commerce related pages to open.

foto

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