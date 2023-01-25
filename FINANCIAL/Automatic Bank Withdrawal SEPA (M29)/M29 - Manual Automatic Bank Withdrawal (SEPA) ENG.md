<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Mnaual Automatic Bank Withdrawal (SEPA)

This manual will explain how you can send a Direct Debit (SEPA) message to your customers.

Chapter 1 will cover the set up process that is done by the debtor and yourself. Chapter 2 provides examples of a Business-2-Business form that Florisoft is able to product.

**Due to Florisoft being continuously updated some screen might have changed and might thus the manuals images may differ from what is seen on your screen.**

## Table of contents

[Entering direct debit incasso data](#entering-direct-debit-incasso-data)  
[Creating a new payment cancellation](#creating-a-new-payment--cancellation)  
[Sending invoices](#sending-invoices)  
[Viewing invoices](#viewing-invoices)  
[Business 2 Business forms](#business-2-business-forms)  

## Entering Direct Debit (Incasso) data

*First we will need to enter our own company's data correctly into Florisoft. Follow the steps below to do this:*

|Step|Explanation|
|:-:|:--|
|**1**|Open the constatns screen and navigate to the following path:<Br>**Financial→Financial Administration**<details><summary><b>Click here for the example image!</b></summary><img src=".Handleiding Incasso/media EN/image2.png"></details>|
|**2**|Left click twice on the table row with your own company name.|
|**3**|Click on the '*Debit*' tab.<details><summary><b>Click here for the example image!</b></summary><img src=".Handleiding Incasso/media EN/image3.png"></details>|
|**4**|Fill out the following fields:<br>- **Debit sort**: select SEPA<br>- **SEPA Type**: select the right type for your bank<br>- **Company name**: company name<br>- **IBAN:** IBAN address of the debtor<br>- **BIC/SWIFT**: BIC/SWIFT of your bank<br>- **Creditor ID:** creditor name/ID<br>- **Payee ID**: ID of the payee <details><summary><b>Click here for the example image!</b></summary><img src=".Handleiding Incasso/media EN/image3.png"></details>|
|**5**|Open the constants screen and navigate to the path:<br>**Communinity→Debtor data→Debtors**<details><summary><b>Click here for the example image!</b></summary><img src=".Handleiding Incasso/media EN/image4.png"></details>|
|**6**|Open the concerning debtor.|
|**7**|In the debtor navigate to the path:<br>**Financial→Bank details**<details><summary><b>Click here for the example image!</b></summary><img src=".Handleiding Incasso/media EN/image20.png"></details>|
|**8**|Fill out the following fields:<br>- **Account**: *bank account number*<br>- **IBAN number**: *bank IBAN*<br>- **IBAN Bankname**: Corresponding bank name<br>- **BIC/SWIFT code**: Bank's BIC/SWIFT code<br>- **SEPA Authorization ID**: client's SEPA authorization ID.
|**9**|Check the following checkboxes:<br>- **Cashing client**: enable this<br>- **Required**: customer is **required** to pay.|
|**10**|If you don't want to collect on all invoices immediately but want to for example collect after 14 days after invoice date. You'll need to set this up in the field '*To urge*' after enabling the checkbox called '*After*'.This makes it so that open posts will have a experation date 14 days after the invoice date.|
|**11**| Stay in the debtor setting screen and navigate to the following path:<br>*Invoices* → *Print*.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image6.png"></details>|
|**12**|Check if the correct invoice layout has been selected for your usecase.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image6.png"></details>|
|**13**|Again stay in the debtor setting screen and go to the path: '*Financial*' → '*General*'|
|**14**|Also check if the financial debtor number is unique for the debtor. This is a unique identifier for a payment authorization so it **has** to be unique!.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image7.png"></details>|
|**15**|Select the right payment condition in the '*Payment conditions*' dropdown, if there is no right payment condition for your situation. You can also make your own.<br><br>The image below shows a good example of payment conditions in a system.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image13.png"></details>|

## Sending invoice(s)

|Step|Explanation|
|:--|:--|
|**1**|Open the Florisoft navigator and click on the '*Debtors*' button with the right mouse button.|
|**2**|In the option dialog that just appeared click on the option '*Generate Incasso File*'.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image9.png"></details>|
|**3**|This will open the screen '*Generate cashing assignment*' in this screen click on the button '*test*'. You should receive a text file in which you can check if everything is correctly set. The text file is to be found on the indicated path on the screen.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image8.png"></details>|
|**3.a**|If the test has failed, you can change the incasso settings using the debtor.|
|**4**|If the corrections are made go back to the '*Generate cashing assignment*'. You should also be able to immediately press the **Ok** button.|

## Creating a new payment ~ Cancellation

On the bank account that has been debited from, you will see the reversal/cancellation after a few days.

|Step|Explanation|
|:--|:--|
|**1**|In the Florisoft navigator click on the '*Debtor*' button, this will open the debtor screen.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image11.png"></details>|
|**2**|Select the concerning debtor and and bankaccountnumber.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image14.png"></details>|
|**3**|This will open a new screen which you'll use to create a new payment.|
|**4**|Fill in the textfield '*Paid amount*' with the canccelled/reversed amount prefixed with a minus sign (**-**).|
|**5**|Fill in the field '*Means of payment*' with the letter s to indicate the payment to be a cancellation.<br>This should reopen the concerning invoice.|

## Viewing invoices

To view invoices made by a debtor follow the steps below:

|Step|Explanation|
|:--|:--|
|**1**|Open the Florisoft Navigator screen, in the navigator screen you'll click on the '*Debtor*' button.|
|**2**|This opens the debtor screen, select a debtor from the tabel.<br> By selecting a debtor its invoices will be shown in the table in the table below.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image12.png"></details>|
|**3**|Click on the *Menu* button in the top left of the debtor screen, then click on the *Overviews* button in the resulting dropdown.<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image19.png"></details>|
|**4**|In the summaries list select the "*Payments per period*" option and click on the "*Show in grid*" button.|
|**5**|The table below should update to show data (if that is not the case check if the date filters are set correctly). You can also sort by column values by clicking on a column header like Payment code. |

|Step|Explanation|
|:--|:--|
|**1**|From the contants screen navigate to the following path:<br>**Finacial→Means of Payment**|
|**2**|Create a new payment method by clicking on the + icon.|
|**3**|Fill out the required fields and save the payment method by clicking on the **Ok** button and confirming the creation<details><summary><b>Click here to show the example image</b></summary><img src=".Handleiding Incasso/media EN/image15.png"></details>|

## Business-2-Business forms

To send collections, a Business-2-Business form is also used. Basically, you need to set this up yourself. To give you an idea of what components should be in this form, below is a sample form as Florisoft itself uses it.

Below you will find the download links to the B2B forms that Florisoft uses:

1. [**English version**](https://downgit.github.io/#/home?url=https://github.com/florisoft/User.Manuals/blob/main/FINANCIAL/Automatic%20Bank%20Withdrawal%20SEPA%20(M29)/B2B%20Formulieren/Continuous%20authorization%20Business.docx)

2. [**Dutch version**](https://downgit.github.io/#/home?url=https://github.com/florisoft/User.Manuals/blob/main/FINANCIAL/Automatic%20Bank%20Withdrawal%20SEPA%20(M29)/B2B%20Formulieren/Doorlopende%20machtiging%20Bedrijven%20SEPA%20.DOCX%20%20ALLFLO.DOCX)