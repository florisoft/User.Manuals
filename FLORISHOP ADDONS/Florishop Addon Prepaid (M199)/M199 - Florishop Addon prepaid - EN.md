<img src="../../fslogo.png" alt="Corporate Logo">

# Florisoft Manual Prepaid - M199

This document deals with the implementation and operation of PrePaid purchase limits on the Florishop. Please note! Using the PrePaid wallet currently only works when using Buckaroo or Saferpay as the payment provider. Other providers can be added upon request.

The idea of this system is that customers can shop on the web shop only on a prepaid wallet. No purchases can be made below this, and there is also a portion that cannot be spent. A kind of "collateral" or "prepaid minimum credit. One wishes to be able to raise this prepaid credit on the webshop directly, via prepayments. In the back office this is configurable per customer (debtor), and the payments made on the webshop can eventually be shown here. After these have been processed.

## How to configure this in the back office?

*Follow the steps below:*

|Step|Explanation|
|:-:|:--|
|**1**|Configure the debtor as a Pre-Paid customer, we can do this in the constants screen path:<br>**Community→Debtor data→Debtors**<br>Open a debtor and navigate to:<br>**Internet→Koop limiet** (Purchase limit in Dutch)<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/EN/image1.png"></details>|
|**2**|When this setting is enabled you should get a alert prompt if someone tries to manually alter the purchase limit. You should **NOT** change the purchase limit once it has been set in a Pre-paid customer.<br><br>The '*Minimum prepaid credit (base deposit)*' is the base limit that can't be spent. This is deducted directly from the total credit, and does not show up in the purchase limit, but can be shown on the web shop.<br><br>In short enable the setting "*Webshop payment method as 'Pre paid', based on payments*" and an **optional** step is to set a minimum prepaid credit.<br><br>Het totale betaalde bedrag wat nog niet is verwerkt door het systeem (via de webshop), of dit nu een ‘vooruit’ betaling was of niet, wordt in het kooplimiet verwerkt. Dit verwerken gebeurt dan wel direct bij het betalen via de payment gateway op de webshop, dan wel op de Timer PREPAIDTEGOEDBEPALEN.<br><br>Do also make sure to enable the setting "*Purchase limit always active (even when limit is zero*).<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/EN/image2.png"></details>|
|**3**|Open the timer settings screen.<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/EN/image11.png"></details>|
|**4**|Search the timer processes for the setting "PrePaid tegoeden bepalen: you can do this using CTRL + SHIFT + F or by clicking on 'Timer Setting' column and typing in the first 2 letters of the timer process (PR).<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/EN/image12.png"></details> |
|**5**|This timer process is supposed to be turned on when one wishes to use this functionality.When a payment has been made, and the Timer was active, the following behavior can be expected:<br><br>When the customer has made a prepaid payment and the timer function is executed, the purchase limit is raised by this amount minus the base deposit.<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/EN/image13.png"></details> |
|**6**|Payments that have been processed completely (i.e. cancelled against invoices), can be viewed in the open items. Here, in the new column (see example, its descriptions contain the Dutch and English descriptions, only 1 of them will eventually be displayed), the type of webshop payment (provided this was a webshop payment).<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/EN/image6.png"></details>|
|**7**|Finally, in the Florishop settings, turn on the setting below.<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/EN/image7.png"></details>|
|**8**|If it is on and indicated in the debtor to work with a prepaid credit you will be given the option to view and raise your prepaid wallet when clicking on the account name on the Florishop.<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/EN/image8.png"></details>You will find this setting under the Configuration→Webshop Settings, in this screen use the search function to search for 'PAYMENTEXTENSION.' Open the setting and turn it on by checking the value.|
|**9**|When you open this wallet the customer can see what he still has to spend, also you can top up your prepaid credit here, the threshold amount we set in the debtor is also reflected here.<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/EN/image9.png"></details>|
|**10**|When you type in an amount you want to top up your credit with, you will be directed to your payment provider's payment gateway.<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/EN/image10.png"></details>|

Heeft een debiteur een afwijkende betaalmethode (payment provider)?<br>Dan stelt u deze in op debiteur niveau, volg hiervoor de onderstaande stappen.

Does a debtor have a different payment provider? If the payment providers are set correctly it can be configured per debtor. Follow the steps below:

|Step|Explanation|
|:-:|:--|
|**1**|Open Florisoft and go to the constants screen, then navigate to the following path:<br>**Community→Debtor data→Debtors**|<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/image14.png"></details>|
|**2**|Open the concerning debtor.<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/image14.png"></details>|
|**3**|Navigeer in de debiteur naar:<br>**Internet→Webshop 2**<details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/image14.png"></details>|
|**4**|Configure the setting '**Webshop payment type**' and set a diverging payment type. <details><summary><b>Click here for the example image!</b></summary><img src="Pre Paid Kooplimiet/image14.png"></details>|
|**5**| In case the right payment type/provider isn't listed contact Florisoft, to create one for you.|
