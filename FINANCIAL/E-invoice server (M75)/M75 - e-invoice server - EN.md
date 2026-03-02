<img src="../../fslogo.png"/>

# Floriday Manual E-invoice server (M75)

The e-Invoice Server module makes it possible to send information to the customer so that the customer can more easily check the purchase invoice. The e-Invoice Server consists of the following aspects:

- When sending the original invoice to the customer, an eFactuur is also sent in the form of an xml file. This e-Invoice contains the same invoice lines as those on the original invoice. In order to ensure that the data on the eFactuur exactly correspond to the data on the original invoice, the invoice.dbf is used to create the eFactuur. This same file is also used to produce the print, reducing the likelihood of differences. On the original invoice must not be filters in the layout of the invoice, as the e-Invoice  will no longer correspond to the original invoice. 

- When sending an EKT message, a unique EKT will be send per invoice line (the so-called eFactuur barcode) in the field FS+EFACTBARC:

- If the customer makes a purchase via the Florisoft Stock Link, in the answer to that purchase (the purchase response), a unique identification is send with (the so-called eFacture barcode). Field EFactureBarcode

- The e-Invoice barcode can also be printed on the original invoice (efactbarc field in the invoice.dbf). It is recommended that the customers to which an e-invoice is sent, also prints the e-Invoice barcode on the invoice. This makes the checking process easier, especially if, for example, an invoice line is rejected at the Client side.

- Optional: Settings for sending UBL invoices according to EN16931 (the European standard for electronic invoicing) / Peppol (BIS 3.0).

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



### Sending UBL invoices based on EN16931/Peppol (BIS 3.0)

In Florisoft this can be configured. The UBL generator is now based on EN16931/Peppol (BIS 3.0) and can include the required fields such as CustomizationID and ProfileID.
The settings can be found in the constants for the debtor on the tab Invoice → Electronic Invoice.

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen and navigate to the following path:<br>**Community → Debtor data → Debtors**                                                                                                                                                                                                                                                
|**2**|Open a debtor and navigate within the record to the subfolder:<br>**Invoice → Electronic Invoice**                                                                                                                                                                                                                                                   
|**3**|Enable the setting "*When sending Florisoft eInvoice, also include a UBL file.*". Set the UBL attachment type to: *EN16931 EU Invoice*" and set the UBL endpointId type to: "*VAT 9925, CoC 0208 or 0088 EAN/GLN*".<details><summary><b>Click here for the example image</b></summary><img src=".efact server/media/UBLENG.png"></details> |

Peppol expects the XML file to be of type: EN16931 EU Invoice.
With these settings, the following values are included in the XML:

*<cbc:CustomizationID> urn:cen.eu:en16931:2017</cbc:CustomizationID>*  
*<cbc:ProfileID> urn:fdc:peppol.eu:2017:poacc:billing:01:1.0</cbc:ProfileID>* 
<details><summary><b>Click here for the example image</b></summary><img src=".efact server/media/CustomizationID2.png"></details>

Because the UBL endpointId type is set to "VAT 9925, Chamber of Commerce 0208 or 0088 EAN/GLN", the value for the Customer and Supplier in the EndpointID segment can be populated differently and sent with different schemeIds and corresponding values.

By default, the schemeId is 0088 with the value EAN or GLN.
This can now be configured differently using the UBL endpointId type.
For Peppol, set this to: VAT 9925, Chamber of Commerce 0208 or 0088 EAN/GLN.

<summary><b>What happens once this is configured?</b></summary> The VAT number of the debtor is included in this segment in the XML: `<cbc:EndpointID schemeID="9925">987654321</cbc:EndpointID>`.

If the VAT number is empty, the system checks whether the debtor’s Chamber of Commerce number is filled in.
If so, this value is sent with schemeID="0208".

If both the VAT number and Chamber of Commerce number are filled in, the VAT number (with schemeID="9925") is sent first in the EndpointID.
If this is empty, the Chamber of Commerce number is sent with schemeID="0208".

If both are empty, the debtor’s GLN is sent with schemeID="0088".

<details><summary><b>Click here for an example image where both VAT number and Chamber of Commerce number are filled in for the debtor</b></summary><img src=".efact server/media/DEBVAT.png"></details> <details><summary><b>Click here for an example image of what is included in the XML</b></summary><img src=".efact server/media/XML_Voorbeeld.png"></details>
