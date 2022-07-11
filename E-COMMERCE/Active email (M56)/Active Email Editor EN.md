<img src="../../fslogo.png" alt="Florisoft Logo"> 
&nbsp;

# Table of contents 
**FIX THIS!!**  
[Introduction](#introduction)  
[Step 1. Mailing configuration screen](#step-1-getting-to-the-mailing-configuration-screen)  
[Step 2. Creating a new template](#step-2-creating-a-new-template)  
[Step 3. Editing an existing template](#step-3-editing-an-exisiting-template)  
[Step 4. The editor](#step-4-the-editor)  
[Step 5. Search functionalities](#step-5-search-functionalities-with-the-mailing-configuration-screen)  

# Introduction

The active e-mail module is a commonly used module within the Florisoft software package. This module falls under the overarching Florishop sales module. Previous iterations of this module had a accessibility problem since it needed to be created in a HTML format. This also caused a lot more work in testing functionality and design. <br>

Because of this a new editor was developed, the editor will change but more importantly simplify the process of creating e-mail layouts. For now the editor will only be accessible to Florisoft employees but in the future the editor will be accessible for you as well. <br>

The intention of this manual to get to know the editors functionality and learn how to create e-mail lay-outs for your business. We will start with the basiscs of getting to the editing screen first, if you are already familiar with those steps skip ahead to [step 4](#step-4-the-editor). <br>

**Note:** *The editor is still partially in developmen meaning that some functionalities might be subject to change. This document will be updated as soon as possible but might lag behind.*  

# Step 1. Getting to the mailing configuration screen 
Go the your florishop webpage and login with a management account. Once logged in go to:</br> *configuration* **→**  *mail configuration* as shown in the image below.
<img src=".Active Email Editior EN media/GettingToTheMailingConfigurationScreen.png" alt="getting to editor">
<br>
You are now faced with the screen below which shows the currently existing templates in the system along with some search functionalities. <br>

<img src=".Active Email Editior EN media/Mailing Configuration Screen.png" alt="Mailing Configuration Screen">


# Step 2. Creating a new template
In the screen shown in the last step press the '*create*' button.
<img src=".Active Email Editior EN media/CreateButtonMailConfig.png">
A dialog screen should a appear with options for our new template (example seen below). The following options should be set for our new template:  

1. **Theme filter** : Select the theme filter **TODO**!
2. **Mail type filter**: with this drop down selector you can set the type of template you are going to create.  This is an important field to get right as only some filter types will work with backoffice functionalities such as offers.
3. **Template name** : in this field you can set the name of the new template. For the purpose of this manual we will set the name to '*ExampleOfferTemplateEN*'.

<br>
<img src=".Active Email Editior EN media/NewMailTemplateOptions.png">  

After entering the rigth options for our new template press the '*create*' button. The dialog should dissapear and the mailing configuration screen should be visible again. <br> 
In the image below you can see that we successfully added a new template.
<img src=".Active Email Editior EN media/NewMailTemplateCreated.png">

# Step 3. Editing an exisiting template 
After having created a new mail template we can edit to our needs. To get to the editor simply press the '*edit*' field in the row of the template you want to edit.  
For the purpose of the manual we are editing the template created in step 2. The image below shows an example of were to find the right edit button.

<img src=".Active Email Editior EN media/EditButtonForMailTemplate.png">

# Step 4. The editor
After following the previous steps we are now in the editor. To make the editing process as simple as possible the screen has been split in two parts: editing and preview. The editing part on the left is where we can change values e.g. the height of the footer. The right part is the preview part this screen gives us a live preview of the changes made in the editor screen.  
<img src=".Active Email Editior EN media/EditorBaseScreen.png">  
The preview screen currently shows us the set default template when creating a new mailing template. An important thing of note is that the current text in preview is static and live e-mails will contain dynamic database fields. 

## 4.1 Show advanced
---
To get the most out of the it is recommended to show the advanced customization options. To enable the advanced settings simply check the '*show advanced*' checkbox below the e-mail template name. There is no need to refresh the page after checking this option as the settings will simply show themselves.
<img src=".Active Email Editior EN media/ShowAdvancedCheckbox.png">  

## 4.2 Selecting or searching settings 
---
Being shown all the e-mail customization settings might be a bit overwhelming, to make this a bit easier we'll select the settings based on the part of the e-mail we are editing. In the next part we will be editing the header so let's select the header section properties. To do this simply click (left mouse button) on the '*section filter*' drop down and click on the section you are going to edit. 

<img src=".Active Email Editior EN media/SectionFilter.png">

If you need to find a specific setting you can search it using one of the two filters next to the section filter. You can filter by Item or Value, do note whatever you search for will only searched for in section selected in the section filter. If you want to search across all the properties regardless of sections select '*No selection*' in the section filter. The Item filter may be used to search for property names such as 'Background colour'. With the value filter you may search for the property value instead e.g. '#216289' for the background colour. 

<img src=".Active Email Editior EN media/ItemAndValueFilter.png">

## 4.3 Saving and undoing progress 

To save or undo  the changes made to the template use the *floppy disk* and *leftwards arrow* buttons respectively. These buttons can be found next to the search filters mentioned previously. Do keep in mind that the undo button can only be used for changes made in your current session. **By pressing the undo button you will undo all changes made in your session effectively resetting it to the last saved lay-out**.
Meaning that if you exit the editor but open it again because you would like to change something you can't undo changes made in the last time you worked in the editor. 
<img src=".Active Email Editior EN media/UndoAndSave.png">

## 4.4 Customizing the header
---

### **4.4.1 Adding an image to the header**
For this manual we will start at the top of the e-mail meaning the header. We will start by adding an image to header. To do this left click on the row that says '*Image path*' this will give a prompt like the image shown below. Now to add a custom image left click the placeholder image in the prompt.  
<img src=".Active Email Editior EN media/ImagePathPrompt.png">  
This will give a new prompt where we can actually upload our header image. To upload a new image left click the '*upload*' button. This should prompt us with a file explorer screen in which you can select the image file on your local system.  
<img src=".Active Email Editior EN media/ImageUploadScreen.png">  

After uploading the image will show up in the image popup screen. This image might be hard to find in this screen as the media folder is shared across the whole website. To fix this you can make use of the search functionality in the top right of the prompted screen. The search functionality searches based on the filename that was uploaded just now. To finally select the image left click on the image thumbnail which brings you back to the previous prompt. In this prompt simply press save and look at the preview header to see the newly selected header image.
<img src=".Active Email Editior EN media/SearchFunctionImageSelect.png"> 

### **4.4.2 Background colour selection**
After adding an image we have a couple more properties we can set the customize our e-mail header. Let's start with the background colour of the header, simply left click on the '*Background colour*' field. This should give us the following prompt:  
<img src=".Active Email Editior EN media/ColorSelection.png">  
Simply left click the coloured button highlighed in the image above. This should prompt a new screen in which you can pick your desired colours. You can select the desired color using the color reel or by entering the color hex code in the highlighted part of the image. After having selected the right color press the '*Choose*' button to exit the color picker. Then press save to lock in the colour as the background colour.
<img src=".Active Email Editior EN media/ColorPicker.png">  

### **4.4.3 Other header properties**

## 4.5


# Step 5. Search functionalities with the mailing configuration screen

# Step 6. Enabling an e-mail template