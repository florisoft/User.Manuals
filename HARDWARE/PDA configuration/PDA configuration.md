<img src="../../fslogo.png"/>

# Manual PDA configuration

## 1. Introduction

Welcome to the PDA configuration manual. This manual describes the steps neccesary to setup a remote desktop connection (RDP) to a server running Florisoft.

PDA's are widely used in combination with Florisoft for severval purposes like mobile selling, scanning barcodes at an entrance control location, sort/locate products in a warehouse and performing final checks on products to be supplied to customers.

To get this done, a connection between the PDA and the server must be made. In most cases this is done via a remote desktop connection. To get this working serveral settings on the PDA and the server need to be set up correctly.

Those settings depends on the type of device you are using in combination with the server. Below several types of devices are described in combination with several server setups.

After this introduction, the Skorpio X5 is the first device which is described in combination with several server set ups.

Thereafter the same explanation is written out for a Zebra TC25 PDA.

## 2. Setup environment settings
Due to security reasons it is desirable that a PDA user only has access to the Florisoft software. The rest of the server must be restricted so the user has less chance to damage other parts of the server.

To get this done certain settings need to be set on the (domain)user accounts of the PDA users.

1. Log into the environment (server) where the user accounts are defined. In most cases this will be a machine which acts as a domain controller.<br><br>

2. Open the concerning PDA user, eg. PDA01 or HT11 by double clicking on its name. The users' Properties windows open. See the screenshot below:<br><br>

![](images/2023-08-03-15-50-02.png)

3. Navigate to the Account tab. (no. 1)<br><br>

4. Fill in the username in the User logon name: field. (no. 2)<br><br>

5. Select the concerning domain in the adjacent dropdown (no. 3)<br><br>

6. Fill in the correct domain in the User logon name (pre-Windows 2000): field (no. 4)

How to know the correct domain name? This depends on the type of cloud environment. See below for the most common cloud environments that are used in combination with Florisoft:

**Reset:** FPC\
**Reset (private cloud):** FSPC\
**Axxon:** FLORISOFTCLOUD\
**Auton:** FLORICLOUD\
**BMP:** FLORISOFT-CLOUD

7. Fill in the value [username_customercode] in the adjacent field. (no. 5)<br><br>

8. Check the Password never expires tick (no. 6) in the Account options section.<br><br>

9. Click the Environment tab (no. 7)<br><br>

![](images/2023-08-03-16-22-52.png)

10. Tick the Start the following program at logon: checkmark. (no. 8)<br><br>

11. Fill in the correct path to the concerning florisoft 2000.exe in the Program file name: field (no. 9)

>**Pay attention: please add the /U: and /P: parameters after the closing double apostrophe behind florisoft 2000.exe. Give them the Florisoft username and password as values. This ensures that this Windows user is linked to a specific PDA user in Florisoft.**

The default way of working with PDA's in Florisoft is to give them their own client folder. In most cases the client folder for PDA's is called something like FSNETHT, FSNETPDA, or one of those names followed by a serial number like FSNETHT01, FSNETPDA02, etc. (no. 10)

12. Fill in the Start in field (no. 11) the same value as in the Program file name field (no. 9) but remove everyting after Splash\ <br><br>

13. Click the Apply button (no. 12) to confirm the settings.<br><br>

14. Click the OK button (no. 13) to close the users properties window.

Repeat the steps two up and till fourteen for every PDA user which is available on the server.

>**Pay attention: sometimes it is neccesary to add some registry keys to the RDS as well as the domain controller to automaticlly start exe's like Florisoft. This can only be done by experienced IT personel. This only applies from Windows Server 2019 and upwards.**

## 3. Skorpio X5
The first device is the Skorpio X5. This PDA has a fysical keyboard available. See the image below for an example.

![](images/2022-06-30-15-14-43.png)

>**Pay attention: the image above can be slightly different then the actual device of the user.**

### 3.1 Preparing the device
[HIER UITLEG GEVEN OVER DE EERSTE CONFIGURATIE WANNEER DE PDA UIT DE DOOS GEHAALD WORDT.]

### 3.2 Setup RDP connection Reset florisoftcloud
Below you will find the steps required for setting up an rdp connection to a Reset server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Open the Remote Desktop Mangager app by tapping its icon on the home screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the + button in the bottom right corner of the app screen. (no. 2)

![](images/2022-07-08-15-35-12.png)

3. Choose the RDP (Microsoft Remote Desktop) option (no. 3)

![](images/2022-07-08-15-36-21.png)

The screen for adding a new rdp profile appears. See the screenshot below.

4. Fill in a friendly name in the Name field (no. 4) for the rdp profile to be created.<br><br>

5. Scroll down to the LOGON section.<br><br>

![](images/2022-07-28-16-30-44.png)

6. Fill the Host field with the value RDS03 (no. 6)<br><br>

7. Fill the correct port number (3389) in het the Port field (no. 7)<br><br>

8. At the Username field enter te username of the concerning PDA (no. 8)

>**Pay attention: do not add a domain (@[DOMAIN]) behind the username.**

9. Scoll down further till the password field appears.<br><br>

10. Enter the password for the concerning user in the password field (no. 9)

![](images/2022-07-21-11-01-54.png)

11. Press the Display section to open those settings (no. 10)<br><br>

12. Fill at the Custom width field the value 240 (no. 11)

![](images/2022-07-21-11-13-42.png)

13. Fill at the Custom width field the value 360 (no. 12)<br><br>

14. Press the left pointing arrow at the top of the screen to go back to the previous screen. (no. 13)<br><br>

15. Scroll down to the Local Resources section and press on it. (no. 14)

![](images/2022-07-21-11-18-05.png)

16. Scroll down to the bottom of the screen and uncheck the Clipboard checkmark under LOCAL DEVICES AND RESOURCES. (no. 15)

![](images/2022-08-04-13-05-05.png)

17. Press the left pointing arrow at the top of the screen to go back to the previous screen. (no. 16)<br><br>

18. Scroll down to the Experience section and press on it. (no. 17)

![](images/2022-07-21-11-31-33.png)

20. Check the settings profile at the top of the screen. (no. 18) Be sure that the profile is set to Default.

![](images/2022-07-21-11-37-01.png)

21. Be sure that all checkmarks under Allow the following are **unchecked** except the Reconnect if connection is dropped one. (no. 19)<br><br>

22.  Press the left pointing arrow at the top of the screen to go back to the previous screen. (no. 20)<br><br>

23. Press the Connection option (no. 21) to open the concerning settings.

![](images/2022-09-23-09-35-19.png)

24. Check if Default (no. 22) is selected below the sentence If the actual verification does not meet minimum policy requirements.

![](images/2022-08-04-14-45-46.png)

25. Check the Ativate network level authentication NLA (SingleSignOn) tickbox (no. 23)<br><br>

26. Select the Use these RD Gateway server settings (no. 24) below GATEWAY<br><br>

27. At the Host field (no. 25) fill the RD gateway host to connect with. In most cases this host name has a format like CUSTOMERCODE.florisoftcloud.com.

![](images/2022-08-04-14-34-13.png)

Scroll further down this screen to see the settings below.

![](images/2022-08-04-15-09-03.png)

28. Press the button CREDENTIALS... (no. 26) The screen below opens.

![](images/2022-08-04-15-23-50.png)

29. Be sure to check the Use custom credentials option (no. 27)<br><br>

30. Fill the Windows username of the PDA account in the Username field (no. 28)<br><br>

31. Fill FSPC (no. 29) in the Domain field.<br><br>

32. Fill in the concerning password which belongs to the username as entered in step 30 above.<br><br>

33. Press the OK button (no. 31) in the bottom right corner of the screen to save the settings and return to the previous screen.

![](images/2022-08-04-15-30-56.png)

34. Press the left pointing arrow at the top of the screen to go back to the previous screen. (no. 32)<br><br>

35. Press the save icon in the upper right corner of the screen. (no. 33)

![](images/2022-08-04-15-32-49.png)

A small icon of a spinning circle appears when the settings are being saved. This may take a few seconds.

![](images/2022-07-21-16-47-06.png)

The PDA returns to the Home page where all defined rdp connections are visible.

![](images/2022-08-04-15-35-46.png)

### 3.3 Connect via RDP to a Reset florisoftcloud server
Below you will find the steps for making an rdp connection to a Reset server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Start the Remote Desktop Manager app from the start screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the three dots behind the name of the concerning rdp profile (no. 2) A small menu with a few options appears.

![](images/2022-07-28-14-52-54.png)

3. Press the Open option (no. 3)

![](images/2022-08-04-15-53-52.png)

A rotating indicator appears on the screen while the connection to the server is being esthablished.

![](images/2022-08-04-16-12-52.png)

After a few seconds the connection is made. A Windows login screen becomes visible on the PDA.
This screen is followed by the splash (loading) screen of Florisoft. After this, the PDA software appears on the screen.

![](images/2022-07-28-15-42-22.png)

From here you can use a specific PDA application by tapping its icon in one of the four available screens.
    
### 3.4 Setup RDP connection Axxon florisoftcloud
Below you will find the steps required for setting up an rdp connection to a Axxon server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Open the Remote Desktop Mangager app by tapping its icon on the home screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the + button in the bottom right corner of the app screen. (no. 2)

![](images/2022-07-08-15-35-12.png)

3. Choose the RDP (Microsoft Remote Desktop) option (no. 3)

![](images/2022-07-08-15-36-21.png)

The screen for adding a new rdp profile appears. See the screenshot below.

4. Fill in a friendly name in the Name field (no. 4) for the rdp profile to be created.

![](images/2022-07-08-16-22-46.png)

5. Scroll down to the LOGON section.

![](images/2022-07-21-10-59-02.png)

6. Fill the Host field with the hostname of the server to be connected to (no. 6)<br><br>

7. Fill the correct port number in het the Port field (no. 7)<br><br>

8. At the Username field enter te username of the concerning PDA (no. 8)<br><br>

9. Scoll down further till the password field appears.<br><br>

10. Enter the password for the concerning user in the password field (no. 9)

![](images/2022-07-21-11-01-54.png)

11. Press the Display section to open those settings (no. 10)<br><br>

12. Fill at the Custom width field the value 240 (no. 11)

![](images/2022-07-21-11-13-42.png)

13. Fill at the Custom width field the value 360 (no. 12)<br><br>

14. Scoll down further till the password field appears.<br><br>

15. Press the left pointing arrow at the top of the screen to go back to the previous screen. (no. 13)<br><br>

16. Scroll down to the Local Resources section and press on it. (no. 14)

![](images/2022-07-21-11-18-05.png)

17. Scroll down to the bottom of the screen and uncheck the Clipboard checkmark under LOCAL DEVICES AND RESOURCES. (no. 15)

![](images/2022-08-04-13-05-05.png)

18. Press the left pointing arrow at the top of the screen to go back to the previous screen. (no. 16)<br><br>

19. Scroll down to the Experience section and press on it. (no. 17)

![](images/2022-07-21-11-31-33.png)

20. Check the settings profile at the top of the screen. (no. 18) Be sure that the profile is set to Default.

![](images/2022-07-21-11-37-01.png)

21. Be sure that all checkmarks under Allow the following are **unchecked** except the Reconnect if connection is dropped one. (no. 19)<br><br>

22.  Press the left pointing arrow at the top of the screen to go back to the previous screen. (no. 20)<br><br>

23. Press the save icon in the upper right corner of the screen. (no. 21)

![](images/2022-07-21-16-34-05.png)

A small icon of a spinning circle appears when the settings are being saved. This takes a few seconds in total.

![](images/2022-07-21-16-47-06.png)

The PDA returns to the Home page where all defined rdp connections are visible.

![](images/2022-07-21-16-57-43.png)

### 3.5 Connect via RDP to an Axxon florisoftcloud server
Below you will find the steps for making an rdp connection to an Axxon server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Start the Remote Desktop Manager app from the start screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the three dots behind the name of the concerning rdp profile. (no. 2) A small menu with a few options appears.

![](images/2022-07-28-14-52-54.png)

3. Press the Open option (no. 3)

![](images/2022-08-04-16-17-37.png)

A rotating indicator appears on the screen while the connection to the server is being esthablished.

![](images/2022-08-04-16-13-13.png)

After a few seconds the connection is made. A Windows login screen becomes visible on the PDA.
This screen is followed by the splash (loading) screen of Florisoft. After this, the PDA software appears on the screen.

![](images/2022-07-28-15-42-22.png)

From here you can use a specific PDA application by tapping its icon in one of the four available screens.

### 3.6 Setup RDP connection BMP florisoftcloud
Below you will find the steps required for setting up an rdp connection to a BMP server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Open the Remote Desktop Mangager app by tapping its icon on the home screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the + button in the bottom right corner of the app screen. (no. 2)

![](images/2022-07-08-15-35-12.png)

3. Choose the RDP (Microsoft Remote Desktop) option (no. 3)

![](images/2022-07-08-15-36-21.png)

The screen for adding a new rdp profile appears. See the screenshot below.

4. Fill in a friendly name in the Name field (no. 4) for the rdp profile to be created.

![](images/2022-09-23-11-40-47.png)

5. Scroll down to the LOGON section.

![](images/2022-09-23-11-42-41.png)

6. Fill the Host field with the hostname of the server to be connected to (no. 6)<br><br>

7. Fill the correct port number in het the Port field (no. 7)<br><br>

8. At the Username field enter te username of the concerning PDA (no. 8)<br><br>

9. Scoll down further till the password field appears.<br><br>

10. Enter the password for the concerning user in the password field (no. 9)

![](images/2022-07-21-11-01-54.png)

11. Press the Display section to open those settings (no. 10)<br><br>

12. Fill at the Custom width field the value 240 (no. 11)

![](images/2022-07-21-11-13-42.png)

13. Fill at the Custom width field the value 360 (no. 12)<br><br>

14. Scoll down further till the password field appears.<br><br>

15. Press the left pointing arrow at the top of the screen to go back to the previous screen. (no. 13)<br><br>

16. Scroll down to the Local Resources section and press on it. (no. 14)

![](images/2022-07-21-11-18-05.png)

17. Scroll down to the bottom of the screen and uncheck the Clipboard checkmark under LOCAL DEVICES AND RESOURCES. (no. 15)

![](images/2022-08-04-13-05-05.png)

18. Press the left pointing arrow at the top of the screen to go back to the previous screen. (no. 16)<br><br>

19. Scroll down to the Experience section and press on it. (no. 17)

![](images/2022-07-21-11-31-33.png)

20. Check the settings profile at the top of the screen. (no. 18) Be sure that the profile is set to Default.

![](images/2022-09-23-12-39-40.png)

21. Be sure that all checkmarks under Allow the following are **unchecked** except the Reconnect if connection is dropped one. (no. 19)<br><br>

22.  Press the left pointing arrow at the top of the screen to go back to the previous screen. (no. 20)<br><br>

23. Press the save icon in the upper right corner of the screen. (no. 21)

![](images/2022-07-21-16-34-05.png)

A small icon of a spinning circle appears when the settings are being saved. This takes a few seconds in total.

![](images/2022-07-21-16-47-06.png)

The PDA returns to the Home page where all defined rdp connections are visible.

![](images/2022-07-21-16-57-43.png)

### 3.7 Connect via RDP to a BMP florisoftcloud server
Below you will find the steps for making an rdp connection to an Axxon server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Start the Remote Desktop Manager app from the start screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the three dots behind the name of the concerning rdp profile. (no. 2) A small menu with a few options appears.

![](images/2022-07-28-14-52-54.png)

3. Press the Open option (no. 3)

![](images/2022-08-04-16-17-37.png)

A rotating indicator appears on the screen while the connection to the server is being esthablished.

![](images/2022-08-04-16-13-13.png)

After a few seconds the connection is made. A Windows login screen becomes visible on the PDA.
This screen is followed by the splash (loading) screen of Florisoft. After this, the PDA software appears on the screen.

![](images/2022-07-28-15-42-22.png)

From here you can use a specific PDA application by tapping its icon in one of the four available screens.

## 4. Zebra TC56
This chapter describes the steps involved for creating an RDP connection on a Zebra TC56 PDA.