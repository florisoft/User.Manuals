<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Manual External E-Invoicing (StoreCove) - M227

:warning: **This module is under development and still needs to be tested further to avoid potential errors. Please proceed with caution!** :warning:

Welcome to the manual for External E-Invoicing via StoreCove. This module allows you to send invoices via the external provider StoreCove.  

In this manual, you will learn how to connect your StoreCove account to your Florisoft ERP back-office package via a policy, what information is required for exporting to StoreCove, and how to export invoices from the Florisoft Invoice Screen. 

## Prerequisites

**Before you begin, make sure you have the following:**  

* A StoreCove account (subscription).
* The Florisoft module **External E-Invoice Providers**. You can check this by clicking on the Florisoft logo in your navigator, then clicking the module button, and checking if the module **External E-Invoice Providers** is enabled.

## Finding the API Key & Legal Entity Id on the StoreCove Account Page

:warning: **Note: This section may be outdated. StoreCove may change the website, which could place the API key elsewhere.**

| Step | Description |
|:-:|:--|
| **1** | Go to your StoreCove account. Click on the **Integrator** header on your account page and then on **API Keys**. <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/1.png"></details> |
| **2** | You will be redirected to the page: https://app.storecove.com/en/api_keys. Copy the API key from this page by clicking on the clipboard icon. Keep the API key handy; you will need it in the following steps. <details><summary><b>Click here for an example!</b></summary><img src="media/EN/2.png"></details> |
|**3**|To the left of the legal entity there should be an Id followed by a set of numbers; this is the legal entity id. Copy and paste (the numbers) this to a notepad file, this way you will have easy access for later.|

## Setting the API Key in Policies

**Follow these steps:**

| Step | Description |
|:-:|:--|
| **1** | Open the constants screen via the navigator screen. <details><summary><b>Click here for an example!</b></summary><img src="media/EN/3.png"></details> |
| **2** | Navigate in the constants screen to the following path:<br>**System → Users → Policy Management** |
| **3** | Create a new policy and give it an appropriate name. <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/4.png"></details> |
| **4** | Assign the policy to the relevant system users using the **Edit** button and then click **Save**. <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/5.png"></details> |
| **5** | Use the search function to find the policy:<br>**StoreCove**.<br><br>You will see the setting: **Backoffice_Financial_Invoicing_InvoiceExport_Storecove_ApiKey**.<br><br>Enter the API key in this policy setting. <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/6.png"></details> |
| **6** | Then save the policy by clicking the **Save** button. |
| **7** | Want to know more about how policies work and how to configure them? Refer to the [Policy Manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

## Required Settings

The following subsections concern settings that must be configured for <u>all</u> relevant financial administrations and debtors. To ensure proper functionality, it is essential that this information is filled in for each debtor and financial administration.

### Financial Administrations

| Step | Description |
|:-:|:--|
| **1** | Open the constants screen (if you haven't already). <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/3.png"></details> |
| **2** | Navigate in the constants screen to:<br>**Financial → Financial Administrations**. <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/7.png"></details> |
| **3** | Open a relevant financial administration. |
| **4** | Under the **General** tab, fill in the following fields:<br><br>- Company Name<br>- VAT-Number (must match the **country** in the address details). <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/8.png"></details> |
| **5** | Under the **Address** tab, fill in the following fields:<br><br>- Street/housenr<br>- City<br>- Postal Code<br>- Place<br>- Country<br>- EAN Code (**Note:** The StoreCove LegalEntityId must be entered here. In the future, this may become a separate field.) <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/9.png"></details> |
| **6** | Under the **Debit** tab, fill in the following fields:<br><br>- IBAN<br>- BIC/SWIFT (used for identifying the administration). <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/10.png"></details> |

### Debtors

| Step | Description |
|:-:|:--|
| **1** | Open the constants screen (if you haven't already). <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/3.png"></details> |
| **2** | Navigate in the constants screen to:<br>**Community → Debtor Data → Debtors**. <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/11.png"></details> |
| **3** | Under the **Addresses** tab, fill in the following fields:<br><br>- Company Name<br>- Street/Housenr<br>- Place<br>- Zip Code<br>- Country<br>- EAN code<br>- GLN code<br>- KvK<br>- IBAN<details><summary><b>Click here for an example!</b></summary><img src="Media/EN/12.png"></details>|
| **4** | Under the **Financial** tab, fill in the following fields:<br><br>- VATnr Debtor(**Note:** This must match the country entered under **Address**).<details><summary><b>Click here for an example!</b></summary><img src="Media/EN/13.png"></details>|
| **5** | Save the changes. |

## Exporting Invoices to StoreCove

Follow these steps:

| Step | Description |
|:-:|:--|
| **1** | Open the invoice screen via the Florisoft navigator by pressing the **Invoices** button. <details><summary><b>Click here for an example!</b></summary><img src="Media/EN/14.png"></details> |
| **2** | Under the **Export** tab in the top function bar, click on the **Export to StoreCove** function in the options menu. |

This process may take a moment. You may see a loading screen, which is normal. Processing an average message takes about 3-5 seconds.
