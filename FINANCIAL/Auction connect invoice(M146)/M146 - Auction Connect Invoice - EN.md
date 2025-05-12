<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Manual Auction Invoice (M146)

The module Florisoft .Net Auction Invoice is created to process auction invoices in the system. In this manual the module will be explained and it will be shown how to use the module.

This module is for both Auction Invoice and Auction connect Invoice.

## Invoice XML-file

*In order to use the module properly, you will need to tell the auction you want to receive the auction invoice in .xml also. To do this follow the steps below.*

|Step|Explanation|
|:-:|:--|
|**1**|In the Florisoft navigator right click on the *History* button.|
|**2**|This opens a option screen, in this screen click on:<br>**Veilingfactuur verwerken**: *auction invoice* <br>**Connect factuur inlezen**: *auction connect invoice*<details><summary><b>Click here for your example image!</b></summary><img src=".Veilingfactuur Manual/media/image2.png"></details>|
|**3**|Regardless of what option what is selected you should be prompted with a file selection windows dialog window. Find and select a .xml file from your PC for it to be read in by the Florisoft application.<details><summary><b>Click here for your example image!</b></summary><img src=".Veilingfactuur Manual/media/image3.png"></details>|
|**4**|After having selected an XML file, you should be prompted with a two field input.<br>**1. Factuurnummer**: *The invoice number (see file name)*<br>**2. Goederenbedrag officiële factuur**: *goods amount (worth)*<br>**3. Fustbedrag controleren:** *Check the xml files package worth.<br>**4. Fustbedrag officiële factuur:** *What the package should be worth* <details><summary><b>Click here for your example image!</b></summary><img src=".Veilingfactuur Manual/media/image6.png"></details> |
|**4.a**|If you can't find the goods amount in a PDF version of the invoice you can open the XML file and search for the goods amount. <br><br>**Use CTRL+F to search for \<feram:ActualBillingMonetarySummation\>, the goods amount will be between this and its closing tag. In this example it is 360.900**<details><summary><b>Click here for your example image!</b></summary><img src=".Veilingfactuur Manual/media/image4.png"></details>|
|**5**|Once you've entered the information and it's correct, the following screen will show.<br><br> If reading in the .xml file produces an error in Florisoft, the application will tell you what went wrong. Try to solve the issue and try reading in the .xml file once more.<details><summary><b>Click here for your example image!</b></summary><img src=".Veilingfactuur Manual/media/image5.png"></details>|
|**6**|If you which to see one of the rows in detail, double click on the desired row.|
