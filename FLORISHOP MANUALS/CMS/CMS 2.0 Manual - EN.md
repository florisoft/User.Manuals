<img src="../fslogo.png">

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
- [Blogs (Blog Categories)](#blogs-blog-categories)
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

#### 2. Responsive Tabs
- [Desktop](#desktop)
- [Tablet](#tablet)
- [Mobile](#mobile)

#### 3. General Settings
- [Translations](#translations)

#### 4. Styling
- [Color Picker](#color-picker)
- [Border](#border)
- [Margin/Padding](#marginpadding)
- [Border Radius](#border-radius)
- [Height/Width](#heightwidth)
- [Box Shadow](#box-shadow)
- [Overflow](#overflow)

#### 5. Advanced
- [Hide When Empty](#hide-when-empty)
- [Identification Name](#identification-name)
- [Slot Name](#slot-name)
- [HTML Class Name](#html-class-name)
- [Tag](#tag)
- [Z-Index](#z-index)

#### 6. Visibility
- [Hide Content](#hide-content)
- [Show Content](#show-content)
- [Highlight Content](#highlight-content)

---

### Components

---

#### 1. Basic
- [Row/Column](#row-column)
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
- [Dropdown (Single Select)](#dropdown-single-select)
- [Dropdown (Single Select Option)](#dropdown-single-select-option)
- [Hidden Input](#hidden-input)
- [Hidden Debtor Information](#hidden-debtor-information)
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

### Categories

Categories are the tabs displayed next to the inventory/order lists. CMS pages can be linked to a category, allowing you to use them as a dropdown menu in the navigation bar or to create an overview using the **[Category Overview](#category-overview)** component.

*Follow the steps below:*

| # | Description |
|:--|:--|
| **1** | Log in to the webshop using an administrator account. |
| **2** | Open the webshop's **Management** environment by clicking the user icon (1). This opens a dropdown menu. Then click **Management** (2).<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.2.png"></details> |
| **3** | Click **Content Management (CMS)** (3) in the left-hand administration menu. This opens a dropdown menu. Click **Categories** (4). The CMS Categories screen will open, displaying any existing CMS categories.<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.3.png"></details> |
| **4** | To create a new CMS category, click the **+** button (5). This opens the category creation dialog. Complete the following fields:<br><br>- **Category Display Name (6):** Enter the name that will be displayed in the inventory/order list navigation tabs.<br><br>- **Category Name (7):** This name is also used in the page URL.<br>**DO NOT USE SPACES!**<br><br>- **Size Mode (Optional) (8):** Choose whether the navigation dropdown should be displayed as **Small** or **Full Width**.<br><br>- **Navigation Order (Optional) (9):** Determines the order in which the category appears in the navigation bar. A value of **1** places it first. This does not affect the order of the inventory lists.<br><br>- **Visible in Navigation (Optional) (10):** Enable this option to display the category in the navigation menu.<br><br>- **Template (Optional) (11):** Select a template to define how the overview page for this category should be generated.<br><br>- **Submit (12):** Click **Submit** to create the category.<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.4.png"></details> |
| **5** | Click the orange icon (13) or **Unsaved Changes** (14).<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.5.png"></details> |
| **6** | To publish the category and make it available on the live website, click **Publish All** (15) or the publish icon (16). Confirm by clicking **Yes** (17).<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.6.png"></details> |
| :bulb: | **Note:** The new category will not immediately appear in the webshop. It will only become visible after a page has been linked to this category. See the next chapter, **[Page](#page)**, for more information. |

---

### Page

A CMS page is a dedicated section within the CMS where content can be created and managed. A page can belong to a custom category. Pages can be compared to product groups within a standard webshop inventory. A CMS page can contain various elements such as images, videos, text blocks, tables, and more.

*Follow the steps below:*

| # | Description |
|:--|:--|
| **1** | After creating the category, navigate to **Content Management (CMS)** (1) and select **Pages** (2).<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.1.png"></details> |
| **2** | Click the **+** button (3) to create a new page. This opens the page creation dialog. Configure the following settings:<br><br>- **URL (4):** Enter the page URL as it should appear in the address bar. Only enter the URL path (for example: `example`). There is no need to include the full domain name.<br>**DO NOT USE SPACES OR CAPITAL LETTERS!**<br><br>- **Page Display Name (5):** Enter the page name that will be displayed to visitors on the website.<br><br>- **Category (6):** Select the category created in the previous chapter.<br><br>- **Visible in Navigation (7):** Enable this option to display the page in the webshop navigation.<br><br>- **Submit (8):** Click **Submit** to create the page.<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.2.png"></details> |
| **3** | Click the pencil icon (9) to open the **Properties** dialog (10) of the newly created page. Then click **Edit Translations** (11).<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.3.png"></details> |
| **4** | The translation dialog will open. The default language (12) is displayed on the left. Use the dropdown menu (13) on the right to select the language you want to edit. Configure the following settings:<br><br>- **URL (14):** Enter the translated URL path.<br><br>- **Page Display Name (15):** Enter the translated page display name.<br><br>- **Confirm (16):** Click **Confirm** to save your changes.<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.4.png"></details> |
| **5** | Open the **Visibility** tab (17). Configure the following settings:<br><br>- **Language Zone Selection (18):** Select one or more languages from the dropdown menu to which this page should be linked. Under **Zone Selection** (19), select a custom CMS Zone.<br><br>- **Valid From (20)** and **Valid Until (21):** Specify the date and time during which these settings should be active.<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.5.png"></details> |
| **6** | Open the **SEO** tab (22). Here you can configure Search Engine Optimization (SEO) settings to improve your website's visibility in search engines such as Google. For more information about SEO settings, see the **[SEO](#seo)** chapter. Click **Save** (23).<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.6.png"></details> |
| **7** | Click the orange icon (24) or **Unsaved Changes** (25).<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.7.png"></details> |
| **8** | To publish the page and make it available on the live website, click **Publish All** (26) or the publish icon (27). Confirm the publication by clicking **Yes** (28).<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.8.png"></details> |

---

### Blogs (Blog Categories)

Like **[Categories](#categories)**, blog categories can be displayed as tabs next to the inventory/order lists. Blog pages can be linked to a blog category, allowing you to use them as a dropdown menu in the navigation bar or to create an overview using the **[Blog](#blog)** component.

Although page categories and blog categories are very similar, they serve different purposes:

- Use **Pages** for important static pages such as **Contact**, **Customer Registration**, or **About Us**.
- Use **Blog Pages** for news articles, events, announcements, or to highlight a specific inventory item or product.

*Follow the steps below:*

| # | Description |
|:--|:--|
| **1** | Log in to the webshop using an administrator account. |
| **2** | Open the webshop's **Management** environment by clicking the user icon (1). This opens a dropdown menu. Then click **Management** (2).<details><summary><b>Click here to view the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.2.png"></details> |
| **3** | Click **Content Management (CMS)** (3) in the left-hand administration menu. This opens a dropdown menu. Click **Blogs** (4). The Blog Categories screen will open and display any existing blog categories.<details><summary><b>Click here to view the example image</b></summary><img src="media/3.3.png"></details> |
| **4** | Click the **+** button (5) to create a new blog category. Configure the following settings:<br><br>- **Category Display Name (6):** The name displayed in the inventory/order list navigation tabs.<br><br>- **Category Name (7):** The internal category name that is also used in the URL.<br>**DO NOT USE SPACES!**<br><br>- **Size Mode (Optional) (8):** Choose whether the navigation dropdown should be displayed as **Small** or **Full Width**.<br><br>- **Navigation Order (Optional) (9):** Determines the order in which the category appears in the navigation menu. A value of **1** places it first without affecting the inventory order.<br><br>- **Visible in Navigation (Optional) (10):** Enable this option to display the category in the navigation menu.<br><br>- **Submit (11):** Click **Submit** to create the category.<details><summary><b>Click here to view the example image</b></summary><img src="media/3.4.png"></details> |
| **5** | Click the orange icon (12) or **Unsaved Changes** (13).<details><summary><b>Click here to view the example image</b></summary><img src="media/3.5.png"></details> |
| **6** | To publish the category, click **Publish All** (14) or the publish icon (15). Confirm by clicking **Yes** (16).<details><summary><b>Click here to view the example image</b></summary><img src="media/3.6.png"></details> |
| 💡 | **Note:** The new blog category will not immediately appear in the webshop. It will only become visible after a blog page has been linked to it. See the next chapter, **[Blog Page](#blog-page)**, for more information. |

---

### Blog Page

A Blog Page is an accessible component within the CMS where content can be added. A Blog Page can be assigned to a self-created category. Various elements can be placed on a Blog Page, such as images, videos, text blocks, tables, and more. CMS Pages and Blog Pages are quite similar, but they can be distinguished as follows:<br><br>

- Use **Pages** for important basic pages such as a Contact, Customer Registration, or About Us page.
- Use **Blog Pages** for news items, events, or highlighting a specific stock item/product.

*Follow the steps below:*

|#|Explanation|
|:--|:--|
|**1**|After creating the Blog category, navigate via '*Content management (CMS)*' (1) to '*Pages*' (2).<details><summary><b>Click here for the example image</b></summary><img src="media/4.1.png"></details>|
|**2**|To create a page, click the button with the '**+**' icon (3). This opens the page creation screen. A dialog will now appear. Adjust the following settings:<br><br>- **URL (4):** the name of the page that will be visible in the page URL. You do not need to include the entire domain name here. Only the path name is required, for example: '*example*'.<br>**DO NOT USE SPACES OR CAPITAL LETTERS!**<br><br>- **Page display name (5):** the name that will be visible to customers on the website.<br><br>- **Category (6):** select the correct category, namely the category that was created in the previous chapter.<br><br>- **Is visible in navigation (7):** check this checkbox to make the page visible in the webshop.<br><br>- **Submit (8):** click the 'Submit' button to create the page.<details><summary><b>Click here for the example image</b></summary><img src="media/4.2.png"></details>|
|**3**|Click the pencil icon (9) to open the Properties (10) dialog of the newly created page. Click the '*Edit translations*' button (11).<details><summary><b>Click here for the example image</b></summary><img src="media/4.3.png"></details>|
|**4**|The translation dialog will open. The configured default language (12) is displayed on the left side. Use the right dropdown menu (13) to select the language you want to apply/edit. Configure the following settings:<br><br>- **URL (14):** enter the translations for the URL path.<br><br>- **Page display name (15):** enter the translations for the page display name.<br><br>- **Confirm (16):** click '*Confirm*' to save the changes.<details><summary><b>Click here for the example image</b></summary><img src="media/4.4.png"></details>|
|**5**|Open the '*Visibility*' tab (17). Configure the following settings:<br><br>- **Language Zone Selection (18):** select one or more languages from the dropdown menu to which this category should be linked. Under Zone selection (19), select a custom CMS Zone.<br><br>- **Valid from (20) and Valid until (21):** under 'Valid from' and 'Valid until', dates and times can be configured for when the settings above should apply.<details><summary><b>Click here for the example image</b></summary><img src="media/4.5.png"></details>|
|**6**|In the '*SEO*' tab (22), settings related to SEO (Search Engine Optimization) can be configured. This allows search engines such as Google to find your website more easily. More information about SEO settings [can be found here](#seo). Click '*Save*' (23).<details><summary><b>Click here for the example image</b></summary><img src="media/4.6.png"></details>|
|**7**|Click on 'Unsaved changes' (24).<details><summary><b>Click here for the example image</b></summary><img src="media/4.7.png"></details>|
|**8**|To publish the page and make it available live, click the 'Publish all' button (25) or the publish icon (26). Confirm the publication by clicking 'Yes' (27).<details><summary><b>Click here for the example image</b></summary><img src="media/4.8.png"></details>|

---

### Edit Footer

When creating a new CMS page, a container for a footer is automatically created. A footer is the bottom section of a page. Every CMS page contains a footer by default. Changes made to the footer are visible throughout the entire website. A footer usually contains secondary information such as address details, links to external websites, and social media. The CMS provides a predefined footer element by default.

It is also possible to fully customize the footer according to your own preferences (as may have been shown in previous examples), in the same way as previously created elements such as carousels, text boxes, and videos. Creating a footer works as follows:

|Step|Explanation|
|:--|:--|
|**1**|In the Navigator, click the '+' icon of the '*Container (footer)*' (1). The ‘Add Component’ window opens. Navigate via the 'Templates' category (2) to Footer Template. You can also use the search bar for this (3). Click the '+' icon (4) to add the Template.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/14.1.png"></details>|
|**2**|A default footer element with four columns is added. Two columns contain a text box (5). The last column contains social media icons ([SocialIcons Component](#social-icons)) (6).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/14.2.png"></details>|
|**3**|As described earlier, it is possible to fully customize the footer according to your own preferences. This works in the same way as creating/editing other elements such as carousels, text boxes, and videos.<br>When all desired elements have been added to the page, the management environment can be closed.|
|**4**|Click the menu icon (7) and then click the close icon (8) at the bottom to exit the management environment. The webshop will now return to the normal view as customers see it.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/14.4.png"></details>|

---

### Templates

Templates allow you to easily reuse content that you have previously created with the CMS. These can be small content blocks, but also complete pages. This prevents you from having to rebuild the same content repeatedly.

Templates can also be used effectively for [Blog components](#blog) to dynamically load content. Additionally, the [Frame component](#frame) can be used to load a template that is reusable in multiple locations and automatically responds to changes made within the template.

|Step|Explanation|
|:--|:--|
|**1**|Navigate via Content management (1) to Templates (2).<details><summary><b>Click here for the example image</b></summary><img src="media/6.1.png"></details>|
|**2**|Then click the '+' icon to start creating a new template (3).<details><summary><b>Click here for the example image</b></summary><img src="media/6.2.png"></details>|
|**3**|A dialog will open. Enter a name (4) for the new template, a description (5), and a category (6), or create a new category. In this example, we created a new category called 'standard blocks' (7). Then click 'Save' (8). The Template editor will now open.<details><summary><b>Click here for the example image</b></summary><img src="media/6.3.png"></details>|
|**4**|In the Template editor, you can add CMS elements just as you would on any other CMS page. Also enable the CMS editor (9) in this screen and click the '+' icon (10). The component dialog will now open.<details><summary><b>Click here for the example image</b></summary><img src="media/6.4.png"></details>|
|**5**|You can now add CMS elements to the Template. For example, start with a [Panel](#panel) (11).<details><summary><b>Click here for the example image</b></summary><img src="media/6.5.png"></details>|
|**6**|Within the [Panel component](#panel), we have placed two [Text components](#text) as an example (12). When you are satisfied with the template, you can save it (13).<details><summary><b>Click here for the example image</b></summary><img src="media/6.6.png"></details>|
|**7**|Click 'Yes' (14) to confirm saving. You can always edit the template afterwards.<details><summary><b>Click here for the example image</b></summary><img src="media/6.7.png"></details>|
|**8**|After saving, you will return to the Templates screen. Using the dropdown menu (15), you can easily select the newly created category. This immediately shows how many templates have been created within this category. This is useful, for example, when preparing content for special occasions such as Mother's Day and/or Christmas. Navigate back to the Home page (16) to place the template on the page.<details><summary><b>Click here for the example image</b></summary><img src="media/6.8.png"></details>|
|**9**|Now that you are back on the Home page, you can use the component dialog to navigate to 'Templates' (17), select the Template category (18), and place the newly created template on the page (19).<details><summary><b>Click here for the example image</b></summary><img src="media/6.9.png"></details>|
|**10**|The template (20) will now be visible on your CMS page. You can make further changes and publish them without having to rebuild everything from scratch.<details><summary><b>Click here for the example image</b></summary><img src="media/6.10.png"></details>|
|**11**|We have now created a template quite easily, but Templates can be used in many more ways. When you have created an entire page or section yourself that you would like to reuse, Templates are the perfect solution. By right-clicking in the Navigator, you can save an entire page or section (21) (in this case 'Panel (hero)') as a Template (22).<details><summary><b>Click here for the example image</b></summary><img src="media/6.11.png"></details>|
|**12**|Then fill in the name (23), description (24), and optional category (25) in the dialog, and click 'Save' (26).<details><summary><b>Click here for the example image</b></summary><img src="media/6.12.png"></details>|

---

## Advanced

### Theme Configuration

In this configuration screen, you can set the brand colors of your shop, determine which font should be displayed, and configure various other options to make the visual appearance of your shop better match your preferences.

|Step|Explanation|
|:--|:--|
|**1**|Navigate via Configuration (1), Theme, to Theme Configuration (2).<details><summary><b>Click here for the example image</b></summary><img src="media/7.1.png"></details>|
|**2**|Then click the '+' icon to start creating a new theme (3). A dialog will open. Enter a name (4) for the new theme. Make sure that **NO spaces are used in the theme name**. Select a template that will be loaded immediately after creation. We recommend using the Starterkit theme here for a better visual look and feel in the shop (5). Then create the theme (6).<details><summary><b>Click here for the example image</b></summary><img src="media/7.2.png"></details>|
|**3**|The theme has now been created and a large list of information will appear. This list determines colors, fonts, font sizes, and other styling options that influence the appearance of your shop. 90% of these settings are already correctly configured for your theme, but you can still go through the list and adjust specific settings. Having some CSS knowledge can be helpful for certain (more advanced) options.<br><br>After changing theme settings, you must always save them using the save button (10). After creating the theme, saving is therefore the first thing you should do before making changes.<br><br>**7 - Preview**: Use this button to open a preview of your shop. The preview displays the information from your new theme, allowing you to quickly see the effects of changes made to your shop. The preview will update after saving the theme.<br><br>**8 - Recompile**: This function performs a check to verify that all information has been entered correctly. If incorrect values are found, a dialog will be displayed describing where the error occurs in your theme.<br><br>**9 - Log**: Displays a log of changes made to the theme.<br><br>**10 - Save**: Save changes made to the theme using this button to make them visible in the live environment.<br><br>**11 - Download theme**: Use this button to download the selected theme (15). A `.scss` file will be downloaded, which can be uploaded into another new theme, for example (13).<br><br>**12 - Last error message**: Checks whether an error message is active in your theme.<br><br>**13 - Upload theme**: As mentioned under 'Download theme' (11), you can upload a downloaded theme using this button. **PLEASE NOTE:** uploading a downloaded theme file will overwrite existing data in the selected theme (15).<br><br>**14 - Create new theme**: Create a new theme.<br><br>**15 - Select theme**: Use this dropdown to select the theme you want to modify.<br><br>**16 - Advanced settings**: When this option is enabled, many more options will become visible in the list, allowing you to make more detailed adjustments to your shop. **PLEASE NOTE:** These settings may require CSS knowledge.<br><br>**17 - Search by section**: Search for an option by section level. The section names can be found on the left side of the overview. Names that appear here include: GENERAL, STOCK, LOGIN, ACCOUNT, GALLERY, HEADER, FOOTER, HOME, NAVIGATION, and SHOPPING-CART.<br><br>**18 - Search by name**: Search for an option by name.<br><br>**19 - Refresh**: Reload the theme. This can also be done by refreshing the browser.<br><br>**20 - Reset option to default value**: This button restores the value of this option to its original state. The option will be reset.<br><br>**21 - Synchronize with all themes**: The configured and saved option can be applied to all available themes using this button. **PLEASE NOTE:** This action cannot be undone.<br><br>**22 - Edit option**: Opens a dialog where you can make a change.<br><br>**23 - Primary color**: This is the main color of your shop. Changing this color will affect a large part of your shop's appearance.<br><br>**24 - Secondary color**: This is the second most important color of your shop. Changing this color will affect a large part of your shop's appearance.<br><br>After making the changes for your new theme, click 'Save' (10).<details><summary><b>Click here for the example image</b></summary><img src="media/7.3.png"></details>|
|**4**|To load a Google Font, navigate via 'Configuration' (25) to the webshop settings (26). In the overview, search for GOOGLEFONTSHREF. Click this setting. You will then be taken to the page where this setting can be modified (27). Enter the link copied from [Google Fonts](https://fonts.google.com/), such as *https://fonts.googleapis.com/css2?family=[FONTNAME]:ital,wght@0,400;0,700;1,400;1,700&display=swap*, and paste it into the dialog (28). Then save the setting (29). When you enter the Google Font under the theme setting *body-font-family*, for example *"[FONTNAME]", sans-serif*, and save the theme, your shop will now display the desired Google Font.<details><summary><b>Click here for the example image</b></summary><img src="media/7.4.png"></details>|

---

### Backups

Working in the CMS can sometimes go wrong. You may have accidentally deleted something that cannot be undone. Don't worry, with the help of a backup your CMS can quickly be up and running again!

|Step|Explanation|
|:--|:--|
|**1**|Navigate via Content Management (CMS) (1) to Backups (2).<details><summary><b>Click here for the example image</b></summary><img src="media/8.1.png"></details>|
|**2**|You will now see the overview page containing all backups. A backup is automatically created every day, but you can also manually save a backup using the '+' icon (3). A dialog will open. Enter a description for your backup (4) and save it (5). The dialog will automatically close once the backup has been completed. Creating a backup may take some time.<details><summary><b>Click here for the example image</b></summary><img src="media/8.2.png"></details>|
|**3**|You can now see that the backup has been created and will appear at the top of the overview (6). If you need to restore a backup, click the restore button (7). The version will then be restored to this backup. Backups can also be deleted (8).<details><summary><b>Click here for the example image</b></summary><img src="media/8.3.png"></details>|

---

### Redirects

When you have an existing link and want to change its URL, this can negatively impact your SEO score in Google. With the help of redirects, you inform Google that the URL has been changed, preventing your accumulated SEO score from being lost.

|Step|Explanation|
|:--|:--|
|**1**|Navigate via Content Management (CMS) (1) to Redirects (2).<details><summary><b>Click here for the example image</b></summary><img src="media/9.1.png"></details>|
|**2**|You will now arrive at the redirects overview page. Use the '+' icon (3) to create a new redirect. A dialog will open.<br><br>**4 - Redirect name**: Enter a name for your redirect.<br><br>**5 - Incoming URL**: Enter the complete web address of your 'old' URL, for example *https://www.[yourdomain].nl/old-page*.<br><br>**6 - Outgoing URL**: Enter the complete web address of your 'new' URL, for example *https://www.[yourdomain].nl/new-page*.<br><br>**7 - Redirect type**: Use this dropdown to select the type of redirect. **302** is temporary (**this option is strongly recommended**) and **301** is permanent and therefore more difficult to undo. **PLEASE NOTE:** Sufficient knowledge of working with redirects is required to prevent unwanted behavior.<br><br>Then save the redirect (8).<details><summary><b>Click here for the example image</b></summary><img src="media/9.2.png"></details>|

---

### Pending Changes

After making changes to your CMS page, you must publish them. This screen keeps track of changes made across multiple pages.

|Step|Explanation|
|:--|:--|
|**1**|In this example, we edited a Text component on the Home page. An icon at the bottom of the screen will now turn orange. Click this icon to navigate to the **Pending Changes** page (1).<details><summary><b>Click here for the example image</b></summary><img src="media/10.1.png"></details>|
|**2**|You are now on the **Pending Changes** page (2), where your changes are tracked per page (3). You can either discard all unsaved changes for this page (4) or publish them (5). If you have made changes to multiple pages, they will also be listed on this screen. You can then discard all changes for every page at once (6) or publish them all at once (7).<details><summary><b>Click here for the example image</b></summary><img src="media/10.2.png"></details>|

---

### Form tracking

| Onderdeel | Beschrijving |
|---|---|
| Form tracking | Deze beschrijving wordt aangevuld |

---

### Component styles

| Onderdeel | Beschrijving |
|---|---|
| Component styles | Deze beschrijving wordt aangevuld |

---

### Color groups (Dashboards)

This section is still under development.

---

# Aside Editor

## Toolbar

| Onderdeel | Beschrijving |
|---|---|
| Toolbar | Deze beschrijving wordt aangevuld |

---

## Algemene instellingen

| Onderdeel | Beschrijving |
|---|---|
| Algemene instellingen | Deze beschrijving wordt aangevuld |

---

## Styling

| Onderdeel | Beschrijving |
|---|---|
| Styling | Deze beschrijving wordt aangevuld |

---

## Geavanceerd

| Onderdeel | Beschrijving |
|---|---|
| Geavanceerd | Deze beschrijving wordt aangevuld |

---

## Zichtbaarheid

| Onderdeel | Beschrijving |
|---|---|
| Zichtbaarheid | Deze beschrijving wordt aangevuld |

---

## Responsive tabs

| Onderdeel | Beschrijving |
|---|---|
| Responsive tabs | Deze beschrijving wordt aangevuld |

---

# Overig

## Media

| Onderdeel | Beschrijving |
|---|---|
| Media | Deze beschrijving wordt aangevuld |

---

## Documenten

| Onderdeel | Beschrijving |
|---|---|
| Documenten | Deze beschrijving wordt aangevuld |

---

## Links

| Onderdeel | Beschrijving |
|---|---|
| Links | Deze beschrijving wordt aangevuld |

---

# Componenten

## Basis

---

## Row/Column

A CMS page uses rows and columns to ensure proper alignment across different devices (desktop, laptop, smartphone, and tablet). This chapter explains how to create a row. Every CMS element must be placed inside a column, and every column must be placed inside a row. This means that every page essentially consists of a grid, similar to a spreadsheet application such as Microsoft Excel.

*Follow the steps below:*

|Step|Explanation|
|:--|:--|
|**1**|Log in to the webshop using an administrator account.|
|**2**|Enable the webshop's **Management** environment by clicking the user icon (1). This opens a dropdown menu. Then click the **Management** option (2).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.2.png"></details>|
|**3**|At the bottom of the screen, enable the CMS editor (3). You can now start editing.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.3.png"></details>|
|**4**|Click the '+' icon (4) or right-click the top element in the Navigator (5) to open the **Component Dialog**. You can also open the dialog using the **Template** button (6), which will automatically open the Templates category.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.4.png"></details>|
|**5**|Use the search function (7) to search for **Row**. Click the plus (+) icon beneath the **Row** component (8).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.5.png"></details>|
|**6**|The Row is immediately added to your page and allows you to add one or more columns. In this example, we choose a layout with three columns next to each other (9).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.6.png"></details>|
|**7**|Select a column in the Navigator (10). In the column settings, open the **Properties** tab (11). Here you can configure the following:<br><br>The sliders determine how CMS elements are aligned on devices with different screen sizes, such as desktops/laptops, tablets, and smartphones.<br><br>The total width of every screen is divided into a maximum of twelve virtual columns. This means that an element can span a minimum of one and a maximum of twelve columns. This applies to desktops, laptops, tablets, and smartphones alike.<br><br>The top slider applies to desktops and laptops, the middle slider to tablets, and the bottom slider to smartphones.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.7.png"></details>|
|**8**|Open the **Styling** tab (12). Styling is optional, but the following settings can be adjusted:<br><br>Select a background color using the **Background** dropdown (13). A color picker will appear, allowing you to choose a color. Click **SAVE** in the color picker to apply the selected color.<br><br>Under **Height** (14), choose **Auto** or specify a fixed height in Px (pixels), Rem (relative to the font size), or percentages. Using **Auto** is recommended, as the column will automatically adjust its height based on its content.<br><br>Under **Margin** (15), you can specify the spacing (whitespace) around the column. You can enter one value for all sides or configure each side individually.<br><br>By default, **Px (pixels)** is used as the unit. You can also choose **Rem**, **Percent**, or even values such as **auto**, **unset**, **millimeters (mm)**, and **centimeters (cm)**.<br><br>**Padding** (16) determines the spacing inside the column. These settings work the same way as **Margin**.<br><br>**Overflow** (17) determines whether content that extends beyond the boundaries of the column remains visible. By default, this is set to **Visible**.<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.8.png"></details>|
|**9**|Open the **Advanced** tab (18). The **Advanced** tab allows you to assign additional classes and IDs to a component. Under **Identification name** (19), you can assign a custom name to the component, making it easier to organize components within the Navigator (20).<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.9.png"></details>|
|**10**|Open the **Visibility** tab (21). The **Visibility** tab works the same way as when creating pages and categories. See Chapter 3 for more information about the available settings in the **Visibility** tab. After configuring the desired settings, click **Save** (22) to save the column in the CMS and click **Publish** (23) to make the changes live.<br>**You can always make further changes later.**<details><summary><b>Click here for the example image</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.10.png"></details>|

---

## Panel

| Onderdeel | Beschrijving |
|---|---|
| Panel | Deze beschrijving wordt aangevuld |

---

## Flex

| Onderdeel | Beschrijving |
|---|---|
| Flex | Deze beschrijving wordt aangevuld |

---

## Header

| Onderdeel | Beschrijving |
|---|---|
| Header | Deze beschrijving wordt aangevuld |

---

## Text

| Onderdeel | Beschrijving |
|---|---|
| Text | Deze beschrijving wordt aangevuld |

---

## Collapsible

| Onderdeel | Beschrijving |
|---|---|
| Collapsible | Deze beschrijving wordt aangevuld |

---

## Bullet list/Bullet

| Onderdeel | Beschrijving |
|---|---|
| Bullet list | Deze beschrijving wordt aangevuld |

---

## Spacer

| Onderdeel | Beschrijving |
|---|---|
| Spacer | Deze beschrijving wordt aangevuld |

---

# Media

## Image

| Onderdeel | Beschrijving |
|---|---|
| Image | Deze beschrijving wordt aangevuld |

---

## Image overlay

| Onderdeel | Beschrijving |
|---|---|
| Image overlay | Deze beschrijving wordt aangevuld |

---

## Hotspot

| Onderdeel | Beschrijving |
|---|---|
| Hotspot | Deze beschrijving wordt aangevuld |

---

## SVG

| Onderdeel | Beschrijving |
|---|---|
| SVG | Deze beschrijving wordt aangevuld |

---

## HTML video

| Onderdeel | Beschrijving |
|---|---|
| HTML video | Deze beschrijving wordt aangevuld |

---

## Youtube video

| Onderdeel | Beschrijving |
|---|---|
| Youtube video | Deze beschrijving wordt aangevuld |

---

## Carrousel

| Onderdeel | Beschrijving |
|---|---|
| Carrousel | Deze beschrijving wordt aangevuld |

---

## Picture row

| Onderdeel | Beschrijving |
|---|---|
| Picture row | Deze beschrijving wordt aangevuld |

---

# Navigatie

## Button

| Onderdeel | Beschrijving |
|---|---|
| Button | Deze beschrijving wordt aangevuld |

---

## Partijlijst

| Onderdeel | Beschrijving |
|---|---|
| Partijlijst | Deze beschrijving wordt aangevuld |

---

## Partijkaart

| Onderdeel | Beschrijving |
|---|---|
| Partijkaart | Deze beschrijving wordt aangevuld |

---

## Social icons

| Onderdeel | Beschrijving |
|---|---|
| Social icons | Deze beschrijving wordt aangevuld |

---

## Breadcrumbs

| Onderdeel | Beschrijving |
|---|---|
| Breadcrumbs | Deze beschrijving wordt aangevuld |

---

## Icon link

| Onderdeel | Beschrijving |
|---|---|
| Icon link | Deze beschrijving wordt aangevuld |

---

## Banner

| Onderdeel | Beschrijving |
|---|---|
| Banner | Deze beschrijving wordt aangevuld |

---

## Voorraad navigatie

| Onderdeel | Beschrijving |
|---|---|
| Voorraad navigatie | Deze beschrijving wordt aangevuld |

---

## Shop navigation

| Onderdeel | Beschrijving |
|---|---|
| Shop navigation | Deze beschrijving wordt aangevuld |

---

## Aanbieding

| Onderdeel | Beschrijving |
|---|---|
| Aanbieding | Deze beschrijving wordt aangevuld |

---

## Action link

| Onderdeel | Beschrijving |
|---|---|
| Action link | Deze beschrijving wordt aangevuld |

---

## Add to home button

| Onderdeel | Beschrijving |
|---|---|
| Add to home button | Deze beschrijving wordt aangevuld |

---

## Anchors toolbar

| Onderdeel | Beschrijving |
|---|---|
| Anchors toolbar | Deze beschrijving wordt aangevuld |

---

# Formulier

## Formulier

| Onderdeel | Beschrijving |
|---|---|
| Formulier | Deze beschrijving wordt aangevuld |

---

## Tekst input

| Onderdeel | Beschrijving |
|---|---|
| Tekst input | Deze beschrijving wordt aangevuld |

---

## Email input

| Onderdeel | Beschrijving |
|---|---|
| Email input | Deze beschrijving wordt aangevuld |

---

## Nummer input

| Onderdeel | Beschrijving |
|---|---|
| Nummer input | Deze beschrijving wordt aangevuld |

---

## Bestand input

| Onderdeel | Beschrijving |
|---|---|
| Bestand input | Deze beschrijving wordt aangevuld |

---

## Checkbox

| Onderdeel | Beschrijving |
|---|---|
| Checkbox | Deze beschrijving wordt aangevuld |

---

## Radio button

| Onderdeel | Beschrijving |
|---|---|
| Radio button | Deze beschrijving wordt aangevuld |

---

## Multiple choice

| Onderdeel | Beschrijving |
|---|---|
| Multiple choice | Deze beschrijving wordt aangevuld |

---

## Dropdown (single select)

| Onderdeel | Beschrijving |
|---|---|
| Dropdown (single select) | Deze beschrijving wordt aangevuld |

---

## Dropdown (single select option)

| Onderdeel | Beschrijving |
|---|---|
| Dropdown (single select option) | Deze beschrijving wordt aangevuld |

---

## Hidden input

| Onderdeel | Beschrijving |
|---|---|
| Hidden input | Deze beschrijving wordt aangevuld |

---

## Hidden debiteur info

| Onderdeel | Beschrijving |
|---|---|
| Hidden debiteur info | Deze beschrijving wordt aangevuld |

---

## Verzendknop

| Onderdeel | Beschrijving |
|---|---|
| Verzendknop | Deze beschrijving wordt aangevuld |

---

# Gebruiker

## Login form

| Onderdeel | Beschrijving |
|---|---|
| Login form | Deze beschrijving wordt aangevuld |

---

## Debiteur info

| Onderdeel | Beschrijving |
|---|---|
| Debiteur info | Deze beschrijving wordt aangevuld |

---

## Uw account

| Onderdeel | Beschrijving |
|---|---|
| Uw account | Deze beschrijving wordt aangevuld |

---

## Accountmanager

| Onderdeel | Beschrijving |
|---|---|
| Accountmanager | Deze beschrijving wordt aangevuld |

---

## Registratieformulier

| Onderdeel | Beschrijving |
|---|---|
| Registratieformulier | Deze beschrijving wordt aangevuld |

---

# Templates

## Footer template

| Onderdeel | Beschrijving |
|---|---|
| Footer template | Deze beschrijving wordt aangevuld |

---

# Geavanceerd

## Iframe

| Onderdeel | Beschrijving |
|---|---|
| Iframe | Deze beschrijving wordt aangevuld |

---

## Blog

| Onderdeel | Beschrijving |
|---|---|
| Blog | Deze beschrijving wordt aangevuld |

---

## Category overview

| Onderdeel | Beschrijving |
|---|---|
| Category overview | Deze beschrijving wordt aangevuld |

---

## Frame

| Onderdeel | Beschrijving |
|---|---|
| Frame | Deze beschrijving wordt aangevuld |

---

## Custom

| Onderdeel | Beschrijving |
|---|---|
| Custom | Deze beschrijving wordt aangevuld |

---

## Keuze component

| Onderdeel | Beschrijving |
|---|---|
| Keuze component | Deze beschrijving wordt aangevuld |

---

## Button (Keuze)

| Onderdeel | Beschrijving |
|---|---|
| Button (Keuze) | Deze beschrijving wordt aangevuld |

---

## Lottie player

| Onderdeel | Beschrijving |
|---|---|
| Lottie player | Deze beschrijving wordt aangevuld |

---

## Suggestions

| Onderdeel | Beschrijving |
|---|---|
| Suggestions | Deze beschrijving wordt aangevuld |

---

# Dashboard

## Chart

| Onderdeel | Beschrijving |
|---|---|
| Chart | Deze beschrijving wordt aangevuld |

---

## Piechart

| Onderdeel | Beschrijving |
|---|---|
| Piechart | Deze beschrijving wordt aangevuld |

---

## Gauge

| Onderdeel | Beschrijving |
|---|---|
| Gauge | Deze beschrijving wordt aangevuld |

---

## Table view

| Onderdeel | Beschrijving |
|---|---|
| Table view | Deze beschrijving wordt aangevuld |

---

## Progressbar

| Onderdeel | Beschrijving |
|---|---|
| Progressbar | Deze beschrijving wordt aangevuld |

---

## Dashboard view

| Onderdeel | Beschrijving |
|---|---|
| Dashboard view | Deze beschrijving wordt aangevuld |

---

## Embedded dashboard

| Onderdeel | Beschrijving |
|---|---|
| Embedded dashboard | Deze beschrijving wordt aangevuld |

---

## Filter toolbar

| Onderdeel | Beschrijving |
|---|---|
| Filter toolbar | Deze beschrijving wordt aangevuld |

---

## Searchterm

| Onderdeel | Beschrijving |
|---|---|
| Searchterm | Deze beschrijving wordt aangevuld |

---

## Query filter

| Onderdeel | Beschrijving |
|---|---|
| Query filter | Deze beschrijving wordt aangevuld |

---

## Preset value filter

| Onderdeel | Beschrijving |
|---|---|
| Preset value filter | Deze beschrijving wordt aangevuld |

---

## Query filter date

| Onderdeel | Beschrijving |
|---|---|
| Query filter date | Deze beschrijving wordt aangevuld |

---

## Query variable

| Onderdeel | Beschrijving |
|---|---|
| Query variable | Deze beschrijving wordt aangevuld |

---

# Health

## Health chart

| Onderdeel | Beschrijving |
|---|---|
| Health chart | Deze beschrijving wordt aangevuld |

---

## Health check

| Onderdeel | Beschrijving |
|---|---|
| Health check | Deze beschrijving wordt aangevuld |

---

## Health errors

| Onderdeel | Beschrijving |
|---|---|
| Health errors | Deze beschrijving wordt aangevuld |

---

## Health gauge

| Onderdeel | Beschrijving |
|---|---|
| Health gauge | Deze beschrijving wordt aangevuld |

---

## Health log

| Onderdeel | Beschrijving |
|---|---|
| Health log | Deze beschrijving wordt aangevuld |