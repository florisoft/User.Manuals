<img src="../../fslogo.png">

# (Technical) Documentation KoWaDi client

This manual covers the technical description about setting up and functioning of the KoWaDi client in Florisoft.

KoWaDi is an abbreviation which is used within the Dutch auction compnay for flowers and plants. It stands for Koppel-Wagen-distributie (Torque-Car-Distribution).

The most important function for auction buyers is the ability to automatically scan in a full cart at the entrance control. The result of this is an efficiency advantage because the reporting of a complete cart inside is quicker than scanning individual batches.

This document has been made to provide insight into the (technical) operation of KoWaDi in Florisoft. This is because there is little information to be found at the interface level of the KoWaDi client, different from the regular box monitor screen.

## Prerequisites  

Before working with the KoWaDi client some prerequisite requirements must be met:  

**1.** An agreement must be reached with Florisoft regarding the following Florisoft modules:

* Timer
* KoWaDi (Torque-Car-Distribution)

*[Here you will find the way to check if the modules are enabled in Florisoft](#how-to-check-if-you-have-the-required-modules-enabled)*

**2**. The customer must now arrenge an email account which is able to communicate with Florisoft through POP.

*The information below is important in that regard and must be set by Florisoft*:

* POP3 Server
* POP3 Port number
* **Optional** use of SSL
* Account name (also called username)
* Password

### Setting up the timer user's e-mail information

The previously mentioned information must be entered on the TIMER user in Florisoft. Follow the steps below to do this:

|Step|Explanation|
|:--|:--|
|**1**|Log into Florisoft with the TIMER user.|
|**2**|Click on the maintenance button in top left part of the Florisoft application.<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image1.png"></details>|
|**3**|The previous step should open a small dropdown menu, within this menu click on the option '*Setup user*'.<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image2.png"></details>|
|**4**|This opens a new screen, click on the tab *Florinet*.<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image3.png"></details>|
|**5**|Make sure the radio button next to '*Production*' is turned on. Then click on the '*Settings*' button.|
|**6**|Fill out the following fields.<br>- **POP3 Server** <br>- **POP3 Port**<br>- **Optional**: SSL<br>- **Account naam**<br>- **Password**<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image4.png"></details>|
|**7**|Click on the *Ok* button to save and close the screen.|
|**8**|Also fill out the field "*Return address Florinet messages*", this field contains the e-mail address where the KoWaDi messages are to be read from.<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image5.png"></details>|


### How to check if you have the required modules enabled

|Step|Explanation|
|:--|:--|
|**1**|Open the Florisoft application and log in with an authorized user.|
|**2**|Click on the Florisoft logo.<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image9.png"></details>|
|**3**|This opens a new screen, within this screen click on the button '*Modules*'.<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image10.png"></details>|
|**4**|This opens the Modules overview screen, check if the following modules have checkmarks next to them: *Timer*, *KoWaDi*.<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image11.png"></details>|
|**5**|The customer must enter the above e-mail address in the KoWaDi service of Royal Flora Holland.|

## The working of the KoWaDi client explained

*This chapter describes the process associated with the scanning of the KoWaDi barcodes.*

### Automatic reading of KoWaDi messages

KoWaDi messages consist of XML files (in plain text) with the .XDELIV attribute at the end of the file name. That is why the terms KoWaDi message and delivery message are used interchangeably. Both terms have the same meaning.

The first step of reading in the KoWaDi messages automatically is setting up the timer process, the steps below describe the process of setting up the timer process.

|Step|Explanation|
|:--|:--|
|**1**|Open the Florisoft application on the navigator.|
|**2**|Click on the timer/stopwatch icon with your right mouse button. This opens a dialog option menu, click on the dialog option: '*Timer settings*'.<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image6.png"></details>|
|**3**|Search for the timer setting called "**EDI**" with the function name "**NET440**". You can search using the CTRL + SHIFT + F search function.<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image7.png"></details>|
|**4**|Once you have found the timer function click it once to select it and open its timer function settings on the right.|
|**5**|Change the following settings in the right part of the screen:<br>- **Activate this script on timer startup**: enable this checkbox<br>- **Time schedule**: Set the time in which the time process will run and at which interval.<details><summary><b>Click here for your example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image8.png"></details>|
|**6**|After having changed the timer settings and clicking on the OK button to confirm the changes.|
|**7**|Restart the TIMER user.|
|**8**|When popping mailbox set from chapter one, in the status bar from Florisoft it must be visible that in addition  to all other types there are also delivery messaged be read in. See the screenshot below.|


### Checking KoWaDi posts

By default, the DELIVERY messages are downloaded to the folder. After readin these messages by the timer they are moved to the folder.

*See the screenshot below for an example of a DELIVERY message:*

<details><summary><b>Click here for the example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image12.png"></details>

*When KoWaDi messages are read in, the relevant data is read into the KoWaDi table of the database.*

## Explanation key segments KoWaDi message

Every auction carthas a unique KoWaDi barcode that is located on an iron plate on one side of the cart.

*The KoWaDi message contain a Transport Unit Segment. This is the value of the KoWaDi barcode. See the screenshot below:*

<details><summary><b>Click here for the example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image13.png"></details>

*In addition to the TransportUnit, the goods on the cart are also visible in the feram:* **Goods** segments.

<details><summary><b>Click here for the example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image14.png"></details>

*Each feram:Goods segment represents a lot. An important part of the **feram:Goods segments** are teh **feram:ReferencedDocuments segments**. These contain a unique ID per parcel*

<details><summary><b>Click here for the example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image15.png"></details>

*This ID is stored in the **PTYBARCODE** of the **KOWADI** table:*

<details><summary><b>Click here for the example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image16.png"></details>

## Scanning KoWaDi barcodes in the box monitor

*Below is a description about scanning KoWaDi barcodes in the box monitor. As an example the cart below with a number of parties. As an example the party 'TU DU RED PRINCESS*'

<details><summary><b>Click here for the example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image18.png"></details>

1. Cart enters the box.
2. KoWaDi barcode of the cart is scanned. Florisoft look up the barcode in the Field "*KOWADI.KARID*".
3. Florisoft then looks at all unique PTYBARCODES that belong to a particular **KARID** (**read:** *all parties on one cart*)
4. Now Florisoft will check if the PTYBARCODES from the KOWADI table also appear in the VPARTY (VPARTIJ) table (VPARTIJ.BARCODE).

<details><summary><b>Click here for the example image!</b></summary><img src=".Technical Documenation Setting up KoWaDi/Media/image19.png"></details>

>**Note:** *the KOWADI.PTYBARCODE is not copied one-to-one in the VPARTIJ.BARCODE. In the KOWADI.PTYBARCODE, each value has a 0100001 (ascending with more recent rules)*

**When searching for the relevant barcode in the VPARTIJ.BARCODE, this sequence number is ignored. So the VPARTIJ.BARCODE is the same value as the KOWADI.PTYBARCODE minus the last seven characters. See below an example of the lot of TU DU RED PRINCESS:**

<details><summary><b>Click here for the example image!</b></summary><p><b>KOWADI Table:</b></p><img src=".Technical Documenation Setting up KoWaDi/Media/image20.png"><br><p><b>VPARTIJ Table</b></p><img src=".Technical Documenation Setting up KoWaDi/Media/image21.png"></details>

5. In the event of a match, Florisoft knows that this concerns a specific batch from the box monitor that can be reported on.

In the KOWADI table it is determined which PTYBARCODES belong to a KARID. Because the KOWADI.PTYBARCODES should also appear in the VPARTIJ.BARCODE field, all lots on a cart are reported in at once when thee is a match between the VPARTIJ.BARCODE and KOWADI.PTYBARCODE.

*Printing the stickers in the box monitor screen is the last step of the KoWaDi client.*
