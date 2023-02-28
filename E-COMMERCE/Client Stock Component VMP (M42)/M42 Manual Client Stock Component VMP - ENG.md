<img src="../../fslogo.png" alt="Florisoft Corporate Logo/Banner">

# Florisoft Manual Client Stock Component (M42)

This manual explains how to create stock connection using debtors by making a seperate stock and supplier. Using these components we can make a stock connection.

## Table of contents

[Creating a stock](#creating-a-stock)  
[Creating a supplier](#create-a-supplier)  
[Creating a stock template](#creating-a-stock-template)

## Creating a stock

*The first steps require you to create a new stock in Florisoft. For the purpose of this manual we are creating a stock connection with a rose grower.*

|Step|Explanation|
|:-:|:--|
|**1**|Create a new stock.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image21.png"></details>|
|**2**|If stock templates exist in your Florisoft application you will be prompted with a template choice for your new stock.<br><br>If you are creating multiple stocks at once and have no existing templates read [this chapter](#creating-a-stock-template) to learn how to create one.|
|**3**|Close the newly opened screen by clicking the **Ok** button. Now confirm the newly made stock variable. After creating (saving) the stock **reopen** it by left clicking twice on its row.|
|**4**|Navigate to the stock's **Authorization** tab.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image22.png"></details>|
|**5**|In this tab you'll find all the Florisoft users (accounts) listed. Since we have just created this stock no one can access it yet.<br><br>We can authorize users by checking the checkmark in the **Authorized** column. An easy way of doing this is by using the spacebar to authorize the user. <br>**Make sure to authorize the account you are working on now otherwise you won't be able to see the stock**.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image22.png"></details>|
|**6**|Now navigate to the "*Carry out*" tab. In this tab you'll need to fill out the following fields:<br>- **Box active**: *enable this checkbox*<br> - **Box dropdown**: *select the entry check applicable to this stock*<br>- **Temporary stock active**: *enable this checkbox*<br>- **Remove zero-stock automatically**: *enable this checkbox*<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image23.png"></details>|
|**7**|Navigate to the stock's **Webshop** tab. |
|**8**|Make sure your settings match the settings shown below:<br>**Only make a sale visible after carrying out the division in the box**: not active/not checked<br>**This stock is available on the webshop**: active/checked<br>**Open hours**: Select the correct open hours for your usecase.<br>**End time**: enable the checkbox<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image24.png"></details>|
|**9**|Click on the "**Accessible debtors**" button, this will open a new window.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image25.png"></details>|
|**10**|In this screen you can grant permissions and once you have granted the permission you want press **Ok** to save. The right side of the accessible debtors window explains the way you can grant permissions.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image26.png"></details>|

*We have just created a stock on which we will create a stock connection*

## Create a supplier

*Follow the steps below to create a supplier that is used to create a stock connection*:

|Step|Explanation|
|:-:|:--|
|**1**|Create a new supplier in Florisoft.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image27.png"></details>|
|**2**|Navigate to the **Web Service** tab.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image29.png"></details>|
|**3**|Activate the setting **Stock-linking**.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image29.png"></details>|
|**4**|We are now able to fill out information about the stock connection:<br>**Type Webservice**: select "*ETrade 0.7*"<br>**URL**: the API URL for requesting the stock<br>**Userid**: user login for API access<br>**Wachtwoord(Dutch for Password):** API account password<br>**Incomming stock**: set this to the newly created stock in which the connection will be read in on.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image29.png"></details>|
|**5**|Open the **Web Service** folder and navigate to its sub folder **Parcel request**.|
|**6**|Enable the checkbox "*Always get full stock instead of modifications*".<br><br>*This only needs to happen once when retrieving the connection for the first time. Afterwards it needs to be disabled*<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image30.png"></details>|
|**7**|Navigate to the **Web Service** sub folder **Parcel reponse**|
|**8**|Change the following settings: <br>**Default article**: *Set this to "Nieuw artikel 000000001"*<br> **Store information in ExPartij(uses a lot of space)**: *enable this checkbox*<br><br>*The last option won't be present when the web service type is not ETrade 0.7*|
|**9**|Press the **Ok** button to save the made changes. Then reopen the supplier by double clicking it with the left mouse button.
|**10**|Navigate to the **Webservice→General** subfolder.
|**11**|Click on the "**Receive Parcels**, note that this may temporarely freeze your Florisoft system. **Do not interact with your system whilst it is reading in the connection.**<br><br>*When the reading in process is completed your screen will be like the screenshot shown below.*<details><summary><b>Click here for the example image!</b></summary><img src=".E-trade client component ENG/media/picture15.png"></details>|
|**12**|Navigate back to the subfolder **Web Service→Parcel request**<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image32.png"></details>|
|**13**|Make sure to disable the checkbox "*Always get full stock instead modifications*".<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image32.png"></details>|
|**14**|We can check if the stocks were read in by going back to Florisoft navigator and opening the Stocks screen, by clicking the "**Stocks**" button.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image33.png"></details>|

## Creating a stock template

*This chapter gives you a short tutorial on how to make a stock template.*

|Step|Explanation|
|:-:|:--|
|**1**|Create a new stock by clicking on the + sign.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image21.png"></details>|
|**2**|Fill out the stock code and description fields, make sure that the description is especially descriptive of what the template is for since it visible as the template description.|
|**3**|Do also check the checkbox "**Template stock**"<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image34.png"></details>|
|**4**|Now set the right settings for your template and save them by clicking the **Ok** button.|
|**5**|When creating a new stock you should now be prompted with a template selection screen that includes the newly created template.<details><summary><b>Click here for your example image!</b></summary><img src=".E-trade client component ENG/media/image35.png"></details>|