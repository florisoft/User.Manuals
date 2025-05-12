<img src="../../fslogo.png">

# Florisoft Manual Server Stock Component (M40)

Welcome to the manual for the module Server Stock Component.

## Set up 

The first step when installing the SVC, is to determine the stock distribution. This way you can per stock create a seperate debtor to split stock at the receiving party.

*Follow the steps below*:

|Step|Explanation|
|:-:|:--|
|**1**|Open the constants screen and navigate to the path:<br> **Community**→**Debtor data**→**Debtor**.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image5.png"></details>|
|**2**|Then create a debtor (by repeating these steps) by clicking on the plus sign, this opens the debtor creation/setup screen. Choose one of the templates listed in the table, if there are no relevant templates learn how to create one **[here](#making-a-debtor-template)**.<br><br>This is only applicable when you want to create a seperate debtor, otherwise use an existing debtor.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image6.png"></details>|
|**3**|Navigate to the following path in the debtor screen:<br>**Internet**→**Webservice**.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image7.png"></details>|
|**4**|Choose the webservice type for your usecase, if the receiving customer is also a Florisoft customer you should make use of the Florisoft Webservice. When you change the webservice type a warning prompt should appear that settings will be changed, click on **yes** if you are sure of your choice..|
|**5**|Navigate to the folder: **Internet→Webservice→Server**.<br><br>In the tab '*Server*' the setting '**Endcustomer is recorded as remark and isn't linked to debtor**'. This means that if the customer lets other sub customers buy on the webshop its name as the end customer will be put on the invoice as a comment. (The end customer can also be put on the pickorder label)<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image8.png"></details>|
|**6**|Navigate to the folder **Internet→Internet access**<br><br>Change the following settings in this screen:<br>- **This client has access by means of internet**: turn this on.<br>- **This client may retrieve parcels via webservices**: turn this on.|
|**7**|If you don't make use of a template you'll need to save the debtor and close, and then reopen it.<br><br>If you do make use of a template you can be assured the settings that are set in the next chapter are already set. If you do want to change the accessible stocks you do however need to save close and reopen the debtor.<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image9.png"></details>|
|**8**|Click on the button **Accessible stocks**, this opens a new screen where you set the accessible stocks for each debtor. You may do this by using the '**A**','**T**' & '**R**' columns.<br><br>**Important to note**: *The R column means that the stock is read only for this debtor and no purchases can be made on this stock.* .<details><summary><b>Click here for your example image!</b></summary><img src=".Server voorraad component EN/media/image10.png"></details>|
|**9**|The last thing we will need to do is sending the link, userID and password to the receiving party. This is the standard webshop link suffixed by './service.asmx'. Using this the receiving party can receive the stock.|