<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Manual Active E-mail Editor - (M56)

The active e-mail module is a commonly used module within the Florisoft application, it currently falls under the FloriShop sales module but this might be subject to change. Previously custom active e-mail was to be created in HTML format which caused some problems with accessibility and development cost.

To address this problem a new e-mail editor was developed within the FloriShop website. The editors main goals are to simplify creation and management of the e-mail templates for our customers. However the editor is currently only available to Florisoft staff, but it will be made accessible to customers in the future as well .

The intention of the user manual is to get to know the editor’s functionalities and learn how to create and manage e-mail lay-outs for your business. This document will walk you through the complete process of creating templates to editing them and finally enabling them. If you are already familiar with the process of creating templates and getting to the editor you may skip ahead to step 4.

**Note:** The editor is still partially in development this means that some functionalities might be subject to change and the possible addition of more features. We will try our best to keep this manual as up to date as possible but know that this guide may lag behind the current version in future.

## Table of contents

[Opening the mailing configuration screen](#opening-the-mailing-configuration-screen)  
[Creating a new template](#creating-a-new-template)  
[Editing an existing template](#editing-an-existing-template)  
[The editor](#the-editor)  
[Show advanced options](#show-advanced-option)  
[Selecting or searching properties](#selecting-or-searching-properties)  
[Saving or undoing progress](#saving-or-undoing-progress)  
[Customizing the header](#customizing-the-header)  
[Adding an image to the header](#adding-an-image-to-the-header)  
[Background colour selection](#background-colour-selection)  
[Other header properties](#other-header-properties)  
[The subheader](#subheader)
[The body](#the-body)  
[The footer](#the-footer)    
[Search for functionalities](#search-functionalities-with-the-mailing-configuration-screen)  
[Enabling an e-mail template](#enabling-an-e-mail-template)  
[Finding the e-mail template in the backoffice application](#finding-the-e-mail-template-in-the-back-office-application)  


## Opening the mailing configuration screen

*Follow the step below:*

|Step|Explanation|
|:-:|:--|
|**1**|Open your webbrowser, navigate to your Florishop and login.|
|**2**|Enable the developer mode, click on your user icon and click on the '*management*' option.<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/GettingToTheMailingConfigurationScreen.png"></details> |
|**3**|In the black bar on top click on the **Configuration** dropdown, and then click on the **Mail configuration** option.<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/GettingToTheMailingConfigurationScreen.png"></details>|
|**4**|This will bring you to the mailing configuration screen, the page where you create and manage your active e-mail templates. If there are any active e-mail templates already existing within your system they should be shown here. The mailing configuration screen also has some search functionalities to find the right template for you to edit.<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/Mailing Configuration Screen.png"></details>|

## Creating a new template

*Follow the steps below:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Continuing with the last screen click on the ‘create’ button highlighted in the image below.<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/CreateButtonMailConfig.png"></details>|
|**2**|A pop-up screen appears with options for the new template you are about to create (the screenshot below contains an image of the prompt with some example values for this manual). For the new e-mail template you are required to set the following properties:<br><Br>1. **Theme filter**: This property contains the website wide theme the template falls under, by default this should be the right one so do not change it unless you know what you are doing.<br>2. **Mail type filter**: This property decides what type of mail this template will be. Currently there is only one ‘Aanbieding’ or offer but in the future more may be added.<br>3. **Template name:** The name of template it is recommended that you set this to something that is easily recognizable for later. *For the purpose of this manual we will set it to the name ‘ExampleOfferTemplateEN’.<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/NewMailTemplateOptions.png"></details>|
|**3**|After entering the right property values for the new template press the ‘create’ button. The prompt should disappear and the mailing configuration screen should be visible once more. The image below shows that we can see our newly created template in the mailing configuration screen template list with the template properties we set just now.<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/NewMailTemplateCreated.png"></details>|

## Editing an existing template

After having created a new mail template we can edit it to fit our needs. To get to the editor press the ‘edit’ field in the row of the template you want to edit. For the purpose of this manual we will be editing the template created in step 2: ExampleOfferTemplateEN. The image below shows an example of where to click to edit the right template.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/EditButtonForMailTemplate.png"></details>

## The editor

After following the previous steps you should now be in the editor. To make the editing process as easy as possible the screen has been split in two parts: 
1. editing
2. preview

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Active Email Editior EN media/EditorBaseScreen.png"></details>

### Show advanced option

To get the most out of the editor it is recommended to show the advanced customization options. To enable the advanced properties simply check the '**show advanced**' checkbox below the e-mail template name. There is no need to refresh the page after checking this option as the properties will simply show themselves.

*The image below shows where to find the show advanced checkbox in the editor.*

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Active Email Editior EN media/ShowAdvancedCheckbox.png"></details>

### Selecting or searching properties

Being shown all the e-mail customization properties might be a bit overwhelming, to make this a bit easier we'll select the properties based on the part of the e-mail we are editing. In the next part we will be editing the header so let's select the header section properties. To do this simply click (left mouse button) on the 'section filter' drop down and click on the section you are going to edit.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/SectionFilter.png"></details>

If you need to find a specific setting you can search it using one of the two filters next to the section filter. You can filter by Item or Value, do note whatever you search for will only searched for in section selected in the section filter. If you want to search across all the properties regardless of sections select 'No selection' in the section filter. The Item filter may be used to search for property names such as 'Background colour'. With the value filter you may search for the property value instead e.g. '#216289' for the background.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/ItemAndValueFilter.png"></details>

### Saving or undoing progress

To save or undo the changes made to the template use the floppy disk and leftwards arrow buttons respectively. These buttons can be found next to the search filters mentioned previously. Do keep in mind that the undo button can only be used for changes made in your current session. **By pressing the undo button you will undo all changes made in your session effectively resetting it to the last saved lay-out.** Meaning that if you exit the editor but open it again because you would like to change something you can't undo changes made in the last time you worked in the editor.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/UndoAndSave.png"></details>


### Customizing the header

#### Adding an image to the header

For this manual we will start at the top of the e-mail also known as the header. We will start by adding an image to header. To do this left click on the row that says 'Image path' this will give a prompt like the image shown below. Now to add a custom image left click the placeholder image in the prompt.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/ImagePathPrompt.png"></details>

This will give a new prompt where we can actually upload our header image. To upload a new image left click the 'upload' button. This should prompt us with a file explorer screen in which you can select the image file on your local system.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/ImageUploadScreen.png"></details>

After uploading the image will show up in the image popup screen. This image might be hard to find in this screen as the media folder is shared across the whole website. To find the right image faster you can make use of the search functionality in the top right of the prompted screen. The search functionality searches based on the filename that was uploaded just now. To finally select the image left click on the image thumbnail which brings you back to the previous prompt. In this prompt simply press save and look at the preview header to see the newly selected header image.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/SearchFunctionImageSelect.png"></details>

#### Background colour selection

After adding an image we have a couple more properties we can set to customize our e-mail header. Let's start with the background colour of the header, simply left click on the 'Background colour' field. This should give us the following prompt:

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/ColorSelection.png"></details>

Simply left click the coloured button highlighted in the image above. This should prompt a new screen in which you can pick your desired colours. You can select the desired colour using the colour reel or by entering the colour hex code in the highlighted part of the image. After having selected the right colour press the 'Choose' button to exit the colour picker. Then press save to lock in the colour as the background colour.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/ColorPicker.png"></details>

#### Other header properties

The other properties are pretty straight forward; to change a property simple left click on a field fill in the prompt and press save. Let's take the *height* property as an example, left mouse click on the height field. We are now prompted with the screen shown below. The top textbox is the value of our property and the drop down below can be seen as the unit of measurement the value is interpreted as.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/HeightPropertyPrompt.png"></details>

Changing other properties such as Image padding follows the exact same process. It is recommended to check the preview after every change to see if the change was for the better or not.

**Tip:** *Do not forget to regularly save your progress to reduce the loss of progress if something were to happen.*

### Subheader

The sub header doesn't have unique fields on it's own, to see how to change these values we'll refer you to chapter 4.4.2 for colours and 4.4.3 for regular properties. Section specific parts will be explained in the corresponding section sub chapter.


### The body

Most of the body property properties are similar as the ones in the header. An important property of the body is the 'Amount of columns' property which by default is set to 1. This setting sets the amount of products on offer per row in the e-mail. To see which one is suited for your needs we recommend experimenting with this property to see what fits best. To change this value simply left click on the property row/field and select the drop down value that you want to use. This of course can be seen in the preview immediately after having changed the property value.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/AmountOfCollumns.png"></details>

The body also contains another property type we haven't seen before a True or False binary setting. An example of this is the '*Show veilart in columns*' property, this property allows you to enable/disable the auction article number being shown in the table. To change this property simply left click on the property row or field, check or uncheck the checkbox and press save.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/ShowVeilArtProperty.png"></details>

### The footer

The footer itself does not have any special properties. However it is important to remember that the fields below the footer font colour are static labels only. Meaning that they are just the indicator of what is going to be shown behind it. Things like the postal code, address etc. are taken dynamically from the database and are not shown in the preview. In the current iteration of the editor we allow the label (indicators) to be changed but the dynamic values taken from the database cannot be changed with the editor.

**Important to note:** *Now that we have gone through the entire e-mail lay-out it is important to remember to press save as described in the chapter [saving or undoing progress](#saving-or-undoing-progress).*

## Search functionalities with the mailing configuration screen

When using the active e-mail module you might have a variety of templates at your disposal. If you need to find a certain template quickly there is a built-in search function within the mail configuration screen.

You can search/filter based on three properties of an e-mail template: Theme filter, Mail type filter and the template name. There is no need to press enter or refresh as the page will automatically filter the matching templates for you. If you want to remove the filters simply press the 'reset' button next to the filters.

<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/MailConfigurationScreenSearch.png"></details>

## Enabling an e-mail template

*When the e-mail template is ready for use and you want to make the template available in the back office follow the following steps:*

|Step|Explanation|
|:-:|:--|
|**1**|If you are still in the template editor, **save** and exist the template editor|
|**2**|Open the configuruation screen (*configuration→mail configuration*)|
|**3**|If needed search for the template you need to enable.|
|**4**|Press/check the 'Enabled' checkbox in the template listicle row.<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/EnabledOptionTemplate.png"></details>|
|**5**|Once enabled it will be visible in the Florisoft application.|

## Finding the e-mail template in the back-office application

*Now that we have created an active e-mail template on the FloriShop we should be able to see it in the Florisoft application too. To check this follow the following steps:*

|Step|Explanation|
|:-:|:--|
|**1**|Open the florisoft navigator and click on the **offers** button.|
|**2**|Select the concerning offer and click on the **print** button.<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/BackofficeOffers.png"></details>|
|**3**|You should now be prompted with a print options menu, click on the print layout dropdown. Within this dropdown you should see your template like so 'FTS_template name here'(See image 2 below).Note: the templates created within the FloriShop active mail module are indicated with a 'FTS_' prefix.<details><summary><b>Click here for the example image!</b></summary><img src=".Active Email Editior EN media/PrintOptions.png"></details>|
