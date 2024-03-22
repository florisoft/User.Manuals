<img src="../fslogo.png">

# Florisoft manual CMS Link to External system

It is possible to create a navigatin button with a login link to an external page from your Florishop.

This works by creating a CMS item that links to an external page, the link used contains a usertoken and an initialization vector (UTIV).
The usertoken contains encrypted debtor information, encrypted using the DES algorithm. The UTIV together with a secret key can be used to decrypt the debtor information.
You can manage the secret key via a webshop setting.

*Follow the steps below to configure such a link:*

|Step|Explanation|
|:--|:--|
|**1**|Log into your Florishop and go into management mode and go the Webshop settings.<details><summary><b>Click here for your example image!</b></summary><img src="CMS_Links/4.png"></details>|
|**2**|In the webshop settings, search for the setting **USERTOKENKEY**.<details><summary><b>Click here for your example image!</b></summary><img src="CMS_Links/2.png"></details>|
|**3**|Set the textbox "**Waarde**" to a secret string with the length of eight characters. This needs to be exactly eight characters long, if it is any shorter/longer it won't work.<details><summary><b>Click here for your example image!</b></summary><img src="CMS_Links/3.png"></details>|
|**4**|Authorize the setting change by filling in your administrator password, save the changes.|
|**5**|Go back to the homepage by clicking on the **Home** button.|
|**6**|Go to the link settings under **CMS** → **LINKS**.<details><summary><b>Click here for your example image!</b></summary><img src="CMS_Links/1.png"></details>|
|**7**|Create a new link by clicking on the **+** icon<details><summary><b>Click here for your example image!</b></summary><img src="CMS_Links/5.png"></details>|
|**8**|The following fields need to be filled out:<br>**Link name**: the name of the link item shown in the settings menu.<br>**Link display name**:  the name shown on your Florishop<br>**Link URL**: the link to the website you are linking to.<Br>**Add user token in URL**: enable this setting.<details><summary><b>Click here for your example image!</b></summary><img src="CMS_Links/6.png"></details>|
|**9**|Your new link will now be visible in your Florishop navigation bar to a logged in user.<details><summary><b>Click here for your example image!</b></summary><img src="CMS_Links/7.png"></details>|
|**10**|Clicking on this link will now result in the given URL having the USERTOKEN and UTIV being appended to it as a query string (after the question mark).<details><summary><b>Click here for your example image!</b></summary><img src="CMS_Links/8.png"></details>|

## Decrypting the debtor information

*Follow the steps below to decrypt the information used to log into the external system*:

|Step|Explanation|
|:--|:--|
|**1**|First take both parameters from the resulting URL e.g.:<br>https://www.florisoft.nl/?usertoken=pl4iET_Y7O5DMpgtmeuZxw2&utiv=mj4yORgzTKM1<br><br>**Resulting in:**<br><br>**Usertoken:** pl4iET_Y7O5DMpgtmeuZxw2<br>**UTIV**: mj4yORgzTKM1|
|**2**|Decode both the variables into byte arrays using a Base64 decoder.|
|**3**|Now decode the Usertoken by utilizing the secret string set in the settings and the UTIV decoded earlier.|
