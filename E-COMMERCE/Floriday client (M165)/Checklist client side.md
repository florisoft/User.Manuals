<img src="../../fslogo.png"/>

# Florisoft Manual Client component Floriday - M165

This document descibes what is required to set up a link with Floriday for the buyer environment. It is explained step by step which settings are required, it will also be explained how the synchronization with Floriday works.

## Index

[Request API key](#request-api-key)  
[Create an inventory](#setting-up-stock)  
[Create a supplier](#setting-up-a-supplier)  
[Operation](#operation) 

## Request API key

The API key can be requested via the Floriday portal.
This is necessary to set up the connection between the Florisoft and Floriday.

Request the API key:
- Login to the platform of floriday
- Via the menu at the top right, navigate to “Settings”
- Navigate to Apps & Links
- Search here for Florisoft
- Select Florisoft
- Select Add application?
- An API key will now be displayed.

This API key must be entered in Florisoft at the supplier who will carry out the synchronization.

<a name="stock"/>

## Setting up stock

>This will be the stock where we will read in the collected parcels from Floriday.
- Create a new stock.
    - *Constants -> Location -> Stocks -> Stocks*
    -> **'Insert'**
-   Authorisation of the users that have access to the stock(s)

<a name="supplier"/>

## Setting up a supplier

> This will be the supplier that will receive the parcels from Floriday.

- Creation of a new **supplier**
    - *Constants -> Community -> supplier data -> suppliers -> ***'Insert'****
- The following settings must be turned on:
-	*Webservice -> activate for stock link ->* ***turn on checkmark***
	-	*Webservice -> Type webservice ->* ***'Floriday Koper API Express'***
	-	*Webservice -> incoming stock ->* ***'The stoch that was previously created'***
	-	*Webservice -> API key ->* ***You have to request this on the Floriday platform'***
	-	*Webservice -> Region GLN ->* ***this is the GLN code of the region (auction)***
	-	*Webservice -> Aflever GLN ->* ***This is the GLN code of the exact delivery location***  

## Alternative locations

It is possible that a grower (connection) does not deliver in a certain region where a company is located. If the company is located at several locations (Rijnsburg and Aalsmaar, for example) and the grower does deliver there, this must be stated under alternative locations. When placing an order, the delivery location that is stored with the stock lot will be used. The lot contains either the main location or the deviating location, just where the grower delivers and what the next alternative location should be.

<a name="operation"/>

## Operation

After a correct design, Floriday's offer can be read. This can be done by the Import lots button or automatically via the Stock link timer.

### Connections

Syncing for the first time will be the first step to retrieve the connections made with the different growers on Floriday.
These growers are then saved in Florisoft, so that the next synchronization does not have to do this again.
With new connections or disconnected connections, this will be performed again, but only for the changes.

### Process offer

The first synchronization will collect the offer per grower and process it directly within Florisoft per grower. The next synchronization will only fetch and process the updates of the offer from the existing offer.
Lots are only created within Florisoft if a grower actually delivers to the specified regions.

### Offer

Within the Floriday online environment, assortment must be marked as 'favorite' at line level.
Only then will it also be included in the offer that Florisoft collects.
