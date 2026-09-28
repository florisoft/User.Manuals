<img src="../../fslogo.png">

# Information about new MJML confirmations in MailConfig

A confirmation email is sent after a customer places an order. Previously, these emails were created by Support using FRPT. This method is outdated and will soon be replaced by MailConfig.

## Background
MailConfig existed before confirmations were added, but it was used exclusively for offers at that time. Consultancy spent a considerable amount of time manually maintaining the FRPT files for confirmations. MailConfig was a suitable replacement because the concept for creating emails is largely the same.

However, a new technology was chosen. This information is not required to use the configurator, but it does provide insight into how it works. The underlying technology is called MJML. Creating emails is complex because HTML is only partially supported and support differs between email clients. MJML automatically generates suitable HTML for emails, reducing the time required to ensure that the emails work correctly.

## Building blocks
This implementation primarily uses template blocks, such as headers, footers, and bodies. You can select these separately. Each block has its own format, and together they form one complete template.

Simple and advanced versions are available for the building blocks. The simple version displays only the most important elements. The advanced version provides a more detailed presentation and can display additional information.

The header, body, and footer versions can be selected separately. This allows you to combine different versions.

Always check the preview after selecting or modifying the building blocks.

## Confirmations for parent customers and subcustomers
This is not directly relevant to maintaining templates, but it is important to the process.

For organisations that work with parent customers and subcustomers, an order can be placed for different customers. The confirmation email automatically takes this into account.

The design continues to come from MailConfig. The customer relationship, order, and configured sending rules automatically determine which order lines, recipients, and prices are displayed.

You do not need to take any action for this. It is determined automatically based on the structure and configuration. The different possibilities are described below.

### 1. A regular customer places an order
There are no special considerations if no parent and subcustomer structure is used. The customer receives confirmation of the order they placed.

### 2. A subcustomer purchases for themselves
A subcustomer can make a purchase for themselves. As with a regular purchase, they receive an overview of what was purchased. Depending on the settings, the parent customer may need to be informed about the purchase. In that case, an additional confirmation with different wording is automatically sent to the parent customer or seller (your subcustomer has purchased ...).

### 3. A parent customer purchases for one or more subcustomers
As a parent customer, you can purchase for your subcustomers. The confirmation groups all order lines by subcustomer. This happens automatically and includes additional pricing information. The meaning of the email is: "As the parent customer, you have purchased for these subcustomers."

Depending on the settings, the subcustomers for whom the purchase was made may also need to be informed individually. They then receive a confirmation containing only their own order lines (your parent customer has purchased ... for you). This also happens automatically.
