<img src="../../fslogo.png">

# Florisoft Manual Management Timer (M122)

Welcome to the user manual for the use of the management timer module. The management timer module allows you to generate and send management info using datbase queries on set times and or intervals.

The management info is generated using existing database queries that can be maintained in the management screen. The data obtained from the queries can be transformed using a layout and can be send in a .pdf or Excel file format.

This manual is useful when you want to receive management reports at a set interval.

## Creating a management timer info mailer

*Follow the steps listed below to create an automatic management report*:

|Step|Explanation|
|:-:|:--|
|**1**|Open the constants screen using the navigator|
|**2**|Navigate to the following path:<Br>**Timer→Management Info Mailing**<details><summary><b>Click here to open the example image!</b></summary><img src=".Management Info Mailer/media/image6.png"></details>|
|**3**|To create a new management info mailer click on the + icon. <br>If you want to edit an existing one, double click a management info mailer row twice withe the left mouse button. |
|**4**|In the table below you'll find an explanation for each input field on your screen right now.|

*Input field explanation of the fields in the image below*":

<details><summary><b>Click here to open the example image!</b></summary><img src=".Management Info Mailer/media/image7.png"></details>

|Input field|Explanation|
|:--|:--|
|**Active**|Does this management info mailer need to be executed in the timer proces. If this setting is turned off the report will not be sent.|
|**Naam**|The name used for the management info mailer.|
|**Script**|The SQL script used for obtaining the management information. These queries can be maintained in the management screen.|
|**Layout**|The used print layout(report), these  can be found and maintained in: **System→Print**. |
|**Export as**|Choose the format the report is sent in, the following options are available:<Br>1. Microsoft Excel (.xlsx)<br>2. CSV<br>3. PDF<br><br>**Important**: *If you select PDF as the export option a Florisoft report lay-out is required. These layouts are custom and not available at default in your system. Florisoft support can create these reports for you, **you will however be invoiced for this**|
|**E-mails**|Add the management report recipients here. You can add a recipient by entering someone's e-mail address and clicking on add. |
|**Save as file path**|Decides where the exported report is saved on your computer.|
|**File name**|The file name of the exported report.|
|**Planning**|Fill-out the star and end time and date, this decides when the management query is ran and sent. The interval field decides the interval at which the info mailer is ran.|
|**Send 1 time at the end of the month only**|By enabling this setting the management report will only be executed and sent at the end of the month.|
|**Send 1 time at the beginning of the month only**|By enabling this setting the management report will only be executed and sent at the beginning of the month|
|**Do not send an email via the timer if there is no result**|No report is sent when the management query yields no results.|

## Enabling the timer process

*Follow the steps listed below to check if the management report mailer process is enabled on the timer*.

|Step|Explanation|
|:-:|:--|
|**1**|Log in as your timer user and open the Florisoft navigator.|
|**2**|Click on the timer/stopwatch icon with your right mouse button.<details><summary><b>Click here to open the example image!</b></summary><img src=""></details>|
|**3**|This opens a dialog screen, in this screen click on the option '*Timer settings*'.|
|**4**|The timer settings window should now appear. Click once in the table coloumn called '*Timer Setting*' and type the following letters **EM**. You should now be brought to the timer settings starting with EM. A purple checkmark in the active column means the timer process is enabled.|
|**5**|Click on the table row with the timer process "*Email management queries*".|
|**6**|Enable the option '*Activate this script on timer startup*'.|
|**7**|Change the timer process's planning to your needs.<details><summary><b>Click here to open the example image!</b></summary><img src=".Management Info Mailer/media/image9.png"></details>|
|**8**|Restart your timer user.|