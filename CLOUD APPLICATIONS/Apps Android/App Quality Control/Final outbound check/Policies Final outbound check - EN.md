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

### `OrderOverview`
The **policy group** `Overview` contains settings that determine which orders are visible on the **Order Overview** page in the app.

### `OrderOverview_Filters`
The **policy group** `OrderOverview_Filters` contains all settings that determine which orders are visible or hidden on the **Order Overview** page in the app.
#### `OrderNumberFilter`
With this policy you can exclude specific order numbers from the overview in the Final Outbound Check app.  
This is useful when certain orders are not relevant for checking, or when you want to prevent specific orders from being visible or selectable in the order overview.
#### `ScopeDateFilter`
This setting determines which date is used to filter the order overview. The corresponding from and to days (ScopeDateFromDays & ScopeDateToDays) settings apply this filter to the selected date.

**Options:**
* Order date  
* Departure date  
* Delivery date  
* Purchase date  
#### `ScopeDateFromDays`
Determines the number of days **before today** that form the start of the date range for retrieving the pending orders in the order overview.  

- **0 = today**  
- **1 = yesterday**  
- **2 = two days ago**  
- **No negative values** should be entered (use `2` instead of `-2`).  
#### `ScopeDateToDays`
Determines the number of days **after today** that form the end of the date range for retrieving the pending orders in the order overview.  

- **0 = today**  
- **1 = tomorrow**  
- **2 = the day after tomorrow**  

#### `ExcludeOrderNumber`
Excludes specific order numbers from the order overview.

Orders whose order number matches this setting are not shown in the Final Outbound Check app.  
Useful for hiding irrelevant orders.

**Example:**  
By configuring `FUST`, **Fust invoices** with order numbers containing `FUST` are excluded.

#### `FilterStockCodes`
Filters the order overview based on stock codes. Only orders that contain at least one order item with a selected stock code are shown. Within these orders, only the matching order items are visible.

Orders and order lines without a matching stock code are excluded.  
If no stock codes are configured, all orders and order lines are shown.

---
#### `ShowHubs`
Determines whether orders are grouped by hub in the selection list when choosing an order.
#### `ProgressDisplayType`
Defines what is displayed in the progress bar of the order during the final check.

You can choose whether the progress is based on the number of colli or the number of order lines.  
This provides flexibility in how the progress of the order process is visually presented in the app.

**Example:**  
An order consists of **3 order lines** and **7 colli**.

- When the policy is set to **Order lines**, the progress bar shows a total of **3**.  
- When the policy is set to **Colli**, the progress bar shows a total of **7**.

#### `OrderItemQuantityDisplayType`
Determines how the quantity of the order is displayed in the app.  

**Options:**

* **Colli × content + remainder (default)**  
  Displays the number of colli with their content plus any remaining items.

* **Stems**  
  Displays the total number of stems.

#### `StockItemIdDisplayType`
Specifies which product identification is displayed in the app. Only the **last four digits** are shown for clarity and ease of use.

**Options:**
- `PartijNr`
- `VPartijNr`
#### `ScopeGroupedBy`

Determines the grouping logic of orders in the **order overview** screen.

**Options:**
- Customer and order number _(default)_
- Customer only
- Order date
- Delivery date
- Departure date
- Order date

**Behavior**
- When grouping by a **date field**, the order number is replaced by a **date notation**.
- The selected grouping affects how orders are visually grouped and displayed on the screen.
---

### `Addons`
The **policy group** `Addons` contains settings that determine which add-ons can be used in the app.

#### `EnableAddons`
Allows you to enable additional add-ons that add extra functionality to the app.  

**Options:**

* **Photos**  
  Allows adding a photo to an order.  
  This is useful, for example, to take a picture of the load carrier so it can later be verified that a product was indeed shipped.
	> **Please note!**  
      When using this function, photos are stored on the server. This can cause the disk space to fill up. Therefore, make sure that the Timer function **“Clean up Purge tables”** is active and cleans up the photos. You can set this by adding the table **Final check photos** via **Constants → Timer → Clean up tables**.  We recommend a retention period of **90 days**.

* **ExceptionRegistration**  
  Integrates with the ExceptionRegistration functionality, allowing defects or discrepancies on an order item to be registered.  
  This helps document issues for follow-up and quality control.

---

### `BarcodeDecodeOptions`
Defines which barcode types (for example Trolley barcode, Order item barcode, or FSQR) are recognized during the final outbound check.  
The _decoder_ contains the layout information embedded in the barcode, allowing the app to determine how the barcode should be interpreted.

**Usage:**

- Select only the barcode types used in your process for **faster and more efficient scanning**.
    
- Multiple barcode types can be selected **at the same time**.
    

**Option – V batch number (VStockItemIdBarcode):**  
Order items can also be validated using the **V batch number** by enabling the `VStockItemIdBarcode` option.

- The barcode must start with the **`V` prefix**
    
- The total length must be **12 characters**  
    _Example:_ `V00000008186`
    

If a scanned barcode matches **multiple order items**, a **selection screen** is shown so the correct order item can be chosen.

---

### `RequireSignature`
Requires the user to provide a digital signature when completing the final check.  
This applies specifically to the CMR document.

**Usage:**
* Without a signature, the order cannot be closed.  
* Increases the legal validity and traceability of the process.

---

### `CountingStrategy`
Defines how the verified quantity is increased during the final outbound check.

**Options:**

- **Scan counts full item**  
    Each scan counts one full order item.
    
- **Scan counts by package quantity**  
    Each scan counts the configured package quantity.
    
- **Scan counts by barcode value**  
    The quantity is read from the barcode.
    

**Note:**  
If **‘Scan counts by barcode value’** is selected and a barcode type is used **that does not contain a quantity** (see `BarcodeDecodeOptions`), barcode validation is not possible.  
The following message is shown:

> _Counting strategy is set to Barcode value, but the scanned barcode does not contain a quantity. Please check whether the counting rules are configured correctly._

---

### `AllowResetOrderItem`
Determines whether the count of a specific order line can be reset to zero.

**Usage:**
* Useful in case of scanning errors.  
* Provides flexibility to recheck individual items.

---

### `AllowResetEntireTarget`
Determines whether the entire check can be reset at once.

**Usage:**
* Useful for major errors or when performing a complete recheck.

---

### `AllowCompleteEntireTarget`
Allows an entire order to be completed in one action, even if not all items have been individually checked.

**Usage:**
* Useful in exceptional situations or to speed up processes.

---

### `StoreScannedBarcodes`
Determines whether scanned barcodes are stored in the database (table BARCODES).  
When this option is enabled, each barcode is recorded to prevent a product from being registered multiple times.  
This is only recommended if each product has a **unique barcode**.  
If there is no unique value in the barcode, disable the policy to prevent error messages about duplicate scanned barcodes.

**Note – Clean up the BARCODES table**
When `StoreScannedBarcodes` is enabled, the *BARCODES* table will grow over time.  
Use the **Clean Up Tables** function to automatically clear old records:

- Go to: **Constants → Timer → Clean Up Tables**  
- Add the **BARCODES** table  
- Set the retention period to **90 days**  
- Ensure the **Clean Up Tables** timer is enabled

This prevents unnecessary database growth.

---
### `AllowScanningRedistributedBarcodes`
Enables items that have been redistributed via Change Invoice to also be scanned during the Final Outbound Check.  

When redistributing, **FromBarcode** is filled with the original barcode. With this policy, the system accepts both the new barcode and the original barcode (**FromBarcode**), eliminating the need to relabel original stickers.

---
### `ShowWarningIfIncomplete`
Displays a warning when the inspection is not complete.  
This can be helpful as it prevents an order or process from being completed without all required checks having been performed.

---