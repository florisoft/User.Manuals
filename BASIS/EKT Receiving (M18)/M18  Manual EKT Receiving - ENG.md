<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Manual EKT Receiving

Florisoft can both send (export) and receive EKT messages
(import). This manual describes importing
EKT files. In many cases this process will be fully automatic (via
a Timer) take place. However, there is also a possibility to
manually import EKT messages.

We assume in this manual that you already have an EKT address or if not that you have the necessary knowledge.

**Please note: pictures in this manual may differ slightly from
what you will see on your screen.**

## Table of contents

[Creating a mailbox](#mail-settings-in-florisoft)  
[Pop Settings](#pop-settings)  
[Read this when using Office365](#read-this-when-using-office365)  
[Creating supplier auction codes](#creating-supplier-auction-codes)  
[Creating auction codes](#creating-auction-codes)  
[Reading in EKT-messages automatically using the timer](#reading-in-ekt-messages-automatically-using-the-timer)  
[Reading in EKT-messages manually](#reading-in-ekt-messages-manually)    

## Mail settings in Florisoft

After creating a mailbox a couple of settings need to set in Florisoft. These settings are described below.

### POP-Settings

|Step|Explanation|
|:-:|:--|
|**1**|In the Florisoft navigator click on the button "*Maintenance*", then click on the option "*Setup user*". <details><summary><b>Click here to show the example image!</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image1.png"></details> |
|**2**|Click on the setting tab called "*Florinet*".<details><summary><b>Click here to show the example image!</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image2.png"></details>|
|**3**|Click on the "*Settings*" next to the production radio button, This opens a new screen. |
|**4**|Fill out the fields of this new screen with the following data:<br>**POP3 Server:** enter the POP-server address<br>**POP3 Port:** almost always port 995<br>**SSL**: enable this setting<br>**Account name**: e-mail address of the EKT-mailbox<br>**Password**: the password of the mailbox.<details><summary><b>Click here to show the example image!</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image3.png"></details>|
|**5**|Click on the "**Ok**" button next to the input fields in order to then click on the "**Ok**" button of the tab itself.|
|**6**|Fill out the field "*Return address Florinet messages*" with the EKT-mailbox e-mail address.|

#### Read this when using Office365!

*Office365 makes use of OAUTH2 which results in some additional settings that need to be set in order to get a working EKT mailbox.*

|Step|Explanation|
|:-:|:--|
|**1**|Open the constants screen and navigate to the path:<br>**System→Email login data**<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image4.png"></details>|
|**2**|Create a new variable by clicking on the plus icon, this opens a new window.|
|**3**|Fill out the following fields:<br>**Description**: *fill out this field with a concise description (this is visible in the system)*<br><br>**POP-data**:<br><br>**Server**: *fill this field with the POP-server address*<br>**Port:** *fill this field with the POP-server port*<br>**SSL**: *Enable this setting by checking the checkbox*<br><br>**SMTP Data:**<br><br>**Server**: *Fill this field with the SMTP server address*<br>**Port**: *Fill this field with the SMTP server port*<br>**TLS**: *Enable this setting by checking the checkbox*<br><br>**Login data**:<br><br>**User:** *Enter the username here*<br>**Pasword**: Set this dropdown to the value '*Microsoft OAuth2*", this will replace the password input field with a token field*<br>**Setup OAuth2.0**: *Click this button and follow the steps below*<br>**Token**: *the token field will get filled automatically by walking through the steps of clicking on the **OAuth2.0** button.|
|**4**|Click on the button **Set up OAuth 2.0** and follow the steps below:|
|**5**|A web browser screen/tab will now be opened.|
|**6**|Log in with your EKT-mailbox (Office365 account)|
|**7**|You should now get prompted with a permission request for Florisoft to get access to the following settings:<br>- Maintain access to data through which you have granted Florisfoto access<br>- Access to sending emails from your inbox<br>- Read your profile<br>- Send e-mails as you<br>- Read your e-mails<br>- Read & Write access to your e-mail.<br><br>**After reading the permissions click yes**.<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image5.png"></details>|
|**8**|You'll now be redirected to the screen shown below. Once you see the screen below via OAUTH2.0 is completed you can use the account.<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image6.png"></details>||
|**9**|Now click the **Ok** button to save the settings.|

*The Florisoft mail settings should now be set correctly.*

## Creating Supplier Auction codes

Each supplier sends EKT messages using a unique auction code. In addition, this auction code also determines which stock(s) the trade goes into. This section describes how to create an auction code. (Paragraph 4.1)

In addition, paragraph 4.2 describes how various standard stocks can be linked to the auction code

### Creating auction codes

*To create an auction code, follow the steps below:*

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen and navigate to the following path:<br>**Locations→Auctions**<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image7.png"></details>|
|**2**|Add a new item here by pressing the plus icon. This will open a new screen.<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image7.png"></details>|
|**3**|Enter the auction code (Make sure that is unique and is **HIGHER** than 30!) and description.<br><br>*Auction codes under 30 are reserved for the default Royal Flora Holland auction locations. Setting the stocks need to be done on he Timer user.*<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image7.png"></details>|
|**4**|Click the button '*EKT-settings*', this opens the '*Link Florinet*' window.<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image7.png"></details>|
|**5**|In the window **Link Florinet** set various default stock(s) |
|**6**|This opens a window (at the bottom of the image) where you can choose a stock. Find a stock by typing the name of a stock in the Quick Search field.<details><summary><b>Click here for the example image</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image8.png"></details>|

## Reading in EKT-messages automatically using the timer

*In most cases, EKT messages will be read automatically using a timer. This section describes how to configure and enable a timer.*

|Step|Explanation|
|:--|:--|
|**1**|Click on the navigator's timer icon using the right mouse button.|
|**2**|Select the option '*Timer Settings*' this will open the '*Timer Settings*' screen. <details><summary><b>Click here to show the example image!</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image9.png"></details>|
|**3**|Search and select the '*EDI*' timer settings.|
|**4**|Under 'Active user', select the user you want to set the timer to.|
|**5**|Zet het vinkje achter ‘Dit script activeren bij het starten van de timer’ aan|
|**6**|Enter the times (hours:minutesminutes) at which the timer is activated. 'Start' is the start time, 'Stop' the end time. At 'Interval in minutes', enter the interval time of the timer.|
|**7**|Choose to run the timer once OR always with these settings.<details><summary><b>Click here to show the example image!</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image10.png"></details>|
|**8**|To keep the timer running all the time: Click 'OK' in the 'Timer Settings' window.|

## Reading in EKT-messages manually

*Many times EKT messages will be read automatically using a timer function. 9see chapter five) Florisoft also offers the possibility to read EKT messages manually. To do this, perform the following steps.*

|Step|Explanation|
|:-:|:--|
|**1**|Click on the Florisoft Navigator button "*EDI*"<details><summary><b>Click here to show the example image!</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image11.png"></details>|
|**2**|Florisoft retrieves all EKT-messages that are ready in the EKT mailbox and saves it in this folder:<br>**C:\NET440\USER\IN**|
|**3**|Click on the **Florinet** button in the navigator.<details><summary><b>Click here to show the example image!</b></summary><img src=".Manual standard EKT-messages Florisoft/media/image12.png"></details>||
|**4**|The EKT messages will now be read in the selected stocks (see section 4.1)|
|**5**|After importing the EKT-messages in Florisoft using the **Florinet** button the EKT-messages will be deleted from:<br>**C:\NET440\USER\IN**<br>and get placed in:<br>**C:\NET440\USER\BACKUP**|