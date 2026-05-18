<img src="../fslogo.png">

# Quick guide manual add on Content Management System (CMS)

[Creating CMS zones](#creating-cms-zones)  
[Linking CMS zones to debtors](#link-zones-to-debtors)  
[Creating categories](#creating-categories)  
[Creating pages](#creating-pages)  
[Creating rows](#creating-rows)  
[Creating CMS elements](#creating-cms-elements)  
[Adding rows](#adding-rows)  
[Making us of the CMS Panel element](#making-use-of-the-cms-panel-element)  
[Adding CMS textboxes](#adding-a-textbox)  
[CMS video eleement](#adding-the-video-element)  
[CMS Spacer element](#spacers)  
[CMS Login Form element](#login-form)  
[CMS footer](#adding-a-footer-optional)  

## Creating CMS Zones

Welcome to the quick start manual Content Management System. (CMS) The CMS offers customers the opportunity to merge the website and webshop into one attractive e-commerce platform. The first step in using the CMS is creating CMS zones.

A CMS zone is a defined area to which one or more debtors can be linked to. This means that the customers linked to a certain zone have access to the CMS components that are linked to the relevant zone. Zones act as a type of authorization for the CMS.

*Follow the steps below*:

|Step #|Explanation|
|:--|:--|
|**1**|Open the constants screen. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image1.png"></details>|
|**2**|Navigate to the following path in the file system:<br>**System**(#1) → **Internet**(#2) → **CMS Zones**(#3)<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image2.png"></details>|
|**3**|Click on the '*Add new item*' icon (The plus sign '**+**')|
|**4**|By clicking the Add new button a CMS zone creation screen will appear. Fill in the following fields:<br>- Code<br>- Description (this is visible in the CMS)
|**5**|Click the 'Ok' button to confirm the creation of a zone. Create multiple zones as desired in the same way as described above. These are later used to link debtors to (see chapter three) and the desired CMS elements)|


## Link zones to debtors

After creating zones, it is necessary to link one or more of these zones to the desired debtor(s). Below is described how this process works.

|#|Explanation|
|:--|:--|
|**1**|Open the constants screen.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image1.png"></details>|
|**2**|Navigate to the following path:<br>**Community** → **Debtor data** → **Debtors**<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image3.png"></details>|
|**3**|Open the debtor(s) you wish to link one or more zones to.|
|**4**|In the just opened window navigate to the following path in the file structure:<br>**Internet**(#1)→**CMS**(#2)<details><summary><b>Click here for the example image</b></summary><img src=".Manual theme management Florishop/media/image54.png"></details>|
|**5**|Click the '**CMS Zones**'(#3) button. The 'Debtor Package' window opens.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image3.png"></details>|
|**6**|Click the 'Toevoegen' (add) button. The 'CMS Zones' window opens.|
|**7**|Select one or more zones and click the 'Ok' button. The selected. <br><br>*Zones now appear in the 'Debtor CMS Zones'* window.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image5.png"></details>|
|**8**|Click the 'Ok' button in the 'Debtor CMS Zones' window.<br><br>*The selected zones are now linked to this debtor.*<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image6.png"></details>|
|:repeat:|Repeat the above steps for each debtor to which you want to link CMS zones to.|

## Creating categories

After setting up zones in Florisoft it is possible to create categories in the CMS. Categories are the tabs that are visible next to the outstanding stocks/order lists.

*Follow the steps below:*

|#|Explanation|
|:--|:--|
|**1**|Log in to the webshop with an administrator account.|
|**2**|Activate the ‘Management’ environment of the webshop by clicking on the user icon, this opens a dropdown. Click on the dropdown option '*Management*'.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image8.png"></details|
|**3**|Click on the CMS section in the management bar, this should open a drop down menu click on the '*Categories*' button. This should bring us to the CMS categories screen. If there any already existing CMS categories they will be shown here.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image9.png"></details|
|**4**|To create a new CMS category simple click the '**+**' this should show the category creation menu.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image10.png"></details>|
|**5**|Fill in the following fields:<br>- **Category URL:** this is the name of the category that will also appear in the URL. <br>**Do NOT USE SPACES!**<br><br>- **Category display name:**'Category display name' enter the name of the category as it appears in the bar with the stocks/order list tabs. See the screenshot above.<br><br>- **Is visible in navigation Order in the navigation**: make sure this checkbox is enabled for it to become visible in the navigation.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image11.png"></details|
|**6**|Click on the tab (text) '*Translations*'.|
|**7**|Set the following settings:<br><br>- **Name**: Select the language for the translation from the drop-down menu. EN for English etc.<br><br>- **Category URL**: Enter the translations for both the ‘Category URL’ and the ‘Category display’ name|
|**8**|Click on the tab (text) '*Visibility*'.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image12.png"></details|
|**9**|Set the following settings:<br><br>- **Zone**:Under the ‘Zone’ dropdown menu, check one or more zones where this > category must be linked to.<br><br>- **Visible:** Choose under the ‘Visible’ dropdown for 'Yes' or 'No'. This determines whether the category is visible or invisible.<br><br>- **From and Until**: Under 'From' and 'Until' dates and times can be specified to which the ‘Zone’ and ‘Visible’ two above settings apply.<br><br>- **Save:** Press the 'SAVE' button to create the category.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image13.png"></details>|
|:bulb:|**Note: the new category is not immediately visible on the webshop. This only happens when a page is linked to this category. See the next chapter to read how this works**|

## Creating pages

A CMS page is an accessible entity in the CMS to which certain content is placed on. A page always fall under a category. Pages can be compared to product groups in standard webshop stocks. There can be different elements placed on a CMS page like: images, videos, textblocks, tables, etc.

*Follow the steps below*:

|#|Explanation|
|:--|:--|
|**1**|After creating the category close the creation screen to get back to the management screen. In the left tab above the selected '*Categories*' tab **click** on '*Pages*'.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image14.png"></details>|
|**2**|To create a page click on the button with a '**+**' plus sign as its text. This should open the page creation screen.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image15.png">|
|**3**|On default we should find ourselves in the '*Properties*' tab, change the following settings in this tab:<br><br>- **URL**: the name of the page that gets shown in the page's URL.<Br><br>- **Page display name**: the name that gets displayed to the customer on the website.<br><br>- **Category:** Select the right category, we selected the one that was created in the previous chapter.<br><br>- **Is visible in navigation**: check this checkbox to make the page visible on the webshop.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image16.png"></details> |
|**4**|Open the '*Advanced*' tab.|
|**5**|On the 'Advanced' tab settings related to SEO (search engine optimization) can be set. These settings are not necessarily needed for the proper functioning of the CMS. That is why they are not described in this quickstart manual. See the extensive manual webshop add on CMS for a description of these settings.|
|**6**|Open the '*Translations*' tab.|
|**7**|Set the following settings:<br><br>- **Name**: Select the language for the translation from the drop-down menu. EN for English etc.<br><br>- **Category URL**: Enter the translations for both the ‘Category URL’ and the ‘Category display’ name|
|**8**|Open the '*Visibility*' tab.|
|**9**|Set the following settings:<br><br>- **Zone**:Under the ‘Zone’ dropdown menu, check one or more zones where this > category must be linked to.<br><br>- **Visible:** Choose under the ‘Visible’ dropdown for 'Yes' or 'No'. This determines whether the category is visible or invisible.<br><br>- **From and Until**: Under 'From' and 'Until' dates and times can be specified to which the ‘Zone’ and ‘Visible’ two above settings apply.<br><br>- **Save:** Press the 'SAVE' button to create the page.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image17.png">|

## Creating rows

A CMS page depends on rows and columns for its alignment on different types of devices. (PC, laptop, smartphone and tablet) This chapter shows how creating a row works. Each CMS element must be in column which in turn falls into a row. This means that every page actually consists of a sort of grid, as is common in a spreadsheet program such as Microsoft Excel.

*Follow the steps below*:

|Step|Explanation|
|:--|:--|
|**1**|To edit a CMS page using the CMS editor make sure that the '*Editor*' in the top right of the screen is set to '**Aan**' (Dutch for On). You should now be a able to see grey bars for the already existing CMS components.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image19.png">|
|**2**|Click the '+' icon on the right-hand side of the screen in the gray bar with 'CmsPage'. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image18.png">|
|**3**|This opens the '*Add Component*' screen, use the search function on the top right of the screen to search for '*Row*'.<br>Click on the plus sign (+) below the item called '*Row*'.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image20.png"></details>|
|**4**|By clicking on the add button you will automatically be taken to the Column creation screen. This is because a column gets added automatically when creating a column.|
|**5**|In the column setting screen you can do the following in the *Properties* tab:<br><br>The sliders behind 'Width' determine the alignment of CMS elements on devices with different screen sizes such as PC’s/laptops, tablets and smartphones.<br><br>The total width of any screen (independent from the used device) consists of twelve fictitious columns. This means that an element can be at least one and at most twelve columns wide. This applies to all types of devices such as a PC, laptop, tablet and smartphone.<br><br>The upper slider applies to PC’s and laptops. The middle slider is for tablets and the bottom slider is for smartphones.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image21.png"></details>|
|**6**|Open the '*Styling tab*'.|
|**7**|The styling itself is ofcourse optional, but the following settings can be set:<br><br>Choose a background color under the 'Background' dropdown menu. A color picker pops up where a color can be chosen. Select a color and click the ‘SAVE’ button in de color picker to apply the chosen color.<br><br>Choose at ‘Height’ for 'Auto' or a fixed height in Px (pixels), Rem (relative to font size) or Percentages.It is recommended to choose 'Auto'. Then the column becomes as high as needed for its containing content.<br><br>At 'Margin' enter a value for the margin (white space) around the column. A number can be entered at the four purple circled spots in the orange border.<br><br>By default, Px (pixels) is used as default unit. In addition, it is also possible to choose ‘Rem’ or ‘Percent’.<br><br>Padding determines the space on the inside of the column. The settings work according to the same principle as the 'Margin'.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image22.png"></details>|
|**8**|Open the '*Advanced*'.|
|**9**|On the 'Advanced' tab, settings related to SEO (search engine optimization) can be set. These settings are not necessary for the proper functioning of the CMS. That is why they are not described in this quick start manual. See the extensive manual webshop add on CMS for the working of these settings.|
|**10**|Open the '*Visibility*'|
|**11**|The 'Visibility' tab works in the same way as with creating pages and categories. See chapter three for more information about the available settings in the ‘Visibility!’ tab.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image23.png"></details>|
|**12**|After having set the right settings click the save button to save the column in the CMS.<br>**You can always make adjustments later on**.|


## Creating CMS elements

A CMS element is a self-configurable piece of content on a page. There are different types of content available: photos, videos, banners, textboxes, tables, sliders, etc. The CMS already offers more than 15 different elements to add to a page. Each element must reside in a column. Each column in turn must reside inside a row. A CMS page after creating a row and column looks like this.

<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image24.png"></details>

*In the steps below we'll walk through how to add one or more CMS elements to a a page.*

|#|Explanation|
|:--|:--|
|**1**|On the CMS page you should see a grey bar for the column we just created in the previous chapter. If you created multiple columns then select the one you want to add CMS elements to.<br>Click the add (+) in the column to add a new element.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image32.png"></details>|
|**2**|After having clicked the '*add*' button a new screen should appear called '**Add component:** *in column*. The screen should have a variety of CMS elements to chose from for the purpose of this manual we'll add a Carousel element.|
|**3**|If you can't find the carousel element or the specific element you are looking for you may search for it using the search function in the top right.<br>**Once you have the right element you can press the '+' button to add it to the column. For more information click the 'i' button** <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image42.png"></details>|
|**4**|We should now find ourselves in the Carousel CMS element creation/setting screen. On default we should be in the properties screen, you can adjust the following settings:<br><br>- **Auto height**: *automatically adjusts the height of the carousel according to the height of the contents of the carousel.*<br><br>- **Automatically play:** ensures that the carousel automatically start playing through its content. <br><br>- **Chevron:** *offers the possibility to click forwards and backwards through the content of the carousel with the help of two arrows on respectively the left and right side of the carousel.*<br><br>- **Pagination:** *displays a number of clickable points (bullets) with which you can jump to a specific element within the carousel. At the bottom of the carousel.*<br><br>- **Repeat**: *ensures that the carousel keeps running continuously. When the last element is reached, the carousel returns to the first element.*<br><br>- **Swipen:** *ensures that the user can swipe through the content of the carousel on mobile devices.*<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image43.png"></details>|
|**5**|Open the styling tab<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image44.png"></details>|
|**6**|The 'Styling' tab contains a number of settings related to the styling (appearance) of the carousel. These settings are not necessary for the correct working of the carousel. These settings are described in the extended manual add on CMS.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image45.png"></details>|
|**7**|Open the advanced tab|
|**8**|The 'Advanced' tab contains a number of advanced settings related to the carousel. These settings are not necessary for the correct working of the carousel. A more detailed description of these settings can be found in the extended manual add on CMS.|
|**9**|Open the visiblity tab.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image46.png"></details>|
|**10**|On the tab 'Visibility' several settings with regard to the authorization of the carousel can be set. These settings work in the same way as with creating categories and pages.|
|**11**|To save our changed settings together with the carousel element click on the **save** button.|
|**12**|In order to add images to our carousel we will need to add elements to the carousel. We can do this by clicking on the '+' button in the carousel's grey bar. This again opens the add **Add component**: *to X element* screen. There are two image elements: 1. image and 2. Banner. We recommend the use of the banner element because it has some additional functionalities compared to image.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image47.png"></details>|
|**13**|Adding the banner element will once again open a CMS element creation screen. We will only cover the '*properties*' tab here since the other ones will be the same as other elements.|
|**14**|To add an image to the banner click on the photo icon. This will open the image selection screen. In this screen you can either select an already existing image or upload a new one.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image48.png"></details>|
|**15**|By adding Title and subtitle you can add text just below the image.|
|**16**|By using the link field you can link to a page by clicking the image.|
|**17**|For our carousel we ofcourse want to add multiple images so repeat the last couple of steps to fill the carousel with images.|
|**18**|If your carousel's column is the only column in the parent compentent row, you will find the carousel to be way too big. To reduce the size of the carousel and its column add multiple new columns to the parent row.

### Adding rows

In the Florishop you are not limited to having only one row in a CMS page. The table below describes the process of adding more rows and adding some other elements to a CMS page.

*To do this follow the steps below*:

|Step|Explanation|
|:--|:--|
|**1**|In the CMS page there should be grey bar with the text: *Page* (\<Page name\>) click the '+' button in this bar.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image40.png"></details>|
|**2**|Search for row in the element search function. Click on the '+' button on the search result '*row*'. To add it to the page.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image41.png"></details>|
|**3**|To move the row up or down on the page, use the arrows ↑ or ↓ to move the row. As an example for this manual we will set the new row to be below the existing carousel row.<br><br>The same goes for moving columns left or right use the grey bar's arrow buttons (← & →) to move the columns left or right.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image49.png"></details>|

### Making use of the CMS Panel element

The panel component is basically a column component but with more styling options available, like a background image. It is recommended to put a panel inside a column to make it easier to align multiple elements. The next chapter gives an example of how to use a panel element as a background to multiple elements.

To add a panel follow the steps below:

|Step|Explanation|
|:--|:--|
|**1**|Add an element to a row or column by clicking on the grey bar '+' plus sign.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image32.png"></details>|
|**2**|In the element search function search for panel and click on its plus sign to add it to the parent component.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image39.png"></details>|


### Adding a textbox

This chapter will explain how to make a CMS textbox element and how to customize it.

|Step|Explanation|
|:--|:--|
|**1**|First let's add another column to the same row as our carousel if you haven't already added one. This should nicely split our row in two (or more depending if you haven't added multiple).|
|**2**|In order to add a background to our textbox we want to add a panel to our panel first. So click the + on the column, search for panel and add it to the column/row.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image32.png"></details>|
|**3**|We should get a popup to set up our newly created panel, for our usecase we simply add an image to the image variable by clicking on it and selecting/uploading the right image.|
|**4**|The panel is basically just a container for other CMS elements (just like the columns). So let's add our textbox here by clicking the panel's grey bar plus sign,  searching for the CMS element '*text*' and adding it.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image35.png"><img src=".Quickstart manual webshop add on CMS/media/image36.png"></details>|
|**5**|The CMS element editor should automatically open for the newly created text element. <Br><br>The properties tab is where the content for the text is added, the content we add can be written in two different formats *TinyMCE* and *Markdown*. Choose the one that is right for you do however note that markdown requires mark experience and is more restrictive than TinyMCE. For the purpose we will use for TinyMCE. <br><br>If you want to use markdown a cheatsheet is useful and can be found [here](https://www.markdownguide.org/cheat-sheet/).|
|**6**|The tinyMCE editor is pretty self explanatory but adding headers might be a bit confusing at first. To add headers do the following: click on the dropdown **Div** to open it and click on *Headings* which in turn again opens a dropdown to show headers of various sizes. Select the one that is right for you.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image37.png"></details> |
|**7**|You can also use the TinyMCE editor to make coloured text and decide the font size|
|**8**|If you use the Markdown editor you can make use of the styling tab to customize font size and colour.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image38.png"></details>|

### Adding the video element

The CMS offers the possibility to add video using the video element. Below is described how this element is added to a new column.

As already described with the creation of the carousel and text boxes, each element must be placed inside a column which in turn falls into a row. The video is placed in the right-hand column so that both text boxes and the video align nicely with the carousel above.

|Step|Explanation|
|:--|:--|
|**1**|As already described with the creation of the carousel and text boxes, each element must be placed inside a column which in turn falls into a row.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image32.png"></details>|
|**2**|If need be create a new column to place the Video element in.|
|**3**|This column automatically gets the width of the remaining space in the row. Of course it is also possible to specify the width yourself.|
|**4**|In order to add a background to our textbox we want to add a video element to our video first. So click the + on the column, search for 'video' and add it to the column/row.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image33.png"></details>|
|**5**|A CMS element creation window opens for the newly created video element. We should be in the properties tab, we can set the following settings here:<br><br>- At 'Link for video' enter the URL to the video.Well-known video platforms on the internet offer in most cases the possibility to generate/copy a link to external applications, such as the CMS in this case.<br><br>- Select the aspect ratio of the video under 'Screen ratio'.<br><br>- Click the 'SAVE' button to add the video to the page.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image34.png"></details>|

### Spacers

When using a container such as a panel or column you may want to change the vertical positioning of your CMS element. This is where spacers come in, the steps below describe how to add and configure them:

|Step|Explanation|
|:--|:--|
|**1**|Click on the '+' button in the grey bar of the container that you want to add the spacer to. This opens the add component screen, this opens the add component screen.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image32.png"></details>|
|**2**|Search the component screen for spacer using the search function in the top right. Click on the + (add) button of the search result called '*Spacer*'.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image30.png"></details>|
|**3**|The spacer configuration screen should open automatically, most of the time we only need to configure settings in the '*Properties*' tab. Configure the following:<br><br>- **Height in px**: the spacer's height in pixels (hardcoded value)<br><br>- **Height (when no height in px set)**: this dropdown contains some height templates for the spacer: small, medium, big.<br><Br>*If you are not satisfied with the height of the spacer remember that you can always tweak it later.* <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image31.png"></details>|
|**4**|Click the **Save** button to save the CMS element with your configuration.|


### Login form

Some of our customers make use of an anonymous CMS zone that allows non-logged in customers to check our stock (without seeing prices). They are ofcourse required to log in when making a purchase but to simply check our catalogue it isn't necessary. To make it easier for them to rememeber to log in we can add an additional login screen. 


*Another CMS element that is often used is the **Login form**, below you will find the steps to implement it on your FloriShop.*

|Step|Explanation|
|:--|:--|
|**1**|Click on the grey bar's '+' to open the *add component* screen. Search for '*Login Form*' and click on the '+' add button.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image28.png"></details>|
|**2**|Open the configuration screen if it isn't already open. There isn't much to configure here but you can set the following settings:<br><br>- **Display mode**: Compact or Full width, we'll use '*Compact*' as it has a more minimal aesthetic.<br>- **Show remember me**: *ShowRememberMe* adds the remember checkbox.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image29.png"></details>|
|**3**|You may find the login form we just added to be missing when exiting the CMS editor. This intentional because you are already logged in the login form won't show as you do not need it. |


### Adding a footer (Optional)

When creating a new CMS page, a container (Container) is automatically created to hold a footer. A footer is the bottom part of a page. Each CMS page contains a footer by default. Usually a footer contains secondary information such as address details, links to external websites and social media. The CMS offers a pre-defined footer element by default.

It is also possible to design the footer completely to your own wishes in the same way as the previously created elements. (carousel, text box and video) Creating a footer works as follows:

|Step|Explanation|
|:--|:--|
|**1**|Click the '+' icon in the Container bar. The ‘Add Component’ window opens.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image27.png"></details>|
|**2**|Scroll down and click on the 'Standard Templates' header. That part of the ‘Add component’ window opens downward.|
|**3**|Choose the 'Footer template' element.|
|**4**|A standard footer element with four columns is added, as shown in the screenshot on the previous page. Each column contains a text box. The last column contains a text box with icons below it for social media. (SocialIcons element).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image25.png"></details>|
|**5**|As described earlier, it is possible to design the footer completely according to your own wishes. This works the same way as creating/editing all other elements such as the carousel, text boxes and video.<br>When all the desired elements are on the page, the management environment can be closed.|
|**6**|Click the 'Management' checkbox to close the management environment. Now the webshop returns to the 'normal' view, as customers also see it.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image26.png"></details>|
