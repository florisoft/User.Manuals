<img src="../../fslogo.png">

# Florisoft Manual Stock Connection (M41)

Chapter 1 explains how to create seperate stock. Chapter 2 explains how to create a new supplier, and a stock connection. Follow the steps below to create/set up a stock connection.

## Table of contents 

[Creating a stock](#creating-a-stock)  
[Creating a supplier](#creating-a-supplier)  

## Creating a stock

The first steps require the creation of a new stock in Florisoft application.
Below you will find the steps to create stock:

|Step|Explanation|
|:--|:--|
|**1**|Open Florisoft and the constants screen.<details><summary><b>Click here for your example image!</b></summary><img src=".Stock connection manual/media/image1.png"></details>|
|**2**|In the constants screen you will navigate to the following path:<Br>**Locations**(#1)→**Stocks**(#2)→**Stocks**(#3).<details><summary><b>Click here for your example image!</b></summary><img src=".Stock connection manual/media/image2.png"></details>|
|**3**|Click on the plus icon '**+**' (#4) to create a new stock.|
|**4**|The previous step opens a small window in which you can choose template. Select the template called '*Template VMP koppeling*'(#1) and press **Ok**(#2).<details><summary><b>Click here for your example image!</b></summary><img src=".Stock connection manual/media/image3.png"></details>|
|**5**|A new screen opens; the stock creation / set up screen. Fill in the following fields: <br>- **Stock code**: *unique identifier code for the stock, to make this stock easily distinguishable put VMP in the stock code. This way you can make it clearly visible that this stock is a live stock*.<br>- **Description**: *The visible description of the stock, to make it even clearer you can put LIVE in the description field.*.<details><summary><b>Click here for your example image!</b></summary><img src=".Stock connection manual/media/image4.png"></details>|
|**6**|Save the stock by pressing the **Ok** button. Reopen the newly created stock by double clicking its row in the constants screen.|
|**7**|Navigate to the folder **Authorization**, you'll now see a table fith all the users on your screen. Authorize the users that need access to the stock. Don't forget to authorize your own users.<details><summary><b>Click here for your example image!</b></summary><img src=".Stock connection manual/media/image5.png"></details>|
|**8**|After authorizing the right users navigate to the '**Carry out**' folder.|
|**9**|Check if the following settups are set correctly like the example image below. <br>- **Box active**: Needs to be enabled, the field to the right of the checkbox does not need to be set to the same value as in the screenshot but needs to set to the right *Entrance control*.<br>- **Rest active**: Leave this disabled<br>- **Temporary stock active**: leave this disabled.<br>- **Don't carry out undivided parcels to the box**: Set this to enabled.<br>- **But do so with parcels with active pickorders**:  Set this to enabled<br>- **Carry out numbers**: Set to the dropdown option '*Full quantity, except for external parcels*'<br>**Remove zero-stock automatically**: Set this to enabled<br>**Minimal age for a parcel to be removed**: Set this to 2.<details><summary><b>Click here for your example image!</b></summary><img src=".Stock connection manual/media/image6.png"></details>|
|**10**|After having checked the settings described in the previous step navigate to the tab '*Webshop*'.|
|**11**|Check this tab for the follow settings:<br>- **Only make a sale visible after carrying out the division in the box**: disabled<br>- **This stock is available on the webshop**: enabled<br>- **Open hours**: Always open(99)<br>- **End time**: checkbox enabled and the textbox on 00:00:00<details><summary><b>Click here for your example image!</b></summary><img src=".Stock connection manual/media/image18.png"></details>|
|**12**|Click on the button '*Accessible debtors*' this opens a new overview of all debtors. On the right side of the screen you'll find a legend of all the columns.|
|**13**|Use the legend to authorize the debtors you want to be able to make changes in the stock. Click the **Ok* button to save the made changes.<details><summary><b>Click here for your example image!</b></summary><img src=".Stock connection manual/media/image7.png"></details>|
|**14**|Click on the **Ok** button once more to confirm the made changes in the stock. You might be prompted with a confirmation windows simply click yes or ja. |

*You just made a new stock that will be used for the stock connection.*

## Creating a supplier

A stock connection requires two things a stock and a supplier. In this chapter the process of creating a supplier is explained. If you already created a supplier for this connection you may start the steps below at step 6.

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen.<details><summary><b>Clik here for your example image!</b></summary><img src=".Stock connection manual/media/image1.png"></details>|
|**2**|Navigate to the following path:<br>**Community**→**Supplier data**→**Suppliers**<details><summary><b>Clik here for your example image!</b></summary><img src=".Stock connection manual/media/image8.png"></details>|
|**3**|Create a new supplier by clicking on the plus icon (+) #4. This should open a new supplier window.|
|**4**|Fill out the the following fields:<br>- **Delivery code**: *Unique identifier*<br>- **Company name**: Complete company name<details><summary><b>Clik here for your example image!</b></summary><img src=".Stock connection manual/media/image9.png"></details>|
|**5**|Navigate to the tab *Webservice* in the left side of the screen.|
|**6**|Check the checkbox '*Activate for Stock-linking*'. The greyed out settings should now return to normal.|
|**7**|Fill out the following settings under the header **Settings**<br>- **Type Webservice**: *Select the type of webservice the connection is based on. Is your supplier a Florisoft customer? If that is the case we recommend the usage of the Florisoft webservice option. If the supplier is not a customer then in most cases the webservice type will be 0p7. If it is neither of the aforementioned types then contact your supplier to see which webservice type you should select.*<br>- **URL**: *the link that Florisoft uses to approach the connection, this should be supplied by the supplier.*<br>- **UserID & Password**: *Enter the the login credentials for the coonection, this again should be supplied by the supplier.*<br>- **Incoming stock**: *Select the stock in which the the connection will place the stocks. Select the stock we created in the previous chapter.*.<details><summary><b>Clik here for your example image!</b></summary><img src=".Stock connection manual/media/image10.png"></details>|
|**8**|Open the folder called '*Webservice*' in the left side of the screen and navigate to the subfolder '*Parcel request*'.|
|**9**|Enable the checkbox '*Always get full stock instead of modifications*'. This only needs to done once as we need to disable this checkbox again later on in this manual.|
|**10**|Navigate to the subfolder '*Parcel response*'|
|**11**|In this screen you'll need to change the follow settings:<br>- **Default Articlegroup**: Set it to this '*Nieuw artikel (000000001)*' (New article in Dutch)<br>- **Store information in Expartij (uses a lot of space)**: enable this checkbox (Only visible for webservice type e-trade 0p7!)|
|**12**|Click on **Ok** to confirm the made changes for the supplier. Reopen the supplier by clicking on twice on its row.<details><summary><b>Clik here for your example image!</b></summary><img src=".Stock connection manual/media/image11.png"></details>|
|**13**|Navigate back to the folder '*Webservice*' after having filled out the previous fields correctly you should now be able to click on the button **Receive parcels**|
|**14**|After pressing this button, a second screen will appear. Florisoft will now read all parcels, **DO NOT** interact with Florisoft during this process. Once its done a new screen should appear, see the example image below.<details><summary><b>Clik here for your example image!</b></summary><img src=".Stock connection manual/media/image14.png"></details>|
|**15**|Once the process is done you should navigate back to the subfolder '*Webservice*' / '*Parcel request*'. Disable the checkbox '*Always get full stock instead of modifications*'<details><summary><b>Clik here for your example image!</b></summary><img src=".Stock connection manual/media/image19.png"></details>|
|**16**|Since we have just imported the stock using the stock connection you may close the constants screen and go back to the Florisoft Navigator. Once in the navigator you should click on the '**Stocks** button. <details><summary><b>Clik here for your example image!</b></summary><img src=".Stock connection manual/media/image13.png"></details>|
|**17**|When you have clicked the stocks, the newly made stock will appear in the stock list. Now when you click on the name, all imported parcels will show. When you duuble click on any line, an extra screen below will appear. You can add parcels there on the order list.<details><summary><b>Clik here for your example image!</b></summary><img src=".Stock connection manual/media/image17.png"></details><br><br>**Watch out with putting items in the lower screen for testing. If the debtor has a fast logistical process, items can actually be packed and shipped before you can remove it. Anything put in the lines that you finish, will be send to the debtor.**|

*Now you have succesfully installed a stock connection with a debtor. Repeat the steps to do this with other debtors.*