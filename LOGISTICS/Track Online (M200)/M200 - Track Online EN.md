<img src="../../fslogo.png">

# Manual Track Online (M200)

This manual concerns the Florisoft module Track Online (formerly known as Avalanche). After reading this manual you will know how to set up the API connection and what packaging and debtors will be sent through the API.

## Setting Up the API Connection

|Step|Explanation|
|:-:|:--|
|**1**|From the Florisoft navigator, click on the **deliver** button (on top of the screen). This opens a context menu in which you will need to click on the option **Export package to Avalanche**.<details><summary><b>Click here for the example image!</b></summary><img src="Media/EN/1.png"></details>|
|**2**|This will open a new window, in this window configure the following fields :<br><br>- In the dropdown menu (#1) select **TrackOnlineAPI**<br>After selecting this two new text input fields will appear at the bottom of the window.<br><br>- **Track Online API Key** : *the api key for the Track Online API*<br>**Track Online API URL** : *URL for the Track Online URL.*<details><summary><b>Click here for the example image!</b></summary><img src="Media/EN/2.png"></details>|
|**3**|Enable the checkbox **Export packages** (#5)|
|**4**|After filling out these fields pressing the **Export** button will cause the found package items to be exported.<details><summary><b>Click here for the example image!</b></summary><img src="Media/EN/2.png"></details>|

## Setting up relevant packages

|Step|Explanation|
|:-:|:--|
|**1**|Open the constants screen and navigate to following path :<br>**Articles→Package Information→packagecodes**<details><summary><b>Click here for the example image!</b></summary><img src="Media/EN/3.png"></details>|
|**2**|Open a package type that you will want to export to Track Online (Avalanche) and go to the **Export** tab. <details><summary><b>Click here for the example image!</b></summary><img src="Media/EN/3.png"></details>|
|**3**|In this tab you will need to fill out the settings under the heading **Avalanche** :<br><br>- **Export to Avalanche** : this will need to be enabled for this package type to be exported to Avalanche.<br>**Exclude FUSTUIT in-quantities from Export** : by enabling this checkbox you will only send the outgoing packaging and **not** the incoming.<br>- **EAN** : here you set the corresponding EAN code for packaging you will want to track. <details><summary><b>Click here for the example image!</b></summary><img src="Media/EN/3.png"></details>|
|**4**|Save the made changes and close the packagecode card. |
|**5**|Repeat steps 2-4 for every package type that needs to be exported, best to write down the configured packages as they need to be created in TrackOnline.|

## Creating the items (packages) in Track Online

*Now that the packages are created in your backoffice they need to be created in your Track Online environment.*
*Without doing this your API requests won't be read in.*

|Step|Explanation|
|:-:|:--|
|**1**|Log into your Track Online environenment [here](https://trackonline.b2clogin.com/trackonline.onmicrosoft.com/b2c_1_signinto/oauth2/v2.0/authorize?client_id=568f4f53-b19c-4b77-8dbd-9fbf4dc94e71&scope=https%3A%2F%2FTrackOnline.onmicrosoft.com%2F48ca3e86-7a55-4381-a079-0471bf9fc98a%2Fapi.access%20openid%20profile%20offline_access&redirect_uri=https%3A%2F%2Fapp.trackonline.com%2Fauthenticating&client-request-id=a68f7b13-5536-4548-964b-8fb5407a8cd8&response_mode=fragment&response_type=code&x-client-SKU=msal.js.browser&x-client-VER=3.6.0&client_info=1&code_challenge=d84oOTpnFjIKtmXm3UPIS5ueblj_CZNAZ6PW2kN6HTU&code_challenge_method=S256&nonce=e0893369-288b-4d72-b744-94daa93791fd&state=eyJpZCI6IjVmMGY0ZmE3LTA0YWEtNDUwOS05MmZjLTRlNDAxZGZjZjg0MyIsIm1ldGEiOnsiaW50ZXJhY3Rpb25UeXBlIjoicmVkaXJlY3QifX0%3D).|
|**2**|Open the **Items** tab (#1).<details><summary><b>Click here for the example image!</b></summary><img src="Media/5.png"></details>|
|**3**|Click on the add button (+)<details><summary><b>Click here for the example image!</b></summary><img src="Media/6.png"></details>|
|**4**|Fill out the following fields with the package code (from your backoffice) :<br>**Name**<br>**Number**<br>**Name short**<details><summary><b>Click here for the example image!</b></summary><img src="Media/7.png"></details>|
|**5**|Click on the **save** button.<details><summary><b>Click here for the example image!</b></summary><img src="Media/7.png"></details>|
|**6**|We can now configure the external numbers, switch to the **External numbers** tab.<details><summary><b>Click here for the example image!</b></summary><img src="Media/8.png"></details>|
|**7**|As an external source select **Florisoft** from the dropdown.<details><summary><b>Click here for the example image!</b></summary><img src="Media/9.png"></details>
|**8**|Now fill out the **external number** field with the backoffice package code.<details><summary><b>Click here for the example image!</b></summary><img src="Media/9.png"></details>|
|**8**|Now click on the save button.<details><summary><b>Click here for the example image!</b></summary><img src="Media/9.png"></details>|
|**9**|Repeat this for the necessary packages (items).|



## Configuring the debtors

|Step|Explanation|
|:-:|:--|
|**1**|In the constants screen navigate you will need to navigate to the following path :<br>**Community→Debtor Data→Debtors**<details><summary><b>Click here for the example image!</b></summary><img src="Media/EN/4.png"></details>|
|**2**|Open a debtor you want to export.|
|**3**|In the debtor card navigate to the folder **Export**<details><summary><b>Click here for the example image!</b></summary><img src="Media/EN/4.png"></details>|
|**4**|In this tab we will want to configure the input fields under the heading **Avalanche Export 1** :<br><br>**Logistic number** : enter the Track online logistic number (Mandatory).<br>**Category** : Track online category ID (Optional)<br>**Data Exported** : Check the checkbox to enabling the debtor to be send to Track Online (Mandatory).<details><summary><b>Click here for the example image!</b></summary><img src="Media/EN/4.png"></details>|
|**5**|Now for the fields under the heading **Avalanche Export 2**: <br><br>**location number** : here you can enter a deviating location number, these should be pre-configured in Track Online (default = 1) (Optional)<br>**Do not export package to avalanche** : disables the export of packages to Track online for said location number.<details><summary><b>Click here for the example image!</b></summary><img src="Media/EN/4.png"></details>|

## System setup (Optional)

Aside from the previous steps configuring the API login and constants data we can also configure which date gets sent to Track Online. We can configure this using the system setting **TrackOnlineDateTransactionNow**, by setting this to True Florisoft will send the current date instead of the InvoiceHeaders invoice date.

|Step|Explanation|
|:-:|:--|
|**1**|In the florisoft navigator go to **Maintenance** → **Setup System**|
|**2**|In the newly opened Window go to the tab **Advanced**|
|**3**|Enter the authorization code.|
|**4**|Search the settings (F3) for the following setting : **TrackOnlineDateTransactionNow**.|
|**5**|Set this to **True** if you want to use the current date instead of the invoice's date|

## Timer process 

In the first chapter of this manual we learned how to manually export packaging to Track Online (by clicking on the export button) however, we can automate this process by utilizing the Timer. To do this you need to enable the timerprocess **Avalanche Export 2 ( same as UI export ->Avalanche)** (EXPORTAVALANCHE2) on the Timer client. 