<img src="../../fslogo.png" alt="Florisoft Logo">

# Florisoft Manual Floriday Client Module (M165)

This document describes what is required and how to set up a Floriday Connection for a buyer with Florisoft. The stepwise explanation explains each setting and how it works with Floriday.

**Floriday Buyer API Express:**

Previously, this was the Floriday Buyer API Simple web service. It has now been changed to Floriday Buyer API Express. This connection was developed in collaboration with Floriday and features an entirely new synchronization method. It now operates through database synchronization. A smart local copy of the Floriday database is created, and only the changes are retrieved. After synchronizing the database, the offering is determined based on the local database copy. The initial synchronization takes approximately 1 hour, but subsequent synchronizations average about 1 minute.

- The local data also ensures that all received data is available. Having a local copy of the data makes it easier to trace how the data was received, enabling much quicker resolution of issues.

- The retrieval of the connection can now be canceled, but it remembers where you left off. When you retrieve the connection again, you resume from where you stopped.

- All updates occur instantly. With the old connection, some changes, such as modifying the description of the selected offering, required waiting until the new offering was made available (Thursday evening).

- To ensure that the back office, shops, cloud server, and connection continue to respond as usual, the maximum number of parties is limited to 25,000. In the past, there were instances where someone accidentally followed all growers, resulting in more than a million parties that needed to be processed, leading to various consequences. Now, the connection stops in such cases.

## Table of contents

[Table of contents](#Table-of-contents)  
[Requesting an API key](#requesting-an-api-key)  
[Setting up a stock](#setting-up-a-stock)  
[Setting up a supplier](#setting-up-a-supplier)  
[Requesting the incomming stock](#requesting-the-incomming-stock)  
[Connections](#connections)  
[Processing order](#procesing-order)  
[Offer ](#offer)  


## Requesting an API key

The API key may be requested from the Floriday web portal. The API key is crucial for setting up a connection between Florisoft and Floriday. Follow the steps below to request an API key.

|Step|Explanation|
|:--|:--|
|**1**|Log in onto the Floriday portal <a href="https://idm.floriday.io/">link</a><details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image13.png" width=600px></details>|
|**2**|In the top right you should see a menu dropdown(#1), click it and navigate to '*Settings*'<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image13.png" width=600px></details>|
|**3**|Within the settings screen navigate to '*Apps & Connections*'(#2)<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image13.png" width=600px></details>|
|**4**|Using the search field(#3) search for Florisoft.<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image13.png" width=600px></details>|
|**5**|Click on Florisoft(#4) or on the 3 dots and click on inspect.<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image13.png" width=600px></details>|
|**6**|Within this new page click on '*Add Application*', an API key should now be visible.<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image12.png" width=600px></details> |

## Setting up a stock

This chapter will explain the process of setting up a stock for the incomming Floriday stocks. Follow the steps below accordingly:

|Step|Explanation|
|:--|:--|
|**1**|Within the Florisoft Navigator navigate to the constants screen(#1).<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image1.png" width=600px></details>|
|**2**|The left part of constants screen contains a file structure like system, within this screen navigate to: *Location*(#1) **→** *Stocks*(#2) **→** *Stocks*(#3)<br>Within the stocks screen click on the plus icon(#4) to add a new stock.<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image2.png" width=600px></details>|
|**3**|A new window should appear, within this screen you may choose a template for the stock. If available you should select '*Template VMP Koppeling*' and click on '**Ok**'. If there is no such template go to step 3.a.<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image4.png" width=600px></details>|
|**3.a**|If there is no '*VMP Koppeling template*' you can press the '**x**' button to create a stock without an existing template. This means we'll need to change some extra settings to this follow the steps below:<br>**1**: Close the template selector if you haven't already. The stock creation screen should appear.<br>**2**: Click on the tab 'Carry out'(#1) in the file structure on the left.<br>**3**: Check the following checkboxes:<br>   **I**: *Don't carry out undivided parcels to the box <br>   **II**: but do so with parcels with active pickorders <br>   **III**: Remove zero-stock automatically.<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image14.png" width=600px></details> |
|**4**|You are now in the stock creation screen, if you are step 3.a open the tab called '*Stock*'. Fill in the following fields:<br>- **Stock code**(#1): this is the unique identifier for this stock keep it short but simple to make it easier to keep track of.<br>- **Description**(#2): Enter a short but apt description, best practice is to have LIVE in the name or something similar so that it is easily recognizable as a live incomming stock e.g: 'FLORIDAY LIVE'<br><br>Now press **Ok**(#3) to exit and save the stock.<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image5.png" width=600px></details> |
|**5**|You just created a new stock, but some more settings are to be set so reopen the newly created stock by double clicking the stock's row.|
|**6**|In the stock setting screen click on the '*Authorisation*' tab. In this screen we are able to authorize users by checking the checkbox next to their name. Authorize the following users:<br>- Every admin users e.g. ADMINF,ADMINC & ADMINK<br> - DEFAULT <br> - SUPER <br> - TIMER <br> - Your own to be authorized users. <br>Some users in the list may not be in your system you may ignore those.After authorizing the right users press **Ok** to confirm.<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image6.png" width=600px></details>|

## Setting up a supplier

|Step|Explanation|
|:--|:--|
|**1**|Within the Florisoft navigator navigate to the constants screen(#1)<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image1.png" width=600px></details>|
|**2**|Within the file structure on the left side of the screen navigate to:<br>*Community*(#1) **→** *Supplier data*(#2) **→** *Suppliers*(#3)<br>Click on the plus icon(#4) to add a new supplier.<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image7.png" width=600px></details>|
|**3**|This opens the supplier creation/setting screen, here wen need to fill the following fields:<br>- **Delivery code**(#1): Unique supplier identifier, enter something unique and identifiable.<br>- **Find**(#2): This field can be used to search the system for this supplier, for ease of use enter the delivery code entered previously.<br>- **Company name**: Enter the company name here an idea is to adding plants or flowers as a suffix to make it easier to see which supplier does what.|
|**4**|After closing the supplier screen reopen the supplier by double clicking on its row in the table.|
|**5**|With the supplier screen open again navigate to the '*Webservice*' in the file structure on the leftside of the screen. <br>Change the following systems:<br><br>- **Activate for stock-linking**: enable this by checking the checkbox. <br>-  **Type Webservice**: set this dropdown to '*Floriday koper API Express*' <br>- **Incoming stock**: set this to stock that we created in the previous chapter. <br>- **API key**: enter the API key you obtained in the first chapter.<br>- **Region GLN**: This is the region GLN code for the auction.<br>- **Aflever GLN**: This is the exact GLN code of the delivery location, if you don't know this you can find it using <a href="https://www.floricode.com/en-us/distribution/finding-codes/company-code-search">Floricode</a>.<br>- **Trade-period vanaf**: in the first field enter 0 and in the second enter 2. <details><summary><b>Click here to show the example image</b></summary><img src="Media EN/16.png" width=600px></details>|

## Alternative locations 

It is possible that a grower(connection) doesn't deliver in the region your company is located in. If your company has multiple locations like Rijnsburg and Aalsmeer where the grower does deliver these locations are to be filed under alternative locations. To file these locations as alternative locations follow the steps below:

|Step|Explanation|
|:--|:--|
|**1**|Open the concerning supplier in the constants screen.|
|**2**|Navigate to the '*Webservice*' tab(#1), now click on the '*Alternatieve locaties*'(#2) button (alternative locations in Dutch). This opens a new screen.<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image9.png" width=600px></details>|
|**3**|In the just opened screen fill in the following fields: <br>- **Region GLN**(#1): the region's GLN code.<br>- **Aflever GLN**(#2): the exact location code for the delivery location.<br>- **Opmerking**(#3): This field may be used to leave a remark on this particular location, it is smart to leave a quick identifier here.<br>- **Prioriteit**(#4): This is the priority the location has after the main location has been eliminated. The priority number is ascending meaning that 1 is the highest priority. <details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image10.png" width=600px></details>|


## Requesting the incomming stock

### Pay attention

This link now works with the Custom sync. This is enabled by default with a recent version of Florisoft (version from 15 Dec 2022).
However, the auction must be contacted to set this up on the Floriday side. Click [here](https://helpcenter-customers.floriday.com/nl/articles/6811442-koppeling-beheer-aanbodsregels#h_d9df0d4bb3) for more information.

----


After having set up the stock and supplier the Floriday API may be loaded in. This can be done using the button '*Receive parcels*' or automatically using the timer. To receive parcels manually follow the steps below.

:warning:**The first time loading in the connection will take a long time. To prevent making it even longer make sure this connection is on a different time scheme. By not doing this the timer will load in the connection as well making the processing time longer than 1 hour.** :warning:

|Step|Explanation|
|:--|:--|
|**1**|Open the concerning supplier and go to the *Webservice* tab.|
|**2**|Click on the button '*Receive parcels*'(#1).<details><summary><b>Click here to show the example image</b></summary><img src="Media EN/image11.png" width=600px></details>|
|**3**|It will take some time, afterwards you should receive a prompt saying how many parcels were read in.|

### Connections

The first time synchronizing will connect you to the various growers on the Floriday platform. These growers will be stored in Florisoft so that doesn't need to load it every time when synchronizing. This process will be repeated for new or disconnected connections but only to load the changes.

### Procesing order

As said before the first time synchronizing will store the various growers but also their stock. The next synchronizations will only serve to update and process the current stocks. Parcels will only be made in Florisoft if the grower actaully does deliver to the set regions. 

### Offer

Within the Floriday online environment assortment needs to be marked as a favourite on row level. If needed you may also end a connection to a grower on the Floriday platform if they are no longer needed. The changes in Florisoft will only happen if the assortment on offer is changed on the Floriday API. 