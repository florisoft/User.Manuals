<img src="../fslogo.png"/>

# Quick guide manual add on Content Management System (CMS)

# Table of contents

[1 Create CMS zones 3](#create-cms-zones)

[2 Link zones to debtors 4](#link-zones-to-debtors)

[3 Create categories 5](#create-categories)

[4 Create pages 8](#create-pages)

[5 Creating rows 10](#creating-rows)

[6 Create CMS elements 14](#create-cms-elements)

#  

# 1 Create CMS zones

Welcome to the quick start manual Content Management System. (CMS) The
CMS offers customers the opportunity to merge the website and webshop
into one attractive e-commerce platform. The first step in using the CMS
is to create CMS zones.

A CMS zone is a defined area to which one or more debtors can be linked
to. This means that the customers linked to a certain zone have access
to the CMS components that are linked to the relevant zone. Zones act as
a type of authorization for the CMS.

**Step 1: Create one or more CMS zones in Florisoft.**

**Action:** Open the 'CMS Zones' window via the tabs ‘Constants’ -&gt;
‘System’ -&gt; ‘CMS Zones’.

-   Click the icon 'Add new item' to create a new CMS zone. See the left
    screenshot below.

<img src=".Quickstart manual webshop add on CMS\media\image2.png" style="width:4.30268in;height:1.94819in" /><img src=".Quickstart manual webshop add on CMS\media\image3.png" style="width:2.3125in;height:1.21875in" />

Enter the following information:

-   Code

-   Description (visible in the CMS)

Click the 'Ok' button to confirm the creation of a zone. Create multiple
zones as desired in the same way as described above. These are later
used to link debtors to (see chapter three) and the desired CMS
elements.

# 2 Link zones to debtors

After creating zones, it is necessary to link one or more of these zones
to the desired debtor(s). Below is described how this process works.

**Step 2: Link one or more zones to the desired debtor(s).**

**Action:** Open the 'Debtors' window from the 'Constants' -&gt;
'Community' and click on the 'CMS Zones' button on the 'internet' -&gt;
'Webshop2' tab.

-   Open the 'Constants' in Florisoft and navigate to the 'Community'
    > -&gt; 'Debtors' tab.

-   Open the debtor(s) you wish to link one or more zones to.

-   Navigate in the 'Debtors' window to the 'internet' -&gt; 'Webshop2'
    > tab.

-   <img src=".Quickstart manual webshop add on CMS\media\image4.png" style="width:3.62778in;height:1.27292in" />Click
    > the 'CMS Zones' button. The 'Debtor Package' window opens.

-   Click the 'Toevoegen' (add) button. The 'CMS Zones' window opens.

-   Select one or more zones and click the 'Ok' button. The selected
    > zones now appear in the 'Debtor CMS Zones' window.

-   Click the 'Ok' button in the 'Debtor CMS Zones' window. The selected
    > zones are now linked to this debtor.

Repeat the above steps for each debtor to which you want to link CMS
zones to.

-   

# 3 Create categories

After setting up zones in Florisoft it is possible to create categories
in the CMS. Categories are the tabs that are visible next to the
outstanding stocks/order lists.

<img src=".Quickstart manual webshop add on CMS\media\image5.png" style="width:8.8375in;height:0.46528in" />

**Step 3: Create one or more categories.**

**Action:** Log in to the webshop with an administrator account.
Activate the ‘Management’ environment of the webshop (tick in the upper
left corner of the screen) and click the 'Categories' menu. Choose
thereafter 'New category'. The Category window pops up.

> <img src=".Quickstart manual webshop add on CMS\media\image6.png" style="width:2.81597in;height:3.18819in" />
> **‘Properties’ tab**

-   Enter the name of the category under 'Category URL'. This name
    > appears in the URL of the page. The URL is the address of the
    > page. This is visible in the address bar of the browser.

> **Pay attention: it is not allowed to use spaces or special characters
> in the Category URL.**

-   Under 'Category display name' enter the name of the category as it
    > appears in the bar with the stocks/order list tabs. See the
    > screenshot above.

-   Make sure the tick 'Is visible in navigation' is on. This ensures
    > that this category becomes visible in the navigation.

**  
**

<img src=".Quickstart manual webshop add on CMS\media\image7.png" style="width:4.96181in;height:5.94306in" />**‘Translations’
tab**

-   Select the language for the translation from the drop-down menu.
    > Choose 'en' for English, 'de' for German, 'fr' for French, etc.

-   Enter the translations for both the ‘Category URL’ and the ‘Category
    > display’ name.

**  
**

**‘Visibility’ tab**

-   <img src=".Quickstart manual webshop add on CMS\media\image8.png" style="width:4.56597in;height:5.45278in" />Under
    > the ‘Zone’ dropdown menu, check one or more zones where this
    > category must be linked to.

-   Choose under the ‘Visible’ dropdown for 'Yes' or 'No'. This
    > determines whether the category is visible or invisible.

-   Under 'From' and 'Until' dates and times can be specified to which
    > the ‘Zone’ and ‘Visible’ two above settings apply.

-   Press the 'SAVE' button to create the category.

> **Note: the new category is not immediately visible on the webshop.
> This only happens when a page is linked to this category. See the next
> chapter to read how this works.**

# 4 Create pages

A CMS page is an accessible entity in the CMS to which certain content
is placed on. A page always fall under a category. Pages can be compared
to product groups in standard webshop stocks. There can be different
elements placed on a CMS page like: images, videos, textblocks, tables,
etc.

<img src=".Quickstart manual webshop add on CMS\media\image9.png" style="width:5.25472in;height:1.11693in" />

**Step 4: Create one or more new pages.**

**Action:** In the management environment of the webshop choose the
'Pages’ menu and choose' New page'. The CmsPage window opens.

<img src=".Quickstart manual webshop add on CMS\media\image10.png" style="width:4.94733in;height:2.89623in" />
**‘Properties’ tab**

-   The fields 'Page name' and 'Page display name' work in the same way
    > as creating a category (see chapter three)

-   Select a previously created category in the dropdown menu 'Select a
    > category' under which this page should be visible.

-   Check the box next to 'Is visible in navigation' to make the page
    > visible on the webshop.

**  
**

**‘Advanced’ tab**

On the 'Advanced' tab settings related to SEO (search engine
optimization) can be set. These settings are not necessarily needed for
the proper functioning of the CMS. That is why they are not described in
this quickstart manual. See the extensive manual webshop add on CMS for
a description of these settings.

**‘Translations’ and ‘Visibility!’ tabs**

<img src=".Quickstart manual webshop add on CMS\media\image11.png" style="width:3.01181in;height:3.59375in" /><img src=".Quickstart manual webshop add on CMS\media\image12.png" style="width:2.98611in;height:3.56597in" /><img src=".Quickstart manual webshop add on CMS\media\image13.png" style="width:3.01736in;height:3.59375in" />
The tabs 'Translations' and 'Visibility' work in the same way as
described in chapter two.

Finally click on the 'SAVE' button to create the page. Now the
previously created category with the new page is visible after the
stocks/order lists on the webshop.

# 5 Creating rows

A CMS page depends on rows and columns for its alignment on different
types of devices. (PC, laptop, smartphone and tablet) This chapter shows
how creating a row works. Each CMS element must be in column which in
turn falls into a row. This means that every page actually consists of a
sort of grid, as is common in a spreadsheet program such as Microsoft
Excel.

**Step 5: Create a new row**

**Action:** start every empty CMS page with creating a row. Click the
'+' icon on the right-hand side of the screen in the gray bar with
'CmsPage'. The 'Add component' window opens. In this window, scroll down
and click on the 'Row' element.

<img src=".Quickstart manual webshop add on CMS\media\image14.png" style="width:8.8375in;height:0.18125in" />

<img src=".Quickstart manual webshop add on CMS\media\image15.png" style="width:5.40782in;height:3.24528in" />

Read more on the next page.

> <img src=".Quickstart manual webshop add on CMS\media\image16.png" style="width:4.31042in;height:5.14097in" />**‘Properties’
> tab**
>
> After creating a new row, a column is automatically created with the
> same size (width) as the parent row. In addition, the settings window
> of this column opens. See the screenshot at the left.
>
> The sliders behind 'Width' determine the alignment of CMS elements on
> devices with different screen sizes such as PC’s/laptops, tablets and
> smartphones.
>
> The total width of any screen (independent from the used device)
> consists of twelve fictitious columns. This means that an element can
> be at least one and at most twelve columns wide. This applies to all
> types of devices such as a PC, laptop, tablet and smartphone.
>
> The upper slider applies to PC’s and laptops. The middle slider is for
> tablets and the bottom slider is for smartphones.
>
> <u>Example:</u>  
> If you want to place two elements next to each other on a PC, set the
> top slider to 50%. (six columns)
>
> The second column (see the next chapter for creating columns) also
> gives you a value of 50%. Now two columns appear next to each other
> both with a width of 50%. So 2 columns of 50% makes 100% width, which
> in turn represents 12 columns.
>
> If you want three columns next to each other, give each column a width
> of 33%. (four columns) 3 columns of 33% makes 100%. (twelve columns)
>
> The above principle also works for tablets and smartphones.

<img src=".Quickstart manual webshop add on CMS\media\image17.png" style="width:4.31181in;height:5.15069in" />**‘Styling’
tab (optional)**

The following settings on the styling tab can be set:

Choose a background color under the 'Background' dropdown menu. A color
picker pops up where a color can be chosen. Select a color and click the
‘SAVE’ button in de color picker to apply the chosen color.

Choose at ‘Height’ for 'Auto' or a fixed height in Px (pixels), Rem
(relative to font size) or Percentages.

It is recommended to choose 'Auto'. Then the column becomes as high as
needed for its containing content.

At 'Margin' enter a value for the margin (white space) around the
column. A number can be entered at the four purple circled spots in the
orange border.

By default, Px (pixels) is used as default unit. In addition, it is also
possible to choose ‘Rem’ or ‘Percent’.

Padding determines the space on the inside of the column. The settings
work according to the same principle as the 'Margin'.

**‘Advanced’ tab**

On the 'Advanced' tab, settings related to SEO (search engine
optimization) can be set. These settings are not necessary for the
proper functioning of the CMS. That is why they are not described in
this quick start manual. See the extensive manual webshop add on CMS for
the working of these settings.

**‘Visibility!’ tab**

The 'Visibility' tab works in the same way as with creating pages and
categories. See chapter three for more information about the available
settings in the ‘Visibility!’ tab.

<img src=".Quickstart manual webshop add on CMS\media\image18.png" style="width:3.44861in;height:4.12014in" /><img src=".Quickstart manual webshop add on CMS\media\image19.png" style="width:3.43819in;height:4.11319in" />

# 6 Create CMS elements

A CMS element is a self-configurable piece of content on a page. There
are different types of content available: photos, videos, banners,
textboxes, tables, sliders, etc. The CMS already offers more than 15
different elements to add to a page. Each element must reside in a
column. Each column in turn must reside inside a row. A CMS page after
creating a row and column looks like this:

<img src=".Quickstart manual webshop add on CMS\media\image20.png" style="width:9.53687in;height:0.52083in" />

**Step 6: Add one or more desired CMS elements to a page.**

**Action:** Click the '+' icon on the right side of the screen in the
gray bar representing the column. (stated with 'Column' on the left
side) The 'Add component' window opens. CMS elements can be selected
from this window.

On the pages below a demo page is set up. This page consists of the
following elements: carousel, text boxes, video and a footer. It gives a
representative impression of the possibilities of the CMS.

**Add a Carousel**

-   <img src=".Quickstart manual webshop add on CMS\media\image21.png" style="width:4.5625in;height:0.63958in" />Choose
    in the 'Add component' window the ‘Carousel’ element.  
    The carousel is created and the properties window of the ‘Carousel’
    automaticly opens.

When the properties window of an element (like the carousel in this
example) doesn’t open, or you close it by mistake, it can be reopened by
clicking the gear icon of the concerning element. See the screenshot
above.

**  
**

**‘Properties’ tab**

-   <img src=".Quickstart manual webshop add on CMS\media\image25.png" style="width:4.42639in;height:5.26389in" />Auto
    height: automatically adjusts the height of the carousel according
    to the height of the contents of the carousel.

-   Automatically play: ensures that the carousel automatically start
    playing through its content.

-   Chevron: offers the possibility to click forwards and backwards
    through the content of the carousel with the help of two arrows on
    respectively the left and right side of the carousel.

-   Pagination: displays a number of clickable points (bullets) with
    which you can jump to a specific element within the carousel. At the
    bottom of the carousel.

-   Repeat: ensures that the carousel keeps running continuously. When
    the last element is reached, the carousel returns to the first
    element.

-   Swipen: ensures that the user can swipe through the content of the
    carousel on mobile devices.

**‘Styling’ tab**

The 'Styling' tab contains a number of settings related to the styling
(appearance) of the carousel. These settings are not necessary for the
correct working of the carousel. These settings are described in the
extended manual add on CMS.

**‘Advanced’ tab**

The 'Advanced' tab contains a number of advanced settings related to the
carousel. These settings are not necessary for the correct working of
the carousel. A more detailed description of these settings can be found
in the extended manual add on CMS.

**‘Visibility!’ tab**

<img src=".Quickstart manual webshop add on CMS\media\image26.png" style="width:2.98056in;height:3.54583in" /><img src=".Quickstart manual webshop add on CMS\media\image27.png" style="width:2.95278in;height:3.53264in" /><img src=".Quickstart manual webshop add on CMS\media\image28.png" style="width:2.95774in;height:3.53774in" />On
the tab 'Visibility' several settings with regard to the authorization
of the carousel can be set. These settings work in the same way as with
creating categories and pages.

**Add elements to the carousel**

<img src=".Quickstart manual webshop add on CMS\media\image29.png" style="width:5.03333in;height:3.86042in" />An
element (in this case a carousel) may in turn contain other elements
(e.g. images). Which elements you can add depends on the parent element.

**Step 7: add the desired element(s) to a (parent) element.**

**Action:** Click on the '+' icon in the bar to which you want to add an
element to. In this example we clicked the ‘+’ icon of the ‘Carousel’
bar.

Choose 'Image' from the 'Add component' menu. This results in adding an
image to the carousel.

**‘Properties’ tab**

-   Click on the camera icon behind ‘Image’ to select the images for use
    in the carousel.

> In the following window (see screenshot alongside) it is possible to
> upload images to the CMS using the 'UPLOAD' button.
>
> It is possible to organize images with the help of folders. Click the
> ‘NEW FOLDER’ button to create a new folder.
>
> Open a folder to see/edit its contents.

-   <img src=".Quickstart manual webshop add on CMS\media\image30.png" style="width:3.59097in;height:4.29514in" />Click
    on the image which acts as the first image in the carousel.

-   A cut out preview of the selected photo is displayed behind 'Image’.

-   Click on the 'SAVE' button to add the photo to the carousel.

> Repeat the above steps to add more images or other elements to the
> carousel.

**Result**  
In the screenshot below you can see the result so far. It is clearly
visible that every image in the carousel is an image element. All image
elements together form the content of the carousel itself. (Carousel)
The Carousel is located in a column (Column) which in turn falls within
a row (Row). The upper element, CmsPage, represents the highest element.
This is the current CMS page itself.

<img src=".Quickstart manual webshop add on CMS\media\image31.png" style="width:9.50711in;height:4.97917in" />

**  
Add a textbox**

Under the carousel comes a new row with two columns. The left column
contains two text boxes beneath each other. The right-hand column
contains an video.

**Step 8: Make a new row and one or more column(s) to add new elements
below an existing element.**

**Action:** Click the ‘+’ icon in the ‘CmsPage’ bar to add new row(s)
and column(s) on the current page.

-   <img src=".Quickstart manual webshop add on CMS\media\image32.png" style="width:4.42708in;height:0.32292in" />Click
    on the '+' icon in the ‘CmsPage’ bar. The ‘Add Component’ window
    appears.

-   <img src=".Quickstart manual webshop add on CMS\media\image36.png" style="width:2.62569in;height:1.03542in" />Scroll
    down and choose 'Row'. A new row and column is added and immediately
    the 'Column' window opens.

-   Adjust the alignment of the column as desired. See chapter five for
    an explanation about the alignment of columns.

Because two columns are placed side by side in this row, the width of
this column is set at 50%. With this, the column takes 50% of the parent
row. The second column will cover the remaining 50% of space. After
adding the column, the second row below the carousel looks like the
screenshot below.

<img src=".Quickstart manual webshop add on CMS\media\image37.png" style="width:8.8375in;height:0.42847in" />

-   Click on the '+' icon on the right side of the column. The 'Add
    component' window appears.

-   Select the 'Text' element in this window. The properties window of
    the text element to be created now appears.

Read further on the next page.

<img src=".Quickstart manual webshop add on CMS\media\image38.png" style="width:3.63842in;height:4.33913in" />

-   Type the desired text in the large white text box (Content) at the
    bottom of the ‘Text’ window. See the screenshot alongside.

With the buttons at the top of the text box (outlined in purple) it is
possible to give selected text a basic styling, such as **bold** (B),
*italics* (I) and title. (H)

In addition, it is possible to create lists, follow-ups, insert images
and use hyperlinks. These functions are all accessible from the button
bar at the top of the text box.

-   Click the ‘SAVE’ button to create the text box on the page. The text
    box is placed neatly in the column.

-   Click on the '+' icon of the current column again to add another
    text box in the same way. After you added two text boxes to the left
    column. The result looks something like this.

<img src=".Quickstart manual webshop add on CMS\media\image39.png" style="width:4.53044in;height:1.10751in" />

**  
**

**Add a video**

The CMS offers the possibility to add video using the video element.
Below is described how this element is added to a new column.

As already described with the creation of the carousel and text boxes,
each element must be placed inside a column which in turn falls into a
row. The video is placed in the right-hand column so that both text
boxes and the video align nicely with the carousel above.

-   Add a new column to the same row as the just created text boxes.

<img src=".Quickstart manual webshop add on CMS\media\image40.png" style="width:8.61739in;height:2.10187in" />

-   This column automatically gets the width of the remaining space in
    the row. Of course it is also possible to specify the width
    yourself.

-   Click on the '+' icon of the new column. The ‘Add window’ opens.

-   Scroll down and choose the 'Video' element. The 'Video' window
    opens.

Read further on the next page.

> <img src=".Quickstart manual webshop add on CMS\media\image41.png" style="width:4.74583in;height:5.39097in" />**‘Properties’
> tab**
>
> On this tab you can find a number of settings regarding the behavior
> of the video. The most important two are 'Link for the video' and
> 'Screen ratio'.

-   At 'Link for video' enter the URL to the video.

> Well-known video platforms on the internet offer in most cases the
> possibility to generate/copy a link to external applications, such as
> the CMS in this case.

-   Select the aspect ratio of the video under 'Screen ratio'.

> The other settings are user dependent. The other settings are
> described in the extensive CMS manual. It is possible to experiment
> with these settings to see the result.

-   Click the 'SAVE' button to add the video to the page.

> <img src=".Quickstart manual webshop add on CMS\media\image42.png" style="width:3.35233in;height:2in" />

**Result**

Below again a screenshot of the result so far is shown.

<img src=".Quickstart manual webshop add on CMS\media\image43.png" style="width:7.30189in;height:5.34474in" />

**add a Footer (optional)**

When creating a new CMS page, a container (Container) is automatically
created to hold a footer. A footer is the bottom part of a page. Each
CMS page contains a footer by default. Usually a footer contains
secondary information such as address details, links to external
websites and social media. The CMS offers a pre-defined footer element
by default.

It is also possible to design the footer completely to your own wishes
in the same way as the previously created elements. (carousel, text box
and video) Creating a footer works as follows:

<img src=".Quickstart manual webshop add on CMS\media\image44.png" style="width:8.8375in;height:1.41597in" />

-   <img src=".Quickstart manual webshop add on CMS\media\image45.png" style="width:0.9375in;height:0.30833in" /><img src=".Quickstart manual webshop add on CMS\media\image46.png" style="width:1.19792in;height:0.30833in" />Click
    the '+' icon in the Container bar. The ‘Add Component’ window opens.

-   Scroll down and click on the 'Standard Templates' header. That part
    of the ‘Add component’ window opens downward.

-   Choose the 'Footer template' element.

<img src=".Quickstart manual webshop add on CMS\media\image47.png" style="width:5.49198in;height:1.68868in" />

> A standard footer element with four columns is added, as shown in the
> screenshot on the previous page. Each column contains a text box. The
> last column contains a text box with icons below it for social media.
> (SocialIcons element)
>
> <img src=".Quickstart manual webshop add on CMS\media\image48.png" style="width:1.70833in;height:0.5in" />As
> described earlier, it is possible to design the footer completely
> according to your own wishes. This works the same way as
> creating/editing all other elements such as the carousel, text boxes
> and video.
>
> When all the desired elements are on the page, the management
> environment can be closed.

-   Click the 'Management' checkbox to close the management environment.

Now the webshop returns to the 'normal' view, as customers also see it.

**Final result**

Below is a screenshot of the end result. The carousel, text boxes, video
and footer are clearly visible. Repeat the steps in this manual to
create more categories, pages and elements as desired.

<img src=".Quickstart manual webshop add on CMS\media\image49.png" style="width:7.16981in;height:5.02157in" />
