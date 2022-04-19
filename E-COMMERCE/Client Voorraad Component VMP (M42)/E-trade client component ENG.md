<img src="../../fslogo.png"/>

# E-trade client component

Welcome to the manual for the stock link module (E-trade client component). This manual explains how to create a stock link with debtors by creating a seperate stock and supplier. With the help of this we can create a stock link. 

# Making stock

The first few steps require you to create a new stock in Florisoft. in this guide we will use Qualirosa as an example. The information that belongs to Qualirosa must be replaced with the information of the company you want to link to.

First go to the constants in Florisoft:

<img src= ".E-trade client component ENG/media/picture2.png" >

Navigate to Locations -> Stocks -> Stocks and create a new |stock by clicking on the '+' icon (No. 1). Select 'Template VMP link' and press ok.

<img src= ".E-trade client component ENG/media/picture3.png" >

**Note: the screen above wll only appear if the templates are actually set, otherwise it will continue the the screen in the next photo!**

A new screen will open. Enter a stock code and description here. Just to be sure, put “VMP” before the name and “live” after it. This ensures that the stock is easier to distinguish from the rest.

<img src= ".E-trade client component ENG/media/picture4.png" >

Then go to the "Authorisation" tab on the left side of the screen. There you will find all Florisoft accounts. Since you just created a stock, no user can access the stock. By double clicking, or using the space to select multiple lines, you can give users access to the inventory. If you double click, it immediately changes authorization, if you want to authorize multiple users at once, use the button "Authorize/Block". When you authorize someone, the user can access the inventory from their own account.

**Do not forget to authorise the account the account you are using to create the stock. Otherwise you will not be able to see the stock yourself!**

<img src= ".E-trade client component ENG/media/picture5.png" >

Now navigate to the "Carry out" tab on the left side of the screen. Check if the settings are the same as the photo below. At "Box active", select an entry check that is applicable to the stock. This setting does not have to be the same as the image.

<img src= ".E-trade client component ENG/media/picture6.png" >

Then go to the "Webshop" tab and check whether these settings are the same as the photo below:

<img src= ".E-trade client component ENG/media/picture7.png" >

Finally, click on "Accessible debtors" at the bottom of the screen:

<img src= ".E-trade client component ENG/media/picture8.png" >

Here you will find an overview of all debtors. Here you can grant access to specific areas per debtor. Use the explanation on the right of your screen:

<img src= ".E-trade client component ENG/media/picture9.png" >

Once you've granted all the permissions you want to grant, click OK to save it.

Now click OK again to save the changes. Then select "Yes" when Florisoft asks you if you want to save it.

Now you have created a new stock with which you can make a link.

# Create a supplier

Follow the steps below to create a supplier with which you can create a stock link.

First navigate to the constants and to the constants and to "Community" -> "Supplier data" -> "Supplier" and create a new supplier by clicking on the "+"

<img src= ".E-trade client component ENG/media/picture10.png" >

Now navigate to the "Web Service" tab on the left side of the screen. Check the "Activate for stock link" option. Now fill in the information about the stock coupling,

All information that is highlighted must be filled in. This information must be obtained from the debtor. "Web service type", "Userid" and "Password" mus tbe forwarded by the debtor. 

If the debtor forwards a file or files containing these settings, tey can be loaded directly into the systems. Then click Import and select the file. This must be an ".adt" file (You will have received 2 files, only 2 should be displayed when you search).

Finally, you also have to fill in "Incoming stock". Here can you select the stock you just made. 

<img src= ".E-trade client component ENG/media/picture11.png" >

In the same screen, expand "Web Service" and go to "Parcel request". Make sure that the checkbox "Always get full stock instead of modifications".  is checked. **This only needs to be done once, as soon as the stock hasbeen collected you have to switch it off again.**

<img src= ".E-trade client component ENG/media/picture12.png" >

Now go to "Parcel response", this is also within "Web service". There are many settings on this page. At the moment only 2 settings are important. The other settings can be turned on and off as you wish . The setting "Default article group" must be set to "New article (00000001)", and check the checkbox next to "Store information in ExPartij (takes up a lot of space)". If the webservice type is "Florisoft webservice" his option is not there and does not need to be enabled. But that is the case with this manual, since the web service type is ETrade 0.7 is.

<img src= ".E-trade client component ENG/media/picture13.png" >

Press OK and save the changes, Double click on the same supplier again to return to the settings. Navigate back to "Web service". If everything has been entered corrrectly, you can now click on the "Receive parcels" button. Once you click, a second screen will appear. Now Florisoft will read in all parties from the supplier. When it is done, the screen should be similar to the photo. In the meantime, stay away form florisoft for a while.

<img src= ".E-trade client component ENG/media/picture14.png" >

Now go back to the sub-setting of "Web service" ->"Parcel request"

<img src= ".E-trade client component ENG/media/picture15.png" >

Now that all the debtor's stock has been imported, close the constants and go to the Stock via the Navigator.

<img src= ".E-trade client component ENG/media/picture16.png" >

If you are in the Stock, the new stock should be displayed. If you click on the name, all losts of the stock will be displayed. From here you can order lots by double clicking on them. 

<img src= ".E-trade client component ENG/media/picture17.png" >

**Be careful with putting lots in the order list for testing, if the supplier has a fast logistics process, it may already be sent before you can delete it. ANything you add in the order list below can be sent to the supplier.**


<img src= ".E-trade client component ENG/media/picture18.png" >


(In the index should be a "VMP Qualirosa live". For now it has been blurred")

You have now successfully created a stock link with the supplier. The steps can be repeated for other suppliers you want to link to.