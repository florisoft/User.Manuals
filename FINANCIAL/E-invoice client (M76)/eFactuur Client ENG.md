<img src="../../fslogo.png"/>

## e-invoice client

With the eFactuur Client module (e-invoice client), it becomes possible to book the purchase history automatically. This was previously a manual process in which the user himself looked up the purchase line for each invoice line and check if it was correct. This process takes a lot of time and is error-prone. Especially with the stock coupling where the supplier could send 8 invoice lines while in the purchase it is only 1 line or the supplier sends 8 invoice line (only depended on when the supplier made and sent his invoice) while in the purchase history it was 2 lines. This was a lengthy process. How the eInvoice Client works, is as followed:

 - In the email received from the supplier, the original invoice(like a .pdf) and an eInvoice is send with (recognisable by the .xml extenstion). In florisoft you use you rightmouse button to clik on History and choose the  "read in eInvoice" option.
<img src=".efact eng/media/picture1.png" />
 
After, a screen wil open where you can choose the XML-file.

<img src=".efact eng/media/picture2.png" />
After choosing the xml, a screen will ask for the invoicenr and the amount of the goods of the original invoice (pdf). This is done to check if the eInvoice matches with the original invoice. If the amount of the goods of the pdf and xml match, you know for sure that there is no extra crate on the original invoice which is not on the eInvoice. After entering the information the invoice lines are looked up and written off (Like the button "Write off" in the purchase history or the subscreen Purchase Elevations).


<img src=".efact eng/media/picture3.png" />
After, the result screen opens where you can see per invoice line if this could be written off or not. It could be the case tthat the entire invoice line could not be found or if it was already written off. Or, if the price or amount does not match. The actions that have to be taken are the same as before with the purchase checking process. For example, when a purchase line cannot be found but you do have an invoice line, it could be that the invoiceline is incorrect and the supplier must be contacted for a credit.

<img src=".eFactuur%20Client%20en%20Server.docx/media/image4.png"/>

The eInvoice read-in result screen also contains the eInvoice barcode which comes back on the original invoice (pdf) so, if theres more information needed form a specific invoice line, this easily can be found on the original invoice.

<img src=".eFactuur%20Client%20en%20Server.docx/media/image5.png"/>

An example of another resultscreen. reading in the same invice twice, also see our tooltip where more information can be found about he specific status. :

<img src=".eFactuur%20Client%20en%20Server.docx/media/image6.png"/>

Further more:
- The eInvoice has an, by Florisoft designed, own filebuild-up. This is seperated from "veilingfactuur" or äuctioninvoice". This is done because the Florisoft eInvoice receives less adjustments. To concluse, the only users of this system are Florisoft users. Besides, it is possible for the file to be backwardscompatible where your system can still read in eInvoices even when they're 1 year old. The eInvoice is easy to read, because it contains less fields. The file size is also smaller because of this. There can be no misunderstandings about the content of the eInvoices, as it is Florisoft's standard. Besides, if needed, the adding of fields can be much faster.

- The pdf invoice and the associated EDI messages are in the same file as this explanaition.

- Without the eInvoice Server module the eInvoice would not be send, the einvoice barcode would be empty and can the option in the debtors not be turned on.

- Without the eInvoice Client module you cannot use the read in option.

*FAQ:*
Could a automated read-in time be made?
This could be made, but you will lose the verification step. When you read in the xml automatically there is no corresponding with the pdf and the pdf would be paid by the accountant. It could be the case that the XML is fine, but here are a lot more flowers in the pdf which you have never received. Someone has to check if the XML and PDF always match, by purely looking if the amounts and prices check out.