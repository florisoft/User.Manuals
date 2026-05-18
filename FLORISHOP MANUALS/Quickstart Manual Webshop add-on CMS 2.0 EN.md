<img src="../fslogo.png">

# Quick Start Guide – Content Management System (CMS) Add-on

[Creating CMS Zones](#creating-cms-zones)  
[Linking CMS Zones to Customers](#linking-cms-zones-to-customers)  
[Highlighting Content – WITHOUT CMS ZONES](#highlighting-content--without-cms-zones)  
[Creating Categories](#creating-categories)  
[Creating Pages](#creating-pages)  
[Creating Rows](#creating-rows)  
[Creating CMS Elements](#creating-cms-elements)  
[Adding Rows](#adding-rows)  
[Using the CMS Panel component](#using-the-cms-panel-component)  
[Adding CMS Text Boxes](#adding-a-text-box)  
[CMS Video Element](#adding-a-video-element)  
[CMS Spacer Element](#spacers)  
[CMS Login Form Element](#login-form)  
[CMS Footer](#adding-a-footer-optional)  

## Creating CMS Zones

Welcome to the quick start guide for the Content Management System (CMS). The CMS allows customers to combine the website and webshop into one attractive e-commerce platform. The first step when using the CMS is creating CMS zones.

A CMS zone is a defined area to which one or more customers can be linked. This means that customers linked to a specific zone have access to the CMS components connected to that zone. Zones function as a form of authorization within the CMS.

*Follow the steps below:*

|Step #|Explanation|
|:--|:--|
|**1**|Open the constants screen. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image1.png"></details>|
|**2**|Navigate to the following path in the file structure:<br>**System**(#1) → **Internet**(#2) → **CMS Zones**(#3)<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image2.png"></details>|
|**3**|Click the '*Add new item*' icon (the '**+**' plus sign).|
|**4**|Clicking the Add button opens the CMS zone creation screen. Fill in the following fields:<br>- Code<br>- Description (this is visible in the CMS)|
|**5**|Click the 'Ok' button to confirm the creation of the zone. Create multiple zones in the same way if desired. These will later be used to link customers and CMS elements (see chapter three).|

## Linking CMS Zones to Customers

After creating zones, it is necessary to link one or more of these zones to the desired customer(s). Below is an explanation of how this process works.

|#|Explanation|
|:--|:--|
|**1**|Open the constants screen.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image1.png"></details>|
|**2**|Navigate to the following path:<br>**Community** → **Customer Data** → **Customers**<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image3.png"></details>|
|**3**|Open the customer(s) to whom you want to link one or more zones.|
|**4**|In the opened window, navigate to the following path in the file structure:<br>**Internet**(#1)→**CMS**(#2)<details><summary><b>Click here for the example image</b></summary><img src=".Manual theme management Florishop/media/image54.png"></details>|
|**5**|Click the '**CMS Zones**' button(#3). The 'Customer package' window opens.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image3.png"></details>|
|**6**|Click the 'Add' button. The 'CMS Zones' window opens.|
|**7**|Select one or more zones and click the 'Ok' button.<br><br>*The zones will now appear in the 'Customer CMS Zones' window.*<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image5.png"></details>|
|**8**|Click the 'Ok' button in the 'Customer CMS Zones' window.<br><br>*The selected zones are now linked to this customer.*<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS/media/image6.png"></details>|
|:repeat:|Repeat the above steps for each customer to whom you want to link CMS zones.|

## Highlighting Content – WITHOUT CMS ZONES

In CMS 2.0 it is also possible to manage components directly in the CMS based on stock visibility. Follow the steps below:

|#|Explanation| 
|:--|:--|
|**1**|Log in to the webshop with an administrator account.|
|**2**|Activate the webshop’s ‘Management’ environment by clicking the user icon (1). This opens a dropdown menu. Then click the Management option (2).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/3.2.png"></details>|
|**3**|At the bottom of your screen, enable the CMS editor (3). You can now start editing.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/3.3.png"></details>|
|**4**|Click the component (in this case a button) (4) in the Editor or via the Navigator (5) that you would like to make visible based on stock. A panel will immediately open on the left side. This is the aside editor (6).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/3.4.png"></details>|
|**5**|Click the Eye icon (7) and then click Highlight content (8). Two options become visible: 'Show for' (9) and 'Show for Stocks/Order Lists (;-separated)' (10).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/3.5.png"></details>|
|**6**|The 'Show for' (9) option allows you to make the selected component visible only for: Everyone, Customers, Anonymous users, or not visible at all in the live environment.|
|**7**|The second option (10) allows you to enter one or more Stock codes. These are often codes consisting of 6 characters and may look like this: FLOWER. Customers who are only allowed to buy flowers can easily receive targeted flower-related information this way. Stock codes can be copied from the Backoffice or from the stock URL. Customers without access to the flower stock will therefore not see this component on the page.|

## Creating Categories

After configuring zones in Florisoft, it is possible to create categories in the CMS. Categories are the tabs visible next to the stocks/order lists.

*Follow the steps below:*

|#|Explanation|
|:--|:--|
|**1**|Log in to the webshop with an administrator account.|
|**2**|Activate the webshop’s ‘Management’ environment by clicking the user icon (1). This opens a dropdown menu. Then click the '*Management*' option (2).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/4.2.png"></details>|
|**3**|Click Content Management (CMS) in the left management sidebar (3). This opens a dropdown menu. Click the '*Categories*' button (4). This takes you to the CMS categories screen. Any existing CMS categories are displayed here.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/4.3.png"></details>|
|**4**|To create a new CMS category, click the '**+**' button (5). This opens the category creation screen. Fill in the following fields:<br><br>- **Category Display Name (6):** enter the name of the category as it should appear in the stock/order list tab bar.<br><br>- **Category Name (7):** this is the name of the category that will also appear in the URL.<br>**DO NOT USE SPACES!**<br><br>- **Size Mode OPTIONAL (8):** select whether you want to display a compact dropdown (Small) or a wide dropdown (FullWidth) in your navigation bar.<br><br>- **Navigation Order OPTIONAL (9):** determine the order in the navigation bar. 1 is displayed first. This does not affect the order of the stocks. They will keep their existing position.<br><br>- **Visible in Navigation OPTIONAL (10):** make sure this checkbox is enabled so the category becomes visible in the navigation.<br><br>- **Template OPTIONAL (11):** here you can determine how an overview page for this category is filled based on a Template.<br><br>- **Submit (12):** click the 'Submit' button to create the category.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/4.4.png"></details>|
|**5**|Click the orange icon (13) or 'Unsaved changes' (14).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/4.5.png"></details>|
|**6**|To publish the category and make it live, click the 'Publish all' button (15) or the publish icon (16). You can then confirm the publication by clicking 'Yes' (17).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/4.6.png"></details>|
|:bulb:|**Note: the new category is not immediately visible in the webshop. This only happens once a page is linked to this category. See the next chapter for more information.**|

## Creating Pages

A CMS page is an accessible section within the CMS where content can be placed. A page can belong to a custom-created category. Pages can be compared to product groups in standard webshop stocks. Various elements can be placed on a CMS page, such as images, videos, text blocks, tables, and more.

*Follow the steps below:*

|#|Explanation|
|:--|:--|
|**1**|After creating the category, navigate via '*Content Management (CMS)*' (1) to '*Pages*' (2).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/5.1.png"></details>|
|**2**|To create a page, click the '**+**' button (3). This opens the page creation screen. A dialog window will appear. Configure the following settings:<br><br>- **URL (4):** the name of the page that will appear in the page URL. You do not need to include the full domain. Only the path name is sufficient, for example: '*example*'.<br>**DO NOT USE SPACES OR CAPITAL LETTERS!**<br><br>- **Page display name (5):** the name visible to customers on the website.<br><br>- **Category (6):** select the correct category, namely the category created in the previous chapter.<br><br>- **Is visible in navigation (7):** enable this checkbox to make the page visible in the webshop.<br><br>- **Submit (8):** click the 'Submit' button to create the page.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/5.2.png"></details>|
|**3**|Using the pencil icon (9), open the Properties dialog (10) of the page you just created. Click the '*Edit translations*' button (11).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/5.3.png"></details>|
|**4**|The translation dialog opens. The configured default language (12) is shown on the left side. Use the dropdown on the right (13) to select the language you want to apply/edit. Configure the following settings:<br><br>- **URL (14):** enter the translations for the URL path.<br><br>- **Page display name (15):** enter the translations for the page display name.<br><br>- **Confirm (16):** click '*Confirm*' to save the changes.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/5.4.png"></details>|
|**5**|Open the '*Visibility*' tab (17). Configure the following settings:<br><br>- **Language Zone Selection (18):** select one or more languages from the dropdown menu to which this category should be linked. Under Zone Selection (19), select a self-created CMS Zone.<br><br>- **Valid from (20) and Valid until (21):** under 'Valid from' and 'Valid until' you can configure dates and times for when the above settings apply.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/5.5.png"></details>|
|**6**|In the '*SEO*' tab (22), settings related to SEO (Search Engine Optimization) can be configured. These settings are not required for the operation of the CMS and are therefore not covered in this quick start guide. Refer to the extended CMS webshop add-on manual for more information about these settings. Click '*Save*' (23).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/5.6.png"></details>|
|**7**|Click the orange icon (24) or 'Unsaved changes' (25).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/5.7.png"></details>|
|**8**|To publish the page and make it live, click the 'Publish all' button (26) or the publish icon (27). Then confirm the publication by clicking 'Yes' (28).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/5.8.png"></details>|

## Creating Rows

A CMS page uses rows and columns for alignment on different devices (PC, laptop, smartphone, and tablet). This chapter explains how to create a row. Every CMS element must be inside a column, and every column must be inside a row. This means that every page essentially consists of a grid, similar to a spreadsheet program such as Microsoft Excel.

*Follow the steps below:*

|Step|Explanation|
|:--|:--|
|**1**|Log in to the webshop with an administrator account.|
|**2**|Activate the webshop’s ‘Management’ environment by clicking the user icon (1). This opens a dropdown menu. Then click the Management option (2).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/6.2.png"></details>|
|**3**|At the bottom of your screen, enable the CMS editor (3). You can now start editing.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/6.3.png"></details>|
|**4**|Click the '+' icon (4) or right-click the top element in the Navigator (5) to open the '*Components dialog*'. Using the Template button (6) also opens the dialog, but the Template category will already be selected.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/6.4.png"></details>|
|**5**|Use the search function (7) to search for '*Row*'. Click the plus icon (+) under the '*Row*' item (8).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/6.5.png"></details>|
|**6**|The Row is immediately created on your page and instantly provides the option to add one or more columns. In this example, we choose a structure with 3 columns next to each other (9).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/6.6.png"></details>|
|**7**|Select a column via the Navigator (10). In the column settings screen, you can configure the following in the *Properties* tab (11):<br><br>The sliders determine the alignment of CMS elements on devices with different screen sizes such as PCs/laptops, tablets, and smartphones.<br><br>The total width of each screen consists of a maximum of twelve fictional columns. This means an element can be a minimum of one and a maximum of twelve columns wide. This applies to all devices such as PCs, laptops, tablets, and smartphones.<br><br>The top slider applies to PCs and laptops. The middle slider is for tablets, and the bottom slider is for smartphones.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/6.7.png"></details>|
|**8**|Open the '*Styling*' tab (12). Styling is optional, but the following settings can be adjusted:<br><br>Select a background color via the 'Background' dropdown menu (13). A color picker will appear in which a color can be selected. Click ‘SAVE’ in the color picker to apply the selected color.<br><br>Under ‘Height’ (14), choose 'Auto' or a fixed height in Px (pixels), Rem (relative to font size), or percentages. It is recommended to use 'Auto'. The column will then automatically become as high as needed for its content.<br><br>Under 'Margin' (15), a value can be entered for the margin (whitespace) around the column. A value can be entered directly for all sides, or values can be set per side.<br><br>By default, Px (pixels) is used as the unit. It is also possible to choose ‘Rem’ or ‘Percent’, and in addition to values such as 'auto' or 'unset', millimeters (mm) and centimeters (cm) are also available.<br><br>Padding (16) defines the space inside the column. These settings work in the same way as ‘Margin’.<br><br>Overflow (17) determines whether elements that extend outside the column are visible or not. By default, this is set to 'Visible'.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/6.8.png"></details>|  
|**9**|Open the '*Advanced*' tab (18). The 'Advanced' tab allows you to assign extra classes and IDs to a component. Under 'Identification name' (19), you can assign a name per component to create more structure in the Navigator (20).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/6.9.png"></details>|  
|**10**|Open the '*Visibility*' tab (21). The 'Visibility' tab works the same as when creating pages and categories. See chapter three for more information about the available settings in the 'Visibility' tab. After configuring the correct settings, click the 'Save' button (22) to save the column in the CMS and click 'Publish' (23) to make the changes live.<br>**You can always make changes later.**<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/6.10.png"></details>|

## Creating CMS Elements

A CMS element is a fully configurable part of a page. Various types of content are available: images, videos, banners, text boxes, tables, sliders, and more. The CMS offers more than 15 standard elements that can be added to a page. Each element must be placed inside a column. Each column must then be placed inside a row.

*The steps below explain how to add one or more CMS elements to a page.*

|#|Explanation|
|:--|:--|
|**1**|In the previous chapter, we created a Row consisting of multiple columns. Select a column via the Navigator (1) to which you want to add CMS elements.<br>Right-click on a 'Column' in the Navigator and click 'Add' (2).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.1.png"></details>|
|**2**|A dialog will now open. It states that we are going to add a component to the selected 'Column' (3). In this screen, various CMS elements are available. For this guide, we will add a Carousel element. If you cannot find the Carousel element or another desired element, use the search function (4).<br>**Once you have found the correct element, click the '+' button (5) to add it to the column. For more information, click the 'i' button (6).**<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.2.png"></details>|
|**3**|You are now in the settings window of the Carousel CMS element. By default, you are in the 'Properties' tab. Here you can adjust the following settings:<br><br>- **Swiping (7)**: enables swiping on mobile devices.<br><br>- **Chevron (8)**: enables arrow navigation left and right.<br><br>- **Pagination (9)**: shows clickable dots below the carousel to jump to a specific item.<br><br>- **Loop (10)**: makes the carousel repeat continuously.<br><br>- **Autoplay (11)**: enables automatic playback.<br><br>- **Height mode (12)**: This feature offers two options. **Auto Height**: automatically adjusts the height of the carousel based on its content. **Auto Stretch**: adjusts content based on the largest slide in the carousel component.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.3.png"></details>|
|**4**|Open the '*Styling*' tab (13). The 'Styling' tab contains various layout settings for the carousel. These settings are not required for the proper functioning of the carousel. They are described in the extended CMS add-on manual.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.4.png"></details>|
|**5**|Open the '*Advanced*' tab (14). The 'Advanced' tab contains advanced settings for the carousel. These settings are not required for the proper functioning of the carousel. More information can be found in the full CMS add-on manual.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.5.png"></details>|
|**6**|Open the '*Visibility*' tab (15). In the 'Visibility' tab, various authorization settings for the carousel can be configured. These settings work the same as when creating categories and pages.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.6.png"></details>|
|**7**|Click the **Save (16)** button to save the updated settings and carousel element.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.7.png"></details>|
|**8**|In the carousel, we want to add images. This is done by right-clicking the Carousel component in the Navigator (17) and clicking 'Add' (18). This will open the '**Add component**' dialog again.<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.8.png"></details>|
|**9**|Multiple Media components are available, but in this example we choose the Image component (20) via the 'Media' category (19).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.9.png"></details>|
|**10**|After adding the Image Component, you can select it in the editor and the control panel will appear on the left again. In this guide we only cover the '*Properties*' tab (21), because the other tabs work the same as with other elements. To add an image, click 'Change image' (22).<details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.10.png"></details>|
|**11**|This opens the Media Library (23). Here you can navigate to your images (24) or videos (25). In this example, we choose images. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.11.png"></details>|
|**12**|In this overview you can upload new images (26), create a new folder (27), or add an existing image (28) to the Image Component. After selecting an image, you can insert (29), crop (30), or delete (31) it. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.12.png"></details>|
|**13**|The image has been inserted into the Image Component (32). Via the 'URL' field (33) you can link a page so visitors are redirected when clicking the image. You can also add a Title (34) and Alt text (35). Enabling the 'Zoom' (36) option makes the image clickable for zooming. In this example, we enable Zoom. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.13.png"></details>|
|**14**|For our carousel, we want to add multiple images. Therefore, repeat the previous steps. This can also be done more easily by right-clicking the Image Component in the Navigator (37) and clicking 'Duplicate' (38). Then you only need to update the images. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.14.png"></details>|
|**15**|Do not forget to save (39) and publish (40) your changes. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/7.15.png"></details>|

### Adding rows

In Florishop you are not limited to just one row within a CMS page. The steps below describe how to add additional rows and other elements to a CMS page.

*Follow the steps below:*

|Step|Explanation|
|:--|:--|
|**1**|In the Navigator, the top line shows: *Page* (\<Page name\>). Click the '+' button (1) in this line. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/8.1.png"></details>|
|**2**|Search for 'row' using the search function (2). Click the '+' button (3) next to the '*row*' result to add it to the page. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/8.2.png"></details>|
|**3**|To move the row up or down on the page, drag (4) the row in the Navigator. In this example, the new row is placed below the existing carousel row.<br><br>The same applies to columns: drag the column up or down in the Navigator to move it left or right. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/8.3.png"></details>|

### Using the CMS Panel component

The panel component is essentially a column component, but with additional styling options such as a background image. It is recommended to place a panel inside a column so that multiple elements can be aligned more easily. The following chapter shows an example of how to use a panel element as a background for multiple elements.

Follow the steps below to add a panel:

|Step|Explanation|
|:--|:--|
|**1**|Add an element to a Row or Column by clicking the '+' icon (1) in the Navigator. We can use the Row from the previous chapter for this. After adding a Column, you can add a Panel Component. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/9.1.png"></details>|
|**2**|Search for 'panel' in the element search (2) and click the plus icon (3) to add it to the parent component. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/9.2.png"></details>|
|**3**|Via the Properties (4) and Styling (5) tabs you can fully customize the Panel Component. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/9.3.png"></details>|

### Adding a text box

This chapter explains how to create and edit a CMS text element.

|Step|Explanation|
|:--|:--|
|**1**|In this example we add text to the Panel Component. It is also possible to place the Text Component inside a Column.|
|**2**|The panel is essentially just a container for other CMS elements (like columns). Therefore, add a text box by clicking the plus icon (1) in the panel Navigator, searching for the CMS element '*text*' (2), and adding it (3). <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/10.2.png"></details>|
|**3**|The editor of the CMS element opens automatically for the new text element.<br><br>In the 'Properties' tab (4), the content is added (5). The content can be written in two formats: *TinyMCE* (6) and *Markdown* (7). Choose the format that suits you best. Note: Markdown requires more technical knowledge and is more limited than TinyMCE. For this guide we use TinyMCE.<br><br>If you want to use Markdown, a cheat sheet can be helpful. It can be found here: https://www.markdownguide.org/cheat-sheet/ <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/10.3.png"></details>|
|**4**|The TinyMCE editor is mostly self-explanatory, but adding headings can be a bit confusing at first. To add headings, click the dropdown **Paragraph** (8), then click *Headings* (9), after which an additional dropdown appears with different heading sizes (10). Select the desired option. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/10.4.png"></details>|
|**5**|Via the '*Styling tab*' (11) you can also select a text color (12) and adjust margin (13) and padding (14). <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/10.5.png"></details>|

### Adding a video element

The CMS allows videos to be added via the video element. Below is an explanation of how to add this element to a new column.

As described earlier for carousels and text boxes, each element must be placed inside a column, which in turn must be placed inside a row. The video is placed in a new row + 2 columns so that text and video are nicely aligned side by side.

|Step|Explanation|
|:--|:--|
|**1**|As described earlier, each element must be placed inside a column (1), which in turn must be placed inside a row (2). <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/11.1.png"></details>|
|**2**|Create a new column if needed to place the video element in.|
|**3**|This column automatically takes the remaining width of the row. It is also possible to set a custom width.|
|**4**|To add a video, click '+' (3), search for 'video' (4), and add the video element (5). <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/11.4.png"></details>|
|**5**|The settings window opens for the new video element. By default, you are in the 'Properties' tab (6). Here you can adjust the following settings:<br><br>- Via the 'Change video' button (7) you can upload a video file, similar to how we did it with the Image Component, but in the video folder (.mp4 is the most common format).<br><br>- Under 'Video link' (8) you can enter a video URL. Well-known video platforms usually provide a share link that can be used in external applications such as the CMS.<br><br>- It is also possible to enable autoplay (9), loop (10), show controls (11), and mute the audio (12). Finally, do not forget to save (13) and publish (14) your changes. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/11.5.png"></details>|

### Spacers

When using a container such as a panel or column, you may want to adjust vertical spacing of CMS elements. For this, you use spacers.

|Step|Explanation|
|:--|:--|
|**1**|In the Navigator, the top line shows: *Page* (\<Page name\>). Click the '+' button (1). This opens the '*Add component*' screen. Search for 'Spacer' (2). Click the '+' button (3) next to the '*Spacer*' result. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/12.1.png"></details>|
|**2**|The '*Properties*' of the spacer open automatically. In most cases only the 'Properties' tab (4) needs to be configured. Set the following:<br><br>- **Height in px (mobile) (5)**: spacer height in pixels for mobile (fixed value).<br><br>- **Height in px (tablet) (6)**: spacer height in pixels for tablet (fixed value).<br><br>- **Height in px (7)**: spacer height in pixels (fixed value).<br><br>- **Height (if px is not set) (8)**: this dropdown contains preset heights: small, medium, large.<br><br>*If you are not satisfied with the spacer height, you can always adjust it later.*<br><br>*Tip: If spacers do not give the desired result, you can also use margin or padding in the Styling tab. This reduces the number of components needed to build a page.* <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/12.2.png"></details>|

### Login form

Some customers use an anonymous CMS zone where non-logged-in users can view stock without seeing prices. When they want to make a purchase, they must log in. A login form can be added as a reminder.

*Another commonly used CMS element is the **Login form** element. Below are the steps to implement this in your Florishop.*

|Step|Explanation|
|:--|:--|
|**1**|In this example, we already have a Row with a Column and a Panel. Click the '+' on the Panel in the Navigator (1) to open the '*Add component*' screen. Search for '*Login*' (2) and click the '+' button (3) to add the element. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/13.1.png"></details>|
|**2**|Open the '*Properties*' tab (4) if it is not already open. There are not many settings here, but you can adjust the following:<br><br>- **Display mode (5)**: Compact or Full width. For this guide we use 'Compact' because it has a minimalistic look.<br><br>- **Show 'Remember me' (6)**: adds the 'Remember me' checkbox. When you exit the CMS editor it may look like the login form has disappeared. This is intentional: because you are already logged in, the form is not shown. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/13.2.png"></details>|

### Adding a footer (optional)

When creating a new CMS page, a footer container is automatically created. A footer is the bottom section of a page. Every CMS page includes a footer by default. Changes made to the footer are visible across the entire website. A footer usually contains secondary information such as contact details, external links, and social media. The CMS provides a predefined footer element.

It is also possible to fully design the footer according to your own preferences (as seen in previous examples), in the same way as other elements such as carousels, text boxes, and videos.

|Step|Explanation|
|:--|:--|
|**1**|Click the '+' icon on the '*Container (footer)*' (1). The 'Add Component' window will open. Navigate to 'Templates' (2) and select Footer Template. You can also use the search bar (3). Click the '+' icon (4) to add the template. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/14.1.png"></details>|
|**2**|A default footer with four columns is added. Two columns contain a text box (5). The last column contains social media icons (SocialIcons Component) (6). <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/14.2.png"></details>|
|**3**|As described earlier, you can fully customize the footer in the same way as other CMS elements.|
|**4**|Click the menu icon (7) and then the close icon (8) to exit the management environment. The webshop now returns to the normal view as seen by customers. <details><summary><b>Click here for the example image</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/14.4.png"></details>|
