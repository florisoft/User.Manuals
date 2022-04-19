<img src="../fslogo.png"/>

# Florisoft manual Webshop times

# Table of contents 

[1 Preface](#preface)

[2 Use cases webshop times](#use-cases-webshop-times)

[2.1 Opening and closing of stock(s)](#opening-and-closing-of-stocks)

[2.2 Time schedules combined with departure days](#time-schedules-combined-with-departure-days)

[3 Creating time schedules in Florisoft](#creating-time-schedules-in-florisoft)

[4 Applying time schedules](#applying-time-schedules)

[4.1 Opening and closing a stock](#opening-and-closing-a-stock)

[4.2 Using time schedules combined with departure days](#using-time-schedules-combined-with-departure-days)

[4.3 Link time schedules to stocks and debtors](#link-time-schedules-to-stocks-and-debtors)

[4.4 Optional: use departure days together with Delivery days](#optional-use-departure-days-together-with-delivery-days)

# Preface

Welcome to the Florisoft manual Webshop times. Webshop times can be used
for a variety of purposes. The most important functions of web shop
times are described in this manual. Webshop times are one of the more
difficult parts in Florisoft. However, they are frequently used inside
the flowers and plants business.

A lot of people are struggling to correctly understand the use of
webshop times in Florisoft and the webshop. This manual aims to give the
reader a basic understanding of the working of webshop times in
Florisoft and the webshop.

To give the reader a good understanding of this topic, the manual is
divided into several chapters and sections. Below is a brief overview of
the division of this manual.

After this preface, chapter two describes several use cases for webshop
times. Section 2.1 describes the most simple purpose for using webshop
times: opening and closing stocks/orderlists. When a stock/order list is
closed, the customer cannot see the products on it. On the other side,
when a stock/order list is open, the customer can see the products on
the concerning stock/order list and may buy from it.

After this, section 2.2 describes time schedules in combination with
departure days. This section explains the use case when a customer can
choose one or more departure days on the webshop together with webshop
times.

Chapter three describes the technical implementation of time schedules.
Time schedules are used to define times: opening or closing for
stocks/order lists, selectable or not selectable of departure days.

Chapter four is divided into four sections. Section 4.1 Opening and
closing a stock describes the linking of time schedules to a stock or
order list as defined in chapter three.

Section 4.2 Using time schedules combined with departure days, describes
the usage of time schedules in combination with departure days. Hereby
the time schedules as defined in chapter three are used to determine the
availability of the departure days in the webshop.

Thereafter, section 4.3 Link time schedules to stocks and debtors is a
step-by-step explanation about how to link time schedules to stocks and
order lists per debtor. These steps are necessary to make the departure
days available as defined in the previously created time schedules.

The last section, 4.4 Optional: use departure days together with
Delivery days. As stated, this section describes optional information.
It is possible to use departure days in combination with delivery days.
With this option, a difference between the division/pick order date and
the actual departure date can be made.

With this manual in hand, the user is able to define its own time
schedules and departure days.

# Use cases webshop times 

Webshop times can be used in different ways. The different ways to use
webshop times are described in this chapter.

## 2.1 Opening and closing of stock(s)

The first way to use webshop times is to open and close stock(s) on the
webshop. A time schedule is hereby linked to one or more stocks or order
lists. This time schedule determines when a stock is open or closed.
Below an example is shown:

**Time schedule  
**The time schedule below shows that on Wednesday the concerning
stock(s)/orderlist(s) are closed. This can be recognized by the white
marked line behind 'Wednesday'. All the other days are defined as open.
This can be recognized by the black marked lines behind the other days.

<img src=".Florisoft manual Webshop times EN\media\image2.png" style="width:4.888in;height:1.79636in" />

On Wednesday the stock/order list on the webshop looks like this. The
stock- or order parcels are visible on all other days.

<img src=".Florisoft manual Webshop times EN\media\image3.png" style="width:4.912in;height:2.48875in" />

See chapter three for an explanation of how to use web shop times to
open or close stocks.

## 2.2 Time schedules combined with departure days

A second way to use webshop times is in combination with departure days.
Departure days are days of the week which the customer can choose on the
webshop. These days determine when the purchased products depart from
the supplier to the customer.

Departure days are often customer specific. This means customer A can
choose other departure days than customer B. To use time schedules in
combination with departure days, the following information is needed:

-   The day(s) a customer may choose as departure day(s)

-   The times (per day) that the available departure day(s) can be
    chosen.

The principle of departure days in combination with timetables works as
follows:

**Departure days on debtor level  
**Departure days can be roughly set in two ways: on stock / order list
level or on debtor level. Below we see an example of departure days set
on stock level.

<img src=".Florisoft manual Webshop times EN\media\image4.png" style="width:4.936in;height:4.28581in" />

This method is used when departure days must apply at debtor level for
all accessible stocks/order lists for the debtor(s) This means that each
activated departure day can be chosen by this debtor

**Departure days on stock level per debtor  
**Choose the departure days in the ‘Raises by Sale through the Internet’
by activating the ticks in the Mon, Tue, Wen, etc. columns. This means
that the customer can choose those days as departure days in the
webshop.

<img src=".Florisoft manual Webshop times EN\media\image5.png" style="width:6.27552in;height:5.112in" />

**Optional:** it is possible to link time schedule codes (as defined in
the Constants -&gt; Dagen en tijden -&gt; Tijden) to the stocks by
filling them in the Mon open, Tue open, Wen open, etc. columns.

This way the concerning time schedules determines when the departure
days can be chosen.

Time schedules in combination with departure days are described in more
detail in chapter four.

**Departure days in combination with delivery days  
**The next use case for using time schedules on the webshop is in
combination with delivery days. Delivery days are one or more extra days
added to the existing departure days. Delivery days act as an extra time
buffer for things like transport and processing. In short, the working
of departure days in combination with delivery days works as follows:

1.  Define time schedules (see chapter three)

2.  Define departure days (see section 4.3 Link time schedules to stocks
    and debtors)

3.  Choose the amount of delivery days (see section 4.4 Optional: use
    departure days together with Delivery days)

Example:

When a customer on the webshop is able to select Monday as departure day
and the delivery day is set to 1, the customer sees Tuesday as departure
day on the webshop. However, when the customer selects Monday and buys
something, the division- and pick order date becomes Monday (visible in
Florisoft) but the departure day becomes Tuesday (visible for the
customer in the webshop)

The extra time between Monday and Tuesday can be used for things like
pick ordering, handling, transport, etc.

Using departure days in combination with delivery days is described in
section 4.4 Optional: use departure days together with Delivery days.

**  
**

# Creating time schedules in Florisoft

Working with webshop times first requires the definition of time
schedules. Time schedules can be defined in the Constants of Florisoft.
This chapter describes the creation of time schedules in Florisoft.

1.  Open de Constants by clicking the following icon from the Navigator:

<img src=".Florisoft manual Webshop times EN\media\image6.png" style="width:2.08696in;height:0.64768in" />

1.  Navigate to the System (no. 1) -&gt; Dagen & tijden (no. 2) -&gt;
    Times (no. 3)

> <img src=".Florisoft manual Webshop times EN\media\image7.png" style="width:4.44in;height:2.74123in" />

1.  Click the ‘Add new item’ button. (no. 4) The ‘Times’ window opens.

> <img src=".Florisoft manual Webshop times EN\media\image8.png" style="width:2.63478in;height:2.14199in" />

1.  Fill in a unique unit code in the concerning field. (no. 5) Each
    time schedule must have its own unique unit code.

2.  Fill in a description in the ‘Description’ field. (no. 6) Choose a
    clear description for your own reference.

3.  Click the ‘View times’ button. (no. 7) A small window pops up with
    the question to save the new time schedule.

4.  Click the ‘Yes’ button (no. 8) in the small window to save and
    proceed. The ‘Periods’ window opens immediately.

> **Note: the appearance of the ‘Periods’ window may vary when it opens
> for the first time.**
>
> <img src=".Florisoft manual Webshop times EN\media\image9.png" style="width:5.76522in;height:2.11874in" />

1.  Use the space bar on the keyboard to change the color of the little
    boxes. (no. 9) The boxes represent the hours of each day. The days
    are stated in the leftmost column.

> The hours of the day are stated in the top row. Starting with 0
> (12:00pm) Each following number represent the next hour: 1 = 1:00pm, 2
> = 2:00pm, 3 = 3:00pm, etc.
>
> The bar at the bottom of the screen with the numbers 0 to 59 (no. 10)
> represents the minutes. The minutes can be set per day and per hour.
>
> In the screenshot above it is visible that both Monday and Tuesday the
> whole day is set as 'open'. (no. 8) (black boxes) The other days are
> marked as closed. (no. 9) (white boxes)

1.  When the schedule is set up as desired, click the ‘Ok’ button
    (no. 11) in the ‘Periods’ window.

2.  Click the ‘Ok’ button in the ‘Times’ window. The newly created time
    schedule becomes visible in the Constants window:

> <img src=".Florisoft manual Webshop times EN\media\image10.png" style="width:4.00619in;height:1.46087in" />

# Applying time schedules 

The time schedules created in the Constants window (see the previous
chapter) can be applied in different ways on the webshop. Below
different ways of using time schedules are described.

## 4.1 Opening and closing a stock

The first way of using time schedules is using them as an actor for
opening and closing a stock. This refers to the first use case, ake the
following steps to apply a time schedule to a stock.

1.  Open the Constants menu by clicking the following icon:

> <img src=".Florisoft manual Webshop times EN\media\image6.png" style="width:2.08696in;height:0.64768in" />

1.  Navigate to the Locations -&gt; Stocks tab. An overview of all the
    available stocks is listed.

2.  Double click the stock to which the time schedule needs to be
    applied. The Stocks window opens.

> Read further on the next page.

1.  Click in the ‘Open hours’ field on the little black down pointing
    arrow. (no. 1) An index window with the available time schedules
    pops up.

2.  Click on one of the listed time schedules to select it. (no. 2)

3.  Click the ‘Ok’ button (no. 3) in the Index window to link the
    selected time schedule to the concerning stock.

> <img src=".Florisoft manual Webshop times EN\media\image11.png" style="width:5.8in;height:5.30132in" />

1.  Finally click the ‘OK’ button in the Stocks window to save the
    settings.

When a user logs in to the webshop and opens the relevant stock with a
linked time schedule, the user receives the message below.

<img src=".Florisoft manual Webshop times EN\media\image12.png" style="width:3.73913in;height:1.74657in" />

When the time reaches the opening hours as defined in the linked time
schedule, the stock opens automatically. Thereafter, when the time
reaches the end of the opening hours in the time schedule, the stock
will automatically close.

Beside linking to stocks, it is also possible to link a time schedule to
an order list. This is done the same way as with stocks. See the
screenshot below:

<img src=".Florisoft manual Webshop times EN\media\image13.png" style="width:5.22609in;height:5.10396in" />

## 4.2 Using time schedules combined with departure days

A second manner of working with time schedules is combined with
departure days. Departure days in Florisoft are predefined days a
webshop user can choose from. The departure date means the date that an
order leaves the supplier to the customer. Below is explained how time
schedules are used in combination with departure days.

To work with departure days you need to define **multiple** time
schedules. Each time schedule determines when a departure day can be
chosen. Example:

**Choose Monday as departure day  
**<img src=".Florisoft manual Webshop times EN\media\image14.png" style="width:5.51304in;height:2.02607in" />

On Saturday and Sunday it is possible to choose Monday as departure day.
The rest of the days cannot be chosen as departure day.

**Choose Tuesday as departure day  
**<img src=".Florisoft manual Webshop times EN\media\image15.png" style="width:5.52174in;height:2.02926in" />

On Monday it is possible to choose Tuesday as departure day. The rest of
the days Tuesday cannot be chosen as departure day.

**Choose Wednesday as departure day  
**<img src=".Florisoft manual Webshop times EN\media\image16.png" style="width:5.56042in;height:2.04348in" />

On Tuesday it is possible to choose Wednesday as departure day. The rest
of the days cannot be chosen as departure day.

**Choose Thursday as departure day  
**<img src=".Florisoft manual Webshop times EN\media\image17.png" style="width:5.58408in;height:2.05217in" />

On Wednesday it is possible to choose Thursday as departure day. The
rest of the days cannot be chosen as departure day.

Read further on the next page.

**Choose Friday as departure day  
**<img src=".Florisoft manual Webshop times EN\media\image18.png" style="width:5.57391in;height:2.04844in" />

On Thursday it is possible to choose Friday as departure day. The rest
of the days cannot be chosen as departure day.

**Choose Saturday as departure day  
**<img src=".Florisoft manual Webshop times EN\media\image19.png" style="width:5.57361in;height:2.04833in" />

On Friday it is possible to choose Saturday as departure day. The rest
of the days cannot be chosen as departure day.

As seen in the above screenshot, for each departure day a unique time
schedule needs to be created. The opening hours off all the created time
schedules need to follow up each other.

This means all the opening hours on each time schedule are following up.
This can be seen in the screenshots above. The opening hours for Tuesday
are following the opening hours for Monday. The opening hours for
Wednesday are following up the opening hours for Tuesday, etc.

## 4.3 Link time schedules to stocks and debtors

The next step in using time schedules in combination with departure days
is linking the departure days to the stocks and debtors. This section
describes how this works.

1.  In the Constants menu navigate to the Community -&gt; Debtors tab. A
    list with all the available debtors is shown.

2.  Double-click the debtor to which the departure days and time
    schedules need to be linked to.

3.  Navigate to the internet tab (no. 1)

> <img src=".Florisoft manual Webshop times EN\media\image20.png" style="width:5.74783in;height:4.9907in" />

1.  Check the ‘Must select a departure date’ tick (no. 2)

2.  Choose the ‘Toegankelijke voorraad’ option from the dropdownlist
    right next to the ‘Vertrekdagen volgens’ label. (no. 3)

3.  Click the ‘Internet access’ tab. (no. 4)

4.  Click the ‘Accessible stocks’ button. (no. 5) The ‘Raises by Sale
    through the Internet’ window opens.

> <img src=".Florisoft manual Webshop times EN\media\image21.png" style="width:5.77391in;height:2.77812in" />

1.  Select the stock that you want to link the departure dates and time
    schedules to by clicking on it. (no. 6) The stock code gets a red
    background color. The rest of the line gets a blue background color.

> <img src=".Florisoft manual Webshop times EN\media\image22.png" style="width:4.99993in;height:4.07292in" />

1.  Use the horizontal scrollbar (no. 7) to scroll the screen to the
    right till you see the Mon, Tue, We, Thu, etc. columns.

2.  Activate the ticks for the departure days which can be chosen on the
    webshop. (no. 8)

> <img src=".Florisoft manual Webshop times EN\media\image23.png" style="width:5.77391in;height:4.7034in" />

1.  Fill in the columns Mon open, Tue open, Wen open, Thu open, etc.
    with the time schedule codes as defined in the Constants -&gt; Dagen
    en tijden -&gt; Times.

> <img src=".Florisoft manual Webshop times EN\media\image24.png" style="width:4.66732in;height:2.11488in" />

1.  At least click the ‘OK’ button (no. 10) in the Raises by Sale
    through the Internet.

> Now this debtor must choose one of the available departure days which
> are only visible within the opening hours as defined in the time
> schedules.

## 4.4 Optional: use departure days together with Delivery days

## It is possible to use departure days together with Delivery days. The Delivery days are the amount of days ahead which are added up to the departure days. Delivery days are entered in the Delivery days field in the ‘Debtors’ window, internet tab. 

<img src=".Florisoft manual Webshop times EN\media\image25.png" style="width:6.3in;height:5.47014in" />

**Example:** when the current departure day is Monday and the ‘Delivery
days’ field contains a value of 1, the user sees a departure day on the
webshop which is one day after the current departure date.

So when the departure day is Monday and the Delivery days has a value of
1, the user sees a departure date of Tuesday. This functionality can be
used for making a difference between the time a pick order enters the
system and the actual departure date.

If there are any questions after reading the manual Webshop times, do
not hesitate to contact Florisoft support by e-mail:
support@florisoft.nl or by telephone: +31 (0) 71 40 806 10.
