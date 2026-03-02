![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Florisoft Logistics App - Final Outbound Check Manual

This manual describes the use of the **Final Outbound Check** app within the Florisoft Quality Control App. The workflow of the app is aligned with the relevant policies.

> ℹ️ The detailed manual for configuring these policies is available at the following link: [Policies Final Outbound Check EN](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Quality%20Control/Exception%20Registration/Policies%20Exception%20Registration%20EN.md)

**Requirements:**

* Florisoft Quality Control App
* Final Outbound Check license

## Step-by-Step Guide for Final Outbound Check

### Step 1: Log in to the Quality Control App

Open the Quality Control App from the Florisoft Hub-App or via the Quality Control App icon. Log in using your user credentials.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/1.png"></details>
<br>

> ℹ️ If the Quality Control App has not yet been installed, download it via the Florisoft Hub-App. Refer to the installation guide: [Hub-App Installation EN](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/App%20Hub/Hub-App%20Installation%20EN.md)

### Step 2: Select Order

To begin checking an order, first select an open customer order. This can be done in two ways:

#### Option 1: Scan a barcode

Scan the barcode of an order line, for example, a pickorder sticker. The correct barcode setting must be enabled via the policy `BarcodeDecodeOptions`.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/2.png"></details>

> ℹ️  When the `AllowScanningRedistributedBarcodes` policy is enabled, it is possible that multiple results are found during scanning, for example in the case of redistributed items. In that case, a selection screen will automatically appear in which the correct order item must be selected in order to continue the scanning process.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/2A.png"></details>
#### Option 2: Search order via search icon

Use the search icon to display an overview of available customer orders. This overview can be customized according to your preference. The necessary policies for this are located in the `Overview` subfolder of the FinalOutbound policies.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/3.png"></details>

### Step 3: Check Order Lines

After selecting a customer order, the **To check** page will open. This page displays all order lines that still need to be checked. Each order line can be checked by scanning the corresponding barcode. During scanning, the system automatically validates:

* whether the barcode is recognized,
* whether the item belongs to the selected order,
* and whether the line has already been fully checked.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/4.png"></details>
<br>
The way in which a check is handled depends on the setting of the `CountingStrategy` policy. This determines whether the checked number is derived from:

* the quantity in the barcode,
* the number of packages (kolli),
* or the entire ordered quantity.

#### Manual Final Check of Order Lines

If scanning an order line is not possible, the check can also be performed manually.  
This manual check is visually displayed on the screen.  

When an order line is manually checked, this is automatically recorded in the Backoffice for the corresponding order line.  
The field _Handm.FinalChecked_ is then selected, and the manual check is also logged in the parcel log.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/5.png"></details>
<br>
<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/6.png"></details>
<br>

If there is a problem with an order line and the line is configured as an add-on (see relevant policy), an exception can be recorded through exception registration. This will also be visually shown to the user.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/4A.png"></details>
<br>

It is also possible to approve an entire order at once. This functionality depends on the `AllowCompleteEntireTarget` policy.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/6A.png"></details>

### Step 4: Complete the Order

When all lines are checked, the orders will receive the status Checked.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/7.png"></details>
<br>
Various statuses are also updated in the back office—invoices, such as the check mark for the final check, the final scan performed by the seller, and the final check number.

There are also additional options:

* A single order line can be released again for checking via the policy `AllowResetOrderItem`.
* The entire order can be restarted via the policy `AllowResetEntireTarget`.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/8.png"></details>
<br>
By clicking Next, any follow-up steps can be performed, such as taking photos.

<br>
<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/9.png"></details>
<br>
The `ShowWarningIfIncomplete` policy checks whether all parcel have been checked. If not, a warning appears.

<br>
<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/10.png"></details>

## Version Control & Development Phase

> **Last update:** September 29, 2025  
> **Current development phase:** Dev phase 1 (MVP) completed

This manual is based on the current Logistics App and will be periodically updated to reflect new functionality or changes in policies.