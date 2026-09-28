<img src="../../fslogo.png">

# MailConfig guide for Florishop

The webshop sends various emails to customers, such as offers and stock confirmations. These emails should naturally match your organisation's corporate identity. MailConfig allows you to easily determine what these emails look like and which information they contain. You can create, modify, preview, and activate email templates—all from one central location.

- [What is MailConfig?](#what-is-mailconfig)
- [Available email types](#available-email-types)
- [Opening MailConfig](#opening-mailconfig)
- [Template overview](#template-overview)
- [Creating a new email template](#creating-a-new-email-template)
- [Editing an email template](#editing-an-email-template)
- [Using the preview](#using-the-preview)
- [Saving an email template](#saving-an-email-template)
- [Activating an email template](#activating-an-email-template)
- [Deleting an email template](#deleting-an-email-template)
- [Specific considerations for each email type](#specific-considerations-for-each-email-type)

## What is MailConfig?
MailConfig is the management environment for automated emails sent from the webshop. An email is created using an email template.

An email template can contain settings for the following elements, among others:
- Text
- Colours
- Images
- Dimensions and spacing
- The information displayed in the email
- Complete template sections (header, body, footer, and so on)

The available settings may vary depending on the email type and selected base template.

## Available email types

MailConfig currently supports two types of email:

### Offer email

The offer email is used to send an offer to a customer.

### Stock confirmation

The stock confirmation is used to confirm a stock order to the customer.

Creating and managing templates works largely the same for both email types. The specific options and considerations are covered separately for each email type later in this guide.

## Opening MailConfig

Open MailConfig from the webshop navigation bar.
<img src="./Mail configuratie link.png">

### Stock confirmations
*Because the confirmation email functionality is relatively new, an additional step is required to activate it. You can do this using the **CONFIRMATIONMAILLAYOUT** webshop setting.*
<img src="./Mjml Layout Webshopsetting Link.png">

*Select the webshop setting and choose **MailConfig**.*
<img src="./Webshopsetting scherm.png">

*FRPT is the old method for sending confirmations. MailConfig can take over this process, but this setting must be activated first.*

## Template overview

The overview page displays the email templates you have created. For each template, you can see:

- Whether the template is active
- Which theme the template belongs to
- Which email type the template is used for
- The name of the template

*The following is an example of an overview page:*
<img src="./MailConfig overzichtspagina.png">

You can use the search field to find an existing template by name. You can also filter by active templates.

From the overview, you can create a new template, open an existing template, or determine which template is active.

## Creating a new email template

1. Select the green plus icon in the top-left corner.
<img src="./MailConfig nieuwe template aanmaken.png">

2. The creation menu opens.
<img src="./MailConfig aanmaakmenu.png">

3. Choose the desired email type.
4. Select the theme for which the template will be used.
5. Give the new template a clear and recognisable name.
6. Choose one of the available starter templates.

The template is automatically added to the overview page. You can now preview, edit, or delete it.

*The template is ready to use immediately in principle. Every starter template is complete and contains default values. You can experiment with the editing tool to create your own style.*

## Editing an email template
Open the desired template from the overview.
<img src="./MailConfig template bewerken.png">

The editing screen displays the template settings and a preview of the email.
<img src="./MailConfig template bewerkscherm.png">

The settings are divided into different sections of the email. The available fields depend on the selected email type and base template.

Only modify the sections you want to change. After every significant change, check that the email is still displayed correctly.

## Using the preview
The preview is also available from the editing screen. This option displays only a preview of the email.
<img src="./MailConfig voorbeeldweergave knop.png">

## Saving an email template
After making your changes, select **Save**. The changes are then stored in the email template. A saved template does not automatically become the active template.
<img src="./MailConfig template opslaan.png">

## Activating an email template
The activation process is explained below.

For each theme, no more than one template can be active for a specific email type. Suppose you have the **Florisoft** and **StarterKit** themes. The Florisoft theme can have one active confirmation template and one active offer template. The same applies to StarterKit.

If no active template exists for a combination of theme and email type, the first template created is automatically activated.

It is advisable to always have at least one active template for each combination. MailConfig also enforces this. You can therefore move the active status to another template, but you cannot remove it if no alternative is available.

## Deleting an email template

An email template that is no longer required can be deleted from MailConfig.

Before deleting it, check:

- Whether you have selected the correct template
- Whether the template is still active
- Whether the template might be needed again later

After confirmation, the template is deleted. This action may not be reversible.
<img src="./MailConfig template verwijderen.png">

## Specific considerations for each email type
The general process is virtually the same for both email types. However, some settings and behaviours are specific to a particular email type.

These topics are covered in more detail in separate chapters:

- [MJML confirmations](./Florishop%20Guide%20MailConfig%20Bevestigingen%20EN.md)
