<img src="../../fslogo.png"/>

# **Florisoft manual Commissionair**

##  Preface

Welcome to the Florisoft Commissionair manual for the PDA. This guide is
designed to teach the users how to use the Commissionair module on a PDA.
After reading the guide, the user is able to successfully use the Commissionair module.

This module is used when data from parties has to be exchanged between
customer and the commission agent using EKT-messages. Using the module,
it makes it possible to import and export sold/bought products in
different systems.

If the user experiences any difficulties with the Commissionair module at
any time, or if the current manual does not cover the desired
functionalities, please contact support.


## 1 Sending invoice parties via EKT

This chapter describes the steps needed to be able to send discounts
using the Florisoft application. Doing this will require the Commission
module. This module enables the user to send sold parties to the
customer system. To use the module, follow the steps below.

First, open up the Constants Community Debtors and select a debtor.
<img src=".Commissionair Manual - ENG\media\image2.jpeg" style="width:6.3in;height:2.83958in" />

Double click the selected debtor to open up the properties. Select “EKT”
to open up the setting regarding the EKT messages. Now there are 3
parameters that have to be set in order for the Commission module to
work.
<img src=".Commissionair Manual - ENG\media\image3.png" style="width:6.3in;height:4.26458in" />


First, enter the e-mail address(no.1) on which the customer will be
receiving the EKT messages.

Second, enter an auction code (no.2). This auction code must be
coordinated with the customer and is intended to distinguish the
different auctions from each other in the EKT message.

Third, you can select “Send deliveries through email” (no.3). This
setting ensures that the debtor is e-mailed when EKT-messages are sent
automatically via the timer.

<img src=".Commissionair Manual - ENG\media\image4.png" style="width:6.3in;height:5.47014in" />

##### **!!The setting “send deliveries through email” should only be checked while automatically sending EKT-messages via the timer (see chapter 4) !!**

## 2 Manually send selected parties via EKT

You can also manually send EKT-messages using “Invoices”.

Select “Invoices” in the Navigator double click the relevant invoice. The
“Modify Invoice” screen will show.
<img src=".Commissionair Manual - ENG\media\image5.png" style="width:6.3in;height:2.07708in" /> 

Select the products on the invoice that will be included in the EKT-message by pressing space. The selected products will turn yellow. Once you’ve made a selection, press “EKT selection”.
<img src=".Commissionair Manual - ENG\media\image6.png" style="width:6.05069in;height:5.08542in" /> 

Once pressed, a progress indicator appears where after it finishes a
message will appear with confirmation of the amount of messages send.

<img src=".Commissionair Manual - ENG\media\image7.png" style="width:5.69871in;height:1.0939in" />

When an invoice is sent partially or in its entirety, it receives a browns background color in the “Maintenance Invoice” window.

<img src=".Commissionair Manual - ENG\media\image8.png" style="width:6.3in;height:1.72639in" /> 

## 3 Invoice shipping options from invoice summary

In addition to manually sending items on an invoice, Florisoft also
offers a number of possibilities to send items with specific properties.
These properties are as follows:

-   Send New transactions: send all transactions (items) which have been added to the invoice after the last shipment.

-   Send all transactions today: send all transactions (items) that ended up on the invoice today.

-   Send all transaction Invoice: send all transactions (all items) on the invoice.

These settings can be found in “Maintenance Invoices” -> “Internet”.
<img src=".Commissionair Manual - ENG\media\image9.png" style="width:6.3in;height:2.37361in" /> 

Also for these three options, the invoice gets a brown background color.

## 4 Send EKT-messages automatically using a timer

In addition to the manual option to send EKT-messages, Florisoft also
offers the possibility to automatically send messages using a timer.
Setting the timer consists of 2 steps. The first step is to configure
the timer settings. The second is to activate the timer.

#### **Configure Timer-settings**

Execute the steps to configure the timer settings:

1.  In the Navigator, right click the stopwatch and select “Timer
    settings”.

<img src=".Commissionair Manual - ENG\media\image10.png" style="width:2.78164in;height:1.65648in" />

2.  In the “Timer settings” window, search for the “Send EKT” feature. In
    the right part of this window, the corresponding setting can be
    adjusted.

<img src=".Commissionair Manual - ENG\media\image11.png" style="width:6.3in;height:4.20903in" />

1: Choose a user to which the selected setting apply.

2: Date and time display of the last run of this timer.

3: On the Timetable (Tijdschema), the time settings for the timer can
 be adjusted.

4: This option determines whether the options set here are activated.

5: Choose the days, start and end time (hours:minutes) and the interval
settings on which the timer must rotate.

6: Button to run the timer with the settings above once.

7: Confirm the entered settings.

#### **Activate Timer**

After setting the timer, it must be activated. To do this, do the
following:

1.  In the Navigator, click the stopwatch icon.
<img src=".Commissionair Manual - ENG\media\image12.png" style="width:0.76042in;height:0.64583in" />

2.  The tab “Florisoft.NET Timer” will open. This shows a list of all active timers.
<img src=".Commissionair Manual - ENG\media\image13.png" style="width:6.3in;height:3.90694in" />

3.  Because timers are running continuously, it is important to reset all
    timer. To do this, click the “Cancel” or “Annuleren” button and
    restart the timer by clicking the stopwatch icon in the navigator.

##### **!! In order for the EKT timer to work, the setting “Send deliveries through email” must be activated in the constants (Constants->Community->Debtors). Then, per debtor on the EKT tab, activate this setting for which you automatically want to send EKT’s. !!** 
