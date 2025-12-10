![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Stock Counting Policies (Inventory App)

This manual helps you configure the **Stock Counting functionality** in the Inventory app.\
Using various policies, you can define how **stock** is counted, displayed, and processed.

> ℹ️ Don't forget to configure the appropriate [authorizations](#-authorizations). Without proper authorizations, certain functions will not be available.

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

## Policy Overview

This section provides an overview of policies related to the Stock Counting functionality.\
Each policy explains its purpose, how to configure it, and any important usage notes.

> ℹ️ The availability of certain policies depends on how your environment is configured. Not all policies apply in every case.

---
### Inventory-wide Settings

Some settings apply across the entire Inventory module, regardless of the specific use case.

### `DisplayedStockItemIdentifier`

Determines which type of parcel number is displayed in the app. Only the **last four digits** are shown for clarity and ease of use.

**Available options:**

- `PartijNr`
- `VPartijNr`

---

### `ToPickQuantityDisplay`  
Determines how the quantity to pick is displayed in the app.  

Available options:

* **Colli × content + remainder (default)**  
  Displays the number of colli with their content plus any remaining single stems.

* **Stems**  
  Displays the total number of individual stems.

---

### Customer-configurable policies

These policies are available to all clients and allow the Stock Counting functionality to be tailored to your preferences and workflow.

### `PrintSettings`

This **policy group** defines how stock and price labels are printed.

#### Settings

- **Available printer types:**

  - `AvailablePrinters`: defines which print options are available in the application.
    - Possible values:
      - `PriceLabels`: price labels only
      - `StockLabels`: stock labels only
      - `All`: both options available

- **Printers:**

  - `PriceLabelPrinter`: printer for price labels  
  - `StockLabelPrinter`: printer for stock labels

- **Layouts:**

  - `PriceLabelLayout`: layout for price labels  
  - `StockLabelLayout`: layout for stock labels

- **Description in the app:**
  - `PriceLabelPrinterDescription`
  - `StockLabelPrinterDescription`\
    ➞ The description appears in the app to help users identify the correct printer.

> ℹ️ The **JobAgent** must be active for printing to work. If it is not running, no printers will appear and printing is disabled. See the [JobAgent guide](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Windows/Job-Agent/Manual%20Job-Agent%20-%20EN.md) for installation and configuration.

---

### `StockItemDetailSetting`

The **policy group** `StockItemDetailSetting` determines which **parcel** properties are visible and/or editable in the Stock Counting app.

#### `AvailableStockItemDetails`
This policy controls which parcel properties are visible when opening a batch in the app, and the order in which they are shown in the user interface.

For more details on adjusting these settings, refer to the [Policy Management Guide](https://github.com/florisoft/User.Manuals/tree/main/BASIS/Policy%20Management).

#### `AllowEditStockitemDetails`
By default, parcel properties are read-only. This setting lets you configure which visible properties can be edited during counting.

#### `StockItemQuantityDisplay`  
Determines how the parcel quantity is displayed in the app.  

Available options:

* **Colli × content + remainder (default)**  
  Displays the number of colli with their content plus any remaining single stems.

* **Stems**  
  Displays the total number of individual stems.

#### `AllowManageStockItemPhotos`

This policy determines whether users can **take and save a parcel photo** within the **Stock Item Detail page**.

### What does this policy do?

When this policy is enabled (`True`):

- The user can **only within the Stock Item Detail page** (the screen where parcel details are viewed and edited) take a new photo using the device's camera.
    
- The captured photo is immediately stored as the **ExfotoUrl** of the parcel and replaces an existing photo if present.
    

### Special Notes

- Photos can **only** be taken in the Stock Item Detail page.
    
- Uploading from gallery/files is **not possible** — only direct camera capture is supported.
    
- Visibility depends on **webshop caching** and may take approx. **10 minutes**.
    
- The photo is stored at **parcel level** and, once processed, is used in all modules that display parcel photos.
    

> ℹ️ A more extensive technical explanation is provided in the separate manual [Technical operation – Taking or changing parcel photos](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Inventory/Stock%20Counting/Technical%20operation%20%E2%80%93%20Taking%20or%20changing%20parcel%20photos.md)

---

### `StockMutationSettings`

The **policy group** `StockMutationSettings` includes settings for recording and processing **stock** discrepancies using mutations.

#### `StockCountingCustomerCode`
Use this policy to assign a specific **debtor number** to stock discrepancies found during counting. This only works if `StockMutationAsCounting` is also enabled.

#### `StockMutationAsCounting`
When enabled, stock discrepancies are automatically processed as a **write-off** mutation assigned to the configured debtor in `StockCountingCustomerCode`.

#### `StockCountingCustomerCodePerStock`
Use this policy to assign stock discrepancies per **stock** location to a separate **debtor**. See the stock setting 'Stock count debtor'. This setting overrides `StockCountingCustomerCode`. Users must also have this policy enabled (`true`) to change this setting.

#### `StockCountingXorder`
Automatically creates a **picking order** (xorder) when a stock discrepancy is registered.

#### `StockQuantityMutAlsoStoredStockItem`
Ensures that when **stock** is mutated, the linked **stored parcel** is also updated. Applies only if your environment uses storage-based inventory management.

#### `StockMutationAsCountingFallBack`
Used when `StockMutationAsCounting` is active but cannot be applied to a specific case. The fallback logic is then triggered.

---

### `QualityIssue`

The **policy group** `QualityIssue` contains settings for registering and processing quality issues.

#### Authorization

Determines whether a user is authorized to register a quality issue.

- **Default value:** `False`

- **Description:** When this policy is disabled, the user cannot create or report quality issues via the Inventory app.

#### CustomerCode

This policy allows you to set a specific **customer code** to which quality issues are registered.

- **Default behavior:** If this policy is empty, the value from `StockCountingCustomerCode` is automatically used.

- **Application:** Useful when quality issues need to be recorded separately from regular stock differences.

#### Reasons

Here you can set the possible **reasons** that users can select when registering a quality issue.

- **Required field:** A reason is always required when registering a quality issue.

- **Management:**   The available reasons are managed via:  **Financial → Credit Reason**

 To create a new reason:

1. Click on the plus icon to add a new reason.
    
2. Enter exactly: `Distribution control reason` in Type description.
    
3. Enter a clear reason in Description.
    
    ℹ️ The app does not currently check for translations.

---

### `AvailableStocks`

This policy defines which **stock locations** are available in the app.\
Only selected locations are visible and editable for Stock Counting.

---

### `SetStockItemType`

Defines which type of **parcel** is scanned and counted in the app.

Available options:

- `VParcel` (combined parcel)
- `Parcel` (standard parcel)
- `LogPartij` (logistics parcel)

The selected option determines how items are recognized during scanning.

---

### `ToPickQuantityDisplay`

Controls how the open **pick quantity** is shown next to the current **stock**.

- **Stems**: displays quantity in stems (default unit)
- **Colli content**: displays quantity as: number of **colli** + **content** + remainder

Choose the format that best suits your logistics process.

---

### `PickCheckStocks`  
Determines which stocks are used to adjust the pick-check status of parcels.  

By default this setting is empty, meaning no specific stocks are defined.


## Authorizations

Access to the Stock Counting functionality requires specific authorizations.\
Without these, users cannot open or use the app.

| Step  | Explanation                                                                                                                          |
|-------|--------------------------------------------------------------------------------------------------------------------------------------|
| **1** | Open the **constants screen** via the navigator.                                                                                     |
| **2** | Navigate to **System → Users → System users**.                                                                                       |
| **3** | Open the desired user and click **Authorization**.                                                                                   |
| **4** | Press **F3** to open the search window.                                                                                              |
| **5** | Search for code **425**. Select the authorization: **Navigator palmtop/Stock counting_425** and set to **All actions allowed**. Confirm with **OK**. |
| **6** | Repeat for other users. You can speed this up using the **Copy authorization** button.                                               |

---
