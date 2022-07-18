<img src = "../fslogo.png" alt="Florisoft logo">

# Table of contents

[Table of contents](#table-of-contents)  
[Preface](#1-preface)  
[Creating incoming stock](#2-creating-incoming-stocks)  
[Creating suppliers](#3-creating-suppliers)

# 1. Preface

Welcome to the Florishop Manual Clock Pre Sale. In this manual the steps required for implementing the Clock Pre Sale module are explained.

Dutch auctions offer a service called Clock Pre Sale, this service is a stock connection which shows products that are ready to be auctioned off. The twist is that these products can actually be bought before they go through the auction. 

The aim of this manual is to explain the technical implementation of the Clock Pre Sale module in Florisoft so users of the system get a basic understanding on how to work with this module. All steps required for implementing the Clock Pre Sale module are described so the user can activate and use the module on its own.

To get the Clock Pre Sale module working, various components are required in the Florisoft application. These parts are described in the following chapters.

After this Preface, the creation of the incoming stocks is described in chapter two: Creating incoming stocks. The products of the Clock Pre Sale connection are read into a certain place in Florisoft. This place is called an incoming stock.

In chapter three the creation of a supplier is described. This is the most important part of this manual as the auction is defined as a supplier in the Florisoft application. 

The intention of this manual is that after reading you are able to set up a Clock Pre Sale Connection independently. 

**Important to note**: *Images in this manual may slightly differ from what you are seeing on your screen. The Florisoft application is continually updated so this guide may be slightly out of date. Do however note that big changes are unlikely and that the  process overall will remain the same.*

# 2. Creating incoming stocks

To get the Clock Pre-Sale option to work in the Florisoft application it is necessary to create incoming stocks. This is because incoming stocks is where the Florisoft system reads in all the available products in the Clock Pre Sale connection. 

The Dutch Auction has three physical locations: Aalsmeer, Naaldwijk, and Rijnsburg. Each location must have its own incoming stocks. This results in you having three incoming stocsk for the Clock Pre Sale module by default; one stock per physical location. 

The steps below describe the process of creating an incomming stock.

1. Start the Florisoft application and log in using your UserID and password. 
2. Navigate to the constants screen within the Florisoft navigator screen. (#1 in the image below.)

<img src = "Pre Sales Clock EN Media/GettingToConstants.png" alt="Getting to the constants screen.">

This should open the constants screen, put it on full screen if necessary. Having opened the constants screen follow the following steps: 

3. Within the constants screen file structure navigate to : *Location*(#2) **→** *Stocks* (#3) **→** *Stocks* (#4).
4. Click the Add new item icon (*plus sign* (**+**), #5) to create a new incoming stock. 

<img src="Pre Sales Clock EN Media/ConstantsScreen.png" alt="Constants screen">

5. Do make sure that the *Stock* tab is selected in the folder structure on the left side (#6).
6. Fill in the Stock code with an arbitrarily made up stock. The code is made up out of a maximum of six letters and or numbers. (#7)
7. Give the to be created stock an apt description in the description field (#8).
8. Click on the '*ok*' button and click '*yes*' to save the newly created record.

<img src="Pre Sales Clock EN Media/StocksNew.png" alt="Creating a new stock">

9. Now we need to reopen the newly created stock, to do that double left click on the row that contains the new stock record.

10. Now click on the *Authorization* tab in the file structure screen on the left (#9). 

11. Within the authorization screen you will find a list of users that can be authorized. You can authorize a user by checking the Authorized checkbox for that user (#10).

    **Do make sure to authorize the following users:**
    * ADMINC
    * ADMINF
    * ADMINK
    * ANDREAS
    * DEFAULT
    * SUPER
    * TIMER

<img src="Pre Sales Clock EN Media/Authorize Users.png">

12. Click on the '*Carry out*' on the left side (#11).

13. Activate (check the checkbox) '*Remove zero-stock automatically*' (#12).

14. Fill the *Minimal age for a parcel to be removed* field with the value **1** (#13).

15. Click the *Webshop* tab (#14).

<img src="Pre Sales Clock EN Media/Carry Out Tab.png" alt = "Carry out tab">

16. Activate / check the checkbox for '*This stock is available on the webshop*' (#15)

17. Set the '*Open  hours*' field to '*Always open (99)*' in the dropdown(#16)

18. Click the OK button to save the settings and to create a new stock. 

<span style="color: red;"> <b>Important to note:</b> <i>repeat the steps four till eightteen to create additional stocks for the other locations of the auction if applicable.</i></span>

19. The newly created stock should now be visible in the stock sections of Florisoft. To check this click on the Stock button in the navigator (#17). 

<img src="Pre Sales Clock EN Media/NavigatorStock.png">

20. Click the Clock Pre Sale 'LOCATION name' (#18) in the left pane of the Stocks screen.

<img src="Pre Sales Clock EN Media/StocksScreen.png">

By default each newly created stock should be empty unless parcels are either manually or automatically added. Later on in this manual the actual Clock Pre Sale stock will be filled with the products available on the respective locations of the auction.

# 3. Creating suppliers

