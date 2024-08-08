<img src="../../fslogo.png">

# Florisoft manual set up Floricode API

In this user manual, you will learn how to link your Floricode API subscription to Florisoft.

## Requirements

To follow the steps below, it is important that you have the following:

- Floricode API subscription
- Floricode API login credentials (username and password)

Follow the steps below:

|Step|Explanation|
|:-:|:--|
|**1**|In your Florisoft navigator, click on maintenance and then on setup system.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/13.jpg"></details>|
|**2**|Then click on the **Advanced** folder and enter the access code.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/13.jpg"></details>|
|**3**|Click in the table and press the **F3** key to search for the required settings:<br><br>**FLORICODECLIENTID**: your Floricode username <Br>**FLORICODECLIENTSECRET**: your Floricode password.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/14.png"></details>|
|**4**|Fill in the settings with the corresponding values.|
|**5**|Close the setup screen.|
|**6**|Then open the timer settings (do this on the TIMER account), by right-clicking on the timer button, and then clicking on *Timer settings*.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/15.png"></details>|
|**7**|Use the search function to search for the timer process:<br>**IMPORTVBNAPI**|
|**8**|Activate this timer process and ensure that it runs on a regular schedule.<details><summary><b>Click here for your example!</b></summary><img src="Media/NL/image-1.png"></details>|
|**9**|Press the **Run Once** button to retrieve the certificates. |
|**13**|**Note**! This only works if an EAN code is entered for the grower; these can then be found in the grower table where the certificates can be found.|
|**14**|Then reopen the system setup from the navigator (**maintenance→setup system**) and go to the **Advanced** folder. Then search for the setting **KWEKEREANVULLENINLEZENEKT** and set it to **True**.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/13.jpg"></details> |
|**15**|Then reopen the constants screen and navigate to the following path:<br>**System→Users→Policy Management**, this opens the policy screen. <br>Read in [this guide](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md) how to create and adjust policies.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/16.png"></details> |
|**16**|Search for the setting **Backoffice_Sales_Stock_GrowerCertificate_StocksToCheck**, with this policy you specify which stocks should have the validity of certificates checked.<details><summary><b>Click here for your example!</b></summary><img src="Media/NL/EN.png"></details>|
|**17**|The setting **Backoffice_Sales_Stock_GrowerCertificate_UsersToMailAfterCheck**, this specifies which Florisoft users should be emailed after a certificate is removed from a batch.<Br><br>**Note!** This does require that an email address is set up for the relevant user.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/17.png"></details>||
|**18**|**Backoffice_Sales_Stock_ValidGrowerCertificate**: Because a grower may have multiple certificates, but only one can be shown in the 'Valid Certificate' column in the stock, this policy allows you to specify a hierarchy for which certificate should be displayed.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/17.png"></details>|
|**19**|Enable the setting **IniSettings_FSSystem_SETUP_ValideerS97Certificaat**.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/18.png"></details>||
|**20**|Ensure that the overarching policy object is linked to the timer user. :warning:<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/19.png"></details>|
|**21**|On the Florisoft timer user, reopen the timer settings (right-click on the timer icon), |
|**22**|Use the search function to search for the timer process **KwekerCertificaatPartijControle**.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/15.png"></details>||
|**23**|Set this timer process to run regularly.<details><summary><b>Click here for your example!</b></summary><img src="Media/EN/20.png"></details>||
|**24**|Certificates can now be found in your system. Open the constants screen and navigate to the following path:<Br>**Organs→Grower Data→Growers**<br><br>Open a grower, and press the **Certificates** button. (bottom right)|
|**25**|Certificates can also be viewed in the stock; open a stock (in the stock screen). Right-click on a stock batch and click on the option **Grower Certificates**.<details><summary><b>Click here for your example!</b></summary><img src="Media/NL/image-2.png"></details>|
|**26**|In these screens, you can see the certificate information including the ID, and when the certificate is valid. This can also be reflected in invoice layouts. <details><summary><b>Click here for your example!</b></summary><img src="Media/NL/image-3.png"></details>|
