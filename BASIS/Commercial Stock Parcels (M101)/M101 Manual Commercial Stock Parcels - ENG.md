<img src="../../fslogo.png"/>

# Florisoft Manual Commercial Stock Parcels (M101)

As soon as you have the **Commercial Stock Parcels** module, you will see a new tab in the **stock settings** under **Constants**, and a separate tab in the **Setup System** for the **Commercial Stock Parcels settings**.

Important information for setting up the module: before the module is configured, a Florisoft employee must check whether the hashing method is using the new method. Please contact the support department for this.  
The conversion can be done through the debug option **Convert Commercial Parcels Hash**. By default, this is already enabled on systems that were implemented around or after 2020. Systems that were already live before that year must be converted to the new hashing method. If this has not yet been done, please contact the support department.

In the example below, I created a commercial stock and indicated: **Is commercial stock**.

<img src=".Commerci%C3%ABle%20partijen/media/image1.png" style="width:6.28999in;height:3.48958in" />

For the logistics stock or stocks, you must then indicate: **Counts towards commercial stock**. See the example below for the flower stock:

<img src=".Commerci%C3%ABle%20partijen/media/image2.png" style="width:6.3125in;height:3.09154in" />

The reason why this checkbox is important for the process is that the timer function **Update Commercial Stock Parcels quantities** checks the logistics stock every specified number of minutes to update the quantities in the **Commercial Stock Parcels**. Quantities may already have been sold from the logistics parcel. See below:

<img src=".Commerci%C3%ABle%20partijen/media/image3.png" style="width:6.3in;height:2.27847in" />

For both the commercial stocks and the logistics stocks, the settings below must also be enabled on the **Posting** tab.

- For posting, set the checkbox for **Post only fully picked allocations** to **Always on**
- Enable **Post allocation if the customer is offline** when **Check fully picked** is enabled

<img src=".Commerci%C3%ABle%20partijen/media/image12.png" style="width:6.3125in;height:3.09154in" />

The system settings related to **Commercial Stock Parcels** are grouped together under the **Commercial Stock Parcels** tab:

<img src=".Commerci%C3%ABle%20partijen/media/image4.png" style="width:6.3in;height:2.02014in" />

The following four settings are highlighted below.

<u>CompartijDetails</u>

Shortcut for opening the **Commercial Stock Parcel details** screen. This can be configured freely.

<u>CPartijNrNietTonenWebshop</u>

Parcels that are created as a commercial parcel receive a **CPARTIJNR** on the logistics parcel. With this setting, you can filter parcels with a **CPARTIJNR** from the **Webshop** and **Webservice**.  
If set to **False**, you will see both the logistics parcel and the commercial parcel.  
If set to **True**, you will only see the commercial parcel.

<u>LogistiekPartijTonenFacthisto</u>

If this setting is **True**, the **Invoice History** screen opens with an extra screen showing the logistics parcel belonging to a commercial parcel.

<u>LogistiekPartijTonenWijzig</u>

If this setting is **True**, the **Edit Invoice** screen opens with an extra screen showing the logistics parcel belonging to a commercial parcel. See the example below.

<u>Example:</u>

As customer **JELLE**, I bought 320 **Alstroemeria Virginia**, but these actually came from 2 different logistics parcels. As a customer, I am of course not aware of this, and therefore I only receive 1 invoice line.  
The Florisoft user can, however, see from which logistics parcels the customer received the goods and can therefore also credit on this logistics parcel by right-clicking the **Logistics Parcel**.

<img src=".Commerci%C3%ABle%20partijen/media/image5.png" style="width:6.3in;height:5.875in" />

The same of course also applies to the **Invoice History** screen.

Like the other stocks, the commercial stock is also subject to user authorization.

Make sure that the timer that posts stock is also authorized for this stock, so that the allocations are posted correctly. Both the **commercial parcel allocations** and the **logistics parcel allocations** must be posted.

You can name the commercial stock however you like. However, this stock will receive a color from your **Navigator** theme. In the example below, this is purple:

<img src=".Commerci%C3%ABle%20partijen/media/image6.png" style="width:8.12472in;height:4.59344in" />

To merge parcels, select the parcels in the logistics stock and right-click the parcel, then choose **Merge Commercial Stock Parcels**.

<img src=".Commerci%C3%ABle%20partijen/media/image7.png" style="width:7.01042in;height:4.53761in" />

This opens the following screen:

<img src=".Commerci%C3%ABle%20partijen/media/image8.png" style="width:6.30208in;height:3.6783in" />

The selected parcels are shown here. On the right-hand side, you can average the price or use the price of the oldest or newest parcel. This can still be adjusted at the top after clicking these buttons. Nothing is saved until you click **OK**.  
The red box shows the photo of the logistics parcel. For the parcel where you enable the **Select** checkbox, the information from that parcel is copied to the commercial parcel, such as the photo, name, etc.

Parcels that have been merged receive their own parcel with parcel number in the **Commercial Stock**. This number is also visible in the **CPARTIJNR** column in the logistics stock.

If you want to add a parcel to an existing commercial parcel, select one of the logistics parcels with that **CPARTIJNR**, plus the parcel or parcels you want to add. The brown lines are logistics parcels that already have a **CPARTIJNR**; the white lines are the new ones:

<img src=".Commerci%C3%ABle%20partijen/media/image9.png" style="width:6.55208in;height:3.84227in" />

## Webshop

For customer **X**, I chose to show the **Cell stock** and the **Commercial Stock** as one stock in the **Webshop**, as **Webshop Stock**, called **Flowers**.

This is because for customer **X**, not every parcel should be converted into a commercial parcel. Only the products that would normally be **merged** in order to make the offer clearer for the customer.

30% of the logistics stock becomes **Commercial**, while the remaining 70% remains a separate logistics parcel.

<img src=".Commerci%C3%ABle%20partijen/media/image10.png" style="width:6.3in;height:2.65208in" />

<img src=".Commerci%C3%ABle%20partijen/media/image11.png" style="width:6.3in;height:2.56181in" />
