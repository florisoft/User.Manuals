<img src="../../fslogo.png">

# Manual Florishop Favourites (M214)

The FloriShop addon favorites gives your customer a way to favorite articles so they can easily find the later. 

This module only works for lots with a commercial article number (CARTNR). For this, batches must have a commercial feature group that you can set up per article or article group.

**Why commercial feature groups?** *With this functionality, a customer can keep track of his favorites per grower and or length (S1) to distinguish more easily. The shop remembers the favorites per customer also with new sessions.*

**Note:** *when adding a commercial feature group to an item or item group, the CARTNRs will not be calculated retroactively. This means that only new batches in your system will have this calculated.*

## Table of contents

[Creating a commercial feature group](#creating-a-commercial-feature-group)
[Linking commercial feature group to article group](#linking-commercial-feature-group-to-the-article-group)
[Link commercial feature group to article](#link-commercial-feature-group-to-article)  
[Transfer changes to other article groups](#transfer-changes-to-another-article-group)
[Turning on favourites on the florishop](turning-on-favourites-on-the-florishop)]  
[Marking favourites on the Florishop](#marking-favourites-on-the-florishop)


## Creating a commercial feature group

|Step|Explanation|
|:-:|:--|
|**1**|Go to the constants and navigate to the following path: **Articles->Featuregroup commercial parcels**<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image1.png"></details>|
|**2**|Click on the "+" sign to add a feature group.|
|**3**|Fill in the following values: <br>- **Code**: numirical identification code for the feature group.<br>- **Commercial articlenr.** Fill in a recognizable description in the system<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image2.png"></details>|
|**4**|Under **Unique Commerical Artnr.** you can check values to include in the hash. In short, this means that the more values you check here, the more specific the feature group is.<br> <br>For example: Red naomi roses, if I only include the S1 (stem length) in a characteristic group, then every Red naomi with the same stem length will have the same commercial article number (CARTNR)<br> <br>But when ticking grower and S1 in the feature group, only articles with identical article number, stem length and grower have the same CARTNR. This means that when you favorite an article on the webshop, all articles with the same CARTNR will automatically be favoured.|
|**5**|Check the values which you want to connect to the feature group. We suggest to start with S01 and the grower<br> **Pay attention**: *the articlenumber is always on, this is standardized.<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image3.png"></details>|
|**6**|Under the header **Uniqueness commercial parcel**you can change the feature group even further<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image4.png"></details>|
|**7**|Press the **OK** button to save|

## Linking commercial feature group to article group

Following the steps to give an article group a featuregroup.

|Step|Explanation|
|:-:|:--|
|**1**|Navigate to the Constants screen:<br> **Articles->Article information->article groups**<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image5.png"></details>|
|**2**|Open the relevant article group and navigate to the folder **Commercial parcel**<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image5.png"></details>|
|**3**|In the dropdown feature group, fill in the relevant feature group<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image5.png"></details>|
|**4**|However, this does not mean that all articles in this article group now have a commercial article number. Commercial article numbers are only created when a new stock is read in.|


## Link commercial feature group to article

**Note:** *When setting a commercial reference group, you overwrite the set attribute group of the corresponding article group for this article.*

|Step|Explanation|
|:-:|:--|
|**1**|Navigate in the constants to" <br>**Articles-> article information-> article codes** <details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image6.png"></details>|
|**2**|Open a article code value and navigate to the tab: <br> **Commercial parcel**<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image6.png"></details>|
|**3**|In the dropdown field **Feature group** fill in the connected feature group. <details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image6.png"></details>|
|**4**|This does not mean that all articles that fall under this reference group automatically receive a CARTNR. This is only when reloading the items in stock|

**It is not possible to put these changes over to other article codes**

## Transfer changes to other article groups
|Step|Explanation|
|:-:|:--|
|**1**|WHen altering a feature group in an article group, you can use the button **Changes to**<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image7.png"></details>|
|**2**|Now you get to see a list of arcticle groups, make a saelection of the article groups which have the same feature groups|
|**3**|Confirm your selection by pressing the **OK** button<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image8.png"></details>|
|**4**|If everything went correcrlt, you should get an order confirmation <details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image9.png"></details>|


## Turning on favourites on the florishop
|Step|Explanation|
|:-:|:--|
|**1**|To use the favorites module on your webshop, you must also enable it on the webshop. Log in with a webshop management account|
|**2**|Turn on admin(beheer) mode by clicking on the user icon and in the dropdown click on the **Management**<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image10.png"></details>|
|**3**|Next, click on **Configuration** and then on **Webshop settings**<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image11.png"></details>|
|**4**|You are now in the wbshop settings menu, search for the setting **FAVORIETCARTNR**<details><summary><b>Click here for the example</b></summary><img src="Favourites Manual\image12.png"></details>|
|**5**| Turn on this setting



## Marking Favourites on the Florishop
|Step|Explanation|
|:-:|:--|
|**1**|If the previous steps have been completed correctly, you will not see hearts under the articles on your webshop|
|**2**|When you click a heart on the webshop, this indicates that this is a **Favourite**. Articles with the same CARTNR will be automatically favourited|
|**3**|If you click the heart or on the favourite or check the favourite article group, then you can see your favourite articles|
