<img src="../../fslogo.png">

# Florisoft Manual Direct Debit (M29)

This manual will explain how you can send a Direct Debit (SEPA) message to your customers.

Chapter 1 will cover the set up process that is done by the debtor and yourself. Chapter 2 provides examples of a Business-2-Business form that Florisoft is able to product.

**Due to Florisoft being continuously updated some screen might have changed and might thus the manuals images may differ from what is seen on your screen.**

## Table of contents

[Table of contents](#table-of-contents)  
[Entering direct debit data](#entering-direct-debit-incasso-data)  
[Sending invoices](#sending-invoices)  
[Creating new payments & Cancellations](#creating-a-new-payment--cancellation)  
[Viewing invoices](#viewing-invoices)  
[Business-2-Business forms](#business-2-business-forms)


## Entering Direct Debit (Incasso) data

First we'll need to enter our own company's data correctly into Florisoft. Follow the steps below to do this:

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen and navigate to the following path (in the file structure on the left):<br> '*Financial*' → '*Financial administration*'.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image1.png"></details>|
|**2**|Left click twice on the table row with your own company name.|
|**3**|In the just opened screen navigate to the folder called '*Debit*'.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image3.png"></details>|
|**4**|Enter the required data and save it by clicking on the '**Ok**' button, confirm it by clicking yes on the confirmation prompt.|
|**5**|In the constants screen you should navigate to the following path:<br> '*Community*' → '*Debtor data*' → '*Debtor*'.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image4.png"></details>|
|**6**| You'll now see the debtors in the table on the right side of the screen. Click twice on the concerning debtor in the table.|
|**7**|In the debtor screen you'll need to navigate to: <br> *Financial* → *Bank details*.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image5.png"></details>|
|**8**|In the debtor settings screen you will need to enter data in the following fields: <br>- IBAN nr. <br>- IBAN bank name <br>- BIC/SWIFT code<br>- SEPA authorization ID|
|**9**|Check the following checkboxes: <br>- payment <br>- Required (**Optional**: this option makes it so that the customer **has** to pay).|
|**10**|If you don't want to collect on all invoices immediately but want to for example collect after 14 days after invoice date. You'll need to set this up in the field '*To urge*' after enabling the checkbox called '*After*'.This makes it so that open posts will have a experation date 14 days after the invoice date.|
|**11**| Stay in the debtor setting screen and navigate to the following path:<br>*Invoices* → *Print*.|
|**12**|Check if the correct invoice layout has been selected for your usecase.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image6.png"></details>|
|**13**|Again stay in the debtor setting screen and go to the path: '*Financial*' → '*General*'|
|**14**|Also check if the financial debtor number is unique for the debtor. This is a unique identifier for a payment authorization so it **has** to be unique!.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image7.png"></details>|
|**15**|Select the right payment condition in the '*Payment conditions*' dropdown, if there is no right payment condition for your situation. You can also make your own.<br><br>The image below shows a good example of payment conditions in a system.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image13.png"></details>|

## Sending invoice(s)

|Step|Explanation|
|:--|:--|
|**1**|Open the Florisoft navigator and click on the '*Debtors*' button with the right mouse button.|
|**2**|In the option dialog that just appeared click on the option '*Generate Incasso File*'.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image8.png"></details>|
|**3**|This will open the screen '*Generate cashing assignment*' in this screen click on the button '*test*'. You should receive a text file in which you can check if everything is correctly set. The text file is to be found on the indicated path on the screen..<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image9.png"></details>|
|**3.a**|If the test has failed, you can change the incasso settings using the debtor.|
|**4**|If the corrections are made go back to the '*Generate cashing assignment*'. You should also be able to immediately press the **Ok** button..|

## Creating a new payment ~ Cancellation

On the bank account that has been debited from, you will see the reversal/cancellation after a few days.

|Step|Explanation|
|:--|:--|
|**1**|In the Florisoft navigator click on the '*Debtor*' button, this will open the debtor screen.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image10.png"></details>|
|**2**|Select the concerning debtor and and bankaccountnumber.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image11.png"></details>|
|**3**|This will open a new screen which you'll use to create a new payment.|
|**4**|Fill in the textfield '*Paid amount*' with the canccelled/reversed amount prefixed with a minus sign (**-**).|
|**5**|Fill in the field '*Means of payment*' with the letter s to indicate the payment to be a cancellation.<br>This should reopen the concerning invoice.|


## Viewing invoices

To view invoices made by a debtor follow the steps below:

|Step|Explanation|
|:--|:--|
|**1**|Open the Florisoft Navigator screen, in the navigator screen you'll click on the '*Debtor*' button.|
|**2**|This opens the debtor screen, select a debtor from the tabel.<br> By selecting a debtor its invoices will be shown in the table in the table below.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media/image12.png"></details>|

## Business-2-Business forms

To send invoices a Business-2-Business form is used. This form is often made by our customers internally. To give an idea of what they look like and what components need to be in this form, the image below shows what Florisoft uses as an example.

<details><summary><b>Klik hier voor uw voorbeeld B2B formulier</b></summary><img src=".Handleiding Incasso/media/image15.png"></details>