**Florisoft manual: Payment Reminder**


<img src="../../fslogo.png"/>

# 

# Index
[1 Introduction](#Introduction)

[2 Optional: set debtor email addresses](#optional-set-debtor-addresses)

[3 Activate required-column](#activate-required-columns)

[4 Send reminders](#send-reminders)

#Introduction
Welcome to the Florisoft user manual: Payment reminders. This manual is intended for Florisoft users who want to use the Payment Reminder module. This module allows the user to send reminders to debtors with open items about the due date.

The module is relatively easy to use. With the help of this manual it is possible to independently send reminders from Florisoft. 

The manual is divided into a number of chapters.

After this introduction, chapter two describes a number of mail-related settings that are useful when sending reminders. These setings are not mandatory, but can offer added value. 

Chapter three gives an overview of a number of important columns in the Open Posts screen of Florisoft. These columns contain the most important information related to sending reminders.

A step-by-step plan for the actual sending of reminders follows in chapter four. At the end of this chapter, some more general functions are described that can be important when sending reminders. 

As described earlier, the user must be able to send reminders independently with the help of this documentation, If you have any questions about the Payment Reminder module, please contact the Florisoft helpdesk by phone or email.

**Phone:** +31 (0)71 40 806 10
**Email:** support@florisoft.nl


# Optional set debtor email addresses

It is possible to send the reminders to an alternative email address than the default email address of the debtor. It is also possible to send the reminder to multiple e-mail addresses of the debtor. Proceed to chapter three if not necessary. The reminder will then be sent to the default email address, as entered on the 'Addresses' tab of the 'Debtors' window.

1. Navigate in the Constants to the Debtors. Tehse can be found under 'Constants' -> 'Community' -> 'Debtors'.

2. Click on the 'Addresses' tab. (no. 1)

3. Click on the 'Contact info' tab. (no. 2)

4. In the middle section of the debtor screen, click on the 'Financial' tab. (no. 3)

5. Enter the name of the person associated with the e-mail address to be linked in the 'Description' field (no. 4)


<img src=".manual eng/.media/pic1.png" />



1. Enter the relevant email address for this debtor in the 'Address' column (no. 5)

2. **Optional:** Put a check in the column 'inactive' (no. 6)

3. Click on the 'Ok' (no. 7) in the debtor screen to confirm the settings.

As described in the introduction to this chapter, the above steps are not mandatory. If no seperate e-mail addresses are used, Florisoft automatically uses the e-mail address as set on the 'Addresses' tab of the debtor.

<img src=".manual eng/.media/pic2.png" />

# Activate required columns

Follow the steps below to activate a number of important columns in the 'Open Items Debtors' screen for sending reminders. It is possible that these columns are already visible. The move on to chapter four.

1. Click on the 'Debtors' button in the Florisoft Navigator. (no. 1) The 'Open Items Debtors' window opens.

<img src=".manual eng/.media/pic3.png" />

1. Right click one of the existing columns (no. 2) The 'Grid settings' window opens.

<img src=".manual eng/.media/pic4.png" />

1. Press the key combination Ctrl + Shift + F on the keyboard. A search screen appears. 
-----


1. In the 'Quick Search' field, type REMIND1. (no. 3)

<img src=".manual eng/.media/pic5.png" />

1. Put a check in the 'on/aan' column (no.4)

2. Click on the 'Ok' button (no. 5)

3. Repeat steps 1 to 6 to enable the following columns: REMIND2, REMIND3, REMIND4, REMIND5. 'Niet aanmanen', which means do not send payment reminder and Comment. These columns contain the following information:

> **REMIND1 to REMIND5:** gets the date of the first to fifth reminder.
> **Do not send pay reminder**: checkmark that can be used to determine that an open item must be included in the overview to the customer.
> **Comment:** field in which a comment can be added to supplement/clarify an open post.

# 4 Send payment reminders

With the correct columns activated in the 'Open Items Debtors' screen, it is possible to send reminders from this screen. Follow the steps below to send a reminder. 

1. Click in the Navigator on the button 'Debtors' (no. 1)
    > Open Item Debtors opens.

<img src=".manual eng/.media/pic6.png" />

Make sure the checkmark in 'All debtors' (no. 2) is turned off.

<img src=".manual eng/.media/pic7.png" />

1. Enter the debtor number in the 'debtor number field' (no. 3) of the debtor to be charged

2. Press enter on the keyboard. On the right side of the screen (no. 4) all invoices for the relevant debtor appear.

3. **Optional:** check the box 'Only open posts (no. 5) to view only unpaid invoices for the selected debtor. 


1. Use the spacebar to select the lines to be included in the overview on the reminder. The selected lines will be given a yellow background color (no. 6). This is not applicable right now because this was made in a testing environment.

<img src=".manual eng/.media/pic8.png" />

1. Click on the 'Menu' in the menu bar (no. 7)

2. Click in the menu on 'Reminders' (no. 8) The window 'Multiple Invoices Selected' opens.

3. Click on the 'New Print' button (no. 9) the 'Print' window opens.

4. Select the correct layout (no. 10) in the drop down menu below
    Print lay-out


<img src=".manual eng/.media/pic9.png" />

1. Under 'Output', choose one of the available options:
> Printer, Screen, Fax, Email and File. Usually email is chosen (mail). 

2. Check in the 'Email address' field whether the correct email addresses are entered.

3. Click on the 'Ok' button (no. 13) to confirm the print action.

Florisoft starts printing the reminder. Depending on the number of lines selected, this may take some time. After the reminder has been successfully created, the confirmation window below will appear:

<img src=".manual eng/.media/pic10.png" />

This pop up means that the printing is done.


In the window 'Multiple invoices selected' (as seen in the picture below) you can now find an overview of all open invoices that are included in the overview of the reminders.
<img src=".manual eng/.media/pic11.png" />

Optional: it is possible to withdraw a reminder by selecting the relevant lines in the 'Multiple Invoices selected' window with the spacebar and clicking on 'Revoke Selection'. All selected lines will then be deleted and marked as not dunned.
Please note: when canceling (withdrawing) one or more open items in the window 'Multiple Invoices selected', these open items are marked in Florisoft as having not been demanded. However, the email with the reminder has already been sent to the customer.

In the column Aanm1 the date of the first reminder is printed.

<img src=".manual eng/.media/pic12.png" />

When a debtor pays his outstanding items, they are automatically removed from the overview of open items in the 'Open Items Debtors' screen.

Repeat steps done to send multiple reminders. When the second reminder is sent, the date of sending will be entered in the Aanm2 column. At reminder three, column Aanm3 is filled, and so on.