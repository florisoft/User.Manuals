<img src="../../fslogo.png"/>

# Floriday Manual E-invoice server (M75)

The e-Invoice Server module makes it possible to send information to the customer so that the customer can more easily check the purchase invoice. The e-Invoice Server consists of the following aspects:

- When sending the original invoice to the customer, an eFactuur is also sent in the form of an xml file. This e-Invoice contains the same invoice lines as those on the original invoice. In order to ensure that the data on the eFactuur exactly correspond to the data on the original invoice, the invoice.dbf is used to create the eFactuur. This same file is also used to produce the print, reducing the likelihood of differences. On the original invoice must not be filters in the layout of the invoice, as the e-Invoice  will no longer correspond to the original invoice. 

- When sending an EKT message, a unique EKT will be send per invoice line (the so-called eFactuur barcode) in the field FS+EFACTBARC:

- If the customer makes a purchase via the Florisoft Stock Link, in the answer to that purchase (the purchase response), a unique identification is send with (the so-called eFacture barcode). Field EFactureBarcode

- The e-Invoice barcode can also be printed on the original invoice (efactbarc field in the invoice.dbf). It is recommended that the customers to which an e-invoice is sent, also prints the e-Invoice barcode on the invoice. This makes the checking process easier, especially if, for example, an invoice line is rejected at the Client side.

### Settings
- *Make sure the option "Klant ondesteunt Florisoft eFactuur" (Dutch) or "customer supports Florisoft eFactuur" (English) is checked on in the debtors setting to which you want to send eInvoices to. This triggers al aspects of the eInvoice.* **This is not optional!**

**To do this follow the steps below**:

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen and navigate to the path:<br>**Community→Debtor data→Debtors**|
|**2**|Open a debtor variable, and in the debtor settings navigate to the sub folder:<br>**Invoice→Invoice**<details><summary><b>Click here for your example image</b></summary><img src=".einvoice server/media/picture2.png"></details>|
|**3**|Enable the setting *Customer supports Florisoft eFactuur*", by checking its checkbox.|

- In the debtor settings, something has to be entered in the field "Optioneel afwijkende veilingcode in EKT" (Dutch) or "Optional foreign auctioncode in EKT"(English). It is very important that this number is unique to that debtor. This means that if you give a foreign auctioncode to customer A of 23, you are the only one that sends to the debtor 23. No other supplier can send to the same debtor 23.

**To do this follow the steps below:**

|Step|Explanation|
|:--|:--|
|**1**|Navigate to the debtor card's subfolder called **EKT→EKT**|
|**2**|In the field "*Optional different auction code in EKT*" fill out the debtor's differing auction code.<details><summary><b>Click here for your example image</b></summary><img src=".einvoice server/media/picture3.png"></details>|
