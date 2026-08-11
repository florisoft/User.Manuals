<img src="fslogo.png">

# Comprehensive Guide to the Content Management System (CMS) Add-on

> **Note:** Because the CMS is continuously being developed, some screenshots and steps in this guide may differ from the current version of the system.
>
> **Note:** This document is still being expanded.

## Table of Contents

### Management Screens

---

#### 1. Pages
- [Categories](#categories)
- [Page](#page)
- [Blog Categories](#blog-categories)
- [Blog Page](#blog-page)
- [Edit Footer](#edit-footer)
- [Templates](#templates)

#### 2. Advanced
- [Theme Configuration](#theme-configuration)
- [Backups](#backups)
- [Redirects](#redirects)
- [Pending Changes](#pending-changes)
- [Form Tracking](#form-tracking)
- [Component Styles](#component-styles)
- [Color Groups (Dashboards)](#color-groups-dashboards)

#### 3. Other
- [Media](#media)
- [Documents](#documents)
- [Links](#links)
- [Editor](#editor)
- [Navigator](#navigator)
- [Component dialog](#component-dialog)
- [CMS Zone](#cms-zone)

---

### Aside Editor

---

#### 1. Toolbar
- [Menu](#menu)
- [Search](#search)
- [CMS Editor](#cms-editor)
- [Drag & Drop](#drag--drop)
- [SEO](#seo)
- [Preferences](#preferences)
- [Responsive tabs](#responsive-tabs)

#### 2. General Settings
- [Translations](#translations)

#### 3. Styling
- [Color Picker](#color-picker)
- [Border](#border)
- [Margin/Padding](#marginpadding)
- [Border Radius](#border-radius)
- [Height/Width](#heightwidth)
- [Box Shadow](#box-shadow)
- [Overflow](#overflow)

#### 4. Advanced
- [Hide When Empty](#hide-when-empty)
- [Identification Name](#identification-name)
- [Add Button Visibility (in Editor)](#add-button-visibility-in-editor)
- [Slot Name](#slot-name)
- [HTML Class Name](#html-class-name)
- [Tag](#tag)
- [Z-Index](#z-index)

#### 5. Visibility
- [Hide Content](#hide-content)
- [Show Content](#show-content)
- [Highlight Content](#highlight-content)

---

### Components

---

#### 1. Basic
- [Row/Column](#rowcolumn)
- [Panel](#panel)
- [Flex](#flex)
- [Header](#header)
- [Text](#text)
- [Collapsible](#collapsible)
- [Bullet List/Bullet](#bullet-listbullet)
- [Spacer](#spacer)

#### 2. Media
- [Image](#image)
- [Image Overlay](#image-overlay)
- [Hotspot](#hotspot)
- [SVG](#svg)
- [HTML Video](#html-video)
- [YouTube Video](#youtube-video)
- [Carousel](#carousel)
- [Picture Row](#picture-row)

#### 3. Navigation
- [Button](#button)
- [Product List](#product-list)
- [Product Card](#product-card)
- [Social Icons](#social-icons)
- [Breadcrumbs](#breadcrumbs)
- [Icon Link](#icon-link)
- [Banner](#banner)
- [Inventory Navigation](#inventory-navigation)
- [Shop Navigation](#shop-navigation)
- [Offer](#offer)
- [Action Link](#action-link)
- [Add to Home Button](#add-to-home-button)
- [Anchors Toolbar](#anchors-toolbar)

#### 4. Forms
- [Form](#form)
- [Text Input](#text-input)
- [Email Input](#email-input)
- [Number Input](#number-input)
- [File Input](#file-input)
- [Checkbox](#checkbox)
- [Radio Button](#radio-button)
- [Multiple Choice](#multiple-choice)
- [Dropdown (Single Select)/(Single Select Option)](#dropdown-single-select--single-select-option)
- [Hidden Input](#hidden-input)
- [Hidden Debtor Info](#hidden-debtor-info)
- [Submit Button](#submit-button)

#### 5. User
- [Login Form](#login-form)
- [Debtor Information](#debtor-information)
- [Your Account](#your-account)
- [Account Manager](#account-manager)
- [Registration Form](#registration-form)

#### 6. Templates
- [Footer Template](#footer-template)

#### 7. Advanced
- [IFrame](#iframe)
- [Blog](#blog)
- [Category Overview](#category-overview)
- [Frame](#frame)
- [Custom](#custom)
- [Choice Component](#choice-component)
- [Choice Button](#choice-button)
- [Lottie Player](#lottie-player)
- [Suggestions](#suggestions)

#### 8. Dashboard
- [Chart](#chart)
- [Pie Chart](#pie-chart)
- [Gauge](#gauge)
- [Table View](#table-view)
- [Progress Bar](#progress-bar)
- [Dashboard View](#dashboard-view)
- [Embedded Dashboard](#embedded-dashboard)
- [Filter Toolbar](#filter-toolbar)
- [Search Term](#search-term)
- [Query Filter](#query-filter)
- [Preset Value Filter](#preset-value-filter)
- [Date Query Filter](#date-query-filter)
- [Query Variable](#query-variable)

#### 9. Health
- [Health Chart](#health-chart)
- [Health Check](#health-check)
- [Health Errors](#health-errors)
- [Health Gauge](#health-gauge)
- [Health Log](#health-log)

---

## Management Screens

### Pages

#### Categories

Categories are the tabs displayed next to the stock and order lists. CMS pages can be linked to a category, allowing you to use the category as a dropdown in the navigation bar or to create an overview using the '[Category overview](#category-overview)' component.

*Follow the steps below:*

|#|Explanation|
|:--|:--|
|**1**|Log in to the webshop using an administrator account.|
|**2**|Activate the **Management** environment of the webshop by clicking the user icon (1). A dropdown menu will open. Then click the **Management** option (2).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.2.png"></details>|
|**3**|Click **Content Management (CMS)** (3) in the management bar on the left. A dropdown menu will open. Then click **Categories** (4). You will now be taken to the CMS categories screen, where any existing CMS categories are displayed.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.3.png"></details>|
|**4**|Click the **'+'** icon (5) to create a new CMS category. The category creation screen will open. Then fill in the following fields:<br><br>- **Category Display Name (6):** enter the name of the category as it should appear in the bar containing the stock and order list tabs.<br><br>- **Category Name (7):** enter the name of the category. This name will also be used in the URL.<br>**DO NOT USE SPACES!**<br><br>- **Size mode — OPTIONAL (8):** select whether you want to display a compact dropdown (**Small**) or a wide dropdown (**FullWidth**) in the navigation bar.<br><br>- **Order in navigation — OPTIONAL (9):** determine the position of the category in the navigation bar. A value of **1** places the category first. This does not affect the order of the stock tabs; they will retain their original position.<br><br>- **Visible in navigation — OPTIONAL (10):** enable this option to make the category visible in the navigation bar.<br><br>- **Template — OPTIONAL (11):** select a template here. Every CMS page created under this category will automatically be populated with this template.<br><br>- **Submit (12):** click **'Submit'** to create the category.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.4.png"></details>|
|**5**|Click the orange icon (13) or **'Unsaved changes'** (14).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.5.png"></details>|
|**6**|To publish the category and make it available live, click the **'Publish all'** button (15) or the publish icon (16). Then confirm the publication by clicking **'Yes'** (17).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.6.png"></details>|
|:bulb:|**Note: the new category will not be immediately visible in the webshop. The category will only become visible once a page has been linked to it. [See the next chapter](#page) for more information.**|

---

#### Page

A CMS page is an accessible section within the CMS where content can be placed. A page can belong to a custom-created category. CMS pages can be compared to product groups within standard webshop stock lists. Various elements can be placed on a CMS page, such as images, videos, text blocks, tables, and more.

*Follow the steps below:*

|#|Explanation|
|:--|:--|
|**1**|After creating the category, navigate via **Content Management (CMS)** (1) to **Pages** (2).<details><summary><b>Click here for the example image</b></summary><img src="media/2.1.png"></details>|
|**2**|To create a new page, click the **+** button (3). This opens the page creation screen. A dialog will appear. Configure the following settings:<br><br>- **URL (4):** Enter the name of the page as it should appear in the page URL. You do not need to enter the entire domain; only the path is required, for example: *example*.<br>**DO NOT USE SPACES OR CAPITAL LETTERS!**<br><br>- **Page display name (5):** Enter the name that will be displayed to customers on the website.<br><br>- **Category (6):** Select the appropriate category, namely the category created in the previous chapter.<br><br>- **Template OPTIONAL (7):** Select a template that will be automatically applied to the page when it is created.<br><br>- **Is visible in navigation (8):** Enable this checkbox to make the page visible in the webshop navigation.<br><br>- **Submit (9):** Click **Submit** to create the page.<details><summary><b>Click here for the example image</b></summary><img src="media/2.2.png"></details>|
|**3**|Click the pencil icon (10) to open the **Properties** dialog (11) of the newly created page. Then click **[Edit translations](#translations)** (12).<details><summary><b>Click here for the example image</b></summary><img src="media/2.3.png"></details>|
|**4**|The translation dialog will open. The configured default language (13) is displayed on the left. Use the dropdown menu on the right (14) to select the language you want to apply or edit. Configure the following settings:<br><br>- **URL (15):** Enter the translated URL path.<br><br>- **Page display name (16):** Enter the translated display name of the page.<br><br>- **Confirm (17):** Click **Confirm** to save the changes.<details><summary><b>Click here for the example image</b></summary><img src="media/2.4.png"></details>|
|**5**|Open the **Visibility** tab (18). Configure the following settings:<br><br>- **Language Zone Selection (19):** Under the dropdown menu, select one or more languages to which this page should be linked. Under **Zone Selection** (20), select a custom CMS zone.<br><br>- **Valid from (21) and Valid until (22):** Under **Valid from** and **Valid until**, you can set the dates and times during which the above settings should apply.<details><summary><b>Click here for the example image</b></summary><img src="media/2.5.png"></details>|
|**6**|In the **SEO** tab (23), you can configure settings related to SEO (Search Engine Optimization). These settings can help search engines such as Google find your website more easily. More information about SEO settings can be found [here](#seo). Click **Save** (24).<details><summary><b>Click here for the example image</b></summary><img src="media/2.6.png"></details>|
|**7**|Click the orange icon (25) or **Unsaved Changes** (26).<details><summary><b>Click here for the example image</b></summary><img src="media/2.7.png"></details>|
|**8**|To publish the page and make it available on the live webshop, click **Publish all** (27) or the publish icon (28). Then confirm the publication by clicking **Yes** (29).<details><summary><b>Click here for the example image</b></summary><img src="media/2.8.png"></details>|

---

#### Blog Categories

Blog categories can, just like [Page Categories](#categories), be used as tabs that are displayed alongside stock and order lists. Blog pages can be linked to a blog category. This allows you to use the category, for example, as a dropdown in the navigation bar or to create an overview using the [Blog](#blog) component.

Page categories and blog categories are similar in many ways. The main difference is the purpose for which they are used:

- Use **Pages** for important general pages, such as a Contact, Customer Registration, or About Us page.
- Use **Blog Pages** for news items, events, or highlighting a specific stock item or product, for example.

*Follow the steps below:*

|#|Explanation|
|:--|:--|
|**1**|Log in to the webshop with an administrator account.|
|**2**|Activate the **Management** environment of the webshop by clicking the user icon (1). A dropdown menu will open. Then click **Management** (2).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.2.png"></details>|
|**3**|Click **Content Management (CMS)** in the left-hand management bar (3). A dropdown menu will open. Then click **Blog Categories** (4). You will now be taken to the blog category overview. Any existing blog categories will be displayed here.<details><summary><b>Click here for the example image</b></summary><img src="media/3.3.png"></details>|
|**4**|To create a new blog category, click the **+** icon (5). The screen for creating a new blog category will open.<details><summary><b>Click here for the example image</b></summary><img src="media/3.4.png"></details>|
|**5**|Fill in the following fields:<br><br>- **Blog Display Name (6):** Enter the name of the category as it should be displayed in the bar containing the stock and order list tabs.<br><br>- **Blog URL (7):** Enter the name of the category that will also be used in the URL.<br>**DO NOT USE SPACES!**<br><br>- **Size Mode — OPTIONAL (8):** Select whether you want to display a compact dropdown (**Small**) or a wide dropdown (**FullWidth**) in the navigation bar.<br><br>- **Navigation Order — OPTIONAL (9):** Determine the position of the category in the navigation bar. A value of **1** places the category first. This does not affect the order of the stock items; they will retain their original position.<br><br>- **Visible in Navigation — OPTIONAL (10):** Enable this option to make the category visible in the navigation bar.<br><br>- **Template — OPTIONAL (11):** Select a template that will automatically be applied when a new blog page is created within this category.<br><br>- **Submit (12):** Click **Submit** to create the blog category.<details><summary><b>Click here for the example image</b></summary><img src="media/3.5.png"></details>|
|**6**|Click the orange icon (13) or **Unsaved Changes** (14).<details><summary><b>Click here for the example image</b></summary><img src="media/3.6.png"></details>|
|**7**|To publish the category and make it available on the live webshop, click **Publish all** (15) or the publish icon (16). Then confirm the publication by clicking **Yes** (17).<details><summary><b>Click here for the example image</b></summary><img src="media/3.7.png"></details>|
|:bulb:|**Note:** The new category will not be immediately visible in the webshop. It will only become visible once a blog page has been linked to this category. [See the next chapter](#blogpage) for more information.|

---

#### Blog Page

A Blog Page is an accessible component within the CMS where content can be added. A Blog Page can be assigned to a self-created category. Various elements can be placed on a Blog Page, such as images, videos, text blocks, tables, and more. CMS Pages and Blog Pages are quite similar, but they can be distinguished as follows:<br><br>

- Use **Pages** for important basic pages such as a Contact, Customer Registration, or About Us page.
- Use **Blog Pages** for news items, events, or highlighting a specific stock item/product.

*Follow the steps below:*

|#|Explanation|
|:--|:--|
|**1**|After creating the Blog category, navigate via '*Content management (CMS)*' (1) to '*Pages*' (2).<details><summary><b>Click here for the example image</b></summary><img src="media/4.1.png"></details>|
|**2**|To create a page, click the button with the '**+**' icon (3). This opens the page creation screen. A dialog will now appear. Adjust the following settings:<br><br>- **External URL/URL (4):** Only enable this option when you want to enter an external URL, such as `https://florisoft.nl`. When a visitor clicks on the page, the external URL will open in a new tab and the visitor will be redirected to the specified web address.<br><br>When you are not using an external URL, enter the name that will be displayed in the page URL. You do not need to enter the full domain; only the path name is required, for example: `example`.<br><br>**PLEASE NOTE: DO NOT USE SPACES OR CAPITAL LETTERS!**<br><br>- **Page display name (5):** the name that will be visible to customers on the website.<br><br>- **Category (6):** select the correct category, namely the category that was created in the previous chapter.<br><br>- **Is visible in navigation (7):** check this checkbox to make the page visible in the webshop.<br><br>- **Submit (8):** click the 'Submit' button to create the page.<details><summary><b>Click here for the example image</b></summary><img src="media/4.2.png"></details>|
|**3**|Click the pencil icon (9) to open the Properties (10) dialog of the newly created page. Click the '*[Edit translations](#translations)*' button (11).<details><summary><b>Click here for the example image</b></summary><img src="media/4.3.png"></details>|
|**4**|The translation dialog will open. The configured default language (12) is displayed on the left side. Use the right dropdown menu (13) to select the language you want to apply/edit. Configure the following settings:<br><br>- **URL (14):** enter the translations for the URL path.<br><br>- **Page display name (15):** enter the translations for the page display name.<br><br>- **Confirm (16):** click '*Confirm*' to save the changes.<details><summary><b>Click here for the example image</b></summary><img src="media/4.4.png"></details>|
|**5**|Open the '*Visibility*' tab (17). Configure the following settings:<br><br>- **Language Zone Selection (18):** select one or more languages from the dropdown menu to which this category should be linked. Under Zone selection (19), select a custom CMS Zone.<br><br>- **Valid from (20) and Valid until (21):** under 'Valid from' and 'Valid until', dates and times can be configured for when the settings above should apply.<details><summary><b>Click here for the example image</b></summary><img src="media/4.5.png"></details>|
|**6**|In the '*SEO*' tab (22), settings related to SEO (Search Engine Optimization) can be configured. This allows search engines such as Google to find your website more easily. More information about SEO settings [can be found here](#seo). Click '*Save*' (23).<details><summary><b>Click here for the example image</b></summary><img src="media/4.6.png"></details>|
|**7**|Click on 'Unsaved changes' (24).<details><summary><b>Click here for the example image</b></summary><img src="media/4.7.png"></details>|
|**8**|To publish the page and make it available live, click the 'Publish all' button (25) or the publish icon (26). Confirm the publication by clicking 'Yes' (27).<details><summary><b>Click here for the example image</b></summary><img src="media/4.8.png"></details>|

---

#### Edit Footer

When creating a new CMS page, a container for a footer is automatically created. A footer is the bottom section of a page. Every CMS page contains a footer by default. Changes made to the footer are visible throughout the entire website. A footer usually contains secondary information such as address details, links to external websites, and social media. The CMS provides a predefined footer element by default.

It is also possible to fully customize the footer according to your own preferences (as may have been shown in previous examples), in the same way as previously created elements such as carousels, text boxes, and videos. Creating a footer works as follows:

|Step|Explanation|
|:--|:--|
|**1**|In the Navigator, click the '+' icon of the '*Container (footer)*' (1). The ‘Add Component’ window opens. Navigate via the 'Templates' category (2) to Footer Template. You can also use the search bar for this (3). Click the '+' icon (4) to add the Template.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/14.1.png"></details>|
|**2**|A default footer element with four columns is added. Two columns contain a text box (5). The last column contains social media icons ([SocialIcons Component](#social-icons)) (6).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/14.2.png"></details>|
|**3**|As described earlier, it is possible to fully customize the footer according to your own preferences. This works in the same way as creating/editing other elements such as carousels, text boxes, and videos.<br>When all desired elements have been added to the page, the management environment can be closed.|
|**4**|Click the menu icon (7) and then click the close icon (8) at the bottom to exit the management environment. The webshop will now return to the normal view as customers see it.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/14.4.png"></details>|

---

#### Templates

With **Templates**, you can easily reuse content that you have previously created using the CMS. These can be small content blocks, but also complete pages. This means you do not have to rebuild the same content from scratch each time.

Templates can also be used for [Blog components](#blog) to dynamically load content. In addition, you can use the [Frame component](#frame) to place a template in multiple locations throughout the webshop. When the template is updated, the changes are automatically applied to all locations where the template is used.

| Step | Explanation |
|:--|:--|
| **1** | Navigate via **Content Management** (1) to **Templates** (2).<details><summary><b>Click here for the example image</b></summary><img src="media/6.1.png"></details> |
| **2** | Then click the '+' icon (3) to create a new template.<details><summary><b>Click here for the example image</b></summary><img src="media/6.2.png"></details> |
| **3** | A dialog box will open. Enter the **Name** (4) and **Description** (5) of the new template. Then select an existing **Category** (6) or create a new category. In this example, we created a new category named **Standard blocks** (7). Then click **Save** (8). The Template Editor will now open.<details><summary><b>Click here for the example image</b></summary><img src="media/6.3.png"></details> |
| **4** | In the **Template Editor**, you can add CMS components just as you would on a regular CMS page. In this screen, activate the **CMS Editor** (9) and then click the '+' icon (10). The [Component Dialog](#component-dialog) will now open.<details><summary><b>Click here for the example image</b></summary><img src="media/6.4.png"></details> |
| **5** | You can now add various CMS components to the template. In this example, we start with a [Panel](#panel) component (11).<details><summary><b>Click here for the example image</b></summary><img src="media/6.5.png"></details> |
| **6** | Within the [Panel component](#panel), we have added two [Text components](#text) as an example (12). When you are satisfied with the template, you can save it (13).<details><summary><b>Click here for the example image</b></summary><img src="media/6.6.png"></details> |
| **7** | Then click **Yes** (14) to confirm saving. You can always edit the template again at a later time.<details><summary><b>Click here for the example image</b></summary><img src="media/6.7.png"></details> |
| **8** | After saving, you will return to the **Templates** screen. Use the dropdown menu (15) to easily select the category you just created. You can immediately see how many templates have been created within this category. This is useful, for example, when preparing content in advance for special occasions such as Mother's Day or Christmas. Then navigate back to the **Home page** (16) to add the template to a page.<details><summary><b>Click here for the example image</b></summary><img src="media/6.8.png"></details> |
| **9** | Once you are back on the Home page, navigate through the [Component Dialog](#component-dialog) to **Templates** (17). Then select the desired **Template category** (18) and add the newly created template to the page (19).<details><summary><b>Click here for the example image</b></summary><img src="media/6.9.png"></details> |
| **10** | The template (20) is now displayed on your CMS page. You can then make further changes and publish the page without having to rebuild the content from scratch.<details><summary><b>Click here for the example image</b></summary><img src="media/6.10.png"></details> |
| **11** | We have now created a template in a simple way, but Templates offer many more possibilities. If you have built an entire page or section yourself that you want to reuse, Templates are an excellent solution. By right-clicking in the [Navigator](#navigator), you can save an entire page or section (21) — in this example, **Panel (hero)** — as a template (22).<details><summary><b>Click here for the example image</b></summary><img src="media/6.11.png"></details> |
| **12** | In the dialog box, enter the **Name** (23), **Description** (24), and, if desired, a **Category** (25). Then click **Save** (26).<details><summary><b>Click here for the example image</b></summary><img src="media/6.12.png"></details> |
| **13** | To make the [Component Dialog](#component-dialog) overview more organized, you can create a screenshot of the template yourself. You can then upload this image via the **Template Management screen** (27). The screenshot will be displayed as the thumbnail for your Template.<details><summary><b>Click here for the example image</b></summary><img src="media/6.13.png"></details> |

---

### Advanced

#### Theme Configuration

In this configuration screen, you can set the brand colors of your shop, determine which font should be displayed, and configure various other options to make the visual appearance of your shop better match your preferences.

|Step|Explanation|
|:--|:--|
|**1**|Navigate via Configuration (1), Theme, to Theme Configuration (2).<details><summary><b>Click here for the example image</b></summary><img src="media/7.1.png"></details>|
|**2**|Then click the '+' icon to start creating a new theme (3). A dialog will open. Enter a name (4) for the new theme. Make sure that **NO spaces are used in the theme name**. Select a template that will be loaded immediately after creation. We recommend using the Starterkit theme here for a better visual look and feel in the shop (5). Then create the theme (6).<details><summary><b>Click here for the example image</b></summary><img src="media/7.2.png"></details>|
|**3**|The theme has now been created and a large list of information will appear. This list determines colors, fonts, font sizes, and other styling options that influence the appearance of your shop. 90% of these settings are already correctly configured for your theme, but you can still go through the list and adjust specific settings. Having some CSS knowledge can be helpful for certain (more advanced) options.<br><br>After changing theme settings, you must always save them using the save button (10). After creating the theme, saving is therefore the first thing you should do before making changes.<br><br>**7 - Preview**: Use this button to open a preview of your shop. The preview displays the information from your new theme, allowing you to quickly see the effects of changes made to your shop. The preview will update after saving the theme.<br><br>**8 - Recompile**: This function performs a check to verify that all information has been entered correctly. If incorrect values are found, a dialog will be displayed describing where the error occurs in your theme.<br><br>**9 - Log**: Displays a log of changes made to the theme.<br><br>**10 - Save**: Save changes made to the theme using this button to make them visible in the live environment.<br><br>**11 - Download theme**: Use this button to download the selected theme (15). A `.scss` file will be downloaded, which can be uploaded into another new theme, for example (13).<br><br>**12 - Last error message**: Checks whether an error message is active in your theme.<br><br>**13 - Upload theme**: As mentioned under 'Download theme' (11), you can upload a downloaded theme using this button. **PLEASE NOTE:** uploading a downloaded theme file will overwrite existing data in the selected theme (15).<br><br>**14 - Create new theme**: Create a new theme.<br><br>**15 - Select theme**: Use this dropdown to select the theme you want to modify.<br><br>**16 - Advanced settings**: When this option is enabled, many more options will become visible in the list, allowing you to make more detailed adjustments to your shop. **PLEASE NOTE:** These settings may require CSS knowledge.<br><br>**17 - Search by section**: Search for an option by section level. The section names can be found on the left side of the overview. Names that appear here include: GENERAL, STOCK, LOGIN, ACCOUNT, GALLERY, HEADER, FOOTER, HOME, NAVIGATION, and SHOPPING-CART.<br><br>**18 - Search by name**: Search for an option by name.<br><br>**19 - Refresh**: Reload the theme. This can also be done by refreshing the browser.<br><br>**20 - Reset option to default value**: This button restores the value of this option to its original state. The option will be reset.<br><br>**21 - Synchronize with all themes**: The configured and saved option can be applied to all available themes using this button. **PLEASE NOTE:** This action cannot be undone.<br><br>**22 - Edit option**: Opens a dialog where you can make a change.<br><br>**23 - Primary color**: This is the main color of your shop. Changing this color will affect a large part of your shop's appearance.<br><br>**24 - Secondary color**: This is the second most important color of your shop. Changing this color will affect a large part of your shop's appearance.<br><br>After making the changes for your new theme, click 'Save' (10).<details><summary><b>Click here for the example image</b></summary><img src="media/7.3.png"></details>|
|**4**|To load a Google Font, navigate via 'Configuration' (25) to the webshop settings (26). In the overview, search for GOOGLEFONTSHREF. Click this setting. You will then be taken to the page where this setting can be modified (27). Enter the link copied from [Google Fonts](https://fonts.google.com/), such as *https://fonts.googleapis.com/css2?family=[FONTNAME]:ital,wght@0,400;0,700;1,400;1,700&display=swap*, and paste it into the dialog (28). Then save the setting (29). When you enter the Google Font under the theme setting *body-font-family*, for example *"[FONTNAME]", sans-serif*, and save the theme, your shop will now display the desired Google Font.<details><summary><b>Click here for the example image</b></summary><img src="media/7.4.png"></details>|

---

#### Backups

Working in the CMS can sometimes go wrong. You may have accidentally deleted something that cannot be undone. Don't worry, with the help of a backup your CMS can quickly be up and running again!

|Step|Explanation|
|:--|:--|
|**1**|Navigate via Content Management (CMS) (1) to Backups (2).<details><summary><b>Click here for the example image</b></summary><img src="media/8.1.png"></details>|
|**2**|You will now see the overview page containing all backups. A backup is automatically created every day, but you can also manually save a backup using the '+' icon (3). A dialog will open. Enter a description for your backup (4) and save it (5). The dialog will automatically close once the backup has been completed. Creating a backup may take some time.<details><summary><b>Click here for the example image</b></summary><img src="media/8.2.png"></details>|
|**3**|You can now see that the backup has been created and will appear at the top of the overview (6). If you need to restore a backup, click the restore button (7). The version will then be restored to this backup. Backups can also be deleted (8).<details><summary><b>Click here for the example image</b></summary><img src="media/8.3.png"></details>|

---

#### Redirects

When you have an existing link and want to change its URL, this can negatively impact your SEO score in Google. With the help of redirects, you inform Google that the URL has been changed, preventing your accumulated SEO score from being lost.

|Step|Explanation|
|:--|:--|
|**1**|Navigate via Content Management (CMS) (1) to Redirects (2).<details><summary><b>Click here for the example image</b></summary><img src="media/9.1.png"></details>|
|**2**|You will now arrive at the redirects overview page. Use the '+' icon (3) to create a new redirect. A dialog will open.<br><br>**4 - Redirect name**: Enter a name for your redirect.<br><br>**5 - Incoming URL**: Enter the complete web address of your 'old' URL, for example *https://www.[yourdomain].nl/old-page*.<br><br>**6 - Outgoing URL**: Enter the complete web address of your 'new' URL, for example *https://www.[yourdomain].nl/new-page*.<br><br>**7 - Redirect type**: Use this dropdown to select the type of redirect. **302** is temporary (**this option is strongly recommended**) and **301** is permanent and therefore more difficult to undo. **PLEASE NOTE:** Sufficient knowledge of working with redirects is required to prevent unwanted behavior.<br><br>Then save the redirect (8).<details><summary><b>Click here for the example image</b></summary><img src="media/9.2.png"></details>|

---

#### Pending Changes

After making changes to your CMS page, you must publish them. This screen keeps track of changes made across multiple pages.

|Step|Explanation|
|:--|:--|
|**1**|In this example, we edited a Text component on the Home page. An icon at the bottom of the screen will now turn orange. Click this icon to navigate to the **Pending Changes** page (1).<details><summary><b>Click here for the example image</b></summary><img src="media/10.1.png"></details>|
|**2**|You are now on the **Pending Changes** page (2), where your changes are tracked per page (3). You can either discard all unsaved changes for this page (4) or publish them (5). If you have made changes to multiple pages, they will also be listed on this screen. You can then discard all changes for every page at once (6) or publish them all at once (7).<details><summary><b>Click here for the example image</b></summary><img src="media/10.2.png"></details>|

---

#### Form tracking

Pages that contain a form can be monitored in the **Form Tracking** screen. This screen allows you to see exactly which forms have been successfully submitted for each customer. Forms that failed to send or were cancelled can also be easily identified. In addition, you can export the submitted data to Excel files, making it suitable for various purposes involving data from multiple customers.

To comply with privacy regulations, it is recommended to clearly inform users by including a [Checkbox](#checkbox) in your form with text similar to: *I agree that my personal data may be used to process my request.*

|Step|Explanation|
|:--|:--|
|**1**|Navigate via Content Management (CMS) (1) to Form Tracking (2).<details><summary><b>Click here for the example image</b></summary><img src="media/11.1.png"></details>|
|**2**|You will now arrive at the **Form Tracking** overview page.<br><br>**3 - Form subject or user**: Search for a form subject (which can be configured in the [Form component](#form)) or search for a customer number.<br><br>**4 - Select Form**: Use this dropdown to select which form data you want to view.<br><br>**5 - Status**: Use this dropdown to filter forms that were successfully submitted, cancelled, or failed to send.<br><br>**6 - Download Excel**: Downloads an Excel file based on the selected data.<br><br>**7 - Refresh overview**: Refreshes the overview and reloads all available data.<br><br>**8 - Data table**: Opens a dialog displaying the submitted form data.<br><br>**9 - Events**: Displays all events that occurred during the completion and submission of the form.<details><summary><b>Click here for the example image</b></summary><img src="media/11.2.png"></details>|

---

#### Component Styles

Using components in the CMS allows you to build beautiful pages, but sometimes you may want to apply your own CSS styling that is not (yet) possible with the current CMS options. This can be achieved using **Component Styles**. **PLEASE NOTE:** This feature requires sufficient CSS knowledge. Incorrect CSS code may negatively impact the performance or appearance of your webshop.

|Step|Explanation|
|:--|:--|
|**1**|In this example, we have selected a [Panel](#panel) component (1) to which we want to apply a color gradient, making the text easier to read—something that is not (yet) possible using the current CMS settings.<details><summary><b>Click here for the example image</b></summary><img src="media/12.1.png"></details>|
|**2**|Navigate via Content Management (CMS) (2) to **Component Styles** (3). The management screen will open.<details><summary><b>Click here for the example image</b></summary><img src="media/12.2.png"></details>|
|**3**|Create a new Component Style by clicking the '+' icon (4). In the dialog that appears, enter a name (5) for your Component Style. **PLEASE NOTE:** Do not use spaces in the name. Then click **Confirm** (6).<details><summary><b>Click here for the example image</b></summary><img src="media/12.3.png"></details>|
|**4**|A CSS editor will now open where you can enter your own CSS styling (7). In this example, we have applied a color gradient. When you are finished, save the Component Style (8).<details><summary><b>Click here for the example image</b></summary><img src="media/12.4.png"></details>|
|**5**|A confirmation dialog will appear. Click **OK** (9) and then navigate back to **Component Styles** (10).<details><summary><b>Click here for the example image</b></summary><img src="media/12.5.png"></details>|
|**6**|The Component Style you have just created will now appear in the overview. It is now ready to be applied to a component.<details><summary><b>Click here for the example image</b></summary><img src="media/12.6.png"></details>|
|**7**|Select the desired component in the editor or via the Navigator (13). In the component's **General Settings** tab (14), open the **Component Style** dropdown (15) and select the Component Style you just created (16).<details><summary><b>Click here for the example image</b></summary><img src="media/12.7.png"></details>|
|**8**|The effect of the selected Component Style will immediately be visible on the selected [Panel](#panel) component (17).<details><summary><b>Click here for the example image</b></summary><img src="media/12.8.png"></details>|

---

#### Color groups (Dashboards)

This section is still under development.

---

### Other

#### Media

This screen allows you to easily upload your own images and video files and then use them on your [CMS pages](#page).

| Step | Explanation |
|:--|:--|
| **1** | Navigate via **Content Management (CMS)** (1) to **Media** (2).<details><summary><b>Click here for the example image</b></summary><img src="media/14.1.png"></details> |
| **2** | You are now taken to the Media management screen. From this screen, you can upload files (3). The **Media Library** tab (4) gives you access to all images and videos that are already available in your Media Library. Images are stored in the **images** folder and videos in the **videos** folder.<br><br>In the upload screen (3), you can drag files into the screen to upload them (5), or select a file from your own computer (6). After a file has been uploaded, a small preview is displayed (7).<br><br>The following media file formats are supported: PNG, JPG, JPEG, SVG, WEBP, GIF, MP4, MPG, AVI, MOV, and WEBM. Images can be automatically resized to prevent unnecessarily large files from being uploaded. Large files can have a negative impact on the loading time of your webshop. When you enable the **Resize** option (8), you can configure the image(s) to be proportionally resized to a maximum of **1024** or **1920 pixels**.<br><br>If you leave this option disabled, keep in mind that files may be a maximum of **25 MB** in size. This applies to both images and videos. Click **Upload** (9) to upload the file.<details><summary><b>Click here for the example image</b></summary><img src="media/14.2.png"></details> |
| **3** | The image is now visible in the Media Library (10). You can edit the image (11) or delete it (12). Useful information about the media file is also displayed (13). To better organize your media files, you can create new folders (14), upload files using the upload button (15), navigate back one level (16), or delete the entire folder (17). In this example, we choose to edit the image (11).<details><summary><b>Click here for the example image</b></summary><img src="media/14.3.png"></details> |
| **4** | A dialog box now opens where you can enter metadata for the media file. This includes **Alt text** (18), **Title** (19), **Caption** (20), and **Description** (21). Providing this information can help improve the [SEO](#seo) performance of your webshop. You can then cancel the changes (22) or save them (23). You can also crop the image as desired (24).<details><summary><b>Click here for the example image</b></summary><img src="media/14.4.png"></details> |
| **5** | On this screen, you can further crop and edit the image. You can adjust the selection area (25), zoom in (26), zoom out (27), change the positioning (28), and rotate the image (29). You can also undo any changes (30).<details><summary><b>Click here for the example image</b></summary><img src="media/14.5.png"></details> |
| **6** | You can then save the changes you have made (31) or cancel them by navigating back to the selection screen (32). In this example, we save the changes (31).<details><summary><b>Click here for the example image</b></summary><img src="media/14.6.png"></details> |
| **7** | A new variant (33) of the image has now been added to the overview. This variant contains the modified and cropped version of the image and can then be used on your [CMS pages](#page).<details><summary><b>Click here for the example image</b></summary><img src="media/14.7.png"></details> |

---

#### Documents

Via this screen, you can upload files that can then be offered as downloadable content on your web pages.

|Step|Explanation|
|:--|:--|
|**1**|Navigate via **Configuration** (1) to **Documents** (2).<details><summary><b>Click here for the example image</b></summary><img src="media/15.1.png"></details>|
|**2**|In the **Documents** screen, you can upload a new file (3).<details><summary><b>Click here for the example image</b></summary><img src="media/15.2.png"></details>|
|**3**|Drag the desired file into the dropzone or select a file using the designated button (4). After the file has been uploaded successfully, you can return to the overview (5).<details><summary><b>Click here for the example image</b></summary><img src="media/15.3.png"></details>|
|**4**|The uploaded file is now displayed in the overview (6). From this overview, you can delete the file (7) or copy the download path to your clipboard (8). You can then use the copied download path, for example, in a [Button](#button) component, allowing visitors to download the file by clicking the button.<details><summary><b>Click here for the example image</b></summary><img src="media/15.4.png"></details>|

---

#### Links

If you have your own website in addition to your FloriShop domain, it can be useful to provide direct links from your webshop to important pages on your own website. The **Links** screen allows you to easily add links to external websites or pages to the navigation bar of your shop.

|Step|Explanation|
|:--|:--|
|**1**|Navigate via **Content Management (CMS)** (1) to **Links** (2).<details><summary><b>Click here for the example image</b></summary><img src="media/16.1.png"></details>|
|**2**|Click the **'+' icon** (3) to create a new link. In the dialog, enter the following information:<br><br>- **Name (4):** enter a recognizable name for the link.<br><br>- **URL (5):** enter the URL to which the link should navigate.<br><br>- **Display name (6):** enter the name under which the link should be displayed in the navigation bar.<br><br>- **Navigation order (optional) (7):** determine the position of the link in the navigation bar. **1** places the link at the beginning.<br><br>- **Add user token (optional) (8):** enable this option if a user token should be added to the URL.<br><br>Then click **Save** (9) to save the link. The link will then be displayed directly in the navigation bar of your shop.<details><summary><b>Click here for the example image</b></summary><img src="media/16.2.png"></details>|

---

#### Editor

The **Editor** is a WYSIWYG editor (*What You See Is What You Get*) in which changes are immediately displayed on the page as a draft. Once the page has been published, the changes will become visible in the live environment.

**Note:** When you are logged in as a CMS administrator, changes are immediately visible in the webshop. This may make it appear as though the changes are already live, but in reality, they are only displayed as a draft preview to logged-in CMS administrators.

| Step | Explanation |
|:--|:--|
| **1** | Activate the webshop's **Management** environment by clicking the user icon. A dropdown menu will open. Then click the **Management** option (1).<details><summary><b>Click here for the example image</b></summary><img src="media/16.1.1.png"></details> |
| **2** | Activate the **CMS Editor** (2).<details><summary><b>Click here for the example image</b></summary><img src="media/16.1.2.png"></details> |
| **3** | After the CMS Editor has been activated, several elements become visible. Selection boxes (3) appear around the components, the [Navigator](#navigator) (4) opens, and the [Aside Editor](#aside-editor) is displayed (5). Several options are also shown at the bottom of the screen:<br><br>**6 - [Pending changes](#pending-changes):** View the changes that have not yet been published.<br><br>**7 - Show/close [Navigator](#navigator):** Open or close the Navigator.<br><br>**8 - History:** Displays a timeline that allows you to navigate between different change steps. You can also see which CMS administrator made a change to the displayed page.<br><br>**9 - Responsive:** Opens a toolbar that allows you to preview the page on tablets and mobile devices.<br><br>**10 - Publish:** Publish the page to the live environment.<br><br>**11 - Save:** Save the changes you have made. **Note:** Saving changes does not publish them to the live environment.<br><br>**12 - Undo step:** Undo the most recently made change.<details><summary><b>Click here for the example image</b></summary><img src="media/16.1.3.png"></details> |
| **4** | By clicking on a component (13), the corresponding selection boxes are highlighted. You can then make changes directly (14). The [Navigator](#navigator) also immediately shows where the selected component is located on the page (15).<details><summary><b>Click here for the example image</b></summary><img src="media/16.1.4.png"></details> |
| **5** | By right-clicking on a component, you will see various options (16), depending on the selected component. Available actions include:<br><br>- **Upload:** Upload a `.json` file of a CMS [page](#pagina).<br>- **Download:** Download the CMS page as a `.json` file.<br>- **Duplicate:** Duplicate the selected component using `Ctrl + D`.<br>- **Copy:** Copy the selected component using `Ctrl + C`.<br>- **Paste:** Paste a copied component using `Ctrl + V`.<br>- **Save as [Template](#templates):** Save the selected component as a template.<br>- **Delete:** Delete the selected component.<br>- **Add:** Add a new component.<details><summary><b>Click here for the example image</b></summary><img src="media/16.1.5.png"></details> |

---

#### Navigator

The **Navigator** displays the tree structure of your CMS [page](#pagina). With the convenient drag-and-drop functionality, you can easily adjust the structure and layout of the page.

| Step | Explanation |
|:--|:--|
| **1** | After enabling the **CMS Editor**, as described in [Editor](#editor), a long dialog window will appear. This is the **Navigator** (1). The Navigator not only shows where the different components are located on the page, but also allows you to quickly navigate to a specific component. When you click on a component in the Navigator, the [Editor](#editor) automatically scrolls to the corresponding component. The selected component is then briefly highlighted, making it easy to identify the relevant element.<details><summary><b>Click here for the example image</b></summary><img src="media/16.2.1.png"></details> |
| **2** | Use the arrows (2) to expand and collapse components. This allows you to easily view how components are structured within other components. By clicking and holding a component while dragging it, you can easily change its position on the page (3). If you hold down the **Ctrl** key while dragging, you can place a component inside another component.<details><summary><b>Click here for the example image</b></summary><img src="media/16.2.2.png"></details> |
| **3** | By right-clicking on a component (4), you will see the same options (5) as when right-clicking on a component in the [Editor](#editor).<details><summary><b>Click here for the example image</b></summary><img src="media/16.2.3.png"></details> |

---

#### Component Dialog

The **Component Dialog** is the library containing all available [CMS components](#componenten-1). These components serve as building blocks for creating and designing your CMS [pages](#pagina).

| Step | Explanation |
|:--|:--|
| **1** | In this example, we want to add a [Button](#button) component to a [Flex](#flex) component (1). Click the '+' icon next to the **Flex** component (2) to open the **Component Dialog**.<details><summary><b>Click here for the example image</b></summary><img src="media/16.3.1.png"></details> |
| **2** | The **Component Dialog** is now open. Here, you will find dozens of components that you can use to build your CMS [page](#page). The components are divided into several categories (3):<br><br>**[Basic](#basic):** Contains components that can be used to build the basic structure of your page.<br><br>**[Dashboard](#dashboard):** Components that can be used to build analytical dashboards.<br><br>**[Form](#form):** Contains all the components needed to create digital forms.<br><br>**[Advanced](#advanced):** Components primarily intended for developers.<br><br>**[User](#user):** Components that apply to logged-in debtors.<br><br>**[Health](#health):** Components that can be used to build analytical Health screens.<br><br>**[Media](#media-1):** Components for adding and supporting media content.<br><br>**[Navigation](#navigatie):** Useful and dynamic components that allow visitors to navigate quickly and efficiently within and outside the webshop.<br><br>**[Templates](#templates):** An overview of saved templates that can be added to the page with a single click.<br><br>The number of available components is displayed for each category (4). You can search for a component by name (5), sort the results (6) alphabetically or by popularity, and change the display to a list view (7). When sorting by popularity, frequently used components are displayed at the top.<br><br>The name and category of each component are displayed in the overview (8). You can view more information about a component by clicking the 'i' icon (9). Add a component by clicking the '+' icon (10).<details><summary><b>Click here for the example image</b></summary><img src="media/16.3.2.png"></details> |
| **3** | After the [Button](#button) component has been added, it is immediately displayed in the [Editor](#editor) (11) and [Navigator](#navigator) (12). You can also directly adjust the component's settings via the [Aside Editor](#aside-editor) (13).<details><summary><b>Click here for the example image</b></summary><img src="media/16.3.3.png"></details> |

---

#### CMS Zone

A **CMS zone** is a defined area to which one or more customers can be assigned. Customers assigned to a specific zone have access to the CMS components that are linked to that zone. CMS zones therefore function as a form of authorization within the CMS.

*Follow the steps below:*

| Step | Explanation |
|:--|:--|
| **1** | Open the **Constants** screen.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS/media/image1.png"></details> |
| **2** | Navigate to the following path in the file structure:<br>**System** → **Internet** → **CMS Zones**.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS/media/image2.png"></details> |
| **3** | Click the **Add new item** icon (the **+** symbol). |
| **4** | The screen for creating a CMS zone opens. Enter the following fields:<br><br>- **Code**<br>- **Description** — this is displayed in the CMS. |
| **5** | Click **OK** to confirm the creation of the zone. Repeat these steps to create multiple CMS zones if required. These zones can later be linked to customers and CMS components. |
| **6** | Open the **Constants** screen.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS/media/image1.png"></details> |
| **7** | Navigate to the following path:<br>**Community** → **Customer Data** → **Customers**.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS/media/image3.png"></details> |
| **8** | Open the customer to which you want to assign one or more CMS zones. |
| **9** | In the opened window, navigate to the following path in the file structure:<br>**Internet** → **CMS**.<details><summary><b>Click here for the example image</b></summary><img src=".Manual theme management Florishop/media/image54.png"></details> |
| **10** | Click the **CMS Zones** button. The **Customer Package** window opens.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS/media/image3.png"></details> |
| **11** | Click **Add**. The **CMS Zones** window opens. |
| **12** | Select one or more zones and click **OK**.<br><br>*The selected zones are now displayed in the **Customer CMS Zones** window.*<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS/media/image5.png"></details> |
| **13** | Click **OK** in the **Customer CMS Zones** window.<br><br>*The selected CMS zones are now linked to the customer.*<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS/media/image6.png"></details> |
| **Repeat** | Repeat the steps above for each customer to which you want to assign CMS zones. |

---

## Aside Editor

### Toolbar

#### Menu

| Step | Explanation |
|:--|:--|
| **1** | Open the administration menu via **your account name → Management** (1). The **Menu** (2) provides access to the following options available to administrators from the browser:<br><br>**3 - Home:** Navigate directly to the home page of your shop.<br><br>**4 - Information:** This section contains important technical information about your shop. This information may be useful to developers, for example, when specific information needs to be retrieved from the logs.<br><br>**5 - Configuration:** This tab contains relevant settings and configuration options for your shop. From the configuration section, you can create new [themes](#theme-configuration) and upload [documents](#documents), among other things.<br><br>**6 - Content Management (CMS):** This section contains all relevant options for managing and editing content within the CMS. More information about these options can be found under [Management Screens](#management-screens).<br><br>**7 - Advanced:** This tab is only accessible to Florisoft employees.<br><br>**8 - CMS Editor:** Enable the CMS Editor to start editing your [CMS pages](#page).<br><br>**9 - Minimize:** Collapse the administration menu.<br><br>**10 - Close:** Close the administration environment.<details><summary><b>Click here for the example image</b></summary><img src="media/17.1.png"></details>|

---

#### Search

| Step | Explanation |
|:--|:--|
| **1** | Via **Search** (1), administrators can quickly search for **CMS and Blog pages** that have been created within your shop. Use the search bar (2) to find the desired page. You can then select the page and navigate directly to it (3).<details><summary><b>Click here for the example image</b></summary><img src="media/18.1.png"></details>|

---

#### CMS Editor

| Step | Explanation |
|:--|:--|
| **1** | Via **CMS Editor** (1) in the Toolbar, you can quickly navigate to the **Aside Editor** when the CMS Editor is enabled. From here, you can easily edit the components on your CMS page.<details><summary><b>Click here for the example image</b></summary><img src="media/19.1.png"></details>|

---

#### Drag & Drop

The **Drag & Drop** screen is an alternative to the [Component Dialog](#component-dialog) and the [Editor](#editor). It allows you to drag [components](#components) directly from the [Aside Editor](#aside-editor) onto a page and place them there.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we start with a new, empty [page](#page). When the [CMS Editor](#cms-editor) is enabled (1), you can open the **Drag & Drop** environment (2) via the [Toolbar](#1-toolbar).<details><summary><b>Click here for the example image</b></summary><img src="media/20.1.png"></details> |
| **2** | In the [Aside Editor](#aside-editor) (3), all component categories are displayed, similar to the [Component Dialog](#component-dialog). You can also search for a specific component here (4). The bars you see (5) are the page containers where components can be placed.<details><summary><b>Click here for the example image</b></summary><img src="media/20.2.png"></details> |
| **3** | Drag a component — in this example, a [Row](#rowcolumn) (6) — by holding down the left mouse button and dragging the component to the desired CMS page container (7). The component is now placed on the page.<details><summary><b>Click here for the example image</b></summary><img src="media/20.3.png"></details> |
| **4** | Next, drag a [Column](#rowcolumn) (8) into the newly added **Row** (9).<details><summary><b>Click here for the example image</b></summary><img src="media/20.4.png"></details> |
| **5** | You can edit components by clicking the pencil icon (10). You can also delete a component (11). When you have finished arranging the page, close the **Drag & Drop** screen (12).<details><summary><b>Click here for the example image</b></summary><img src="media/20.5.png"></details> |
| **6** | The [components](#components) we have arranged using **Drag & Drop** are now directly placed on the CMS page (13). These components can then be further populated and configured with the desired content.<details><summary><b>Click here for the example image</b></summary><img src="media/20.6.png"></details> |

---

#### SEO

To make your pages more easily discoverable in Google, you can configure SEO settings for each page. By adding relevant keywords and metadata, you increase the chances of your page being found in search engines.

**Note:** Building a good SEO score requires sufficient knowledge of SEO strategies. The correct settings alone do not guarantee a high position in search results.

| Step | Explanation |
|:--|:--|
| **1** | When the [CMS Editor](#cms-editor) is enabled (1), you can open the **SEO** dialog via the [Toolbar](#1-toolbar) (2).<details><summary><b>Click here for the example image</b></summary><img src="media/21.1.png"></details> |
| **2** | The **URL** of the page is already filled in and does not need to be changed (3). Then select the desired language for the metadata (4).<br><br>**Meta title (5):** Enter the title of the page here. You can use a maximum of 60 characters. For the best results, we recommend using a maximum of 40 characters. This means the title will, in most cases, be fully visible in Google's search results and will not be truncated.<br><br>**Meta description (6):** Enter a short description of the page here. You can use a maximum of 155 characters. For the best results, we recommend using a maximum of 140 characters. This means the description will, in most cases, be fully visible in Google's search results and will not be truncated.<br><br>**Canonical URL (7):** Enter the URL of the preferred version of a page when the same or similar content is accessible through multiple URLs. This indicates which URL search engines should consider the primary version of the page. This can help prevent duplicate content issues.<br><br>**Google Site Verification (8):** Use this field to verify your website with Google. To do this, enter the verification code provided by Google. This confirms to Google that you are the owner or administrator of the website.<details><summary><b>Click here for the example image</b></summary><img src="media/21.2.png"></details> |
| **3** | **Meta tags (9):** You can optionally enter meta tags here. However, Google no longer uses the traditional `meta keywords` tag as a ranking factor. Entering these therefore has no direct impact on your SEO score.<br><br>**Do not index (10):** Enable this option if you do not want Google or other search engines to index the page. The page will then not be included in search results.<br><br>You can then **save** the SEO settings (11) or **cancel** the changes (12).<details><summary><b>Click here for the example image</b></summary><img src="media/21.3.png"></details> |

---

#### Preferences

In this tab, you can configure the [Editor](#editor) according to your personal preferences.

| Step | Explanation |
|:--|:--|
| **1** | Under **Preferences** (1), you can enable or disable the **AutoSaveOnEdit** function (2). This function is enabled by default, ensuring that draft changes are automatically saved. Using the dropdown menu (3), you can easily switch between different [themes](#theme-configuration) and then make changes within another theme.<details><summary><b>Click here for the example image</b></summary><img src="media/22.1.png"></details> |

---

#### Responsive tabs

Use these tabs to ensure that your website looks clean and professional not only on desktop devices, but also on tablets and mobile devices.

| Step | Explanation |
|:--|:--|
| **1** | When you select a component (1), the responsive tabs (2) appear in the [Aside Editor](#aside-editor). Enter the desired settings for desktop devices.<details><summary><b>Click here for the example image</b></summary><img src="media/23.1.png"></details> |
| **2** | To define different behavior for tablet devices (3), enter a different value via the **Styling** tab (4).<details><summary><b>Click here for the example image</b></summary><img src="media/23.2.png"></details> |
| **3** | To define different behavior for mobile devices (5), enter a different value via the **Styling** tab (6). Use the [Responsive button](#editor) (7) to check how the [Text](#text) component responds on mobile and tablet devices.<details><summary><b>Click here for the example image</b></summary><img src="media/23.3.png"></details> |

---

### General Settings

Every component has a **General Settings** tab. The available settings may differ depending on the component. However, there are several options that can be found in many components.

#### Translations

When you can enter text within a [component](#components) or in the [page settings](#page), you can easily add translations for different languages using the **Edit translations** button.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a **[Text component](#text)** (1). Under the **General Settings** tab (2), you will find the **Edit translations** button (3). Click this button to open the translation dialog.<details><summary><b>Click here for the example image</b></summary><img src="media/24.1.png"></details> |
| **2** | The translation dialog displays the webshop's **Default** language by default (4). The default language of the webshop can be configured using the webshop setting **CMSDEFAULTCULTURE**. **Note:** Always enter a valid language code, such as `nl` or `en`. Invalid values may cause errors in the webshop. You can then enter the text for this language (5). In this example, the text field is still empty because no Dutch translation has been entered yet. You will also find a dropdown menu where you can select another language (6). You can then enter the desired translation for the selected language (7).<details><summary><b>Click here for the example image</b></summary><img src="media/24.2.png"></details> |
| **3** | When you select a language, a green indicator (8) shows that the selected language has been fully translated. In this example, you can see that a translation has only been entered for the English language (8). After entering the desired translations, you can confirm the settings (9).<details><summary><b>Click here for the example image</b></summary><img src="media/24.3.png"></details> |

---

### Styling

Almost every component has a **Styling** tab. The available settings may differ depending on the component. However, there are several options that can be found in many components.

#### Color Picker

The **Color Picker** is displayed when you want to select or adjust a color for a [component](#components). You can easily select one of your [theme colors](#theme-configuration) (**pcolor2** or **scolor2**), choose a custom color, and then adjust the transparency.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a **[Text component](#text)** (1). Under the **Styling** tab (2), you will find the **Color** option (3). When you click on the color, the **Color Picker** opens. In the color field, you can select a color hue (4) and use the slider (5) to determine the desired color. You can adjust the transparency using the transparency slider (6).<br><br>If you have a **HEX** (7) or **RGB** color code (8), you can also enter it manually. In addition, several predefined colors (9) are available for you to select directly.<br><br>The **Color Picker** also gives you quick access to your two primary [theme colors](#theme-configuration), **pcolor2** and **scolor2** (10). When you assign a theme color to a component, it will dynamically respond to the color configured in the [Theme Configuration](#theme-configuration).<br><br>Confirm the selected color (11). If the color is not quite what you had in mind, you can easily remove the selected color using the delete button (12) or [undo](#editor) the change.<details><summary><b>Click here for the example image</b></summary><img src="media/25.1.png"></details> |

---

#### Border

With the **Border** option, you can add a border to your [component](#components). You can set the border width, color, and border style. In addition, you can adjust the border width individually for each side.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a **[Panel component](#panel)** (1). Under the **Styling** tab (2), you will find the **Border** option (3). Here, you can set the desired border width (4). The following units are supported: `px`, `em`, `rem`, `%`, `in`, `cm`, `mm`, `pt`, `pc`, `vh`, and `vw`. You can then select a [color](#color-picker) (5) and border style (6).<details><summary><b>Click here for the example image</b></summary><img src="media/26.1.png"></details> |
| **2** | If desired, expand the additional options (7) to set the border width individually for each side. The changes are immediately visible in the [Editor](#editor) (8). If the border is not quite as desired, you can easily remove the configured border using the delete button (9) or [undo](#editor) the change.<details><summary><b>Click here for the example image</b></summary><img src="media/26.2.png"></details> |

---

#### Margin/Padding

With the **Margin** and **Padding** options, you can create space around and inside a [component](#components). **Margin** can also be used to influence the position of a component on the page.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a [Panel](#panel) component (1). Under the **Styling** tab (2), you can configure **Margin** (3) and **Padding** (4) for all sides of the component. With **Margin**, you can set the space around a component (5). The following units are supported: `unset`, `auto`, `px`, `em`, `rem`, `%`, `in`, `cm`, `mm`, `pt`, `pc`, `vh`, and `vw`. With **Padding**, you can create space inside the component (6). The following units are supported: `px`, `em`, `rem`, `%`, `in`, `cm`, `mm`, `pt`, `pc`, `vh`, and `vw`.<details><summary><b>Click here for the example image</b></summary><img src="media/27.1.png"></details> |
| **2** | By expanding the additional options (7), you can configure the values for each side individually. The changes are immediately visible in the [Editor](#editor) (8). If the settings are not quite as desired, you can easily remove them using the delete button (9) or [undo](#editor) the change.<details><summary><b>Click here for the example image</b></summary><img src="media/27.2.png"></details> |

---

#### Border Radius

Give your [components](#components) a playful or modern appearance by using **Border Radius**.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a [Panel](#panel) component (1). Under the **Styling** tab (2), you can configure the **Border Radius** (3) for all corners of the component. The following units are supported: `px`, `em`, `rem`, `%`, `in`, `cm`, `mm`, `pt`, `pc`, `vh`, and `vw`.<details><summary><b>Click here for the example image</b></summary><img src="media/28.1.png"></details> |
| **2** | By expanding the additional options (4), you can configure the border radius for each corner individually. The changes are immediately visible in the [Editor](#editor) (5). If the settings are not quite as desired, you can easily remove them using the delete button (6) or [undo](#editor) the change.<br><br>**Note:** The border radius may not always be immediately visible. In that case, check whether [Overflow](#overflow) (7) is set to **Hidden**. In this example, **Overflow** is set to **Visible**, because the border radius is already visible (5).<details><summary><b>Click here for the example image</b></summary><img src="media/28.2.png"></details> |

---

#### Height/Width

Set the **Height** and **Width** of your [components](#componenten) to determine the dimensions of a component.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a [Panel](#panel) component (1). In the **Styling** tab (2), you can configure the **Height** (3) and **Width** (4) of the component.<details><summary><b>Click here for the example image</b></summary><img src="media/29.1.png"></details> |
| **2** | To set the height, disable the **Auto** option (5). You can then enter a height value (6). Next, choose whether you want to set the height as a fixed height (**Normal**), maximum height (**Max**), or minimum height (**Min**) (7). In this example, we have set the minimum height to **50** (6) **ViewportPercent** (8). This means that the [Panel](#panel) component will always occupy at least 50% of the screen height. The following units are supported: `px` (Pixel), `rem` (1rem = 16 pixels), `%` (Percent), and `vh` (Viewport Percent). Changes are immediately visible in the [Editor](#editor) (9).<details><summary><b>Click here for the example image</b></summary><img src="media/29.2.png"></details> |
| **3** | To set the width, disable the **Auto** option (10). You can then enter a width (**Width**) (11). Next, choose whether you want to set the width as a fixed width (**Normal**), maximum width (**Max**), or minimum width (**Min**) (12). In this example, we have set the maximum width to **300** (11) **Pixels** (13). This means that the [Panel](#panel) component will never be wider than 300 pixels. The following units are supported: `px` (Pixel), `rem` (1rem = 16 pixels), `%` (Percent), and `vh` (Viewport Percent). Changes are immediately visible in the [Editor](#editor) (14).<details><summary><b>Click here for the example image</b></summary><img src="media/29.3.png"></details> |
| **4** | When you set the height or width type to **Max** or **Min**, an optional additional input field appears (15). This allows you to set the other boundary value in addition to a maximum or minimum height/width for the [component](#componenten). In this example, we have configured the [Panel](#panel) component to have a maximum width of 300 pixels, while never becoming narrower than 100 pixels.<details><summary><b>Click here for the example image</b></summary><img src="media/29.4.png"></details> |

---

#### Box Shadow

Add depth and a visual effect to your [components](#componenten) by using **Box Shadow**.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a [Panel](#panel) component (1). In the **Styling** tab (2), you can configure the **Box Shadow** (3) for the [component](#componenten).<details><summary><b>Click here for the example image</b></summary><img src="media/30.1.png"></details> |
| **2** | Set the horizontal (4) and vertical (5) offset of the shadow. You can then configure the blur (6) and spread (7) of the shadow. The following units are supported: `px`, `em`, `rem`, `%`, `in`, `cm`, `mm`, `pt`, `pc`, `vh`, and `vw`. Next, select a [color](#color-picker) (8) and choose whether the shadow should be displayed inside or outside the component (9). Changes are immediately visible in the [Editor](#editor) (10). If the settings are not quite as desired, you can easily remove the configured box shadow using the delete button (11) or [undo](#editor) the change.<br><br>**Note:** The box shadow may sometimes be clipped. If this happens, check whether the **Overflow** setting of the component containing the component with the box shadow is set to **Visible**. For more information, see [Overflow](#overflow).<details><summary><b>Click here for the example image</b></summary><img src="media/30.2.png"></details> |

---

#### Overflow

Determine how excess content within a [component](#components) is displayed or handled using the **Overflow** option.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a [Panel](#panel) component (1). In the **Styling** tab (2), you can configure the **Overflow** option (3) for the [component](#components). A [Border Radius](#border-radius) has been applied to the selected component, but it is not visible in the [Editor](#editor) (5). With the **Overflow** option, you can determine how content that extends beyond the boundaries of a component is displayed.<details><summary><b>Click here for the example image</b></summary><img src="media/31.1.png"></details> |
| **2** | Set **Overflow** to **Hidden** (6). In the [Editor](#editor) (7), you can immediately see that the [Border Radius](#border-radius) is now displayed correctly. The **Overflow** option provides the following settings:<br><br>**Visible:** Content that extends beyond the boundaries of the component remains visible. This can also ensure that, for example, a [Box Shadow](#box-shadow) is displayed correctly.<br><br>**Hidden:** Content that extends beyond the boundaries of the component is hidden. This can also ensure that, for example, a [Border Radius](#border-radius) is displayed correctly.<br><br>**Auto:** The browser automatically determines how excess content is handled. Scrollbars are displayed when necessary.<br><br>**Scroll:** Excess content is hidden and scrollbars are displayed, allowing the user to scroll through the content.<br><br>**ScrollY:** Excess content is hidden vertically. Vertical scrolling is enabled when necessary.<br><br>**ScrollX:** Excess content is hidden horizontally. Horizontal scrolling is enabled when necessary.<br><br>**Unset:** The Overflow setting is reset to the default value of the component or the underlying CSS setting.<details><summary><b>Click here for the example image</b></summary><img src="media/31.2.png"></details> |
---

### Advanced

Almost every [component](#components) includes an **Advanced** tab. The available settings may vary depending on the component. However, there are several options that are commonly available across multiple components.

#### Hide When Empty

The **Hide When Empty** option automatically hides a component in the live environment when it contains no content.

---

#### Add Button Visibility (in Editor)

With the **Add Button Visibility (in Editor)** option, you can determine whether the **Add button** is visible when the page is opened in editing mode.

---

#### Identification Name

Give your [components](#components) a custom name to create more structure and provide a clearer overview in the [Navigator](#navigator).

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a [Button](#button) component (1). In the **Advanced** tab (2), you can enter a custom name for the component under **Identification Name** (3).<details><summary><b>Click here for the example image</b></summary><img src="media/33.1.png"></details> |
| **2** | After entering a name (4), it is displayed next to the selected component in the [Navigator](#navigator) (5). This makes it easier to identify components and provides more structure and overview within the Navigator.<details><summary><b>Click here for the example image</b></summary><img src="media/33.2.png"></details> |

---

#### Slot Name

| Item | Description |
|---|---|
| Advanced | This description will be added later |

---

#### HTML Class Name

Enter a CSS class name to apply custom styling to the component.

**Note:** Applying custom CSS/SCSS styling requires sufficient knowledge of CSS and SCSS.

---

#### Tag

With the **Tag** option, you can assign IDs to components within a custom [Template](#templates). These IDs can then be used to load dynamic data from the [Page settings](#page) into a [Blog component](#blog).

This allows data such as the **page title**, **page description**, **image**, and **URL** to be loaded automatically. As a result, the template within the Blog component is automatically populated and updated when, for example, a new blog is published.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we created a [Template](#templates) that we want to use dynamically for a [Blog](#blog) overview. We use Tags for this purpose.<details><summary><b>Click here for the example image</b></summary><img src="media/34.1.png"></details> |
| **2** | We added a [Panel](#panel) component (1) with a background image. Under the **Advanced** tab (2), you can select **OverviewPanelImageTag** under **Tag** (3). The [Panel](#panel) component will then check the [Blog page](#blogpage) settings to see whether an image has been configured. This image is then automatically displayed in the [Blog](#blog) overview.<details><summary><b>Click here for the example image</b></summary><img src="media/34.2.png"></details> |
| **3** | We then added a [Text](#text) component (4). Under **Tag**, we set **OverviewTitle** (5). The [Text](#text) component will then check the [Blog page](#blogpage) settings to see whether a **Page title** has been configured. This title is then automatically displayed in the [Blog](#blog) overview.<details><summary><b>Click here for the example image</b></summary><img src="media/34.3.png"></details> |
| **4** | We added another [Text](#text) component (6). Under **Tag**, we set **OverviewDescription** (7). The [Text](#text) component will then check the [Blog page](#blogpage) settings to see whether a **Description** has been entered. This description is then automatically displayed in the [Blog](#blog) overview.<details><summary><b>Click here for the example image</b></summary><img src="media/34.4.png"></details> |
| **5** | Finally, we added a [Button](#button) component (8). Under **Tag**, we set **OverviewButton** (9). The [Button](#button) component will then retrieve the configured URL from the [Blog page](#blogpage) settings. When a visitor clicks the button, they are directed to the correct [Blog page](#blogpage).<details><summary><b>Click here for the example image</b></summary><img src="media/34.5.png"></details> |
| **6** | In this example, we show where you can configure the information mentioned above in the [Blog page](#blogpage) settings. Under the **Advanced** tab, you will find a field where you can upload an [image](#media) (10). The configured Tag ensures that this image is automatically displayed in the [Blog](#blog) overview. The page URL is automatically populated when creating the [Blog page](#blogpage).<details><summary><b>Click here for the example image</b></summary><img src="media/34.6.png"></details> |
| **7** | Next, enter the **Description** (11). This description is automatically linked to the [Text](#text) component in the [Blog](#blog) overview through the configured Tag.<details><summary><b>Click here for the example image</b></summary><img src="media/34.7.png"></details> |
| **8** | The [Blog](#blog) component (12) now automatically populates the [Template](#templates) with the data from the [Blog page](#blogpage) settings. This is done based on the configured Tags. The overview displays the [Image](#media) (13), [Title](#text) (14), [Description](#text) (15), and [Button](#button) (16).<details><summary><b>Click here for the example image</b></summary><img src="media/34.8.png"></details> |

---

#### Z-index

The **Z-index** option determines the stacking order of overlapping [components](#components). A component with a higher **z-index** is displayed above a component with a lower **z-index**.

You can adjust the z-index by a maximum of **3 layers up** or **3 layers down** relative to the default position. This allows you to easily determine which component is displayed on top when components overlap.

---

### Visibility

With the **Visibility** settings, you can build pages dynamically by temporarily showing or hiding components for specific groups of customers, countries, CMS zones, devices, or during a specific period.

#### Hide content

Temporarily hide [components](#components) for a specific country, [CMS zone](#cms-zone), or during a specific period.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we selected a [Panel](#panel) component (1). Under the **Visibility** tab (2), you can configure the following options under **Hide content** (3):<br><br>**Language Zone Selection** (4): Select a country for which the selected component should not be visible.<br><br>**Zone Selection** (5): Select a [CMS zone](#cms-zone) for which the selected component should not be visible.<br><br>**Valid from** (6): Set the date from which the selected component should no longer be displayed.<br><br>**Valid until** (7): Set the date until which the selected component should not be displayed.<br><br>**Repeat annually** (8): Enable this option to automatically repeat the configured period every year.<details><summary><b>Click here for the example image</b></summary><img src="media/35.1.png"></details> |

---

#### Show content

Temporarily show [components](#components) for a specific country, [CMS zone](#cms-zone), or during a specific period.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we selected a [Panel](#panel) component (1). Under the **Visibility** tab (2), you can configure the following options under **Show content** (3):<br><br>**Language Zone Selection** (4): Select a country for which the selected component should be visible.<br><br>**Zone Selection** (5): Select a [CMS zone](#cms-zone) for which the selected component should be visible.<br><br>**Valid from** (6): Set the date from which the selected component should be displayed.<br><br>**Valid until** (7): Set the date until which the selected component should be displayed.<br><br>**Visibility type** (8): Specify on which devices the selected component should be visible.<br><br>**Repeat annually** (9): Enable this option to automatically repeat the configured period every year.<details><summary><b>Click here for the example image</b></summary><img src="media/36.1.png"></details> |

---

#### Highlight content

With **Highlight content**, you can make [components](#components) visible to specific groups of customers based on available inventory or order lists.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we selected a [Panel](#panel) component (1). Under the **Visibility** tab (2), you can configure the following options under **Highlight content** (3):<br><br>**Show to** (4): Select which group can see the selected component. The following options are available:<br>- **Everyone**: Everyone can see the component.<br>- **Customer**: Only logged-in customers can see the component.<br>- **Anonymous**: Only visitors who are not logged in can see the component.<br>- **Do not show**: The component is not displayed.<br><br>**Show for Inventory/Order Lists (semicolon-separated)** (5): Enter one or more inventory codes to make the component visible only to customers who have access to the specified inventory or order list.<details><summary><b>Click here for the example image</b></summary><img src="media/37.1.png"></details> |
| **2** | In this example, we visit a flower inventory (6). Copy the webshop inventory code from the URL in the web browser. When you enter this code in the **Show for Inventory/Order Lists (semicolon-separated)** field, the component will only be visible to customers who have access to this webshop inventory.<details><summary><b>Click here for the example image</b></summary><img src="media/37.2.png"></details> |

---

## Components

### Basic

Basic components form the foundation of your [page](#page). These components provide the basic structure on which you can build the rest of your page.

#### Row/Column

A CMS page uses **Rows** and **Columns** to properly align content across different devices, such as PCs, laptops, tablets, and smartphones.

This chapter explains how to create and configure a **Row**. Every CMS element must be placed inside a **Column**, and every Column must be placed inside a Row. This means that a CMS page essentially consists of a grid, similar to a spreadsheet application such as Microsoft Excel.

*Follow the steps below:*

| Step | Explanation |
|:--|:--|
| **1** | Log in to the webshop with an administrator account. |
| **2** | Activate the **Management** environment of the webshop by clicking the user icon (1). A dropdown menu will open. Then click **Management** (2).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.2.png"></details> |
| **3** | Enable the **CMS Editor** (3) at the bottom of the screen. You can now start editing the page.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.3.png"></details> |
| **4** | Click the **+** icon (4) or right-click the top element in the [Navigator](#navigator) (5) to open the **Component Dialog**. You can also open the Component Dialog using the **Template** button (6). In that case, the Template category is opened automatically.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.4.png"></details> |
| **5** | Use the search function (7) to search for **Row**. Then click the **+** icon below the **Row** item (8).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.5.png"></details> |
| **6** | The **Row** is added directly to the page. You can then add one or more Columns. In this example, we choose a layout with three Columns next to each other (9).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.6.png"></details> |
| **7** | Select a **Column** using the [Navigator](#navigator) (10). In the column settings, you can use the **Properties** tab (11) to configure the alignment of CMS elements for different screen sizes.<br><br>The sliders determine how much space a CMS element occupies on devices with different screen sizes, such as PCs/laptops, tablets, and smartphones.<br><br>The total width of a screen consists of a maximum of **12 virtual columns**. An element can therefore be between one and twelve columns wide. This applies to all supported devices.<br><br>The top slider is used for **PCs and laptops**, the middle slider for **tablets**, and the bottom slider for **smartphones**.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.7.png"></details> |
| **8** | Open the **[Styling](#3-styling)** tab (12). Styling is optional. You can adjust the following settings:<br><br>**Background color:** Use the **Background** dropdown menu (13) to select a [background color](#color-picker).<br><br>**[Height/Width](#heightwidth):** Under **Height** (14), choose **Auto** or set a fixed height. The available units include `px`, `rem`, and `%`. We recommend using **Auto**, which automatically adjusts the height of the Column to fit its content.<br><br>**[Margin](#marginpadding):** Set the margin (spacing) around the Column (15). You can enter one value for all sides or configure each side individually. Supported units include `px`, `rem`, `%`, `mm`, and `cm`. Values such as `auto` and `unset` can also be used.<br><br>**[Padding](#marginpadding):** Set the spacing inside the Column (16). These settings work according to the same principle as Margin.<br><br>**[Overflow](#overflow):** Determine whether content that extends beyond the boundaries of the Column remains visible (17). By default, this is set to **Visible**.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.8.png"></details> |
| **9** | Open the **[Advanced](#4-advanced)** tab (18). The **Advanced** tab allows you to add additional classes, IDs, and other settings to a component. Under **[Identification Name](#identification-name)** (19), for example, you can give the component a custom name. This provides more structure and clarity in the [Navigator](#navigator) (20).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.9.png"></details> |
| **10** | Open the **[Visibility](#5-visibility)** tab (21). The **Visibility** tab works in the same way as when creating pages and categories. See the [Visibility](#visibility) chapter for more information about the available settings.<br><br>After configuring the desired settings, click **Save** (22) to save the Column in the CMS. Then click **Publish** (23) to make the changes live.<br><br>**You can always adjust the settings at a later time.**<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.10.png"></details> |

---

#### Panel

The **Panel** component is a versatile basic component with extensive [styling options](#3-styling) that allow you to visually design your page. You can add a background color, image, or atmospheric video without sound. You can then fill the Panel with multiple components. You can also make the entire Panel clickable by adding a destination URL.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a [Column](#rowcolumn) (1) to which we add the **Panel** component (2).<details><summary><b>Click here for the example image</b></summary><img src="media/38.1.png"></details> |
| **2** | The Panel is now visible in the [Navigator](#navigator) (3) and in the [Editor](#editor) (4). Via [General Settings](#general-settings) (5), you can find various options for configuring the Panel, including [Translations](#translations) (6).<details><summary><b>Click here for the example image</b></summary><img src="media/38.2.png"></details> |
| **3** | Under **Video Properties** (7), you will find various options for adding a video. Via **Preview Image** (8), you can set an image that is displayed before the video has loaded. Via **Video** (9), you can upload your own video file. If the video is hosted on another server, you can enter its URL under **Video URL** (10). With the **Lazy Load** option (11), you can determine whether the video is loaded only when it comes into view while scrolling.<details><summary><b>Click here for the example image</b></summary><img src="media/38.3.png"></details> |
| **4** | Under **Image Properties** (12), you will find various options for adding and configuring an image (13). Enable **Background Parallax** (14) for a parallax effect when scrolling past the image. This is particularly suitable for larger images. With **Background Animation** (15), you can make a wide image move horizontally. You can then adjust the animation speed (16). Via **Alt Text** (17), you can add a description to the image. This contributes to better [SEO](#seo) and makes the image more accessible.<details><summary><b>Click here for the example image</b></summary><img src="media/38.4.png"></details> |
| **5** | After adding an image (18), you can determine how it is displayed. Under **Background Size** (19), you can choose **Cover** (the image covers the entire Panel), **Auto** (the image is displayed at its original size), or **Contain** (the entire image is displayed). You can then use the sliders to determine the **Horizontal** (20) and **Vertical** (21) position of the image or video. When both values are set to 50%, the image or video is positioned exactly in the center of the Panel.<details><summary><b>Click here for the example image</b></summary><img src="media/38.5.png"></details> |
| **6** | After positioning the image, you can optionally enter a URL (22). This makes the entire Panel clickable, allowing you to use it as a fully customizable button or banner. **Note:** you do not need to enter the full domain in this field. Only the path is required. With the option (23), you can determine whether the URL is opened in a new browser tab. Add a description to the Panel under **Title** (24). This title is displayed when you hover your mouse over the Panel. Via **Aria Label** (25), you can add a description of the Panel that can be read aloud by assistive technologies such as screen readers. See [Component Styles](#component-styles) (26) for more information about Component Styles. See also [Styling](#3-styling) (27) for more information about the available styling options.<details><summary><b>Click here for the example image</b></summary><img src="media/38.6.png"></details> |
| **7** | See [Advanced](#4-advanced) (28) for all available advanced options. The Panel also has a specific option that allows the component to gradually appear on the page. This **fade-in effect** gives your page a modern and playful appearance. You can easily enable this option using the on/off switch (29).<details><summary><b>Click here for the example image</b></summary><img src="media/38.7.png"></details> |

---

#### Flex

With the **Flex** component, you can position and align content in a flexible way. Add one or more [components](#components) and determine how they are displayed horizontally or vertically. In addition, you can configure the alignment, spacing, and behavior across different screen sizes. The Flex component forms the foundation for creating a dynamic webpage.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we add a **Flex** component (2) to the [Page](#page) (1).<details><summary><b>Click here for the example image</b></summary><img src="media/39.1.png"></details> |
| **2** | The **Flex** component is now visible in the [Navigator](#navigator) (3) and the [Editor](#editor) (4). Through the **[General settings](#general-settings)** tab (5), you can determine how the elements within the Flex component are arranged. Before adjusting these settings, we first add some elements.<details><summary><b>Click here for the example image</b></summary><img src="media/39.2.png"></details> |
| **3** | We have added three [Columns](#rowcolumn) (6, 7, and 8) to the Flex component. Each column has been given a width of two columns and its own [color](#color-picker).<details><summary><b>Click here for the example image</b></summary><img src="media/39.3.png"></details> |
| **4** | Through the **[General settings](#general-settings)** tab, you can configure the **Flex direction**. In this example, the [Columns](#rowcolumn) are placed below each other when the Flex direction is set to **Column** (9).<details><summary><b>Click here for the example image</b></summary><img src="media/39.4.png"></details><br><br>**Reverse column** (10): places the Columns in reverse order, from bottom to top.<details><summary><b>Click here for the example image</b></summary><img src="media/39.4.1.png"></details><br><br>**Row** (11): places the Columns next to each other from left to right.<details><summary><b>Click here for the example image</b></summary><img src="media/39.4.2.png"></details><br><br>**Reverse row** (12): places the Columns next to each other from right to left.<details><summary><b>Click here for the example image</b></summary><img src="media/39.4.3.png"></details> |
| **5** | In this example, we keep the **Flex direction** set to **Row**. Note: when the Flex direction is set to **Column**, the main axis and cross axis respond in the opposite way. Through **Main axis alignment** (horizontal alignment), you determine how the [Columns](#rowcolumn) are positioned horizontally.<br><br>**Start** (13): aligns the Columns to the left.<details><summary><b>Click here for the example image</b></summary><img src="media/39.5.png"></details><br><br>**End** (14): aligns the Columns to the right.<details><summary><b>Click here for the example image</b></summary><img src="media/39.5.1.png"></details><br><br>**Center** (15): places the Columns in the center.<details><summary><b>Click here for the example image</b></summary><img src="media/39.5.2.png"></details><br><br>**Space between** (16): distributes the available space between the Columns.<details><summary><b>Click here for the example image</b></summary><img src="media/39.5.3.png"></details><br><br>**Space around** (17): distributes the available space around the Columns.<details><summary><b>Click here for the example image</b></summary><img src="media/39.5.4.png"></details><br><br>**Space evenly** (18): gives each Column exactly the same amount of space around it.<details><summary><b>Click here for the example image</b></summary><img src="media/39.5.5.png"></details><br><br>**Start (language-sensitive)** and **End (language-sensitive)** work the same as **Start** and **End**, but take the reading direction of different languages into account. |
| **6** | To make the following options clearer, we give one of the three [Columns](#rowcolumn) (19) a [height](#height-width) of **300px**.<details><summary><b>Click here for the example image</b></summary><img src="media/39.6.png"></details> |
| **7** | Through **Cross axis alignment** (vertical alignment), you determine how the Columns are aligned vertically relative to each other.<br><br>**Stretch** (20): all Columns automatically receive the height of the tallest Column.<details><summary><b>Click here for the example image</b></summary><img src="media/39.7.png"></details><br><br>**Start** (21): aligns all Columns at the top.<details><summary><b>Click here for the example image</b></summary><img src="media/39.7.1.png"></details><br><br>**End** (22): aligns all Columns at the bottom.<details><summary><b>Click here for the example image</b></summary><img src="media/39.7.2.png"></details><br><br>**Center** (23): vertically centers all Columns.<details><summary><b>Click here for the example image</b></summary><img src="media/39.7.3.png"></details><br><br>**Start (language-sensitive)** and **End (language-sensitive)** work the same as **Start** and **End**, but take the reading direction of different languages into account. |
| **8** | Through **Wrap** (24), you determine how the elements respond when the available space becomes smaller.<br><br>**Wrap** automatically moves elements to the next line when there is insufficient space.<br><br>**No wrap** keeps all elements next to each other, even when the available space is limited.<br><br>With **Spacing** (25), you determine the distance between the elements. The following units are supported: `px`, `em`, `rem`, `%`, `in`, `cm`, `mm`, `pt`, `pc`, `vh` and `vw`.<details><summary><b>Click here for the example image</b></summary><img src="media/39.8.png"></details> |
| **9** | Expand the additional options (26) to configure horizontal and vertical spacing separately.<details><summary><b>Click here for the example image</b></summary><img src="media/39.9.png"></details> |
| **10** | Enable **Fill objects** (27) to automatically fill all elements across the available space, regardless of configured [widths](#height-width).<details><summary><b>Click here for the example image</b></summary><img src="media/39.10.png"></details> |
| **11** | Through the [Advanced settings](#4-advanced) (28), you can enable the **Inherit parent height** (29) option. This allows the Flex component to automatically inherit the height of the parent component. For example, when a [Panel](#panel) has a configured [height](#height-width) of **500px**, the Flex component inside this Panel will automatically receive the same height.<details><summary><b>Click here for the example image</b></summary><img src="media/39.11.png"></details><br><br>Read more about the additional settings in the [Advanced](#4-advanced) and [Visibility](#5-visibility) tabs. |

---

#### Header

| Onderdeel | Beschrijving |
|---|---|
| Header | Deze beschrijving wordt aangevuld |

---

#### Text

The **Text** component allows you to easily add your own text using the TinyMCE editor. You can use it to add headings and paragraphs and format text with options such as bold, italic, font size, alignment, and more. The text color can be adjusted via the [Styling](#3-styling) tab of the component. In the [Theme configuration](#theme-configuration), the `primary-font-color` color is used by default.

Translations can be edited via the **[Edit translations](#translations)** button under the [General settings](#general-settings) tab.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a [Column](#rowcolumn) (1) to which we add the **Text** component (2).<details><summary><b>Click here for the example image</b></summary><img src="media/42.1.png"></details> |
| **2** | The **Text** component is now visible in the [Navigator](#navigator) (3) and the [Editor](#editor) (4). The editor for the CMS element opens automatically for the new text element.<br><br>Via the [General settings](#general-settings) tab (5), you can add the text content (6). The content can be entered in two formats: **TinyMCE** (7) and **Markdown** (8). Choose the format that best suits your needs. **Note:** Markdown requires more technical knowledge and offers fewer formatting options than TinyMCE. In this guide, we use TinyMCE.<br><br>If you want to use Markdown, a cheat sheet can be useful. You can find one here: [Markdown Guide - Cheat Sheet](https://www.markdownguide.org/cheat-sheet/).<details><summary><b>Click here for the example image</b></summary><img src="media/42.2.png"></details> |
| **3** | The TinyMCE editor is largely self-explanatory. However, adding headings can be somewhat confusing at first. To add a heading, click the **Paragraph** dropdown (9). Then select **Headings** (10). An additional dropdown will appear with different heading sizes (11). Select the desired heading size.<details><summary><b>Click here for the example image</b></summary><img src="media/42.3.png"></details> |
| **4** | Read more about the additional settings in the [Styling](#3-styling), [Advanced](#4-advanced), and [Visibility](#5-visibility) tabs. |

---

#### Collapsible

| Onderdeel | Beschrijving |
|---|---|
| Collapsible | Deze beschrijving wordt aangevuld |

---

#### Bullet list/Bullet

| Onderdeel | Beschrijving |
|---|---|
| Bullet list | Deze beschrijving wordt aangevuld |

---

#### Spacer

| Onderdeel | Beschrijving |
|---|---|
| Spacer | Deze beschrijving wordt aangevuld |

---

### Media

#### Image

Upload an image using the convenient **Image** component. You can then optionally configure the [height and width](#height-width) and add rounded corners. **Tip:** set [Overflow](#overflow) to `Hidden` for a clean result.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a [Column](#rowcolumn) (1) to which we add the **Image** component (2).<details><summary><b>Click here for the example image</b></summary><img src="media/41.1.png"></details> |
| **2** | The **Image** component is now visible in the [Navigator](#navigator) (3) and the [Editor](#editor) (4). Via the **[General settings](#general-settings)** tab (5), you can configure the following options:<br><br>**Image** (6): Upload an image by opening the [Media Library](#media). In this example, we have uploaded an image to the **Image** component.<br><br>**Position properties** (7): Determine how the image is positioned. `IMG` displays the entire image. `BackgroundCover` fills the available space with the image. `BackgroundContain` displays the entire image within the available space.<br><br>**URL** (8): Enter a URL or page path to make the **Image** component clickable and link it to another page. **Note:** You do not need to enter the full domain in this field.<br><br>**Open link in new tab** (9): Use this toggle to determine whether the link should open in a new browser tab when the component is clicked.<br><br>**Zoom** (10): Enable this option to make the image clickable and display it enlarged.<details><summary><b>Click here for the example image</b></summary><img src="media/41.2.png"></details><br><br>Read more about the additional settings for [Component Styles](#component-styles). |
| **3** | Read more about the additional settings in the [Styling](#3-styling), [Advanced](#4-advanced), and [Visibility](#5-visibility) tabs. |

---

#### Image overlay

| Onderdeel | Beschrijving |
|---|---|
| Image overlay | Deze beschrijving wordt aangevuld |

---

#### Hotspot

| Onderdeel | Beschrijving |
|---|---|
| Hotspot | Deze beschrijving wordt aangevuld |

---

#### SVG

| Onderdeel | Beschrijving |
|---|---|
| SVG | Deze beschrijving wordt aangevuld |

---

#### HTML video

| Onderdeel | Beschrijving |
|---|---|
| HTML video | Deze beschrijving wordt aangevuld |

---

#### Youtube video

| Onderdeel | Beschrijving |
|---|---|
| Youtube video | Deze beschrijving wordt aangevuld |

---

#### Carousel

The **Carousel** component allows you to display multiple elements as individual slides. You can determine how many slides are visible per device, customize the navigation, and configure whether the carousel should play automatically. This gives you complete control over how the carousel is displayed.

| Step | Explanation |
|:--|:--|
| **1** | In this example, we have selected a [Panel](#panel) (1) to which we add the **Carousel** component (2).<details><summary><b>Click here for the example image</b></summary><img src="media/40.1.png"></details> |
| **2** | The **Carousel** component is now visible in the [Navigator](#navigator) (3) and in the Editor. In this example, we have added multiple [Panels](#panel) to the Carousel and given each one its own [identification name](#identification-name). Via the **[General settings](#general-settings)** tab (4), you can configure the following options:<br><br>**Lazy load slides** (5): Enable this option to load slides only when they become visible.<br><br>**Swiping** (6): Enable this option to navigate through the slides using a swipe gesture.<br><br>**Style** (7): Select a style for the chevrons (navigation arrows).<br><br>**Chevron position** (8): Determine how the navigation arrows are displayed. **Overlay** places the arrows over the slide, while **Indent** places the arrows next to the Carousel.<br><br>**Chevron** (9): Enable or disable the navigation arrows.<br><br>**Pagination** (10): Displays pagination dots below the Carousel to indicate the number of slides.<br><br>**Loop** (11): Enable or disable continuous looping of the Carousel, allowing users to keep swiping through the slides.<br><br>**Autoplay - interval in seconds** (12): Specify how many seconds a slide is displayed before the next slide is shown.<br><br>**Autoplay** (13): Enable or disable automatic playback of the slides.<br><br>**Height mode** (14): Determine how the height of the slides is handled. **Auto height** animates the next slide to a larger or smaller height when necessary. **Auto stretch** ensures that all slides have exactly the same height.<br><br>**Space between slides** (15): Specify the number of pixels between the slides.<details><summary><b>Click here for the example image</b></summary><img src="media/40.2.png"></details>Read more about the additional settings for [Component Styles](#component-styles). |
| **3** | Via the **[Styling](#3-styling)** tab (16), you can configure the following options:<br><br>**[Height](#height-width)** (17): Set the height of the Carousel.<br><br>**Column alignment** (18): Align the slides to the left, right, or center.<br><br>**[Slide width](#height-width)** (19): Set the width of the slide.<br><br>**[Slide content width](#height-width)** (20): Set the width of the content within the slide.<br><br>**Visible columns (desktop)** (21): Specify how many slides are displayed simultaneously on desktop devices.<br><br>**Visible columns (tablet)** (22): Specify how many slides are displayed simultaneously on tablets.<br><br>**Visible columns (mobile)** (23): Specify how many slides are displayed simultaneously on mobile devices.<details><summary><b>Click here for the example image</b></summary><img src="media/40.3.png"></details><br><br>Read more about the additional settings in the [Advanced](#4-advanced) and [Visibility](#5-visibility) tabs. |

---

#### Picture row

| Onderdeel | Beschrijving |
|---|---|
| Picture row | Deze beschrijving wordt aangevuld |

---

### Navigation

#### Button

| Onderdeel | Beschrijving |
|---|---|
| Button | Deze beschrijving wordt aangevuld |

---

#### Productlist

| Onderdeel | Beschrijving |
|---|---|
| Partijlijst | Deze beschrijving wordt aangevuld |

---

#### Product

| Onderdeel | Beschrijving |
|---|---|
| Partijkaart | Deze beschrijving wordt aangevuld |

---

#### Social icons

| Onderdeel | Beschrijving |
|---|---|
| Social icons | Deze beschrijving wordt aangevuld |

---

#### Breadcrumbs

| Onderdeel | Beschrijving |
|---|---|
| Breadcrumbs | Deze beschrijving wordt aangevuld |

---

#### Icon link

| Onderdeel | Beschrijving |
|---|---|
| Icon link | Deze beschrijving wordt aangevuld |

---

#### Banner

| Onderdeel | Beschrijving |
|---|---|
| Banner | Deze beschrijving wordt aangevuld |

---

#### Stock navigation

| Onderdeel | Beschrijving |
|---|---|
| Voorraad navigatie | Deze beschrijving wordt aangevuld |

---

#### Shop navigation

| Onderdeel | Beschrijving |
|---|---|
| Shop navigation | Deze beschrijving wordt aangevuld |

---

#### Offer

| Onderdeel | Beschrijving |
|---|---|
| Aanbieding | Deze beschrijving wordt aangevuld |

---

#### Action link

| Onderdeel | Beschrijving |
|---|---|
| Action link | Deze beschrijving wordt aangevuld |

---

#### Add to home button

| Onderdeel | Beschrijving |
|---|---|
| Add to home button | Deze beschrijving wordt aangevuld |

---

#### Anchors toolbar

| Onderdeel | Beschrijving |
|---|---|
| Anchors toolbar | Deze beschrijving wordt aangevuld |

---

### Forms

#### Form

Create a dynamic form that can be flexibly configured based on the desired input fields.

Send the submitted data to one or more email addresses and configure an automatic confirmation email for the sender. Prevent spam by using reCAPTCHA. In addition, a **Bot Prevention Mode** is available, which adds a hidden input field to detect and block bots.

Optionally, new customer data can be sent as an Excel file, making it easy to import into the back office.

You can also add components such as [Rows/Columns](#rowcolumn) inside a Form to create a more structured and organized layout.

*Follow the steps below:*

|Step|Description|
|:--|:--|
|**1**|In this example, we are working on a contact [page](#page) and want to add a form. In the [Navigator](#navigator), click the **'+'** icon behind the [Panel](#panel) component (1). This opens the [Components dialog](#components-dialog).<details><summary><b>Click here for the example image</b></summary><img src="media/52.1.png"></details>|
|**2**|In the dialog, navigate to the **Form** category (2) and add the **Form** component to the page by clicking the **'+'** icon (3).<details><summary><b>Click here for the example image</b></summary><img src="media/52.2.png"></details>|
|**3**|The **Form** component is now visible (4) in the Navigator and can be configured immediately through the **General settings** tab (5). Click **Edit translations** (6) to enter text for multiple languages. For more information, see [Translations](#translations).<br><br>Next, enter the **Email subject** (7). This will be used as the subject line of the email sent to the addresses specified under **Recipients** (8). Use the add button (9) to add multiple email addresses.<br><br>To reduce spam, enable **Bot Prevention Mode** (10). The following options are available:<br><br>**Hidden input field:** Adds an invisible input field that visitors cannot see. If this field is filled in (typically by a bot), the form submission will be blocked.<br><br>**Time-based:** Bots often submit forms within milliseconds. If the form is submitted faster than the configured time (3 seconds by default), the submission will be blocked.<br><br>If you have your own Google account, you can also enable **Google reCAPTCHA** (11). <details><summary><b>Follow these steps:</b></summary>**Google reCAPTCHA configuration**<br><br>1. Sign in to your Google account.<br>2. If your account does not yet have a project, create one at: https://console.cloud.google.com/projectcreate.<br>3. Create a new reCAPTCHA instance at: https://www.google.com/recaptcha/admin/create.<br>3a. Enter a recognizable **Label**, for example: *[Company Name] reCAPTCHA*.<br>3b. Leave the type set to **Score based (v3) - Verify requests with a score**. This type is supported by the webshop.<br>3c. Under **Domains**, enter your domain name, for example: *yourdomain.com*.<br>3d. Select the newly created or an existing Google Cloud Project.<br>3e. Click **Submit**.<br>4. On the next page, you will see the **Site Key** and **Secret Key**. Store these safely.<br>5. *(Optional)* Click **View in Cloud Console** to open the reCAPTCHA management console.<br>6. Configure the following webshop settings:<br>6a. **RECAPTCHAACTIVE** → Enable this setting.<br>6b. **RECAPTCHASITEKEY** → Enter the Site Key.<br>6c. **RECAPTCHASECRETKEY** → Enter the Secret Key.<br>7. Restart the webshop after saving the settings.<br>8. In CMS edit mode, enable **Use reCAPTCHA** for every form that should use reCAPTCHA.<br>9. Save the CMS changes, publish them, and refresh the page.<br>10. Google reCAPTCHA is now active. When a form is submitted, Google analyzes user behavior, browser information, and other technical details to calculate a score. If the score is too low, the submission is blocked and the visitor receives an error message.<br><br>**Note 1:** This version of reCAPTCHA does **not** use a checkbox. Instead, it calculates a score in the background.<br>**Note 2:** Pages containing forms will automatically display a **"Protected by reCAPTCHA"** badge in the bottom-right corner.</details><br><br>Forms can also be sent using an XSL template to one or more email addresses. In that case, make sure the webshop SMTP settings are configured correctly and that an XSL template (12) is available for the active theme. The same applies to the **Autoreply XSL** (13). Read more about using [Component Styles](#component-styles) (14).<details><summary><b>Click here for the example image</b></summary><img src="media/52.3.png"></details>|
|**4**|The confirmation options (15) can also be configured easily. Under **Confirmation feedback** (16), choose whether to display a thank-you message using **ShowDialog**, or redirect the visitor to a [CMS page](#page). When **CMSPage** is selected, choose the destination page via **CMS Page** (17). If you choose **ShowDialog**, you can enter a title (18) and message (19) that will be displayed after a successful submission.<details><summary><b>Click here for the example image</b></summary><img src="media/52.4.png"></details>|
|**5**|The **Mail to sender** (20) settings apply when the **Send confirmation email** option is enabled in the [Email Input component](#email-input). After the form is submitted, the sender will automatically receive a confirmation email. Enter a title (21) and message (22). You can use placeholders such as **{{first_name}}** or **{{company_name}}** to personalize the email. Make sure the placeholder names match the corresponding [input fields](#text-input). For privacy compliance, it is recommended to add a [Checkbox](#checkbox) with the following text: *I agree that my personal data may be used to process my request.* Finally, configure the email subject (23).<details><summary><b>Click here for the example image</b></summary><img src="media/52.5.png"></details>|
|**6**|Use the [Styling](#styling) tab (24) to customize the appearance of the form, including colors and other visual settings.<details><summary><b>Click here for the example image</b></summary><img src="media/52.6.png"></details>|
|**7**|The [Advanced](#4-advanced) tab (25) contains additional technical settings. For example, **ExcelAsMailAttachment** (26) allows the submitted data to be included as an Excel attachment in the email. The **Database** and **ExcelFile** options store the submitted data on the webshop server. You can also configure the timeout (27) for the previously described **Time-based** bot prevention (in seconds). Optionally, assign a name to the form (28) so it appears clearly in the [Form Tracking](#form-tracking) overview. You can also specify a redirect URL (29), just like in the general settings, to redirect users after a successful submission. We recommend using only one redirect method. Finally, you can choose to clear all input fields after submission (30) or enable **Dummy** mode (31) for testing purposes. The remaining settings are described in [Advanced](#4-advanced).<details><summary><b>Click here for the example image</b></summary><img src="media/52.7.png"></details>|
|**8**|Use the [Visibility](#visibility) tab to determine which users can see the form.<details><summary><b>Click here for the example image</b></summary><img src="media/52.8.png"></details>|

---

#### Text input

Use this component to enter textual data within a form.

*Follow the steps below (this is a continuation of the [Form](#form) explanation):*

|Step|Explanation|
|:--|:--|
|**1**|After the [Form](#form) has been created and configured, input fields can be added. In this example, we want to place a **First name** and **Last name** field next to each other. First, add a [Row and Column](#rowcolumn) to the form. Then click the '+' icon behind the **Column** (1). The **Component dialog** will now open.<details><summary><b>Click here for the example image</b></summary><img src="media/53.1.png"></details>|
|**2**|Navigate to the **Form** category (2), search for the **Text input** component (3), and add it to the **Column** (4).<details><summary><b>Click here for the example image</b></summary><img src="media/53.2.png"></details>|
|**3**|The **Text input** component (5) has now been added to the **Column** and is immediately visible in the editor (6). You can now configure the component through the **General settings** tab (7).<br><br>**8 - Edit translations:** Add translations for multiple languages. Read more about this in [Translations](#translations).<br><br>**9 - InputName:** This field is automatically populated with a unique value. **IMPORTANT:** Make sure every input field has a unique **InputName**. Duplicate names will cause errors when submitting the form. The **InputName** can also be used to personalize the thank-you message in the settings of the [Form](#form).<br><br>**10 - Mandatory:** Enable or disable this option to specify whether this field is required.<br><br>**11 - RegexErrorText:** Enter the message that should be displayed when the entered value does not match the required format.<br><br>**12 - GeneralRegex:** Select whether the field should validate its content as a valid phone number or email address.<br><br>**13 - Multiline:** Enable this option to display a larger input field where visitors can enter a message or longer text.<br><br>**14 - Label:** The name entered here is displayed above the input field.<br><br>**15 - CharacterRange:** Define the minimum and/or maximum number of characters allowed in the input field.<br><br>**16 - Placeholder:** The text entered here is displayed as a placeholder inside the input field.<br><br>**17 - Component Styles:** Read more about this in [Component Styles](#component-styles).<br><br>More information about the [Styling](#3-styling) (18), [Advanced](#4-advanced) (19), and [Visibility](#5-visibility) (20) tabs can be found in their respective chapters.<details><summary><b>Click here for the example image</b></summary><img src="media/53.3.png"></details>|
|**4**|Now that the structure **Row → Column → Text input** has been created, you can easily duplicate the column by right-clicking the **Column** (21) and selecting **Duplicate** (22).<details><summary><b>Click here for the example image</b></summary><img src="media/53.4.png"></details>|
|**5**|A new **Column** will immediately be added next to the existing one with the same content (23). Select the new **Text input** component through the editor (23) or the Navigator (24). Make sure the **InputName** has a unique value (25) and adjust the **Placeholder** (26) and other settings if needed.<details><summary><b>Click here for the example image</b></summary><img src="media/53.5.png"></details>|

---

#### Email input

This input field only accepts valid email addresses. Additionally, it can be configured to automatically send a confirmation email to the entered email address. The content of this email can be configured in the [Form](#form) component.

*Follow the steps below (this is a continuation of the explanation of [Text Input](#text-input)):*

|Step|Explanation|
|:--|:--|
|**1**|In the [Text Input](#text-input) component, we previously configured fields for entering a first name and last name. In this step, we will add an email field to the [Form](#form). Click the '+' icon behind the form (1).<details><summary><b>Click here for the example image</b></summary><img src="media/54.1.png"></details>|
|**2**|Navigate through the **Form** category (2) to the **Email input** component (3) and add it to the **Form** (4).<details><summary><b>Click here for the example image</b></summary><img src="media/54.2.png"></details>|
|**3**|The **Email input** component (5) has now been added to the **Form** and is immediately visible in the editor (6). Open the **General settings** tab (7) to configure the component.<br><br>Make sure the **InputName** (8) also has a unique value for this component, as described in [Text Input](#text-input).<br><br>The **Email input** component contains mostly the same settings as the **Text input** component, but has one additional important option: **Send confirmation email** (9). When this option is enabled, the confirmation message configured in the [Form](#form) settings will automatically be sent to the entered email address.<br><br>**IMPORTANT:** If the confirmation message has not been configured, but the **Send confirmation email** option is enabled, an empty email will be sent to the sender.<details><summary><b>Click here for the example image</b></summary><img src="media/54.3.png"></details>|

---

#### Number input

Use this component within a form when only numeric values should be entered.

The functionality and available settings of this component are largely the same as the [Text input](#text-input) component.

---

#### File input

This component enables users to upload files that are submitted along with the form.

Supported file formats:
*.jpg; *.png; *.jpeg; *.doc; *.docx; *.pdf; *.mkv; *.mp4; *.wmv; *.txt; *.avi; *.svg; *.wav; *.xls; *.rtf

The functionality and available settings of this component are largely the same as the [Text input](#text-input) component.

---

#### Checkbox

Use this component to add a checkbox to a form. It can be used, for example, to allow visitors to accept the terms and conditions, privacy policy, or consent to the processing of their personal data.

The functionality and available settings of this component are largely the same as those of the [Text input](#text-input) component.

> **Tip:** For a cleaner presentation in the submitted email, we recommend using the [Multiple choice](#multiple-choice) component instead. It displays the selected option in a more user-friendly way and offers additional functionality.

|Step|Explanation|
|:--|:--|
|**1**|The **Checkbox** component contains most of the same settings as the **Text input** component, but includes one additional option: **Checked on start** (1). When this option is enabled, the checkbox is selected by default when the form is loaded.<details><summary><b>Click here for the example image</b></summary><img src="media/57.1.png"></details>|

---

#### Radio button

Use this component within a form to allow visitors to select a single option from multiple choices. Each option is added as a separate radio button, with only one option being selectable at a time.

The functionality and available settings of this component are largely the same as those of the [Text input](#text-input) and [Checkbox](#checkbox) components.

> **Tip:** For a cleaner presentation in the submitted email, we recommend using the [Multiple choice](#multiple-choice) component instead. It displays the selected option in a more user-friendly way and offers additional functionality.

---

#### Multiple choice

Use this component to allow visitors to select one or multiple options from a list of available choices.

Depending on the selected mode, the options are displayed as:

- **Checkboxes** – when multiple options can be selected.
- **Radio buttons** – when only one option can be selected.

When the form is submitted, only the selected options are included in the confirmation email.

The functionality and available settings of this component are largely the same as those of the [Text input](#text-input) component.

|Step|Explanation|
|:--|:--|
|**1**|The **Multiple choice** component contains mostly the same settings as the **Text input** component, but includes two additional options.<br><br>**1 - Options:** Add the available choices here. New options can easily be added using the **Add** button (2).<br><br>**3 - Mode:** Determine how the options are displayed. Select **Checkboxes** when multiple answers are allowed, or **Radio buttons** when only one answer can be selected.<details><summary><b>Click here for the example image</b></summary><img src="media/59.1.png"></details>|

---

#### Dropdown (single select) / Single select option

Use this component within a form to add a dropdown menu with selectable options. The available options within the dropdown are created using **Dropdown Single Select Option** components.

Additionally, it is possible to automatically load a list of all countries worldwide.

The functionality and available settings of this component are largely the same as those of the [Text input](#text-input) component.

|Step|Explanation|
|:--|:--|
|**1**|The **Dropdown (single select)** component contains mostly the same settings as the **Text input** component, but includes one additional option: **UsePredefinedCountryTemplate** (1). When this option is enabled, a list of all available countries worldwide is automatically loaded.<br><br>In this example, we will add the options manually, so this option remains disabled. Then click the '+' icon behind **DropdownSingleSelect** (2). The **Component dialog** will now open.<details><summary><b>Click here for the example image</b></summary><img src="media/60.1.png"></details>|
|**2**|Navigate through the **Form** category (3) to the **DropdownSingleSelectOption** component (4) and add it to the **DropdownSingleSelect** component.<details><summary><b>Click here for the example image</b></summary><img src="media/60.2.png"></details>|
|**3**|The **DropdownSingleSelectOption** component has now been added to the **DropdownSingleSelect** component (5). Configure the option by entering a name in **InputName** (6), setting the value in **Value** (7), and providing a visible name in **Label** (8).<details><summary><b>Click here for the example image</b></summary><img src="media/60.3.png"></details>|
|**4**|When opening the dropdown menu, you will see that the newly created option is now available as a selectable choice.<details><summary><b>Click here for the example image</b></summary><img src="media/60.4.png"></details>|

---

#### Hidden input

This component is used to send data that is not visible to the user but is required for the confirmation email or the generated Excel file.

For example, you can configure a form so that submitted data is automatically processed into an email and an Excel file. This file can then be used directly for import into the Florisoft back office using the customer import function.

This is particularly useful when processing registration forms, where additional data can be automatically linked to a new customer.

**Note:** Always use existing columns from the back office. Adding custom or unknown fields is not supported.

|Step|Explanation|
|:--|:--|
|**1**|In this example, we have added three **Hidden input** components to the [Form](#formulier-1).<br><br>The first example shows a **Hidden input** (1) with a **Name** and **Value** that refer to a template customer (2).<br><br>The second example shows a **Hidden input** (3) with **DEBNR** as the value (4). The third example shows a **Hidden input** (5) with **DEBKEY** as the **Name** (6).<br><br>**Note:** Always use existing columns from the back office. Deviating from these is not supported.<details><summary><b>Click here for the example image</b></summary><img src="media/61.1.png"></details><details><summary><b>Click here for the example image</b></summary><img src="media/61.2.png"></details><details><summary><b>Click here for the example image</b></summary><img src="media/61.3.png"></details>|
|**2**|Configure the [Form](#formulier-1) so that the data is stored using **Database**, **ExcelFile**, or **ExcelAsMailAttachment** and sent to the recipient.<br><br>When the recipient opens the Excel file from the email, the **Hidden input** fields can be populated with the corresponding data.<br><br>The Excel file can then be imported into the Florisoft back office via **Constants** (7) → **Import** (8) → **Customers** (9).<br><br>Based on the imported data, a new customer is then created using a predefined template Debtor ([Read more about Debtor settings](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/Florisoft%20manual%20debtors%2C%20stock%20%26%20order%20lists.md)). In the customer settings of this new customer, the **DEBNR** and **DEBKEY** fields are populated with the values entered in the Excel file by the recipient of the registration form.<details><summary><b>Click here for the example image</b></summary><img src="media/61.4.png"></details>|

---

#### Hidden debtor info

This component can be used to automatically include information about a logged-in debtor when a form is submitted. This information can then be included in the confirmation email, making it immediately clear which debtor submitted the form.

The debtor does not need to enter this information manually. Because the debtor is logged in, the available information can be retrieved automatically from the system.

|Step|Explanation|
|:--|:--|
|**1**|In this example, we have added the **Hidden debtor info** component (1) to the [Form](#form). Open the **General settings** tab (2). Using the dropdown menu (3), you can select which information about the logged-in debtor should be included with the form. The debtor cannot see this input field. Because the debtor is logged in, information such as **DEBNR**, **DEBKEY**, and **DEBNAAM** can be retrieved automatically and added to the form. This means the debtor does not need to enter this information manually, as it is already available in the system.<details><summary><b>Click here for the example image</b></summary><img src="media/62.1.png"></details>|

---

#### Submit button

Use this component to submit a form and process the entered data.

|Step|Explanation|
|:--|:--|
|**1**|Once the [Form](#form) contains all desired input fields, a **Submit button** must be added to the form. This allows the visitor to submit the form to the configured recipient(s). Click the '+' icon behind the form (1). The component dialog will now open.<details><summary><b>Click here for the example image</b></summary><img src="media/63.1.png"></details>|
|**2**|Navigate to the **Form** category (2) or use the search function (3) to find the **Submit button**. Then add it (4) to the form.<details><summary><b>Click here for the example image</b></summary><img src="media/63.2.png"></details>|
|**3**|The **Submit button** has now been added to the form (5) and is immediately visible in the Editor (6). The following settings can be configured via the **General settings** tab (7):<br><br>**8 - [Translations](#translations):** If desired, configure the translations for the button.<br><br>**9 - Text:** Enter the text that should be displayed on the Submit button.<br><br>**10 - Chevron:** Enable or disable this option to display an arrow on the Submit button.<br><br>**11 - Switch Variant:** Enable this option to use the secondary color of the Submit button. This color is configured in the [Theme Configuration](#theme-configuration) under the name `button-secondary-bgcolor`.<br><br>**12 - URL OPTIONAL:** Enter a URL path here if desired. In most cases, this field can be left empty.<br><br>**13 - Button position:** Set the position of the Submit button here.<br><br>**14 - Open in new tab:** When this option is enabled, clicking the button opens a new browser tab in which the specified URL path (12) is loaded.<br><br>**15 - [Component Style](#component-styles):** If desired, select a Component Style for the Submit button.<br><br>For additional settings in the other tabs, refer to the [Styling](#3-styling), [Advanced](#4-advanced), and [Visibility](#5-visibility) sections.<br><br>Once the form has been completed correctly, the visitor can submit it using the newly added **Submit button**. Submitted forms can then be tracked via the [Form Tracking](#form-tracking) screen.<details><summary><b>Click here for the example image</b></summary><img src="media/63.3.png"></details>|

---

### User

#### Login form

| Onderdeel | Beschrijving |
|---|---|
| Login form | Deze beschrijving wordt aangevuld |

---

#### Debtor info

| Onderdeel | Beschrijving |
|---|---|
| Debiteur info | Deze beschrijving wordt aangevuld |

---

#### Your account

| Onderdeel | Beschrijving |
|---|---|
| Uw account | Deze beschrijving wordt aangevuld |

---

#### Accountmanager

| Onderdeel | Beschrijving |
|---|---|
| Accountmanager | Deze beschrijving wordt aangevuld |

---

#### Registrationform

| Onderdeel | Beschrijving |
|---|---|
| Registratieformulier | Deze beschrijving wordt aangevuld |

---

### Templates

#### Footer template

| Onderdeel | Beschrijving |
|---|---|
| Footer template | Deze beschrijving wordt aangevuld |

---

### Advanced

#### Iframe

| Onderdeel | Beschrijving |
|---|---|
| Iframe | Deze beschrijving wordt aangevuld |

---

#### Blog

| Onderdeel | Beschrijving |
|---|---|
| Blog | Deze beschrijving wordt aangevuld |

---

#### Category overview

| Onderdeel | Beschrijving |
|---|---|
| Category overview | Deze beschrijving wordt aangevuld |

---

#### Frame

| Onderdeel | Beschrijving |
|---|---|
| Frame | Deze beschrijving wordt aangevuld |

---

#### Custom

| Onderdeel | Beschrijving |
|---|---|
| Custom | Deze beschrijving wordt aangevuld |

---

#### Choice Component

| Item | Description |
|---|---|
| Choice Component | This description will be added later |

---

#### Button (Keuze)

| Onderdeel | Beschrijving |
|---|---|
| Button (Keuze) | Deze beschrijving wordt aangevuld |

---

#### Lottie player

| Onderdeel | Beschrijving |
|---|---|
| Lottie player | Deze beschrijving wordt aangevuld |

---

#### Suggestions

| Onderdeel | Beschrijving |
|---|---|
| Suggestions | Deze beschrijving wordt aangevuld |

---

### Dashboard

#### Chart

| Onderdeel | Beschrijving |
|---|---|
| Chart | Deze beschrijving wordt aangevuld |

---

#### Piechart

| Onderdeel | Beschrijving |
|---|---|
| Piechart | Deze beschrijving wordt aangevuld |

---

#### Gauge

| Onderdeel | Beschrijving |
|---|---|
| Gauge | Deze beschrijving wordt aangevuld |

---

#### Table view

| Onderdeel | Beschrijving |
|---|---|
| Table view | Deze beschrijving wordt aangevuld |

---

#### Progressbar

| Onderdeel | Beschrijving |
|---|---|
| Progressbar | Deze beschrijving wordt aangevuld |

---

#### Dashboard view

| Onderdeel | Beschrijving |
|---|---|
| Dashboard view | Deze beschrijving wordt aangevuld |

---

#### Embedded dashboard

| Onderdeel | Beschrijving |
|---|---|
| Embedded dashboard | Deze beschrijving wordt aangevuld |

---

#### Filter toolbar

| Onderdeel | Beschrijving |
|---|---|
| Filter toolbar | Deze beschrijving wordt aangevuld |

---

#### Searchterm

| Onderdeel | Beschrijving |
|---|---|
| Searchterm | Deze beschrijving wordt aangevuld |

---

#### Query filter

| Onderdeel | Beschrijving |
|---|---|
| Query filter | Deze beschrijving wordt aangevuld |

---

#### Preset value filter

| Onderdeel | Beschrijving |
|---|---|
| Preset value filter | Deze beschrijving wordt aangevuld |

---

#### Query filter date

| Onderdeel | Beschrijving |
|---|---|
| Query filter date | Deze beschrijving wordt aangevuld |

---

#### Query variable

| Onderdeel | Beschrijving |
|---|---|
| Query variable | Deze beschrijving wordt aangevuld |

---

### Health

#### Health chart

| Onderdeel | Beschrijving |
|---|---|
| Health chart | Deze beschrijving wordt aangevuld |

---

#### Health check

| Onderdeel | Beschrijving |
|---|---|
| Health check | Deze beschrijving wordt aangevuld |

---

#### Health errors

| Onderdeel | Beschrijving |
|---|---|
| Health errors | Deze beschrijving wordt aangevuld |

---

#### Health gauge

| Onderdeel | Beschrijving |
|---|---|
| Health gauge | Deze beschrijving wordt aangevuld |

---

#### Health log

| Onderdeel | Beschrijving |
|---|---|
| Health log | Deze beschrijving wordt aangevuld |
