<img src="../../fslogo.png" alt="Florisoft Logo"> 
&nbsp;

# Table of contents 
[Introduction](#introduction)  
[Step 1. Mailing configuration screen](#step-1-getting-to-the-mailing-configuration-screen)  
[Step 2. Creating a new template](#step-2-creating-a-new-template)  
[Step 3. Editing an existing template](#step-3-editing-an-exisiting-template)  
[Step 4. The editor](#step-4-the-editor)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Step 4.1 Show advanced](#41-show-advanced)   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Step 4.2 Selecting or searching properties](#42-selecting-or-searching-properties)   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Step 4.3 Saving or undoing progress](#43-saving-or-undoing-progress)   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Step 4.4 Customizing the header](#44-customizing-the-header)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Step 4.4.1 Adding an image](#441-adding-an-image-to-the-header)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Step 4.4.2 Background colour selection](#442-background-colour-selection)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Step 4.4.3 Other header properties](#443-other-header-properties)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Step 4.5 The subheader](#45-the-subheader)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Step 4.6 The body](#46-the-body)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Step 4.7 The footer](#47-the-footer)  
[Step 5. Search functionalities](#step-5-search-functionalities-with-the-mailing-configuration-screen)  
[Step 6. Enabling an e-mail template](#step-6-enabling-an-e-mail-template)  
[Step 7. Finding the e-mail template in the back office](#step-7-finding-the-e-mail-template-in-the-back-office-application)

# Introduction

The active e-mail module is a commonly module within the Florisoft application, currently it falls under the overarching Florishop sales module but this might be subject to change. Previously custom active e-mail was to be created in HTML format which caused problems. The main problems is the cost of development and accessibility for some of our customers.

To address this growing problem a new e-mail editor was developed within the Florishop website. The editors main goals are to simplify creation and management of the e-mail templates for our customers. However the editor is currently only available to Florisoft staff, but it will be made accessible to customers in the future as well .

The intention of the user manual is to get to know the editor’s functionalities and learn how to create and manage e-mail lay-outs for your business. This document will walk you through the complete process of creating templates to starting to edit them and finally enabling them. If you are already familiar with the process of creating templates you may skip ahead to [step 4](#step-4-the-editor).

**Note:** *The editor is still partially in development this means that some functionalities might be subject to change and the possible addition of more features. We will try our best to keep this manual as up to date as possible but know that this guide may lag behind from the current version in future.*


# Step 1. Getting to the mailing configuration screen 
Open a browser if you didn’t have one open already and navigate to your Florishop webpage and login with a management account. Once logged in go to *configuration* **→**  *mail configuration* as shown in the image below.

<img src=".Active Email Editior EN media/GettingToTheMailingConfigurationScreen.png" alt="getting to editor">

This will bring you to the mailing configuration screen, the page where you create and manage your active e-mail templates. If there are any templates already existing within your system they should be shown here. The mailing configuration screen also has some search functionalities to find the right template for you to edit.

<img src=".Active Email Editior EN media/Mailing Configuration Screen.png" alt="Mailing Configuration Screen">


# Step 2. Creating a new template
Continuing with the last screen click on the ‘*create*’ button highlighted in the image below. 

<img src=".Active Email Editior EN media/CreateButtonMailConfig.png">

A popup pop-up screen appears with options for the new template you are about to create (the image below contains an example of the prompt with some exemplary values for this manual).
For the new e-mail template you are required to set the following properties:

1. **Theme filter**: This property contains the website wide theme the template falls under, by default this should be the right one so don’t change it unless you know what you are doing.
2. **Mail type filter**: This property decides what type of mail this template will be. Currently there is only one ‘Aanbieding’ or offer.
3. **Template name**: The name of template it is recommended that you set this to something that is easily recognizable later. *For the purpose of this manual we will set it to the name ‘*ExampleOfferTemplateEN*’.

<img src=".Active Email Editior EN media/NewMailTemplateOptions.png">  

After entering the right property values for the new template press the ‘*create*’ button. The prompt should disappear and the mailing configuration screen should be visible once more.
The image below shows that we see our newly created template in the mailing configuration screen template list with the properties we set just now.

<img src=".Active Email Editior EN media/NewMailTemplateCreated.png">

# Step 3. Editing an exisiting template 
After having created a new mail template we can edit it to fit our needs. To get to the editor press the ‘*edit*’ field in the row of the template you want to edit. For the purpose of this manual we will be editing the template created in step 2: *ExampleOfferTemplateEN*. The image below shows an example of where to click to edit the right template.

<img src=".Active Email Editior EN media/EditButtonForMailTemplate.png">

# Step 4. The editor
After following the previous steps you should now be in the editor. To make the editing process as easy as possible the screen has been split in two parts: editing and preview. The editing screen to the left is where we can change values such as header height. These changes will change the live preview screen on the right where we can see what are our template e-mail looks like.

There are a couple of important things to remember about the preview screen:

1. The preview screen is live, which means that changes made on the left will automatically be rendered on the right. So there is **no** need to refresh after changes the right screen will simply be rerendered after making any changes. 
2. Fields such as article names or product prices are replaced by placeholders in the preview. A good rule of thumb is that any text field that is changeable within the editor is non-dynamic. The actual e-mails will of course contain dynamic database variables.

The preview screen currently shows us the default template that is created when making a new mailing template.

<img src=".Active Email Editior EN media/EditorBaseScreen.png">  


## 4.1 Show advanced
---
To get the most out of the it is recommended to show the advanced customization options. To enable the advanced properties simply check the '*show advanced*' checkbox below the e-mail template name. There is no need to refresh the page after checking this option as the properties will simply show themselves.

*The image below shows where to find the show advanced checkbox in the editor*

<img src=".Active Email Editior EN media/ShowAdvancedCheckbox.png">  

## 4.2 Selecting or searching properties 
---
Being shown all the e-mail customization properties might be a bit overwhelming, to make this a bit easier we'll select the properties based on the part of the e-mail we are editing. In the next part we will be editing the header so let's select the header section properties. To do this simply click (left mouse button) on the '*section filter*' drop down and click on the section you are going to edit. 

<img src=".Active Email Editior EN media/SectionFilter.png">

If you need to find a specific setting you can search it using one of the two filters next to the section filter. You can filter by Item or Value, do note whatever you search for will only searched for in section selected in the section filter. If you want to search across all the properties regardless of sections select '*No selection*' in the section filter. The Item filter may be used to search for property names such as 'Background colour'. With the value filter you may search for the property value instead e.g. '#216289' for the background colour. 

<img src=".Active Email Editior EN media/ItemAndValueFilter.png">

## 4.3 Saving or undoing progress 

To save or undo  the changes made to the template use the *floppy disk* and *leftwards arrow* buttons respectively. These buttons can be found next to the search filters mentioned previously. Do keep in mind that the undo button can only be used for changes made in your current session. **By pressing the undo button you will undo all changes made in your session effectively resetting it to the last saved lay-out**.
Meaning that if you exit the editor but open it again because you would like to change something you can't undo changes made in the last time you worked in the editor. 
<img src=".Active Email Editior EN media/UndoAndSave.png">

## 4.4 Customizing the header


### **4.4.1 Adding an image to the header**
For this manual we will start at the top of the e-mail meaning the header. We will start by adding an image to header. To do this left click on the row that says '*Image path*' this will give a prompt like the image shown below. Now to add a custom image left click the placeholder image in the prompt.  
<img src=".Active Email Editior EN media/ImagePathPrompt.png">  
This will give a new prompt where we can actually upload our header image. To upload a new image left click the '*upload*' button. This should prompt us with a file explorer screen in which you can select the image file on your local system.  
<img src=".Active Email Editior EN media/ImageUploadScreen.png">  

After uploading the image will show up in the image popup screen. This image might be hard to find in this screen as the media folder is shared across the whole website. To find the right image faster you can make use of the search functionality in the top right of the prompted screen. The search functionality searches based on the filename that was uploaded just now. To finally select the image left click on the image thumbnail which brings you back to the previous prompt. In this prompt simply press save and look at the preview header to see the newly selected header image.  

<img src=".Active Email Editior EN media/SearchFunctionImageSelect.png"> 

### **4.4.2 Background colour selection**
After adding an image we have a couple more properties we can set to customize our e-mail header. Let's start with the background colour of the header, simply left click on the '*Background colour*' field. This should give us the following prompt:  
<img src=".Active Email Editior EN media/ColorSelection.png">  
Simply left click the coloured button highlighted in the image above. This should prompt a new screen in which you can pick your desired colours. You can select the desired colour using the colour reel or by entering the colour hex code in the highlighted part of the image. After having selected the right colour press the '*Choose*' button to exit the colour picker. Then press save to lock in the colour as the background colour.  

<img src=".Active Email Editior EN media/ColorPicker.png">  

### **4.4.3 Other header properties** 
The other properties are pretty straight forward; to change a property simple left click on a field fill in the prompt and press save. Let's take the *height* property as an example, left mouse click on the height field. We are now prompted with the screen shown below. The top textbox is the value of our property and the drop down below can be seen as the unit of measurement the value is interpreted as.

Changing other properties such as *Image padding* follows the exact same process. It is recommended to check the preview after every change to see if the change was for the better or not. 

**Tip:** *Do not forget to regularly save your progress to reduce the loss of progress if something were to happen.*

<img src=".Active Email Editior EN media/HeightPropertyPrompt.png">


## 4.5 The Subheader
The sub header doesn't have unique fields on it's own, to see how to change these values we'll refer you to chapter [4.4.2](#442-background-colour-selection) for colours and [4.4.3](#443-other-header-properties) for regular properties. Section specific parts will be explained in the corresponding section sub chapter.

## 4.6 The body 
Most of the body property properties are similar as the ones in the header. An important property of the body is the '*Amount of columns*' property which by default is set to 1. This setting sets the amount of products on offer per row in the e-mail. To see which one is suited for your needs we recommend experimenting with this property to see what fits best. To change this value simply left click on the property row/field and select the drop down value that you want to use. This of course can be seen in the preview immediately after having changed the property value.  

<img src=".Active Email Editior EN media/AmountOfCollumns.png">

The body also contains another property type we haven't seen before a True or False binary setting. An example of this is the '*Show veilart in columns*' property, this property allows you to enable/disable the auction article number being shown in the table. To change this property simply left click on the property row or field, check or uncheck the checkbox and press save.  

<img src=".Active Email Editior EN media/ShowVeilArtProperty.png">

## 4.7 The footer
The footer itself does not have any special properties. However it is important to remember that the fields below the footer font colour are static labels only. Meaning that they are just the indicator of what is going to be shown behind it. Things like the postal code, address etc. are taken dynamically from the database and are not shown in the preview. In the current iteration of the editor we allow the label (indicators) to be changed but the dynamic values taken from the database cannot be changed with the editor.

**Important!:** *Now that we have gone through the entire e-mail lay-out it is important to remember to press save as described in [chapter 4.3](#43-saving-and-undoing-progress).*

# Step 5. Search functionalities with the mailing configuration screen

When the using the active e-mail module you might have a variety of templates at your disposal. If you need to find a certain template quickly there is a  built-in search function within the mail configuration screen. 

You can search/filter based on three properties of an e-mail template: Theme filter, Mail type filter and the template name. There is no need to press enter or refresh as the page will automatically filter the matching templates for you. If you want to remove the filters simply press the '*reset*' button next to the filters. 

<img src=".Active Email Editior EN media/MailConfigurationScreenSearch.png">

# Step 6. Enabling an e-mail template

When the e-mail template is ready for use and you want to make the template available in the back office follow the following steps:

0. If needed **save** and exit the template editor.
1. Go to the mail configuration screen (top navigator bar: *configuration* **→** *mail configuration*).
2. If needed search for the template you need to enable.
3. Press/check the '*Enabled*' checkbox in the template listicle row.
4. Once enabled it will be visible in the Florisoft application.  

<img src=".Active Email Editior EN media/EnabledOptionTemplate.png">  

# Step 7. Finding the e-mail template in the back-office application 

Now that we have created an active e-mail template on the Florishop we should be able to see it in the Florisoft application too. To check this follow the following steps:

1. Open the Florisoft application if you didn't do that already.
2. Click on the '*offers*' button (may vary depending on users language)
3. Within the offers menu click on the '*print*' button (see image 1 below)
4. You should now be prompted with a print options menu, click on the print layout dropdown. Within this dropdown you should see your template like so 'FTS_template name here'(See image 2 below).**Note:** the templates created within the Florishop active mail module are indicated with a 'FTS_' prefix.  

***Images:***

**1.** <img src=".Active Email Editior EN media/BackofficeOffers.png">
**2.** <img src=".Active Email Editior EN media/Printoptions.png">
