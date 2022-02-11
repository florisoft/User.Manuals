# Implement Florishop Chatfunctie

## Background information

>This document describes the working of the chat function in Florishop. The idea behind this feature is that logged in customers on the webshop can communicate directly with their account manager. (seller) The seller of course has the option to chat 'back' to the customer. In practice, it often happens that customers want more information about a product before they make a purchase. The chat function within the webshop plays an important role in this.

## Prerequisite
The matters below must be arranged/set in advance.

-   Activate Notification center module

## Step 1: Create reserved system user
The first step involves the creation of a new system user that is solely intended to capture chat messages from the webshop into Florisoft. Go via the Navigator to `Constants -> System -> Users -> System users` and create a new system user. To do this, follow the steps below:

1. Click the 'Add new item' icon (no. 1) The System Users window opens.
2. Fill in WEBCHAT at the Userid field. (no. 2)
3. Enter a corresponding password at the Password field (no. 3)
4. Give the system user a clearly descriptive name in the Name field. (no. 4)
5. Click the Ok button (no. 5) to create the new system user.

<img src=".Pop-up Chat & Notification Centre EN/2021-02-12-10-51-46.png).png" />


## Step 2: Adjust system settings
The two system settings below have to be checked/set.

1. In the Navigator click on the menu Maintenance -> Setup System. (no. 1) The Florisoft.NET System Setup window opens.

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-10-57-15.png).png)

2. Click on the Advanced tab (no. 2) and enter the password.

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-10-59-50.png).png)

>**Note: all settings located under the Advanced tab may only be adjusted by Florisoft personnel. That is why those settings are protected by a password.**

3. Set the FIDGETINTERCOMMCHAT setting to True.
4. In the WEBSHOPCHATDESTINATIONUSERID setting, specify the userid of the reserved system user created in Step 1: Create reserved system user.
5. Click Ok to confirm and close the settings in the Florisoft.NET System Setup window.
6. Close Florisoft and restart it.

## Step 3: Adjust webshop settings
The third step describes the settings that are required in the webshop. Follow the steps below to properly configure the appropriate settings:

1. Login to the webshop with the management (ADMIN) account.
2. Open the Management section by clicking on the user's name -> Management. (no. 1)
A menu bar with options will now appear at the top of the webshop.

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-11-16-36.png).png)

3. Click on the menu Configuration -> Webshop Settings (no. 2) The webshop settings are opened in a separate browser tab.

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-11-18-22.png).png)

4. In the item field, search for chat (no. 3)
5. Set the SETUP -> WEBCHATAN setting to ON. (no. 4)
6. Give the setting SETUP -> WEBCHAT the value WEBCHAT (no. 5) This is the Userid of the served system user created in Step 1: Create Reserved System User.
7. Restart the webshop.

![](![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-11-25-24.png).png).png)

## Step 4: Create debtor group(s)
Because the chat function is built onto the Sales add-on, it is necessary to divide the debtors who will use the chat function into debtor groups. The idea behind debtor groups is that each salesperson is responsible for contact with an x number of customers. All customers belonging to a salesperson should be grouped in a debtor group.

Below the steps for creating a debtor group are described:

1. Go via the Navigator to `Constants -> Coomunity -> Debtor data -> Debtor groups`.
2. Click the Add new item icon (no. 1) to create a new debtor group.
The new group is automatically assigned a Group code (sequential number, no. 2)
3. Enter a clear description (name) for the group in the Description field (no. 3).
4. Click the Select button (no. 4) and select all debtors that will be grouped in this group.
   All selected debtors are displayed in the Members section: (no. 5)
5. Click Ok (no. 6) to create the new group.

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-11-37-42.png).png)

## Step 5: Create Webshop sales debtor
Because from a technical point of view, only debtors can log in to the webshop, a separate debtor is needed which is linked to the seller in the next step. The seller will later in turn be linked to the seller's system user. Below is a global step-by-step plan for creating a sales debtor.

A sales debtor is technically seen nothing more than a 'normal' Florisoft debtor. Another name for a sales debtor is: webshop sales debtor.

>**Note: each seller must be linked to its own own sales debtor. One seller therefore also means one sales debtor. Two salespeople also means that there are two sales debtors in the system. In other words: the number of sales debtors must be equal to the number of salespeople.**

1. Go via the Navigator to `Constants -> Community -> Debtor data -> Debtors`.
2. Click on the Add new item icon (no. 1) to create a new debtor. Double click on one of the available debtor templates to base the new sales debtor to be created on. The Debtors window opens.
3. Give the new debtor a Debtor number in the Debtor number field (no. 2)
4. Give the Search field the same or a different value as the debtor number (no. 3)
5. Give the new debtor a clearly defined name in the Company name field (no. 4)
6. In the Country (no. 5) field, select the country of the sales debtor. 
7. Fill in the E-mail address (no. 6) field with the e-mail address of the sales debtor. This e-mail address is usually the same as the address with which the seller communicates to his customers by default.

![](![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-12-11-11.png).png).png)

8. Click the ident tab. (no. 7)
9. In the Linked to user :  field, enter the seller's system user (no. 8)
10. Click on the Internet access tab (no. 9)

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-12-24-51.png).png)

11. Activate the checkbox This client has access by means Internet (no. 10)
12. Activate the checkbox This client can log in Webshop 3 (no. 11)
13. Click on the Accessible stock button (no. 12) to give the sales debtor access to the desired stock(s)
14. Enter a password for the customer in the Customer password field (no. 13)
15. Click Ok to confirm the settings (nr. 14)

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-12-35-47.png).png)


## Step 6: Create seller
Step six is ​​about creating a seller. In this step, the seller is linked to both the webshop sales debtor (See Step 5: Create webshop sales debtor) and the debtor group (See Step 4: Create debtor group(s))

1. Go via the Navigator to `Constants -> Community -> Seller data -> Sellers.`
2. Click the 'Add new item' icon (feather with plus, no. 1) to create a new seller.
3. Enter a self-invented seller code in the Code Seller field. (no. 2)
4. Enter a clearly defined name for the seller in the Name Seller field. (no. 3)
5. Click the Online store tab to proceed. (no. 4)

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-12-36-51.png).png)

6. Activate the Account manager login checkmark. (no. 5)
7. Select the previously created webshop sales debtor for this seller in the field Based on the debtor (See Step 5: Create webshop sales debtor, no. 6)
8. Click the OK button (no. 7) to create the seller.

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-12-42-35.png).png)

## Step 7: Link the seller as account manager to the debtor(s)
The seller, as created in the previous step, must be linked to all debtors (customers) that belongs to this seller. This link is made on the debtor in the following way:

1. Use the Navigator to go to `Constants -> Community -> Debtor data -> Debtors.`
2. Double click on one of the debtors you want to link to an accountmanager.
3. Go to the internet tab (no. 1) -> Internet access. (no. 2)
4. In the Account manager field, select the salesperson who is responsible for this debtor. (no. 3)
5. Optional: make this change for all debtors that should be linked to the selected seller using the Change to function. (no. 4)
6. Click the OK button to confirm the settings (no. 5)

![](![](.Pop-up Chat & Notification Centre EN/![](2021-02-12-12-57-21.png).png).png)

## Step 8: Link seller to the system user
Step eight shows the steps involved for linking the seller to the associated sellers' system user.

1. Via the Navigator, go to `Constants -> System -> Users -> System Users.`
2. Open the sellers' system user by double clicking on the appropriate line.
3. In the Seller field, select the seller associated with this system user. (no. 1)
4. Click the OK button to confirm the settings. (no. 2)

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-12-50-32.png).png)

## Stap 9: Testing
This step shows the working of the chat function both in the webshop and Florisoft.

Customer in the webshop:

1. Restart the webshop and Florisoft.
2. Activate the fidgets in Florisoft by clicking on the Fidgets menu -> Intercommunication chat. (no. 1) The fidgets (which the chat function is part of appear on the right side of the Navigator)

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-13-24-21.png).png)

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-13-26-56.png).png)

2. Log in to the webshop with one of the debtors who are linked to a seller and webshop sales user via the above steps.
3. Click the speech balloon icon to open the Chat function. (no. 1)

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-13-19-19.png).png)

4. Type a message for the seller in the field provided (no. 2)
5. Press the SEND button (no. 5) or Enter key on the keyboard to send the message.

The message is sent to the seller and becomes visible as the first message in the chat conversation. At the same time, the message also becomes visible in the account manager's Florisoft system.

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-13-21-00.png).png)

Seller in Florisoft:

1. As soon a debtor sends a message from the webshop, a new tab opens in the fidgets with the debtor code (no. 1) and the sent message. (no. 2)

![](.Pop-up Chat & Notification Centre EN/![](2021-02-12-16-58-00.png).png)

2. Type an answer in the text box at the bottom of the fidgets screen (no. 3) and press Enter.

![](![](.Pop-up Chat & Notification Centre EN/2021-02-12-17-05-45.png).png)

3. The answer pops up in the chat screen of the webshop.

Repeat the steps above to continue the conversation.

# Implement the Pop-up & Notification Center

## Prerequisites

The following matters must be arranged/set in advance.

- The webshop setting **WEBNOTIFICATION CENTER** must be set to ON.

## Create a new notification message

Navigate to the following place in Florisoft to create a new notification: Constants -> System -> **Notification messages**.

Click the **Add new item** (feather with plus). The screen below becomes visible:

![](![](.Pop-up Chat & Notification Centre EN/2021-03-08-10-25-04.png).png)

## Entering information in the Notification

Follow the steps below to enter a notification with information:

### Title & Message

1. Enter the title at the **Default title** field (maximum of 75 characters)

2. At **Default report** it is possible to enter the 'body' of the message (maximum 500 characters)

3. Enter the translation of the title below the **Translations title** in the Text field (maximum 75 characters)

4.  Below **Translations message** there is the option to enter the translation of the message. (maximum 500 characters)

### Number of times to show  vs. always show

5. To always show the notification, check the **Show infinitely** checkmark. This checkbox is activated by default.

6. To show a notification a finite number of times times, uncheck the **Show infinitely** checkmark and specify the number of times it should be shown in the **Number of times to show** field.

### Period in which to show notification

If you always want to show a notification, activate the tick **Message never expires**. There is no enddate set to the notification.

7.  Specify a date range in the **Date valid from** / **Date valid until** fields to activate a time period in which the notification must be shown. When the current date exceeds the set date range the notification will not be shown anymore.

### Webpage type

8. At the **Web page type** field assign the place where the notifications must be shown. The following options are available: orderlist, home, none and stock.

### Authorize debtors

9. With the **Linked debtors** button it is possible to authorize one or multiple debtors for a notification.

- It is also possible to authorize from debtors' perspective. To do this go to the Constants -> Community -> Debtor data -> **Debtors.**
  
- Activate the **Is connected** checkbox to link a notification to this debtor:

**Optional:** use the **Changes to** button to copy over the changed setting (Is connected) to other debtors if neccesary.

![](![](.Pop-up Chat & Notification Centre EN/2021-03-08-11-28-48.png).png)

## Display on the Webshop

10. If the notifications are set up correctly, a pop-up screen appears on the Webshop with the notification:

![](![](.Pop-up Chat & Notification Centre EN/2021-03-08-11-12-53.png).png)

11. In the upper right corner of the webshop all notifications for this debtor are grouped like an archive:

![](![](.Pop-up Chat & Notification Centre EN/2021-03-08-11-15-02.png).png)