<img src="../../fslogo.png">

# Florisoft Manual Direct Debit (Incasso)

## Table of content


[Preface](#preface)  
[Entering Direct Debit(Incasso data)](#entering-direct-debit-incasso-data)  
[Sending an invoice](#sending-an-invoice)  
[Creating a new payment ~ Cancellation](#creating-a-new-payment--cancellation)  
[Viewing invoices](#viewing-invoices)  
[Business to business forms](#business-2-business-forms)  

## Preface


This manual will explain how you can send a Direct Debit (SEPA) message to your customers.

Chapter 1 will cover the set up process that is done by the debtor and yourself.
Chapter 2 provides examples of a Business-2-Business form that Florisoft is able to product.

**Due to Florisoft being continuously updated some screen might have changed and might thus the manuals images may differ from what is seen on your screen.**

## Entering Direct Debit (Incasso) data


1. Open the Florisoft application and log in with your valid UserID and password. This should open the Navigator screen. 

2. Within the navigator go to constants (No. 1 in the image below).

<img src = ".Handleiding Incasso/media EN/FlorisoftNavigatorConstants.png">
&nbsp;

3. Now that the constants are open there should be a tab to the left that looks a like a normal filestructure. Within this filestructure navigate to the following path: *Financial* (No. 2) **→** *Financial administrations* (No. 3 ).

4. This should change table in the right part of the screen. Within this table double left click on your **own** company name (No. 4).

<img src = ".Handleiding Incasso/media EN/ConstantsFinancial.png">
&nbsp;

5. A new window should have opened, in this window there should be a file structure like part on the left. Within this file structure navigate to *Debit* (No. 5) by left clicking on the folder.

6. Fill in the right data in the textboxes (No. 6)

7. After filling in the data we need to save our changes to do that press the **OK** button (No. 7). After doing this you should be prompted with a question whether or not you want to save your changes press **YES**. 

<img src = ".Handleiding Incasso/media EN/FinancialAdministrations.png">
&nbsp;

8. After closing the last window, we should be in the constants once more. Within the constants filestructure navigate to the following path: *Community* (No. 8) **→** *Debtor data* (No. 9) **→** *Debtor* (No. 10).

9. This should update the table to the right of the file structure. Within this table you should see the debtor you need to edit. To edit this debtor *double left click* on the debtors row, example shown in the image below.   
(No. 11)

    This should open a new window concerning the specific debtor. 

<img src = ".Handleiding Incasso/media EN/ConstantsDebtor.png">
&nbsp;

10. Within the new window there should be a File structure part to left, just like in the constants. Within this file structure navigate to: *Financial* (No. 12) **→** *Bank details* (No. 13) by left clicking on the folders.  

    After clicking on *Bank details* textboxes should appear on the left side of the new screen (No. 14). 

11. **Before filling in the textboxes read the following steps first for some extra information.**

<img src = ".Handleiding Incasso/media EN/DebtorBankDetailsBeforeEntering.png">
&nbsp;

12. Fill in the following fields here: 

    * IBAN number  (No. 15)
    * IBAN Bankname (No. 16)
    * BIC / SWIFT code (No. 17)
    * SEPA Authorization ID (No. 18)

13. Check the following checkboxes (if):
    * Cashing client (No. 19)
    * Required : This property makes it so that the customer needs to pay this direct debit message. (No. 20)

14. If you don't want to collect all invoices at once but after for example 14 days after invoice date then you want to set that in the '*To Urge*' field. To do this follow the following steps:

    1. Left click on the Financial folder (No. 21)
    2. Make sure to check the check box '*After*' (No. 22)
    3. Fill in amount of days after invoice date is allowed (No. 23)
    4. Best practice is to also enable this in the system setting '**SETTING NAME HERE! TODO**. This makes it so that everytime you make a direct debit file you only open debit that is past its expiry date gets shown. 
    	<details>
            <summary><b>Click here to show the example image</b></summary>
            <img src = ".Handleiding Incasso/media EN/ToUrge.png">
        </details>

<img src = ".Handleiding Incasso/media EN/DebtorBankDetails.png">
&nbsp;

15. In the file structure part of the screen click on the little '**>**' icon next to the '*invoice*' folder (No. 25) to open the folder. 

16. Within the '*invoice*' folder left click on the '*Print*' folder (No. 26). This action should open a new screen to the right of the file structure. 

17. On this screen check if the '*invoice layout*' dropdown setting (No. 27) is set to right layout. 

<img src = ".Handleiding Incasso/media EN/InvoicePrint.png">
&nbsp;

18. In the file structure part of the screen click on the little '**>**' icon next to the '*Financial*' folder to open the folder. Within this folder click on '*General*' (No. 24). 
    This should show us a  new screen on the right part of the screen. 

19. Enter a paymentcondition in the text area (No. 28) to create a payment condition or press the little downwards triangle (No. 29) to select an existing payment condition. The latter should open a small table of conditions in a popup window, you can select a condition by double left clicking the row. 

20. Check if the Financial Debtor number (Financial debnr) (No. 30) is unique for this customer.  
**No other debtor can use this value, it has to be unique!**

21. Press the **OK** button on the bottom right of the current screen. You will be prompted with a question whether or not to save the changes made, click **yes**.

<img src = ".Handleiding Incasso/media EN/DebtorFinancialGeneral.png">
&nbsp;

## Sending an invoice
---

1. If needed start the Florisoft application to access the Navigator (the Home screen)

2. Within this Navigator screen find the '*Debtors*' button (No. 1) and right click the button itself to get a small option prompt. 
3. Within this option prompt left clock on the option '*Generate incasso file*' (No. 2). This should open a new smaller window titled '*Generate cashing assignment*'. 

<img src = ".Handleiding Incasso/media EN/NavigatorDebtorRightClick.png">
&nbsp;

4. Within this new screen left click on the button '*Test*' (No. 3). By pressing this button you will generate and receive a test invoice. Using this test invoice you can see if all the settings are properly set. The test file can be found on the designated path.

<img src = ".Handleiding Incasso/media EN/TestForm.png">
&nbsp;

5. If you find out that the data was not entered correctly by checking the test form you can correct this by accessing and then edit the invoice via the Debtor button. 

    If the debtor was edited successfully follow step 4 again, if you are confident in the fact that it should be set properly now press the **OK** button. 

    You should now get a prompt with information of where the invoice is to be found with the option to print the invoice.  
    **Do note:** *this means that the invoice will be send to the customer*. 

## Creating a new payment ~ cancellation


*On the bankaccount which was debited will see the payment cancellation after a couple of days.* 

1. Open the Florisoft navigator and left click on the Debtor button (No.1)

<img src = ".Handleiding Incasso/media EN/NavigatorDebtor.png">
&nbsp;

2. This should open the debtor screen. Check the '*All debtors*' checkbox (No. 2). 

3. The table on the right of the screen should be updated immediately, find the debtor and bank account number and right click on the corresponding row (No. 3). This should give a small option menu, within this menu left click on the '*New payment*' option (No. 4). This should show a new screen for creating payments. 

<img src = ".Handleiding Incasso/media EN/DebtorNewPayment.png">
&nbsp;

4. Fill in the field '*Paid Amount*' with the cancelled invoiced amount prefixed with a minus sign (**-**) (No. 5).

5. Fill in the field '*Means of payment*' with the letter **s** to indicate the payment to be a cancellation. 

    *This should reopen the concerning invoice.*

<img src = ".Handleiding Incasso/media EN/NewPaymentCancellation.png">
&nbsp;

## Viewing Invoices
 

1. To view invoices go to the Debtor screen.

2. Click on a debtor you want to see the invoices of. 

3. The table on the bottom of the screen should be updated to show you the invoices made by this debtor. 


## Business-2-Business forms 

To send invoices a Business-2-Business form is used. This form is often made by our customers internally. To give an idea of what they look like and what components need to be in this form, the image below shows what Florisoft uses as an example. 
