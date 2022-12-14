<img src="../../fslogo.png">

# Florisoft Manual Payment Reminders (M27)

## Table of contents

[Introduction](#introduction)
[Table of contents](#table-of-contents)  
[Optional: set debtor email addresses]()  
[Activate required column]()  
[Send reminder]()


## Preface

This module allows the user to send reminders to debtors with open items about the due date.


## Optional set debtor email addresses

It is possible to send the reminders to an alternative email address than the default email address of the debtor. It is also possible to send the reminder to multiple e-mail addresses of the debtor. Proceed to chapter three if not necessary. The reminder will then be sent to the default email address, as entered on the 'Addresses' tab of the 'Debtors' window.

|Step|Explanation|
|:--|:--|
|**1**|Open the Florisoft Navigator and navigate to the constants.|
|**2**|Within the constants file structure navigate to the following path: <br>'*Community*' → '*Debtor data*' → '*Debtors*'.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image1.png" width = 500px></details>|
|**3**|Click on the debtor that we want to set up with an e-mail adress.|
|**4**|On the debtor screen navigate to the '*Addresses*'tab. and then on the '*Contact info*' folder. Fill the table with e-mail addresses.|
|**5**|Having filled in the e-mail addresses navigate to the '*Financial*' tab (still in the overarching '*Contact info*' folder.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image2.png" width = 500px></details>|
|**6**|Enter the name of the person associated with the e-mail address to be linked in the 'Description' field.|
|**7**|Enter the relevant email address for this debtor in the 'Address' column.|
|**8**|**Optional:** Put a check in the column 'inactive'. |
|**9**|Click on the 'Ok' in the debtor screen to confirm the settings.|
|**10**|**Reminder**: *As described in the introduction to this chapter, the above steps are not mandatory. If no seperate e-mail addresses are used, Florisoft automatically uses the e-mail address as set on the 'Addresses' tab of the debtor.*|

## Activate Required Columns

Follow the steps below to activate a number of important columns in the 'Open Items Debtors' screen for sending reminders. It is possible that these columns are already visible. The move on to chapter four.

|Step|Explanation|
|:--|:--|
|**1**|Open the Florisoft navigator screen and click on the '*Debtors*' button. <details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image4.png" width = 500px></details>|
|**2**|You should now see the debtor screen, the first thing we'll do in this screen is right clicking the table to open the '*Grid settings*' window.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image5.png" width = 500px></details>|
|**3**|Press the key combination CTRL + Shift + F on the keyboard ot search the column screen. Enter the following search prompt '*REMIND*, this should take us to the option column names. We'll need the following colomns: '*Remind1*, '*Remind2*, '*Remind3*, '*Remind4*, '*Remind5*,<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image6.png" width = 500px></details>|
|**4**|Make sure to set a checkmark in the column '*Aan*' (on in Dutch) for each of the previously mentioned 'Remind' variants. to enable the columns in the table.|<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image7.png" width = 500px></details>
|**5**|You may close the Grid settings screen by clicking on the 'Ok' button 
|**6**|REMIND1 to REMIND5: gets the date of the first to fifth reminder. **Do not send pay reminder**: checkmark that can be used to determine that an open item must be included in the overview to the customer. **Comment:** field in which a comment can be added to supplement/clarify an open post.|


## Send payment reminders

With the correct columns activated in the '*Open Item Debtors*' screen, it is possible to send reminders from this screeen. Follow the steps below to send a reminder.

|Step|Explanation|
|:--|:--|
|**1**|Open the Florisoft navigator screen and click on the button '*Debtors*'.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image4.png" width = 500px></details>|
|**2**|Make sure the checkmark '*All debtors*' is turned off.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image8.png" width = 500px></details>|
|**3**|Enter the debtor number in the 'debtor number field' of the debtor to be charged<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image8.png" width = 500px></details>|
|**4**|Press enter on the keyboard. On the right side of the screen all invoices for the relevant debtor appear.|
|**5**|**Optional:** check the box 'Only open posts' to view only unpaid invoices for the selected debtor.|
|**6**|Use the spacebar to select the lines to be included in the overview on the reminder. The selected lines will be given a yellow background color. This is not applicable right now because this was made in a testing environment.|
|**7**|Click on the menu tab on the left of the screen. This opens a dropdown menu from this menu click on '*Reminders*'. This opens the window '*Mulitple Invoices Selected*'.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image9.png" width = 500px></details>|
|**8**|Click on the button '*Print new*' this opens the print screen.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image10.png" width = 500px></details>|
|**9**|Choose the correct print layout from the '*Print layout*' drop down screen.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image10.png" width = 500px></details>|
|**10**|Under output you'll choose the output for the reminder, usually people choose for the e-mail option.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image10.png" width = 500px></details>|
|**11**|Check the E-mail address field whether the correct e-mail addresses are entered.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image10.png" width = 500px></details>|
|**12**|Click on the '*Ok*' button to confirm the print action.<br><br>Florisoft starts printing the reminder. Depending on the number of lines selected, this may take some time. After the reminder has been successfully created, the confirmation window below will appear:<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image12.png" width = 500px></details>|
|**13**|In the window 'Multiple invoices selected' (as seen in the picture below) you can now find an overview of all open invoices that are included in the overview of the reminders.|
|**14**|The column '*Remind1*' is where you'll find the date of the first reminder.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image13.png" width = 500px></details>|

When a debtor pays his outstanding items, they are automatically removed from the overview of open items in the 'Open Items Debtors' screen.

Repeat steps done to send multiple reminders. When the second reminder is sent, the date of sending will be entered in the Remind2 column. At reminder three, column Aanm3 is filled, and so on.

### Withdrawing reminders

|Step|Explanation|
|:--|:--|
|**1**|It is possible to withdraw a reminder by selecting the relevant lines in the 'Multiple Invoices selected' window with the spacebar.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image11.png" width = 500px></details>|
|**2**|Click on the '*Revoke selection*' button.<details><summary><b>Click here to show the example image</b></summary><img src=".manual eng/.media/image11.png" width = 500px></details>|
|**3**|All selected lines will then be deleted and marked as not dunned.|
|**4**|**Please note**: when canceling (withdrawing) one or more open items in the window 'Multiple Invoices selected', these open items are marked in Florisoft as having not been demanded. However, the email with the reminder has already been sent to the customer.|
