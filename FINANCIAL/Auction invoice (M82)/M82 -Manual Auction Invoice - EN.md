<img src="../../fslogo.png"/>

# Florisoft Manual Auction Invoice (M82)

Welcome to the manual for the module Auction invoice. The module Florisoft .Net Auction Invoice is created to process auction invoices in the system. In this manual the module will be explained and it will be shown how to use the module.

*This module is for both Auction Invoice and Auction connect Invoice.*

## XML-file of the invoice

|Step|Explanation|
|:--|:--|
|**1**|In order to use the module properly, you will need to tell the auction you want to receive the auction invoice in .xml also.
|**2**|Once you have received the .xml file, store it on your computer (don't make it too difficult to find), open Florisoft and right click on History.<details><summary><b>Click here for the example image</b></summary><img src=".Veilingfactuur Manual/media/image2.png" /></details> 
|**3**|Select "Veilingfactuur verwerken" or "Connect factuur inlezen" (based on which you would like to do).
|**4**|Here you will have to select the .xml file from your computer in order for it to be read by Florisoft.<Br>*For both Veilingfactuur and Veiling connect factuur the steps below are the same.*<details><summary><b>Click here for the example image</b></summary><img src=".Veilingfactuur Manual/media/image3.png" /></details>|
|**5**|Here you will have to fill in 2 fields, the invoicenr. and the total goods amount. Usually you will have a paper copy near, if not, the file name of the .xml should be the invoicenr.| 
|**6**|If you have the invoice at hand, on paper or .pdf you should be able to easily find the goods amount on it. In case you don't have this available to you, open the .xml file.<br> In the xml file you'll need to look for two pieces of code: <br><br> 1. Search the file for the following piece of text: Product aankopen. <br>2. On the line we found the piece of text look for </feram:ActualBillingMonetarySummation>, this should be shown twice on this line, in between the two pieces of code the goods amount is shown.<br><br>In this case, the amount is 360,900.<br>And in another example, the amount is 1,700.780. <details><summary><b>Click here for the example image</b></summary><img src=".Veilingfactuur Manual/media/image6.png" /></details>|


Once you've entered the information and it's correct, the following screen will show.

<details><summary><b>Click here for the example image</b></summary><img src=".Veilingfactuur Manual/media/image5.png" /></details>

<br/>

|Step|Explanation|
|:--|:--|
|**7**| On the left you will find the status of the different rows. Here you can identify what Florisoft has done with the invoice. Florisoft will also tell you if something has gone wrong, try to solve the issue and try again.
|**8**|If you which to see one of the rows in detail, double click on the desired row.

> :memo: Ofcourse some issues are not in your hands, please contact our support department so we can help you further with your problem.
