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

# Set Google Tag manager
