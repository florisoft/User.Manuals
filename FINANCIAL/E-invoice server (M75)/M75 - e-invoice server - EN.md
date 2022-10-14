<img src="../../fslogo.png"/>

## E-invoice server

The e-Invoice Server module makes it possible to send information to the customer so that the customer can more easily check the purchase invoice. The e-Invoice Server consists of the following aspects:

- When sending the original invoice to the customer, an eFactuur is also sent in the form of an xml file. This e-Invoice contains the same invoice lines as those on the original invoice. In order to ensure that the data on the eFactuur exactly correspond to the data on the original invoice, the invoice.dbf is used to create the eFactuur. This same file is also used to produce the print, reducing the likelihood of differences. On the original invoice must not be filters in the layout of the invoice, as the e-Invoice  will no longer correspond to the original invoice. 

- When sending an EKT message, a unique EKT will be send per invoice line (the so-called eFactuur barcode) in the field FS+EFACTBARC:

- If the customer makes a purchase via the Florisoft Stock Link, in the answer to that purchase (the purchase response), a unique identification is send with (the so-called eFacture barcode). Field EFactureBarcode

- The e-Invoice barcode can also be printed on the original invoice (efactbarc field in the invoice.dbf). It is recommended that the customers to which an e-invoice is sent, also prints the e-Invoice barcode on the invoice. This makes the checking process easier, especially if, for example, an invoice line is rejected at the Client side.

*Settings*
- Make sure the option "Klant ondesteunt Florisoft eFactuur" (Dutch) or "customer supports Florisoft eFactuur" (English) is checked on in the debtors setting to which you want to send eInvoices to. This triggers al aspects of the eInvoice.

- In the customer settings, something has to be entered in the field "Optioneel afwijkende veilingcode in EKT" (Dutch) or "Optional foreign auctioncode in EKT"(English). It is very important that this number is unique to tthat customer. This means that if you give a foreign auctioncode to customer A of 23, you are the only one that sends to the customer 23. No other supplier can send to the same customer 23.

**Attention**

In the constants -> debtors, thi checkmark needs to be turned on:
<img src=".einvoice server/media/picture1.png" />
