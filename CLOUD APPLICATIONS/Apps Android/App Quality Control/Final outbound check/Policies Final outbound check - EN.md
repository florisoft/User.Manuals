![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Final Outbound Check Policies (Quality Control App)

This manual helps you configure the **Final Outbound Check** functionality in the Quality Control App.
With the help of policies, you can define how the final check is carried out, which actions users are allowed to perform, and which data is visible.

---

## Where to find the Final Outbound Check policies

You can configure the Final Outbound Check policies via **Policy Management** in the constants screen of the Backoffice.
Follow the steps below to access them:

| Step  | Explanation                                                                                           |
| ----- | ----------------------------------------------------------------------------------------------------- |
| **1** | Open the **constants screen** in the Backoffice via the navigator.                                    |
| **2** | Navigate to: **System → Users → Policy Management**.                                                  |
| **3** | Select or create a policy, then navigate to: **Apps → Logistics → QualityControl → FinalInspection**. |

For more general information on managing policies, consult the [Policy Management Guide](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

---

## Overview of policies

Below you will find an overview of policies specifically related to Final Outbound Check.
Each policy explains its purpose, how it is configured, and what to keep in mind when using it.

> ⚠️ The availability of certain policies may depend on the configuration of your environment. Not all policies apply in every situation.

---

### `BarcodeDecodeOptions`

**Description:**
Determines which barcode types (e.g., Trolley barcode, Order item barcode, or FSQR) are recognized during final outbound check. The 'decoder' is simply the piece of information placed into the barcode from the layout so the app knows how to interpret it.

**Usage:**

* Select only the barcode types relevant to your process for faster and more efficient scanning.
* Multiple types can be selected simultaneously.

---

### `SignatureRequired`

**Description:**
Requires the user to provide a digital signature when completing the final outbound check. This specifically applies to the CMR document.

**Usage:**

* Without a signature, the order cannot be closed.
* Increases legal validity and traceability of the process.

---

### `FinalInspectionScanMethod`

**Description:**
Defines the default method for incrementing the checked amount during final outbound check.

**Options:**

* Scan counts as a full item.
* Scan counts by kolli amount.
* Scan counts by value in barcode.

---

### `AllowedToResetOrderItem`

**Description:**
Specifies whether the count of a specific order item can be reset to zero.

**Usage:**

* Useful in case of scanning errors.
* Provides flexibility for re-checking individual items.

---

### `AllowedToResetEntireTarget`

**Description:**
Determines whether the entire check can be reset at once.

**Usage:**

* Useful in case of major errors or when performing a full re-check.

---

### `AllowedToCompleteEntireTarget`

**Description:**
Allows the entire order to be completed with one action, even if not all items have been checked individually.

**Usage:**

* Useful in exceptional cases or to speed up processes.

---

### `FinalInspectionDateFilter`

**Description:**
Filters the order overview in final outbound check based on a date.

**Options:**

* Order date
* Departure date
* Delivery date

---

### `ShowHubsInSelectionList`

**Description:**
Determines whether orders are grouped at hub level in the selection list when choosing an order.

---

### `OrderItemQuantityDisplayType`  
Determines how the order quantity is displayed in the app.  

Available options:

* **Colli × content + remainder (default)**  
  Displays the number of colli with their content plus any remaining single stems.

* **Stems**  
  Displays the total number of individual stems.

---