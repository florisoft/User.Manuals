<img src="../../fslogo.png"/>


# Manual EKT Receiving

##**Table of Contents**

[Introduction 3](#introduction)

[1 Creating a mailbox 4](#creating-a-mailbox)

[2 Adjusting mailbox settings 5](#adjusting-mailbox-settings)

[2.1 Change inbox-settings 5](#modify-inbox-settings)

[2.2 Change POP-settings & archive-settings 6](#change-pop-settings-archive-settings)

[2.3 Change securtiy settings 6](#change-security-settings)

[3 Mail settings Florisoft 8](#mail-settings-Florisoft)

[3.1 POP settings 8](#pop-settings)

[4 Creating suppliers auctioncodes 10](#creating-suppliers-auctioncodes)

[4.1 Creating auctioncode 10](#creating-auctioncode)

[5 Automatically read EKT-messages via a timer 12](#automatically-read-ekt-messages-via-a-timer)

[6 Read EKT-messages manually 14](#read-ekt-messages-manually)

# Introduction
Most information regarding trade between parties are sent digitally and automatically via EKT messages. These are data files with information about purchased / sold products.

Florisoft can send (export) and receive EKT messages (import). This manual describes how to import EKT files. In many cases, this process will be fully automatic (via a Timer). However, there is also a possibility to manually import EKT messages.

This manual describes how to import EKT messages. A number of settings are required for this. Chapter one describes creating a Gmail box. This mailbox is provided by suppliers
used for sending EKT messages. Note that it does not have to be a gmail box.


**Please note that images in this manual may differ slightly from what you see on your screen**

# 1 Creating a mailbox
Florisoft uses a standard Gmail account to read EKT-messages. This chapter describes the steps needed to creat a mailbox. Please note, as said earlier. That it is not required to make a Gmail mailbox. If you are able to recreate it in an other mailbox, that can also be used. This manual will explain how to create a Gmail mailbox.

|Step|Explanation|
|:--|:--|
|**1**| Create a gmail account
|**2**| Enter the following information.
-----
<table>
<thead>
<tr class="header">
<th><strong>Step</strong></th>
<th><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Name: First name of the customer</td>
</tr>
<tr class="even">
<td>2</td>
<td>Surname: Last name of the customer</td>
</tr>
<tr class="odd">
<td>3</td>
<td><p>
Create a Username.<br />
This will be the mailadres of the EKT-mailbox</p>
<p>Make sure the name contains EKT so it is easy to recognise</p></td>
</tr>
<tr class="even">
<td>4</td>
<td>
Think of a password</td>
</tr>
<tr class="odd">
<td>5</td>
<td>
Confirm the password thought of at nr. 4</td>
</tr>
<tr class="even">
<td>6</td>
<td>
Select a random date. Keep in mind to make sure the account is 18 years old.</td>
</tr>
<tr class="odd">
<td>7</td>
<td>Choose a gender. Because it will be a mailbox, "Other" will be the best option.</td>
</tr>
<tr class="odd">
<td>8</td>
<td><p>Click "Next" to continue.</p></td>
</tr>
</tbody>
</table>

<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image2.png" /></details>

<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image3.png" /></details>

-----
# 2 Adjusting mailbox settings

After creating the EKT-mailbox there will have to be a few adjustments to the settings of the mailbox. The adjustment will make sure that he mailbox will communicate with Florisoft.

Adjust the following settings: Inbox-settings, POP-settings, Archive-settings and security-settings.

## 2.1 Change inbox-settings

First, go to gmail. Do this by typing in the URL or googling "gmail". You should be signed in automatically. If not, log in.

To change the inbox settings, complete the following steps.

|Step|Explanation|
|:--|:--|
|**1**|Once in the gmail inbox, click the gear-icon (nr.1). Then click "See all settings"(nr.2)<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image4.png" /></details>
|**2**|The next screen will appear. Click here on Inbox (nr.1) en deselect "Social" and "Promotions" (nr.2). Now select "Save changes" (nr.3) on the bottom of the page.<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image5.png" /></details>

## 2.2 Change POP-settings & archive-settings

Take the following steps to modify the POP & archive-settings.
|Step|Explanation|
|:--|:--|
|**1**|Click the tab "Forwarding and POP/IMAP". (nr.1)<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image6.png" /></details>
|**2**|Enable the option "Enable POP for all mail". (nr.2)
|**3**|Choose the dropdown menu (nr.3) and select "Archive Gmail's copy"
|**4**|Save the changes by pressing "Save changes" (nr.4)

## 2.3 Change security settings

|Step|Explanation|
|:--|:--|
|**1**|When in the inbox, click the profile icon (top right, nr.1) of the mail account. Then click "Manage your Google account"(nr.2)<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image7.png" /></details> 
|**2**|Once in the new screen, access the "Security"(nr.1) tab on the right of the screen. Now scroll down untill you see "Less secure app access"(nr.2). Turn this option ON. <details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image8.png" /></details>

# 3 Mail settings Florisoft
After creating an inbox, a few settings will have to be adjusted in Florisoft. The specific settings are described below.

## 3.1 POP settings
Execute the next steps to adjust the POP settings in Florisoft. **Make sure you are logged in as user TIMER before adjusting anything!**

|Step|Explanation|
|:--|:--|
|**1**|Go to the Florisoft Navigator and go to Maintenance (nr.1) -> Setup User (nr.2).<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image9.png" /></details>
|**2**|Now navigate to Florisoft (nr.1) and select "settings"(nr.2) next to production. Now enter the following information: <br>**POP3 Server:** pop.gmail.com (nr.3).<br>**POP3 Port:** 995 (nr.4).<br>**SSL:** turn on (nr.5).<br>**Account:** Enter the emailadress of the inbox(nr.6).<br>**Password:** Enter the password of the mailbox(nr.7).
|**3**|Once everything has been filled, press OK (nr.8). After, pres OK again (nr.9).<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image10.png" /></details>
|**4**|Lastly, enter the emailadress of the mailbox (nr.11) and press OK.<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image11.png" /></details>

# 4 Creating suppliers auctioncodes
Each supplier sends EKT messages using a unique auction code. In addition, this auction code also determines in which stock(s) the trade ends up. This chapter describes how an auction code is created. (section 4.1)

In addition, section 4.2 describes how various standard stocks can be linked to the auction code.

## 4.1 Creating auctioncodes
Execute the following steps to create an actioncode

|Step|Explanation|
|:--|:--|
|**1**|In the Florisoft Navigator, open up the constants. <details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image12.png" /></details>
|**2**|In the constants, navigate to Location(nr.1) -> Auctions(nr.2). Create a new auction by pressing the feather (nr.3). A new screen opens. <details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image13.png" /></details>
|**3**|Enter an Auctioncode (nr.4) and a Description (nr.5). Once filled, press EKT Settings (nr.6).<br> :warning:**Only auctioncodes higher than 30 are allowed!!** 
|**4**|The screen "Link Florinet" will open. Now, set standard stocks in nr. 1, 2 & 3.<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image14.png" /></details>

> Def. stock (nr.1): Choose a standard stock. Click the downwards arrow to access the different stocks.
>
> This will open a screen (lower part of image) you can choose a stock.(nr.4)
>
> Or you can search for a stock using "Fast search" (nr.5)
> 
> Choose a stock by clicking on the name.
>
> The press OK (nr.6), and again OK (nr.7).

Repeat Step 4 to link the remainging stocks in the standard settings.

# 5 Automatically read EKT-Messages via a timer
In most cases, the EKT-messages wil be read automatically via a timer. This chapter will describe how a timer can be configured and turned on.

|Step|Explanation|
|:--|:--|
|**1**|Right mouse click on the timer in the Florisoft Navigator, and choose "Timer Settings".<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image15.png" /></details>
|**2**|Select the setting "EDI" (nr.1)<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image16.png" /></details>
|**3**|Choose a user where you want the timer to be set (nr.3)
|**4**|Enable "Activate this script on timer startup" (nr.4).
|**5**|At nr.5, enter the times (hourshours:minutesminutes) when the timer will be activated. "Start" is the starting time, "Stop" is the ending time. At "Frequency", enter how frequent the timer will act.

> **Example:** Start: 10:00 Stop: 11:00 Frequency Min: 5 Sec: 30

**Meaning** The timer will be active between 10 and 11 AM every 5 minutes and 30 seconds.

|Step|Explanation|
|:--|:--|
|**6**|Choose if you want to execute the timer this once(nr.6), or always(nr.7).
|**7**|Also execute the steps 4 through 7 for "Florinet"(nr.2)

# 6 Read EKT-messages manually
Usually, EKT-messages will be read automcatically via a timer(see chapter 6). Florisoft also has the ability to read EKT-messages manually. Execute the following steps.

|Step|Explanation|
|:--|:--|
|**1**|In the Florisoft navigator, select "EDI".<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image17.png" /></details>
|**2**|Florisoft retrieves all EKT-messages that are ready in the EKT mailbox and saves them in the file C:\NET440\USER\IN
|**3**|Now click "Florinet"<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image18.png" /></details>
|**4**|The EKT-messages are now read in the selected stocks (see section 4.1).
|**5**|After importing he EKT messages in Florisoft using the "Florinet-button", the EKT-messages will be deleted from file C:\NET440\USER\IN and moved to file C:\NET440\USER\BACKUP