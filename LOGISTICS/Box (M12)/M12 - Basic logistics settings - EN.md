<img src="../../fslogo.png"/>

# Florisoft Manual Basic Logistics Settings - M12

The goal of this document is to show which settings will have to be adjusted in order to create the basic layout of the logistics regarding the Stocks, Box & pickorders. Ofcourse, there are a lot of different ways to do this.

This is the best design and kay-out to give a customer who want to work with the "Pickorder-divide" strategy. This means that everything in transit should be in the box, and everything that has been deliverd in the pickorders. With this layout, this can be installed (almost) fully. The only difference is that the pickorders can be printed directly in the box, so you basically already removed some divisions. 
You can see everthing in the pickorders, but you can filter the pickorders so you can only see the parcels which are in.

## Table of contents

[Introduction](#introduction)  
[Stock Settings](#stocksettings)   
[Debtor Settings](#debtorsettings)  
[Workflow](#workflow)  

## Stock Settings
We usually set up a purchasing stock (where the EKT purchases are received) and a CEL stock (where we divide parcels which, for example, need to be shown on the shop or can't be directly divided after purchase.)

**Purchasing stock**:

- **Stock Tab**. The stockcode and description.

<img src=".Basic logistics settings/media/image1.png"/>

- **Authorization Tab**. The users which are allowed in the stock. This has to include the Timer.

<img src=".Basic logistics settings/media/image2.png"/>


**Box Tab**. The Box where the parcels have to enter before they can be reported in.

<img src=".Basic logistics settings/media/image3.png"/>

**Carry out Tab**. Enable 'Box active' and enter the box where de divisions have to be carried out to. 0-stock must be removed after 1 day.

<img src=".Basic logistics settings/media/image4.png"/>

We also use a CEL stock. We carry parcels from purchase out to the CEL stock if we can't carry them out directly to a customer. This is so we have our own, real stock. This stock is also accessible via the webshop.

**CELstock**
**Stock tab**
The stockcode, description and the Debtornr.

*We use the Debtornr so that you can carry out divisions to this debtor. When you do, Florisoft will put it in the CELstock (which we are in right now). Further down this document are more settings described regarding the stock debtor.

<img src=".Basic logistics settings/media/image5.png"/>

**Authorization tab**
These are the users that are allowed into the stock, this has to be the Timer.

<img src=".Basic logistics settings/media/image6.png"/>

**Box Tab**
The Box where the parcels will have to go before they can be registerd in.

<img src=".Basic logistics settings/media/image7.png"/>

**Carry out Tab**
Activate Box active + the right stock. Also activate ' Don't carry out undivided parcels to the box' & ' but do so with parcels with active pickorder'. Also acivate the Remove 0-stock settings, and do so after 1 day.

<img src=".Basic logistics settings/media/image8.png"/>

**Carry out 2 Tab**
Activate ' Always create pickorder in thi stock'.

<img src=".Basic logistics settings/media/image9.png"/>

**Live Stock:**

**Box Tab**

<img src=".Basic logistics settings/media/image10.png"/>

**Carry out Carry out**

<img src=".Basic logistics settings/media/image11.png"/>

You will have to enable 'received parcels are 'on the way'' in the supplier settings:

<img src=".Basic logistics settings/media/image12.png"/>

### Debtor Settings
With all debtors which are NOT stock debtor enable 'Always create pickorders'

<img src=".Basic logistics settings/media/image13.png"/>

With all stock debtors, the debtors which are connected to the stocks (like CEL stock), enable the following:

<img src=".Basic logistics settings/media/image14.png"/>

<img src=".Basic logistics settings/media/image15.png"/>

These price settings make sure that your purchaseprice keeps the same in you purchase stock and won't be set as the sale price (as normally).

### Workflow
Parcels which are in transit will be shown in the Box. For example, see the parcels from the purchasing stock.

<img src=".Basic logistics settings/media/image16.png"/>

Parcels without division will be given a CEL sticker. In short, you will now that these parcels will have to be put into the CEL stock.
If you divide directly from a purchasing stock, then you will see these underneath the boxparcel in the boxdivisions. You will be issued the right sticker during the in-registration.

<img src=".Basic logistics settings/media/image17.png"/>

Parcels which have been registerd in and the divisions will be shown in the pickorders.

<img src=".Basic logistics settings/media/image18.png"/>

<img src=".Basic logistics settings/media/image19.png"/>

### Redividing

If you have divided to a debtor, which in hindsight has to go to another debtor. You can redivide within the invoices.

<img src=".Basic logistics settings/media/image20.png"/>

If the pickorder from the original customer has not yet been collected, so just has been printed. Then the existing pickorder will be converted to the new debtor.
This applies to when the whole parcel is redivided, or when it's only a part of it.

You can also put certain variables on the sticker:
HerverdelingDebnr(debnr from who had the division first)
HerverdelingOrdnr(ordnr from who had the division first)
BronXOrderBarcode(barcode from who has the division first)
FysiekHerverdeeld(Amount already picked of who had the division first)
Example sticker(Original had 2*60 divided to GERT, 1*60 was redivided to TEST)

<img src=".Basic logistics settings/media/image21.png"/>

If the original has been fully picked (printed), you can see here that a redivision is present.

<img src=".Basic logistics settings/media/image22.png"/>

As you can see in the top picture, the redivision button is lit up red. This means there are redivisions.

If you print the pickorder which applies to this debtor, the redividision sticker will follow.