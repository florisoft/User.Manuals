<img src="../../fslogo.png">

# Florisoft Manual Commission Invoices

The **Commission Invoices** module was developed to simplify the workflow for companies working with commission customers. In the past, consolidated invoices were used for this purpose, but these are often labor-intensive and do not always meet all requirements. By setting up this module, invoices can be generated automatically with specific order lines for linked commission customers.

## Required Settings

To use the module correctly, several settings must be configured at debtor level. Follow the steps below:

| Step | Explanation |
|:-:|:--|
| **1** | Open the **Constants** screen and navigate to:<br>**Relations → Debtor Data → Debtors** |
| **2** | Open the debtor card of the relevant customer and navigate within this card to:<br>**Invoice → Print** |
| **3** | In this tab, enable the setting **Create commission invoice**. This setting determines whether a commission invoice is created for this specific customer when posting an invoice.<details><summary><b>Click here for an example!</b></summary><img src=".Commissie%20facturen/media/image-1.png"></details> |
| **4** | Now navigate to the tab **Invoice → Commission invoices**. Here, enter the debtor code of the commission customer on whose invoice the order lines must appear after posting an invoice. Make sure that the commission debtor is linked to a different financial administration than the debtors that appear on the commission invoice. (**Commission invoice debtor**)<details><summary><b>Click here for an example!</b></summary><img src=".Commissie%20facturen/media/image-3.png"></details> |

## Optional Settings

Depending on specific requirements, additional settings can be configured to further tailor the functionality of the module.

| Step | Explanation |
|:-:|:--|
| **1** | In the tab **Invoice → Commission invoices** of the debtor card, this setting determines which packaging code should be used on the commission invoice: the packaging code of the lot, or an alternative packaging code entered through the allocation.<details><summary><b>Click here for an example!</b></summary><img src=".Commissie%20facturen/media/image-4.png"></details> |
| **2** | In the **Accessible Stocks** screen (*Internet → Internet Access (Accessible Stocks)*) use the setting **ExcludeForCommissionInvoices**. This setting allows you to exclude specific stocks from being included on the commission invoice. This is useful for stock that does not need to be processed as commission goods.<details><summary><b>Click here for an example!</b></summary><img src=".Commissie%20facturen/media/image-5.png"></details> |
| **3** | There is also a supplier setting in the supplier card under the path **Commission Invoices**. With this setting, you can exclude specific suppliers from being included on the commission invoice, so that only the desired suppliers are included in commission processing.<details><summary><b>Click here for an example!</b></summary><img src=".Commissie%20facturen/media/image.png"></details> |
