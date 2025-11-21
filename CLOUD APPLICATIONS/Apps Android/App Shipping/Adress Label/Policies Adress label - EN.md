![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Address Label (Shipping App)

This manual helps you configure the **Address Label functionality** in the Shipping App.  
Using policies, you can control how and with which parameters users are allowed to generate and print address labels.

---

## Where to find the Stock Counting policies

Stock Counting policies are configured via **Policy Management** in the Backoffice constants screen.\
Follow the steps below to locate them:

| Step  | Explanation                                                                                                 |
|------|-------------------------------------------------------------------------------------------------------------|
| **1** | Open the **constants screen** in the Backoffice via the navigator.                                         |
| **2** | Navigate to: **System → Users → Policy Management**.                                                       |
| **3** | Select or create a policy, then navigate to: **Apps → Inventory → Stock Counting**.                        |

For more general information on managing policies, consult the [Policy Management Guide](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

---

## Overview of policies

This chapter provides an overview of the policies specifically related to Address Labels.  
Each policy explains its purpose, how it is configured, and what to consider when using it.

> ⚠️ The availability of certain policies may depend on your environment. Not all policies apply in every situation.

---

### `PrinterSetting`

The policy group `PrinterSetting` contains all settings that control the printing behaviour for Address Labels in the Shipping App.

#### `PrinterName`
Specifies which printer is used to print address labels.

#### `ReportName`
Specifies which report (layout/template) is used when printing address labels.

#### `DefaultCopies`
Defines how many copies are printed by default per address label.

#### `Enabled`
Enables or disables the printer settings for Address Labels.

> ℹ️ The **JobAgent** must be active for printing to work. If it is not running, no printers will appear and printing is disabled. See the [JobAgent guide](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Windows/Job-Agent/Manual%20Job-Agent%20-%20EN.md) for installation and configuration.

---

### `BarcodeDecodeOptions`
Determines which barcode types (for example Trolley barcode, Order item barcode, or FSQR) are recognized during the final check.  
The *decoder* is simply the piece of information embedded in the barcode layout, allowing the app to know how to interpret the barcode.

**Usage:**
* Select only the barcode types used in your process for faster and more efficient scanning.  
* Multiple types can be selected simultaneously.

---
