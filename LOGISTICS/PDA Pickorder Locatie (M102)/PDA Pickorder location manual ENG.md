<img src="../../fslogo.png"/>

# PDA Pickorder location

## Introduction:

With the PDA Pickorder Location, every employee can place batches on location, so that they can eventually find the products quickly and easily with order picking. By assigning a location to the parties in the cell stock they can be found quikcly and efficiently.

You need the PDA Pickorder Location module for this. On the PDA, this module falls under the Location button.

<img src=".media/pict1.png" />

## Design:

There are two ways to use this module:

1. Scan the location first, then the lot.
2. Scan the lot first, then the location.

> _This is determined by system setting PDALocationPartijScan (ask support to convert this if necessary)_

**Putting parties on location**

If you want to scan the location, we advise you to assign a barcode to every cart or place in the cell and print it on sturdy stickers.

<img src=".media/pict2.png" />


**Scan lot first, then location**
> _System setting: PDALocationPartijScan is false_

1. Open the PDA and press the Location button.

<img src=".media/pict3.png" />

2. The positioning party screen opens. In this screen you can start scanning the lot.
3. In this example we scan an Allium Miami

<img src=".media/pict4.png" />

4. Assign a location by, for example, scanning the sticker A01 and the location is filled with A01

<img src=".media/pict5.png" />

In the stock, this lot is given the location A01

<img src=".media/pict6.png" />

**Scan location first, then lot**
> _System setting: PDALocatiePartijScan to true_

1. On the PDA, open the Location module
2. Scan the location barcode or entir it manuall in the scan field. In this example we use location B01
3. Scan the lot you want to place at location B01. For example, Zant Sumatra.

<img src=".media/pict7.png" />
(At location "1" there should stand "B01")

<img src=".media/pict4.png" />

## Print pickorders after assigning locations

Distribute a number of lots that are on location to a debtor and open the Pickorders screen.

Just like in the stock, the'location' column can be switched on in the Pickorders screen to see at which location the lot that needs to be picked up is located.

<img src=".media/pict8.png" />

<img src=".media/pict9.png" />



Pickorders can also be grouped by location

<img src=".media/pict10.png" />


The location can of course also be printed on the pick order packing list or sticker

<img src=".media/pict11.png" />

<img src=".media/pict12.png" />