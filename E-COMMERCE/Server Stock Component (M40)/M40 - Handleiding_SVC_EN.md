<img src="../../fslogo.png">

# Florisoft Manual Server Stock Component (M40)

Welcome to the manual for the module Server Stock Component. SVC is used to offer your stock to other organisations so they can buy from stock in realtime. This module synchronises your stock between organisations within your own backoffice system.

## Set up 

The first step when installing the SVC, is to determine the stock distribution. This way you can per stock create a seperate debtor to split stock at the receiving party. You can also choose to creat groupings, for example a debtor for all Flowers, Plants and Decorations (or something similar).

*Follow the steps below*:

|Step|Explanation|
|:-:|:--|
|**1**|Open the constants screen and navigate to the path:<br> **Community**→**Debtor data**→**Debtor**.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image5.png"></details>|
|**2**|Then create one or more debtors (by repeating these steps) by clicking on the plus sign, this opens the debtor creation/setup screen. Choose one of the templates listed in the table, if there are no relevant templates learn how to create one **[here](#making-a-debtor-template)**. This is certainly advisable if  you are creating multiple debtors.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image6.png"></details>|
|**3**|Fill out the following base info for the to be created debtor:<br>- **Debtor**: Unique identification code for the debtor.<<br>- **Search**: search code for the fast searching of debtors.<br>- **Company name** the complete debtor (company name).<br>- **Postcode**: debtor's postal code.|
|**4**|Navigate to the following path in the debtor screen:<br>**Internet**→**Webservice**.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image7.png"></details>|
|**5**|Choose the webservice type for your usecase, if the receiving customer is also a Florisoft customer you should make use of the Florisoft Webservice. When you change the webservice type a warning prompt should appear that settings will be changed, click on **yes** if you are sure of your choice..|
|**6**|Navigate to the folder: **Internet→Webservice→Server**.|
|**7**|In the tab '*Server*' the setting '**Endcustomer is recorded as remark and isn't linked to debtor**'. This means that if the customer lets other sub customers buy on the webshop its name as the end customer will be put on the invoice as a comment.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image8.png"></details>|
|**8**|Navigate to the folder **Internet→Internet access** |
|**9**|Change the following settings in this screen:<br>- **This client has access by means of internet**: turn this on.<br>- **This client may retrieve parcels via webservices**: turn this on.   |
|**10**|If you don't make use of a template you'll need to save the debtor and close, and then reopen it.<br><br>If you do make use of a template you can be assured the settings that are set in the next chapter are already set. If you do want to change the accessible stocks you do however need to save close and reopen the debtor.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image9.png"></details>|
|**11**|Click on the button **Accessible stocks**, this opens a new screen where you set the accessible stocks for each debtor. You may do this by using the '**A**','**T**' & '**R**' columns.<br><br>**Important to note**: *The R column means that the stock is read only for this debtor and no purchases can be made on this stock.* .<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image10.png"></details>|
|**12**|The last thing we will need to do is sending the link to the receiving party. This is the standard webshop link suffixed by './service.asmx'. Using this the receiving party can receive the stock.|

### Making a debtor template

|Step|Explanation|
|:-:|:--|
|**1**|Open the constants screen and navigate to the following path: <br> **Community**→**Debtor data**→**Debtors**.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image5.png"></details>|
|**2**|Select a base template voor our new template and click on '**Ok**' button.|
|**3**|This opens the debtor creation/setup screen, change the following settings:<br>- **Debtor**: the best thing is to set this to something obvious like "**TEMP** + 3 (number of the last template + 1).<br>- **Search**: best is to set this to **Template** + 3 (number of last template +1).<br>- **Company name**: Set this to an apt description that explains what the template is meant for like "Internation customer + VAT).<br>- **Postal code**: set this to **Template + number**.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image11.png"></details>|
|**4**|Check the checkbox '*This Debtor is a Template for new ones*' to make this debtor a template.|
|**5**|You can now set your custom settings for the template's usecase. For the purposes of this manual see the previous chapter for what changes need to be made.|
|**6**|When you are done setting customs settings for the template save the template like you would save a normal new debtor. The template should also be displayed in the debtor so that you can always edit it later. |
|**7**|When creating a new debtor by clicking on the plus sign you should now see our newly created template in the template list.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image12.png"></details>|
