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

5. Select the concerning domain in the adjacent dropdown. (no. 3)<br><br>

6. Fill in the correct domain in the User logon name (pre-Windows 2000): field (no. 4)

How to know the correct domain name? This depends on the type of cloud environment. See below for the most common cloud environments that are used in combination with Florisoft:

**Reset:** FPC\
**Reset (private cloud):** FSPC\
**Axxon:** FLORISOFTCLOUD\
**Auton:** FLORICLOUD\
**BMP:** FLORISOFT-CLOUD

7. Fill in the value [username_customercode] in the adjacent field. (no. 5)<br><br>

8. Check the Password never expires tick in the Account options section. (no. 6)<br><br> 

9. Click the Environment tab. (no. 7)<br><br>

![](images/2023-08-03-16-22-52.png)

10. Tick the Start the following program at logon: checkmark. (no. 8)<br><br>

11. Fill in the correct path to the concerning florisoft 2000.exe in the Program file name: field. (no. 9)

>**Pay attention: please add the /U: and /P: parameters after the closing double apostrophe behind florisoft 2000.exe. Give them the Florisoft username and password as values. This ensures that this Windows user is linked to a specific PDA user in Florisoft.**

The default way of working with PDA's in Florisoft is to give them their own client folder. In most cases the client folder for PDA's is called something like FSNETHT, FSNETPDA, or one of those names followed by a serial number like FSNETHT01, FSNETPDA02, etc. (no. 10)

12. Fill in the Start in field (no. 11) the same value as in the Program file name field (no. 9) but remove everyting after Splash\. <br><br>

13. Click the Apply button (no. 12) to confirm the settings.<br><br>

14. Click the OK button (no. 13) to close the users properties window.

Repeat the steps two up and till fourteen for every PDA user which is available on the server.

>**Pay attention: sometimes it is neccesary to add some registry keys to the RDS as well as the domain controller to automaticlly start exe's like Florisoft. This can only be done by experienced IT personel. This only applies from Windows Server 2019 and upwards.**
>
>**Details: https://www.chicagotech.net/WordPress/2022/01/24/remote-desktop-services-starting-program-problem-on-windows-2016-and-2019-server/**

## 3. Skorpio X5
The first device is the Skorpio X5. This PDA has a fysical keyboard available. See the image below for an example.

![](images/2022-06-30-15-14-43.png)

>**Pay attention: the image above can be slightly different then the actual device of the user.**

### 3.1 Setup RDP connection Reset florisoftcloud
Below you will find the steps required for setting up an rdp connection to a Reset server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Open the Remote Desktop Mangager app by tapping its icon on the home screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the + button in the bottom right corner of the app screen. (no. 2)

![](images/2022-07-08-15-35-12.png)

3. Choose the RDP (Microsoft Remote Desktop) option. (no. 3)

![](images/2022-07-08-15-36-21.png)

The screen for adding a new rdp profile appears. See the screenshot below.

4. Fill in a friendly name in the Name field (no. 4) for the rdp profile to be created.<br>

![](images/2023-11-02-13-48-37.png)

5. Scroll down to the LOGON section.<br><br>

6. Fill the Host field with the internal servername of the customers' server. Reset servers often do have a name following the pattern RDS[number]. (no. 5)<br>

![](images/2023-11-02-14-17-24.png)

The internal name of the sever can be found by **right** clikcing the start button and choose the option  System in the context menu.

![](images/2023-11-02-14-09-43.png)

A settings screen opens where you can find the internal name of the server.

![](images/2023-11-02-14-14-55.png)

7. Fill the correct port number (3389) in het the Port field. (no. 6)<br><br>

8. At the Username field enter te username of the concerning PDA. (no. 7)

>**Pay attention: replace the @ character in the username with an underscore (_) character. Do not add a domain behind the username.**

9. Fill in the domain name (fpc for florisoftcloud.com or fspc for private cloud environments) in the Domain field. (no. 8)

![](images/2023-11-02-14-33-46.png)

10. Scoll down further till the password field appears.<br><br>

10. Enter the password for the concerning user in the password field. (no. 9)

![](images/2022-07-21-11-01-54.png)

11. Press the Display section to open those settings. (no. 10)<br><br>

12. Fill at the Custom width field the value 240. (no. 11)

![](images/2022-07-21-11-13-42.png)

13. Fill at the Custom width field the value 360. (no. 12)<br><br>

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

25. Check the Ativate network level authentication NLA (SingleSignOn) tickbox. (no. 23)<br><br>

26. Select the Use these RD Gateway server settings (no. 24) below GATEWAY.<br><br>

27. At the Host field (no. 25) fill the RD gateway host to connect with. In most cases this host name has a format like CUSTOMERCODE.florisoftcloud.com.

![](images/2022-08-04-14-34-13.png)

Scroll further down this screen to see the settings below.

![](images/2022-08-04-15-09-03.png)

28. Press the button CREDENTIALS... (no. 26) The screen below opens.

![](images/2023-11-03-08-42-45.png)

29. Be sure to check the Use custom credentials option. (no. 27)<br><br>

30. Fill the Windows username of the PDA account in the Username field. (no. 28)<br>

**The @-character in the username must be replaced with an underscore character (_)**

31. Fill the internal domain name of the server in the Domain field. (no. 29)<br><br>

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

### 3.2 Connect via RDP to a Reset florisoftcloud server
Below you will find the steps for making an rdp connection to a Reset server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Start the Remote Desktop Manager app from the start screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the three dots behind the name of the concerning rdp profile. (no. 2) A small menu with a few options appears.

![](images/2022-07-28-14-52-54.png)

3. Press the Open option. (no. 3)

![](images/2022-08-04-15-53-52.png)

A rotating indicator appears on the screen while the connection to the server is being esthablished.

![](images/2022-08-04-16-12-52.png)

The next screen is something similar as the screen below.

![](images/2023-11-03-09-24-29.png)

After a few seconds the connection is made. A Windows login screen becomes visible on the PDA. This screen is automaticly followed by the splash (loading) screen of Florisoft. After this, the PDA software appears on the screen.

![](images/2023-11-03-09-28-46.png)

From here you can use a specific PDA application by tapping its icon in one of the four available screens.
    
### 3.3 Setup RDP connection Axxon florisoftcloud
Below you will find the steps required for setting up an rdp connection to an Axxon server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Open the Remote Desktop Mangager app by tapping its icon on the home screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the + button in the bottom right corner of the app screen. (no. 2)

![](images/2022-07-08-15-35-12.png)

3. Choose the RDP (Microsoft Remote Desktop) option. (no. 3)

![](images/2022-07-08-15-36-21.png)

The screen for adding a new rdp profile appears. See the screenshot below.

4. Fill in a friendly name in the Name field (no. 4) for the rdp profile to be created.

![](images/2022-07-08-16-22-46.png)

5. Scroll down to the LOGON section.

![](images/2022-07-21-10-59-02.png)

6. Fill the Host field with the hostname of the server to be connected to. (no. 6)<br><br>

7. Fill the correct port number in het the Port field. (no. 7)<br><br>

8. At the Username field enter te username of the concerning PDA. (no. 8)<br><br>

9. Scoll down further till the password field appears.<br><br>

10. Enter the password for the concerning user in the password field. (no. 9)

![](images/2022-07-21-11-01-54.png)

11. Press the Display section to open those settings. (no. 10)<br><br>

12. Fill at the Custom width field the value 240. (no. 11)

![](images/2022-07-21-11-13-42.png)

13. Fill at the Custom width field the value 360. (no. 12)<br><br>

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

### 3.4 Connect via RDP to an Axxon florisoftcloud server
Below you will find the steps for making an rdp connection to an Axxon server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Start the Remote Desktop Manager app from the start screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the three dots behind the name of the concerning rdp profile. (no. 2) A small menu with a few options appears.

![](images/2022-07-28-14-52-54.png)

3. Press the Open option. (no. 3)

![](images/2022-08-04-16-17-37.png)

A rotating indicator appears on the screen while the connection to the server is being esthablished.

![](images/2022-08-04-16-13-13.png)

After a few seconds the connection is made. A Windows login screen becomes visible on the PDA. This screen is followed by the splash (loading) screen of Florisoft. After this, the PDA software appears on the screen.

![](images/2022-07-28-15-42-22.png)

From here you can use a specific PDA application by tapping its icon in one of the four available screens.

### 3.5 Setup RDP connection BMP florisoftcloud
Below you will find the steps required for setting up an rdp connection to a BMP server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Open the Remote Desktop Mangager app by tapping its icon on the home screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the + button in the bottom right corner of the app screen. (no. 2)

![](images/2022-07-08-15-35-12.png)

3. Choose the RDP (Microsoft Remote Desktop) option. (no. 3)

![](images/2022-07-08-15-36-21.png)

The screen for adding a new rdp profile appears. See the screenshot below.

4. Fill in a friendly name in the Name field (no. 4) for the rdp profile to be created.

![](images/2022-09-23-11-40-47.png)

5. Scroll down to the LOGON section.

![](images/2022-09-23-11-42-41.png)

6. Fill the Host field with the hostname of the server to be connected to. (no. 6)<br><br>

7. Fill the correct port number in het the Port field. (no. 7)<br><br>

8. At the Username field enter te username of the concerning PDA. (no. 8)<br><br>

9. Scoll down further till the password field appears.<br><br>

10. Enter the password for the concerning user in the password field. (no. 9)

![](images/2022-07-21-11-01-54.png)

11. Press the Display section to open those settings. (no. 10)<br><br>

12. Fill at the Custom width field the value 240. (no. 11)

![](images/2022-07-21-11-13-42.png)

13. Fill at the Custom width field the value 360. (no. 12)<br><br>

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

### 3.6 Connect via RDP to a BMP florisoftcloud server
Below you will find the steps for making an rdp connection to an Axxon server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Start the Remote Desktop Manager app from the start screen of the PDA. (no. 1)

![](images/2022-07-08-14-51-11.png)

The Remote Desktop Manager app starts. Please wait a few seconds.

![](images/2022-07-08-15-27-43.png)

The Home screen appears when the app is ready.

2. Press the three dots behind the name of the concerning rdp profile. (no. 2) A small menu with a few options appears.

![](images/2022-07-28-14-52-54.png)

3. Press the Open option. (no. 3)

![](images/2022-08-04-16-17-37.png)

A rotating indicator appears on the screen while the connection to the server is being esthablished.

![](images/2022-08-04-16-13-13.png)

After a few seconds the connection is made. A Windows login screen becomes visible on the PDA. This screen is followed by the splash (loading) screen of Florisoft. After this, the PDA software appears on the screen.

![](images/2022-07-28-15-42-22.png)

From here you can use a specific PDA application by tapping its icon in one of the four available screens.

### 3.7 Configure Datalogic device scanner settings
Beside setting up an rdp connection to a server it is neccesary to configure settings to let the scanner correctly scan different types of barcodes. Follow the steps below to get this done.

>**Pay attention: the screenshots in this section may differ from the ones you see. They differ per device.**

1. Open the Settings app by pressing the icon in the apps screen of the device. (no. 1)

![](images/2023-11-16-14-52-48.png)

2. Scroll downward and press the Datalogic Settings option. (no. 2)

![](images/2023-11-16-14-54-48.png)

3. Press the Scanner Settings option. (no. 3)

![](images/2023-11-16-14-57-06.png)

4. Scroll downward and press the Enable all symbologies option. (no. 4)

![](images/2023-11-16-14-59-05.png)

5. Press OK to confirm activating all symbologies.

**In the screenshot above the Enable all symbologies option is greyed out. This is because the option is already activated earlier.**

6. Press the Symbology settings option in the Scanner Settings screen. (no. 5)

![](images/2023-11-16-15-06-51.png)

7. Activate the Send checksum toggle in the Decoder parameters screen. (no. 6)

![](images/2023-11-16-15-08-39.png)

8. Press the left pointing arrow two times in the bottom left of the screen to return to the Scanner Settings screen. (no. 7)<br><br>

9. Scroll downward and press the Interleaved 2 of 5 option. (no. 8)

![](images/2023-11-16-15-18-26.png)

10. Set the L1 length to 4. Press OK to confirm the setting. (no's 9 and 10)

![](images/2023-11-16-15-20-45.png)

11. Set the L2 length to 40. Press OK to confirm the setting. (no's 11 and 12)

![](images/2023-11-16-15-24-08.png)

12. Press the left pointing arrow two times in the bottom left of the screen to return to the Scanner Settings screen. (no. 13)<br><br>

13. Scroll down to the bottom of the Scanner Settings screen and choose the Commit option to save the settings. (no. 14)

![](images/2023-11-16-15-35-52.png)

14. Press OK to confirm the settings. (no. 15)

![](images/2023-11-16-16-07-20.png)

15. Press the left pointing arrow in the bottom left part of the screen multiple times to return to the start screen of the device. (no. 16)

>**Pay attention: the steps fifteen up and till twentyone are optional and should only be configured when problems with entering occure during the scanning process.**

15. Press the Formatting option in the Scanner Settings screen. (no. 17)

![](images/2023-11-16-16-08-56.png)

14. Choose the Standard Formatting option in the Formatting screen. (no. 18)

![](images/2023-11-16-16-09-55.png)

15. Press the Label suffix option. (no. 19)

![](images/2023-11-16-16-10-33.png)

16. Press the down pointing arrow after the Add special drop down list. (no. 20)

![](images/2023-11-16-16-10-52.png)

17. Choose the [CR] option. (no. 21) The [CR] is added after the existing [LF] value.

![](images/2023-11-16-16-12-23.png)

18. Press OK to confirm the settings. (no. 22)<br><br>

19. Press two times the left pointing arrow to go back to the Scanner Settings screen. (no. 23)<br><br>

20. Scroll downward and press the Commit option in the Scanner Settings screen. (no. 24)

![](images/2023-11-16-16-13-36.png)

21. Press OK to save the settings. (no. 25)

![](images/2023-11-16-16-15-30.png)

22. Press the left pointing arrow in the bottom left part of the screen multiple times to return to the start screen of the device. (no. 26)

The scanner settings are now configured.

## 4. Zebra device
This chapter describes the steps involved for creating an RDP connection on a Zebra device PDA. The explanation below is based on the TC25 model. However, the same steps aply for other models.

![](images/2023-11-06-15-10-31.png)

>**Pay attention: the image above can be slightly different then the actual device of the user.**

**For Zebra devices it is recommended to use Microsoft RD Client as rdp client in combination with a Reset server. For servers from other suppliers Parallels Client is recommended as rdp client because of better user experience.**

### 4.1 Setup RDP connection Reset florisoftcloud
Below you will find the steps required for setting up an rdp connection to a Reset server in the florisoftcloud domain using the RD Client app.

1. Open the RD lient app by tapping its icon on the home screen of the PDA. (no. 1)

![](images/2023-11-08-16-12-04.png)

The first time the app starts you need to accept the terms of usage.
Thereafter the start screen of the app appears:

![](images/2023-11-08-16-16-11.png)

2. Press the + button in the top right corner of the screen to add a new rdp connection. (no. 2)

![](images/2023-11-08-16-18-08.png)

3. Choose the Desktop option. (no. 3)

![](images/2023-11-08-16-21-07.png)

A pop up screen with devices in the same network appears.

![](images/2023-11-08-16-22-08.png)

4. Choose the ADD MANUALLY option. (no. 4)<br>

![](images/2023-11-08-16-28-04.png)

5. Fill in the internal server name of the concerning server in the Server address field. (no. 5)<br>

The internal name of the sever can be found by **right** clikcing the start button and choose the option  System in the context menu.

![](images/2023-11-02-14-09-43.png)

A settings screen opens where you can find the internal name of the server.

![](images/2023-11-02-14-14-55.png)

6. Press the down pointing arrow on the right side of the Username field. (no. 6)
A small windows pops up:

![](images/2023-11-08-16-31-16.png)

7. Choose the Add user account option. (no. 7)

![](images/2023-11-08-16-35-04.png)

8. Fill in the username of the PDA user in the User name field. (no. 8)

>**Pay attenion: replace the @ character in the username with an underscore (_) character.**

9. Fill in the password of the PDA user in the Password field. (no. 9)<br><br>

10. Press the SAVE option in the bottom right corner of the Add user account pop up window. (no. 10)<br><br>

11. Press the down pointing arrow before Show additional options. (no. 11)

![](images/2023-11-09-09-58-50.png)

12. Fill in a friendly name for the rdp connection in the Friendly name field. (no. 12)<br><br>

13. Press the down pointing arrow on the right side of the Gateway field. (no. 13)

![](images/2023-11-09-15-08-41.png)

14. Choose the option Add gateway. (no. 14) The Add gateway screen pops up.<br><br>

15. Fill in the external name of the gateway at the Server name field. (no. 15) This is mostly one of the following two values:

Florisoft private cloud: fpc.florisoftcloud.com
Customer own private cloud: fspc.florisoftcloud.com

![](images/2023-11-09-15-11-26.png)

16. Press the down pointing arrow in the User account field. (no. 16)

![](images/2023-11-09-15-26-48.png)

17. Choose the previously created user in the list. (no. 17) The selected user becomes selected in the User account field.<br><br>

18. Press the SAVE option in the Add gateway pop up screen. (no. 18)

![](images/2023-11-09-15-29-32.png)

19. Press the Customize display resolution option. (no. 19)

![](images/2023-11-09-15-32-17.png)

20. Press the toggle switch on the right side of the Customize display resolution screen to activate the custom resolution options. (no. 20)

![](images/2023-11-09-15-34-54.png)

21. Press the + Custom option to add a custom resolution. (no. 21)

![](images/2023-11-09-15-36-02.png)

22. Press the down pointing arrow on the right side of the Resolution field. (no. 22)

![](images/2023-11-09-15-38-34.png)

23. Choose the 1280 x 768 option. (no. 23)<br><br>

24. Set the Scaling slider on the value of 300 %. (no. 24)

![](images/2023-11-09-15-40-31.png)

25. Press the SAVE option to save the settings. (no. 25)

![](images/2023-11-09-15-42-17.png)

26. Press the left pointing arrow in the top left of the screen to navigate back to the previous screen. (no. 26)<br><br>

27. Press the SAVE option in the upper right corner of the Add desktop screen. (no. 27)

![](images/2023-11-09-15-44-29.png)

A message like the one below may appear. Press OK to continue. (no. 28)

![](images/2023-11-09-15-46-13.png)

The newly added rdp connection shows up in the Remote Desktop screen. See the screenshot below:

![](images/2023-11-09-15-48-43.png)

### 4.2 Connect via RDP to a Reset florisoftcloud server
Below you will find the steps for making an rdp connection to a Reset server in the florisoftcloud domain using the RD Client app.

1. Start the RD Client app from the start screen of the PDA. (no. 1)

![](images/2023-11-09-16-01-33.png)

2. Press the user to be connected to. (no. 2)

![](images/2023-11-09-16-02-54.png)

The connection is being established. After a few seconds it is possible to see the screen below:

![](images/2023-11-09-16-06-14.png)

3. Check the Never ask again for connections to this PC checkbox. (no. 3)<br><br>

4. Press the CONNECT option to make the actual connection. (no. 4)

![](images/2023-11-09-16-07-21.png)

After a few different screens, Florisoft will start on tab 1:

![](images/2023-11-09-16-09-58.png)

By default RD Client starts the mouse mode to navigate through the remote software. Take the steps below to activate touch mode:

5. Press the hamburger menu at the top of the screen. (no. 5)

![](images/2023-11-09-16-11-53.png)

6. Pres the Touch option on the right side of the screen. (no. 6)

![](images/2023-11-09-16-13-03.png)

The screen returns to to the software. With the first next tap on the screen the mouse pointer disappears and touch mode is activated.

Press the X sign at the top right corner of the screen to sign out the current user and returning back to the RD Client app.

![](images/2023-11-09-16-16-19.png)

![](images/2023-11-09-16-16-42.png)

### 4.3 Setup RDP connection Axxon florisoftcloud
Below you will find the steps required for setting up an rdp connection to an Axxon server in the florisoftcloud domain using the Parallels Client app.

1. Start the Parallels Client (henceforth be known as Client) app by pressing its icon on the home screen of the PDA. (no. 1) The Client app starts.

![](images/2023-11-09-16-24-14.png)

2. Press the + sign in the upper right corner of the Connections screen. (no. 2)

![](images/2023-11-09-16-27-10.png)

3. Press the CREATE RDP CONNECTION INSTEAD option. (no. 3)

![](images/2023-11-09-16-28-03.png)

4. Fill in a friendly name for the connection in the Friendly name field. (no. 4)

![](images/2023-11-09-16-33-13.png)

5. Fill in the external server name for the customers' server in the Server address field. (no. 5)<br><br>

6. Fill in the username of the PDA user in the User name field. (no. 6)<br><br>

7. Fill in the password of the PDA user in the Password field. (no. 7)

Scroll further down to ge the extra settings

8. Press the down pointing arrow on the right side of the Connection option. (no. 8)

![](images/2023-11-09-16-37-47.png)

9. Press the Port option to change its value to the correct rdp port number.

![](images/2023-11-10-08-32-58.png)

**Check the debtor information card in the Florisoft helpdesk to find the correct port number. See the screenshot below for an example.**

![](images/2023-11-09-16-50-37.png)

10. Press the upward pointing arrow on the right side after Connection. (no. 10)

![](images/2023-11-10-09-07-45.png)

11. Press the down pointing arrow on the right side of Advanced. (no. 11)<br><br>

12. Press the Display option. (no. 12)

![](images/2023-11-10-09-15-00.png)

13. Press the Resolution option in the Display screen. (no. 13)

![](images/2023-11-10-09-20-00.png)

14. Press the Custom option in the Resolution screen. (no. 14)

![](images/2023-11-10-09-21-03.png)

15. Choose the option where you can enter custom Width and Height values. (no. 15)

![](images/2023-11-10-09-29-19.png)

16. Fill at the Width field a value of 200 and at Height field a value of 360. (no. 16 and 17)

**The values needed for the Width and Height fields in combination with the Scaling option may vary depending the device used. Often used values are:**

**200 x 360, Scaling 100%**
**220 x 360, Scaling 100%**
**1280 x 768, Scaliing 300%**

17. Press the left pointing arrow in the top left corner of the Custom screen to return to the previous screen. (no. 18)

![](images/2023-11-10-10-21-11.png)

18. Be sure to check if the just entered custom resolution is selected at the Custom part of the Resolution screen. (no. 19)

![](images/2023-11-10-10-26-15.png)

19. Press the left pointing arrow in the top left corner of the Resolution screen to return to the previous screen. (no. 20)

20. Press the left pointing arrow in the top left corner of the Display screen to return to the previous screen. (no. 21)

![](images/2023-11-10-10-27-29.png)

21. Press the SAVE option in the upper right corner of the screen. (no. 22)

![](images/2023-11-10-10-29-10.png)

The new rdp connection becomes visible in the Connections screen:

![](images/2023-11-10-10-32-39.png)

### 4.4 Connect via RDP to an Axxon florisoftcloud server
Below you will find the steps for making an rdp connection to an Axxon server in the florisoftcloud domain using the Parallels Client app.

1. Start the Client app from the start screen of the PDA. (no. 1)

![](images/2023-11-10-10-38-34.png)

2. Press the rdp connection icon in the Connections screen. (no. 2)

![](images/2023-11-10-10-41-06.png)

The rdp connection is being established. After a few seconds Florisoft starts and shows the PDA environment of the application.

### 4.5 Setup RDP connection BMP florisoftcloud
Below you will find the steps required for setting up an rdp connection to a BMP server in the florisoftcloud domain using the Paralells Client app.

1. Open the Parallels Client app by tapping its icon on the home screen of the PDA. (no. 1)

![](images/2023-11-10-11-15-51.png)

2. Press the + sign in the right corner of the Connections screen. (no. 2)

![](images/2023-11-10-11-17-37.png)

3. Press the CREATE RDP CONNECTION INSTEAD option. (no. 3)

![](images/2023-11-10-11-19-58.png)

4. Fill in a friendly name for the new rdp connection in the Friendly name field. (no. 4)

![](images/2023-11-10-11-36-47.png)

5. Fill in the external name of the server in the Server address field. (no. 5)<br><br>

6. Fill in the username of the PDA user in the User name field. (no. 6)<br><br>

7. Fill in the password of the PDA user in the Password field. (no. 7)<br><br>

Scroll further down the screen to see the other settings.

8. Press the down pointing arrow on the right side of the Advanced option. (no. 8)

![](images/2023-11-15-11-58-18.png)

9. Press the Display option. (no. 9)

![](images/2023-11-15-11-59-23.png)

10. Press the Resolution option in the Display screen. (no. 10)

![](images/2023-11-15-11-59-54.png)

11. Press the Custom option in the Resolution screen. (no. 11)

![](images/2023-11-15-12-01-52.png)

12. Choose the Custom option and fill in a width and height. (no's 12 up and till 14)

![](images/2023-11-15-12-05-35.png)

**The values needed for the Width and Height fields in combination with the Scaling option may vary depending the device used. Often used values are:**

**200 x 360, Scaling 100%**
**220 x 360, Scaling 100%**
**1280 x 768, Scaliing 300%**

13. Press the left pointing arrow in the upper left corner of the Custom screen. (no. 15)<br><br>

14. Press the left pointing arrow in the upper left corner of the Resolution screen. (no. 16)

![](images/2023-11-15-12-12-55.png)

15. Press the left pointing arrow in the upper left corner of the Disply screen. (no. 17)

![](images/2023-11-15-12-15-20.png)

16. Press the SAVE option in the upper right corner of the screen. (no. 18)

![](images/2023-11-16-11-53-33.png)

The new connection is added to the Connections screen.

![](images/2023-11-16-11-56-40.png)

### 4.6 Connect via RDP to a BMP florisoftcloud server
Below you will find the steps for making an rdp connection to an Axxon server in the florisoftcloud domain using the Remote Desktop Manager app.

1. Start the Parallels Client app from the start screen of the PDA. (no. 1)

![](images/2023-11-16-12-01-01.png)

The Client app starts. Please wait a few seconds.

The Connections screen appears when the app is ready.

2. Press the icon of the concerning rdp connection in the Connections screen. (no. 2)

![](images/2023-11-16-12-06-02.png)

The rdp connection is being established.

![](images/2023-11-16-12-15-49.png)

After a few seconds Florisoft starts and shows the PDA environment of the application.

From here you can use a specific PDA application by tapping its icon in one of the four available screens.

### 4.7 Configure Zebra device scanner settings
Beside setting up an rdp connection to a server it is neccesary to configure settings to let the scanner correctly scan different types of barcodes. Follow the steps below to get this done.

>**Pay attention: the screenshots in this section may differ from the ones you see. They differ per device.**

1. Press the DataWedge icon on the apps screen. (no. 1)

![](images/2023-11-16-12-54-50.png)

2. Press the Profile0 (default) option in the DataWedge Profiles screen. (no. 2)

![](images/2023-11-16-12-56-24.png)

3. Enable the Profile enabled checkmark. (no. 3)

4. Enable the Enabled checkmark in the Barcode input section. (no. 4)

![](images/2023-11-16-13-01-29.png)

Scroll downwards to see more settings.

5. Enable the Enabled checkmark in the Keystroke output section. (no. 5)

![](images/2023-11-16-13-04-42.png)

Scroll downwards to see more settings.

6. Enable the Remote Wedge checkmark in the IP output section. (no. 6)

![](images/2023-11-16-13-06-53.png)

Scroll back topwards.

7. Press the Basic data formatting option. (no. 7)

![](images/2023-11-16-13-12-49.png)

8. Enable the Enable checkmark in the Keystroke output section. (no. 8)<br><br>

9. Enable the Send data checkmark in the Keystroke output section. (no. 9)

![](images/2023-11-16-13-15-27.png)

Scroll downwards to see more settings.

10. Enable the Send ENTER key checkmark. (no. 10)<br><br>

11. Press the left pointing arrow at the bottom of the screen to go back to the previous screen. (no. 11)

![](images/2023-11-16-13-17-47.png)

>**Pay attention: there are two Basic data formatting options per profile. So the steps seven up and till eleven must be done twice.**

After both Basic data formatting options are configurerd go further with the steps below:

12. Press the Configure scanner settings option in the Barcode input section. (no. 12)

![](images/2023-11-16-13-45-41.png)

13. Press the Decoders option. (no. 13)

![](images/2023-11-16-13-49-17.png)

14. Be sure the following checkmarks are activated in the Decoders screen:

- Aztec
- Codabar
- Code128
- Code39
- Datamatrix
- EAN13
- EAN8
- GS1 DataBar
- GS1 DataBar Expanded
- Interleaved 2of5
- MAIL MARK
- Maxicode
- PDF417
- QRCode
- UPCA
- UPCE0

15. Press the left pointing arrow on the bottom of the screen to go back to the previous screen. (no. 14)

![](images/2023-11-16-14-23-38.png)

16. Press the Decoder params option in the Scanner configuration screen. (no. 15)

![](images/2023-11-16-14-24-55.png)

17. Scroll downward and press the Interleaved 2of5 option in the Decoder params screen. (no. 16)

![](images/2023-11-16-14-26-26.png)

18. Set the Length1 property to 4. Press OK in the bottom right of the screen to confirm the value. (no. 17)

![](images/2023-11-16-14-32-58.png)

19. Set the Length2 property to 50. Press OK in the bottom right of the screen to confirm the value. (no. 18)

![](images/2023-11-16-14-39-08.png)

20. Press the left pointing arrow at the bottom of the screen multiple times untill the startscreen of the device becomes visible. (no. 19)

The scanner settings are now configured.