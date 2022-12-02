<img src="../../fslogo.png">

# Florisoft Manual EKT Sending (M16)
  
Welcome to the Florisoft EKT Sending manual for the PDA. This module is used when data from parties has to be exchanged between customer and the commission agent using EKT-messages. Using the module, it makes it possible to import and export sold/bought products in
different systems.

**Screenshots used in this manual might differ from what you'll see on your screen. This is due to Florisoft being updated continually, do however note that the core process will remain the same.**


## Table of contents

[Table of contents](#table-of-contents)
[Sending invoice lines using EKT](#1-sending-invoice-lines-using-ekt)  
[Manually sending selected lines using EKT](#11-manually-sending-selected-lines-using-ekt)  
[Send options for invoices in the invoice maintanence screen](#12-send-options-for-invoices-in-the-invoice-maintanence-screen)  
[Sending EKT messages automatically using the timer](#13-sending-ekt-messages-automatically-using-the-timer)  
[Configure the Timer settings](#configure-the-timer-settings)  
[Activating the timer](#activating-the-timer)


## 1 Sending invoice lines using EKT

This chapter describes the steps needed to be able to send discounts
using the Florisoft application. Doing this will require the Commission
module. This module enables the user to send sold parties to the
customer system. To use the module, follow the steps below.

|Step|Explanation|
|:--|:--|
|**1.**|Open the constants screen and navigate to:<br> *Community*(#1) → *Debtor data*(#2) → (*debtors*)(#4) → select the concerning debtor in the table.|
|**2.**|In the debtor settings screen click on the folder '*EKT*'.|
|**3.**|Change the following settings:<br>**1.** **Send deliveries through email**: *This setting makes it so that the debtor gets mailed by sending an automatic EKT message using the timer.* <br> **2.** **E-mail address**: *The mail address is the the e-mail address on which the customer will receive its EKT messages.* <br> **3.** **Optioneel afwijkende veilingcode in EKT**: *this code needs to communicated with the customer and is meant distinguish the seperate auctions in the EKT message.*<details><summary><b>Click here to show the example image<b></summary><img src=".Commissionair Manual - ENG\media\image1.png" style="width:6.3in;height:4.26458in" /></details>|  
|**4.**|**Important to note: the setting '*Send deliveries through email*' ONLY needs to be enabled when sending EKT messages automatically using the timer.(see chapter  1.3).**|



## 1.1 Manually sending selected lines using EKT

Sending EKT messages manually is done from the *Invoices* screen. 

|Step|Explanation|
|:--|:--|
|**1.**|Open the navigator and click on the '*Invoices*' button(#1).|
|**2.**|Search the invoice screen for the concerning invoice, now left click the invoice twice this opens the invoice edit screen.|
|**3.**|Select the right products on the invoice using the spacebar.|
|**4.**|Now click on the button '*EKT Selection*'(#1)<details><summary><b>Click here to show the example image<b></summary><img src=".Commissionair Manual - ENG\media\image2.png" style="width:6.3in;height:4.26458in"></details>|
|**5.**|If your EKT message contains many products you'll see a progressbar and a send confirmation afterwards with the amount of products sent. The progressbar might not appear with a small number of products.<details><summary><b>Click here to show the example image<b></summary><img src=".Commissionair Manual - ENG\media\image7.png"></details> |
|**6.**|When an invoice is sent whole or partially it will get a brown background colour in the '*Invoice management*' screen.|


## 1.2 Send options for invoices in the invoice maintanence screen

Aside from manually sending articles on a invoice Florisoft also offers methods for sending products with specific properties. The properties are listed below:

|Delivery option|Explanation|
|:--|:--|
|**Send new transactions:**|*send all transactions (articles) that were added to the invoice after delivery*|
|**Send all transactions today:**|*send all transactions that were added onto the invoice today.*|
|**Send all transactions invoice:**|*send all transactions (articles) that are on the invoice*|

These settings are to be found in the invoice maintanence screen (invoice button), under the tab called *Internet*.

|Step|Explanation|
|:--|:--|
|**1.**|Click on the '*Invoices*' button on the navigator this opens the '*Invoices maintanence*' screen.|
|**2.**|Click on the '*Internet*' tab on the bar, this will open a dropdown with the tree afore mentioned properties.<details><summary><b>Click here to show the example image<b></summary><img src=".Commissionair Manual - ENG\media\image14.png" style="width:6.3in;height:4.26458in" /></details>|
|**3.**|These three properties will also cause the invoice to have a brown background colour.|

## 1.3 Sending EKT messages automatically using the timer

Aside from the manual option Florisoft also offers a method to automatically send messages using the timer. Setting up the timer consists of two steps. The first step is to configure the timer settings the second step is to activate timer.

### Configure the Timer settings

Follow the steps below to configure the timer settings:

|Step|Explanation|
|:--|:--|
|**1.**|Open the Florisoft navigator and right mouse click on the timer icon. You'll now see a small option screen click on the '*Timer settings*'.<details><summary><b>Click here to show the example image<b></summary><img src=".Commissionair Manual - ENG\media\image10.png"/></details>|
|**2.**|This opens the '*Timer Settings*' search the left table for the setting '*ZEND EKT*' check the checkbox. The right part of the screen allows you to change the settings.|
|**3.**|In het rechterdeel van het scherm zijn de volgende acties mogelijk:<br>**1.** Kies een gebruiker waarop de geselecteerde instellingen van toepassing zijn. **Selecteer hier '*TIMER*'**<br>**2.** Datum en tijdsweergave van de laatste run van deze timer.<br>**3.** Deze optie bepaalt of de hier ingestelde opties geactiveerd worden.<br>**4.** Choose the days and the begin and end time (hours:minutes), and the interval on which the timer will run.<br>**5.** Button to let the timer exectute the settings below just once.<br>**6.** Confirm the changed settings.|


### Activating the timer

After changes the timer setting it needs to be activated to do this follow the steps below:

|Step|Explanation|
|:--|:--|
|**1.**|Left click on the navigator screen's stopwatch icon.<details><summary><b>Click here to show the example image<b></summary><img src=".Commissionair Manual - ENG\media\image12.png"></details>|
|**2.**|The Florisoft application opens the Timer window, it shows a list of all active users that working in Florisoft at the moment.<details><summary><b>Click here to show the example image<b></summary><img src=".Commissionair Manual - ENG\media\image13.png" style="width:6.3in;height:4.26458in" /></details>|
|**3.**|**Omdat timers continu doorlopen is het belangrijk om alle timers te resetten. Klik hiervoor op de knop “Annuleren” en start de timers opnieuw door met delinkermuisknop op het stopwatch-icoon in de Navigator te klikken.**|