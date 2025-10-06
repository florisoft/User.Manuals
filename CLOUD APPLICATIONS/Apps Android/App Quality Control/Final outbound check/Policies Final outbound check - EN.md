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

## Overview of Policies

This chapter provides an overview of policies that specifically apply to Final Outbound Check.  
Each policy explains its function, how it is configured, and what to keep in mind when using it.

> ⚠️ The availability of certain policies may depend on the configuration of your environment. Not all policies are applicable in every situation.

---

### `Overview`
The **policy group** `Overview` contains settings that determine which orders are visible on the **Order Overview** page in the app.

#### `ShowHubs`
Specifies whether orders are grouped by hub in the selection list when choosing an order.

#### `ShowWarningIfIncomplete`
Displays a warning when the inspection is not complete.  
This is useful because it prevents an order or process from being completed without all required checks having been performed.

#### `ScopeDateFilter`
Filters the order overview in the final check based on a specific date.

**Options:**
* Order date  
* Departure date  
* Delivery date  
* Purchase date  

#### `ScopeDateFromDays`
Determines the number of days **before today** that form the start date of the date range for retrieving the pending orders in the order overview.  

- **0 = today**  
- **1 = yesterday**  
- **2 = two days ago**  
- **No negative values** are required (use `2` instead of `-2`).  

#### `ScopeDateToDays`
Determines the number of days **after today** that form the end date of the date range for retrieving the pending orders in the order overview.  

- **0 = today**  
- **1 = tomorrow**  
- **2 = the day after tomorrow**  

---

### `Addons`
The **policy group** `Addons` contains settings that determine which add-ons can be used in the app.

#### `EnableAddons`
Allows you to enable additional add-ons that add extra functionality to the app.

**Options:**

* **Photos**  
  Allows adding a photo to an order.  
  Useful for taking a picture of the load carrier to verify later whether a product was actually shipped.

* **ExceptionRegistration**  
  Integrates with the ExceptionRegistration functionality, enabling the registration of defects or discrepancies on an order item.  
  This helps document issues for follow-up and quality control.

---

### `BarcodeDecodeOptions`
Determines which barcode types (for example Trolley barcode, Order item barcode, or FSQR) are recognized during the final check.  
The *decoder* is the piece of information encoded in the barcode layout, allowing the app to know how to read the barcode.

**Usage:**
* Select only the barcode types used in your process for faster and more efficient scanning.
* Multiple types can be selected simultaneously.

---

### `RequireSignature`
Requires the user to provide a digital signature when completing the final check.  
This applies specifically to the CMR document.

**Usage:**
* Without a signature, the order cannot be closed.
* Increases the legal validity and traceability of the process.

---

### `CountingStrategy`
Defines the default method for incrementing the checked quantity during the final check.

**Options:**
* Scan counts the entire item directly.
* Scan counts based on the number of colli.
* Scan counts based on the value embedded in the barcode.

---

### `AllowResetOrderItem`
Specifies whether the count of a specific order line can be reset to zero.

**Usage:**
* Useful for correcting mistakes made during scanning.
* Provides flexibility to recheck individual items.

---

### `AllowResetEntireTarget`
Specifies whether the entire check can be reset at once.

**Usage:**
* Helpful in the event of major errors or when a complete recheck is required.

---

### `AllowCompleteEntireTarget`
Allows an entire order to be completed in one action, even if not all items have been checked individually.

**Usage:**
* Useful for exceptional situations or to speed up processes.

---

### `OrderItemQuantityDisplayType`
Determines how the order quantity is displayed in the app.

**Options:**
* **Colli × content + remainder (default)**  
  Displays the number of colli with their content plus any remaining single stems.

* **Stems**  
  Displays the total number of individual stems.
