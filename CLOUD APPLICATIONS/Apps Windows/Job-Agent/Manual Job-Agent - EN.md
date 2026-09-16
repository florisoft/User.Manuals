![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Job-Agent Manual

In this manual, you will learn how to start the Job-Agent from the Florisoft Windows Hub-App.

## Prerequisites

To follow the steps in this manual, you need the following:

- A recent installation of the cloud server.
- The Hub-App must be installed. If it is not yet installed, read [here](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/App%20Hub/Hub-App%20Installation%20EN.md) to learn how to do so.

## Job-Agent

| Step | Explanation |
|:-:|:--|
| **1** | Open the local Windows Hub-App and log in with the assigned Florisoft Hub-App user, or click **Catalogue**.<details><summary><b>Click here for the example image!</b></summary><img src="Media/1.png"></details> |
| **2** | Click the purple arrow button in the bar to start the Job-Agent application. <details><summary><b>Click here for the example image!</b></summary><img src="Media/2.png"></details>|
| **3** | The Job-Agent application will now launch. You will see a login screen. Click the hamburger menu in the top-right corner of the login screen.<details><summary><b>Click here for the example image!</b></summary><img src="Media/3.png"></details>|
| **4** | Check if the correct cloud server URL is entered next to the cloud icon. <details><summary><b>Click here for the example image!</b></summary><img src="Media/4.png"></details>|
| **5** | Ensure that the following settings are enabled:<br><br>- **Handles print jobs locally**<br>- **Login automatically**<br>- **Launch on Windows login** <details><summary><b>Click here for the example image!</b></summary><img src="Media/4.png"></details>|
| **6** | After verifying these settings, click the **Save** button. You will now be prompted to restart the Job-Agent. Click **Yes**.<details><summary><b>Click here for the example image!</b></summary><img src="Media/5.png"></details> |
| **7** | Log in with your personal Job-Agent user. <details><summary><b>Click here for the example image!</b></summary><img src="Media/6.png"></details>|
| **8** | You are now in the **Jobs** screen. Here, you will see the tasks (jobs) that your local Job-Agent retrieves from the cloud server.<details><summary><b>Click here for the example image!</b></summary><img src="Media/7.png"></details>

## Job-Agent as a Windows service

Use the Windows service when print jobs must also be processed while no one is signed in to the computer. Have the installation performed by an administrator with a valid Job-Agent account, using the [installation PowerShell script](Install-JobAgent-WindowsService.ps1).

### Install and verify

1. Start the script. If it is not already running with administrator permissions, confirm the Windows prompt to restart it with elevation.
2. Enter the full path to `Florisoft.JobAgent.Service.exe`, the Cloud.Server URL, the Job-Agent user name, and the password.
3. The script creates the service configuration in the LocalSystem profile and registers `Florisoft.JobAgent.Service` with **Automatic (Delayed Start)**.
4. In **Services**, verify that the service exists, uses the intended executable, and is configured for Automatic (Delayed Start). Start the service or restart the computer.
5. Then open Job-Agent, verify that printers are visible, and submit a test print while no desktop user is signed in.

Keep the installation PowerShell script and the created configuration confidential. The service configuration contains the credentials of the selected Job-Agent account.

### Signing in and out

The Job-Agent user cannot sign out manually while the Windows service is active. Stop the `Florisoft.JobAgent.Service` service to sign the user out. When the service starts again, Job-Agent signs in again with the configured service credentials.

## Printer groups

Printers in Florisoft (and in the apps) are only visible when they fall under a printer group.
System users then need to linked to a printergroups allowing the printers to be seen during daily activities.

*Printers available through the job agent are automatically created in Florisoft, meaning that you don't have to create them yourself.*

|Stap|Uitleg|
|:-:|:--|
|**1**|From the Florisoft navigator open the constants.<details><summary><b>Click here for the example image!</b></summary><img src="Media/PrinterGroup/1.png"></details>|
|**2**|In the constants navigate to :<br>**System→To Print→Printer Group**.<details><summary><b>Click here for the example image!</b></summary><img src="Media/PrinterGroup/EN/2.png"></details>|
|**3**|Using the + icon create a printer group, fill out the **Description** field, this is the name that will be visible in the grid.<details><summary><b>Click here for the example image!</b></summary><img src="Media/PrinterGroup/EN/2.png"></details>|
|**4**|Save the group by clicking on the **Ok** button.|
|**5**|Now navigate to **System→To print→Job agent printer**, open a printer object and configure under which printer group the printer will fall under.<details><summary><b>Click here for the example image!</b></summary><img src="Media/PrinterGroup/EN/2.png"></details>|
|**6**|Repeat the last step for all relevant printers for the newly created printer group.|
