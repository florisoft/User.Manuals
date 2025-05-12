<img src="../../fslogo.png">

# Florisoft manual Authorization of Server Management API User

In order to fetch data from the Florisoft API you will need an authorized user, in this manual you will learn how to create and authorize a user.

## Creating a user

*These steps may be skipped if you already have an existing user that you plan using for the API*.

|Step|Explanation|
|:--|:--|
|**1**|Open the constants screen and navigate to the following path:<br>**System→Users→System users**<details><summary><b>Click here for an example image!</b></summary><img src="media EN/5.png"></details>|
|**2**|Click on the + icon to create a new user.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/5.png"></details>|
|**3**|Fill out the following fields of your new system user:<br>**1. Userid**: this is the username you will use to log on the API<br>**2. Password**: the password used to log in, make sure this password has some complexity.<br>**3. Name**: this is optional but it makes it easier to recognize this user in your Florisoft system.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/6.png"></details>|
|**4**|Click on the **Ok** button to save the newly created user in your system.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/6.png"></details>|


## Authorizing the user by using the Policy Screen

|Step|Explanation|
|:--|:--|
|**1**|In the constants screen navigate to the following path:<br>**System→Users→Policy management**<details><summary><b>Click here for an example image!</b></summary><img src="media EN/7.png"></details>|
|**2**|When you click on the **Policy management** folder a new screen should appear in the foreground, this is the policy screen.|
|**3**|In this screen click on the **Add** button in the bottom left of your screen.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/8.png"></details>|
|**4**|The screen should now update and display the newly created policy. First let's give this a name that is easily recognizable, this is good practice as it allows us to keep our policy screen organized.<Br><br>You can rename the policy by simply placing your cursor on the temporary name **new policy** clicking on it and then type a fitting name. For the prurposes of this manual we will call the new policy **API Authorization**.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/9.png"></details>|
|**5**|Click on the tab called **Settings** and then click on the item called **Apps**.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/10.png"></details>|
|**6**|Now click on the option **Management**.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/11.png"></details>|
|**7**|Click on the slider button for the setting **App_Management_Access**, we want the slider button to be green (indicating this setting is now be enabled).<details><summary><b>Click here for an example image!</b></summary><img src="media EN/12.png"></details>|
|**8**|Now click on the tab called **Apply**.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/13.png"></details>|
|**9**|Click on the button called **Edit** next to the option **System users**<details><summary><b>Click here for an example image!</b></summary><img src="media EN/14.png"></details>|
|**10**|You should now see a list of all system users present in your system. By checking the checkbox next to their name you will allow them to be used to login to the API.<br>It is best to limit the API authorized user as much as possible, for our purposes we wil only authorize the the user we created earlier in this manual.<br><br>Now that we have authorized the users save the changes by clicking on the **save** button.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/15.png"></details>|
|**11**|Our selected user should now be visible on the policy screen, shown in the example image below.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/16.png"></details>|
|**12**|Click on the **Save** button in the top right of your screen to save the newly created policy to your system.<details><summary><b>Click here for an example image!</b></summary><img src="media EN/17.png"></details>|

**You will now have authorized a system user, this user may now be used to log in to the Florisoft server management API.**
