# Stock connection Manual

<img src=".Stock connection manual/media/image1.png" />

Welcome to the manual for the Stock connection module. In this module, we'll explain how to create a stock connection with debtors by creating a seperate stock and supplier. Using these, we can set up a stock connection.

A stock connection using E-trade or a Florisoft connection, will benefit your business by creating an easy way to get stock using Florisoft. Follow the steps to create a stock connection, and to start using it.

In chapter 1, we'll explain how to create a seperate stock. In chapter 2 we'll explain how to create a new supplier, and how to create a stock connection.

# 1 Creating stock
The first few steps will require you to create a new stock in Florisoft. In this manual, we'll use Qualirosa as an example. Any information regarding Qualirosa should ofcourse be changed to the business you wish to make a stock connection with.

First, navigate to the Constants in Florisoft.

<img src=".Stock connection manual/media/image2.png" />

Now go to Location -> Stocks -> Stocks and create a new stock by pressing the feather (nr.1). Select "Template VMP koppeling"(nr.2) and press OK.

<img src=".Stock connection manual/media/image3.png" />

A new screen will open. Now enter a Stock code and a description. Make sure to add "VMP" before the business name and "live" after. This will make the stock easier to differentiate from other stocks.

<img src=".Stock connection manual/media/image4.png" />

Navigate to "Authorization" on the left side of the screen. There you will find all accounts. Because you're just made the stock, no user has been authorized to access it. By double clicking, or using space to select multiple, you can authorize users. If you've selected multiple, use the "Authorize / Block" button (nr.1). When you authorize a user, this user can access the stock from his/her own account. Make sure the right people have access to the stock.

**Make sure to also authorize the account you are creating the stock with! Otherwise you will not be able to see it.**

<img src=".Stock connection manual/media/image5.png" />

Navigate to "Carry out" on the left side of the screen. Once selected, make sure all boxes have been checked like in the picture below. Regarding "Box active" (nr.1), select a entrance check which is applicable to the stock. This does not have to be similair to the picture.

<img src=".Stock connection manual/media/image6.png" />

Laslty, navigate to "Webshop" on the left side of the screen. Make sure the settings are the same as in the picture below. Open hours: "Altijd Open" translates to "Always Open". This is the best option.

<img src=".Stock connection manual/media/image7.png" />

Lastly, access "Accessible debtors" on the bottom right of your screen. There you will see an overview of all debtors. You can give debtors permission based on what you want. Use the guide on the right of the screen to determine who can do what.

<img src=".Stock connection manual/media/image9.png" />

Once you have given the different debtors the rights, press OK.

Now you can press OK again, to close the screen. If a window pops up asking to save the settings, click YES.

Now you have made a new stock which you can use to make a connection

# 2 Creating a supplier
Execute the steps below to create a supplier which you can use in the stock connection.

First, in the constants navigate to Community->Suppliers and create a new supplier by pressing the feather on the top of the screen.

Now fill in the highlighted fields. Make sure that the deliverycode and "Find" are the same and contains "VMP". Also fill in the company name, make sure this is the name of the business which you are making a connection with.

<img src=".Stock connection manual/media/image10.png" />

Now navigate to "Web Service" on the left side of the screen. Once clicked, check the box next to "Activate for Stock-linking". Now you can fill in the information regarding the stock connection.

All information which have to be filled in are hightlighted. This information has to be received by the debtor with whom you want to make a stock connection. The "Type Webservice", "Userid" and "Password" has to be received from the supplier.

If the debtor has send files regarding these settings, these can be loaded into the system by pressing "Import" and selecting the file they send. This will be a ".adt" file. (There should be 2 files, when selecting a file only one should appear. This is enough.)

Lastly, you will also have to fill in "Incoming stock". Here you can select the stock you have made before.

<img src=".Stock connection manual/media/image11.png" />

Now navigate to "Parcel request", which is a sub-setting of "Web Service". Here you will have to check "Always get full stock instead of modifications". **This only has to be once, after getting the stock you will have to turn this off.**

<img src=".Stock connection manual/media/image12.png" />

Now navigate to "Parcel response", which is also a sub-setting of "Web Service". On this page, there are a lot of settings. Only 2 of these are of importance for this manual. Other settings can be turned on/off anytime. The setting "Default Articlegroup" will have to be set to "Nieuw Artikel" or "New Article", and the box next to "Store information in ExPartij" will have to be checked.

<img src=".Stock connection manual/media/image13.png" />

Now press OK and save the changes. Then doubble click on the newly made supplier to get back in the settings.

Now, navigate back to just "Web Service". When everything has been filled in correctly, you can press the button "Receive Parcels". Once clicked a seperate window will appear. Now Florisoft will load in the parcels from the debtor. Once it has been finished, the screen should look something like the picture below.

<img src=".Stock connection manual/media/image14.png" />

Now navigate back to the sub-setting of "Web Service", "Parcel request". Turn off "Always get full stock instead of modifications".

<img src=".Stock connection manual/media/image15.png" />


Now all the stock of the debtor has been imported. Close the constant and head back to the Florisoft Navigator. Click on Stocks.

<img src=".Stock connection manual/media/image16.png" />

When you have clicked the stocks, the newly made stock will appear in the stock list. Now when you click on the name, all imported parcels will show. When you duuble click on any line, an extra screen below will appear. You can add parcels there on the order list.

**Watch out with putting items in the lower screen for testing. If the debtor has a fast logistical process, items can actually be packed and shipped before you can remove it. Anything put in the lines that you finish, will be send to the debtor.**

<img src=".Stock connection manual/media/image17.png" />

Now you have succesfully installed a stock connection with a debtor. Repeat the steps to do this with other debtors.

