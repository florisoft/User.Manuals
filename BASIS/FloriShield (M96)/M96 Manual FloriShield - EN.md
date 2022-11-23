<img src="../../fslogo.png"/>

# Florishield

## License

to use the florisoft monitor the license for "*~Florishield*" is required. After activation in the license file, a license update has to be done in the client.

## Operation

The FloriShield consists of several parts. The normal Florisoft client where, for example, the Timer is running. If the *FloriShield* license is active and for the logged user it is checked that it is being monitored, then the **FloriShield Client** is started. In addition, a ***FloriShield Client*** is required, this is the part that the Florisoft client checks, corrects and reports.

In the future, a ***FloriShield IT Client*** and ***FloriShield Support Client*** will be added. For example, the ***FloriShield IT Client*** runs with the Florisoft application manager and displays the results and messages of multiple ***FloriShield Clients*** in its network. The ***FloriShield Support Client*** will run at Florisoft Support and will show results and notifications from multiple Florisoft customers.

## Configuration

### Florisoft client

To ensure that a Florisoft client can be monitored, this must be enabled for the logged in user. For this, *FS-2000 FloriShield setting* must be set to **True**.

<img src="florishield.eng\foto15.png">

When this user starts Florisoft, the ***FloriShield service*** is also started and this Florisoft can be controlled by the ***FloriShield Client***

<img src="florishield.eng\foto1.png">

The selected icon indicates that the service is active. Make sure that the "MEER" parameter is also included in the shortcut to start the Florisoft Client.

To start the ***FloriShield Client***, a shortcut must be made to Florisoft 2000.exe with the option /MONITOR MEER

C:\fsnet\Splash\florisoft 2000.exe /MONITOR MEER

When started, you will get the following screen:

<img src="florishield.eng\image16.png">


And in the Constants under System > FloriShield

<img src="florishield.eng\image17.png">

Email: Not working. We work with Telegram. SMS Number: Not working. We work with Telegram
Interval: Time in seconds between 2 checks
ProcessTime: The maximum time a timer process is allowed to last in seconds
Uri: The address of the monitor service in the Florisof Client default is: net.tcp://localhost:8733/Design_Time_Addresses/Florisoft_Monitor_Service/MonitorService/
Password: The password of the timer user who must be logged in
User: Username of the timer user who must be logged in

## Controls

Available controls:
1\. Is Florisoft active? If not, Florisoft is started with the set user and password and the timer is started.
2\. Is the correct user active? If not, a new Floirosft is started with the set user and password and the timer is started.
3\. Is the timer active? If not, the timer is started.
4\. Is there any recent timer activity? A process can take up to as long as set in ProcessTimer. If a process has been running for longer than the set time, a notification will be sent to the set email address. No action is being taken yet.

If all tests are successful, then it will look like this:
<img src="florishield.eng\image19.png">

> Florisoft has been started
> The right user is active
> The Timer is active
> Timer activity is recent

**ATTENTION**

If multiple monitors are to run on the same machine (for example a virtual machine), the port number must be different from each other

<img src="florishield.eng\image18.png">

The number in the red box should be put one higher.

> **ATTENTION**: In the DOTNET version, communication is no longer via TCP but via HTTP
> the Windows user running the Florishield Server must be given permissions to listen to HTTP:
> `netsh http add urlacl url=http://+:8733/Design_Time_Addresses/Florisoft_Monitor_Service/MonitorService/ user=DOMAIN\Username`

## Stopping the FloriShield Client

The FloriShield Client cannot be stopped by clicking on the cross. This is done to prevent someone from accidentally stopping the FloriShield Client. If you click on the cross anyway, the FloriShield Client is minimized to the System tray and continues to check.

<img src="florishield.eng\foto2.png">

The FloriShield Client can be stopped by right clicking on the icon and choosing "Close Florisoft monitor" (This did not work on my system for some odd reason)

<img src="florishield.eng\foto3.png">
After which you have to confirm to stop the FloriShield Client.

The **FloriShield Service** stops automatically when the Florisoft Client is stopped. Stopping the Florisoft Client will take a little longer, because all connections to the **FloriShield Service** must be stopped.

## Notifications

The FloriShield Client sends various messages to Telegram users (See how to configure Telegram). These messages can be set in Florisoft's Constants under 'Financial - Invoice texts'. Texts 26 to 31 are used for sending the various messages. At this moment the translations cannot be entered yet. However, 2 variables can be set in the texts, these are {MACHINE} and {USER} where {MACHINE} is replaced by the computer name on which the Monitor Client runs and {USER} by the Florisoft username that must be active according to the settings.

## Updates

The ***FloriShield Client*** runs along with *scheduled updates*. As soon as a scheduled update is scheduled, the FloriShield Client will also pick it up, just like the Florisoft Client running on the machine in question. At the set time, both the Florisoft Client and the FloriShield Client are closed, with the difference that the FloriShield Client is instructed to restart.

The following screen is displayed:

<img src="florishield.eng\foto4.png">

After the scheduled update has ended, a restart of the ***FloriShield Client*** will take place, which immediately performs the update, as happens with any Florisoft Client. After the update, the ***FloriShield Client*** will restart and it will start Florisoft and the timer as part of the set controls.

## Set-up Telegram

To set up Telegram, you have to go through a number of steps.

### 1. Create Telegram account

In your browser go to: https://web.telegram.org/#/login
Enter the correct country and mobile number here that you want to use to connect your bot. Pleasenot, use an existing numbers, because an SMS with the login code will be sent to it.

<img src="florishield.eng\foto5.png">

After entering the number, click on "next(volgende)". Enter the received authorization code and then your details. You are now in the web version of the Telegram App.

<img src="florishield.eng\foto6.png">

### Create a Telegram bot

Now that you are logged in to Telegram you can create a bot. To do this, start a new conversation with the "BotFather". Enter @botfather in the Search Field and click on the only result.

<img src="florishield.eng\foto7.png">

Now at the bottom, click on "Begin"

<img src="florishield.eng\foto8.png">

You can now start a "conversation" with the BotFather.

<img src="florishield.eng\foto9.png">

Now send the following command": /newbot (including the "/")

You will be asked to name your bot. Enter the desired name.

You will then be asked for the username of your newly created bot. There cannot be apces in it and it must end with "bot", which is not case sensitive and everything can be in front of it, the chosen name must be a unique one in Telegram.

The bot has been created and you will receive the API Token, we need it:

<img src="florishield.eng\foto10.png">

### Log in to your Telegram bot

To log in to the newly created Telegram bot, this must be set in Florisoft.

Go maintenance -> setup system -> Telegram IT Bot


<img src="florishield.eng\foto11.png">

Next, the FloriShield IT Bot must be turned on for 1 user. Only if this Florisoft is online, users can login to the bot to receive messages.

<img src="florishield.eng\image20.png">

Now start the Florisoft with the user with the FloriShield IT Bot turned on.

In Telegram, type your bot's username in the search box and click on the desired result.

<img src="florishield.eng\foto12.png">

At the bottom, click on "Begin"

<img src="florishield.eng\foto13.png">

Now send your username and then your password

<img src="florishield.eng\foto14.png">

You are now logged in to the bot.

**Note!** A known Florisoft username and password must be entered (system user) and the user must not be blocked. 

To unsubscribe, send "/unsubscribe" to the bot and you will be removed from the recipient list.

## 4. Telegram messages from FloriShield

If FloriShield now detects or resolves a problem, the text from the Invoice texts is sent to all registered Telegram users. No additional settings are required for this. As soon as the Telegram Bot API key has been entered and the FloriShield is restarted, the messages are sent.