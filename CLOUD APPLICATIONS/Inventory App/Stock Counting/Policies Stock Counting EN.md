# Manual – Stock Counting Policies (Inventory App)

This manual helps you configure the **Stock Counting functionality** in the Inventory app.\
Using various policies, you can define how **stock** is counted, displayed, and processed.

> ⚠️ Don't forget to configure the appropriate [authorizations](#-authorizations). Without proper authorizations, certain functions will not be available.

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

> ⚠️ The availability of certain policies depends on how your environment is configured. Not all policies apply in every case.

---

### Customer-configurable policies

These policies are available to all clients and allow the Stock Counting functionality to be tailored to your preferences and workflow.

### `PrintSettings`

This **policy group** defines how stock and price **labels** are printed.

#### Configuration options

- **Printers:**
  - `PriceLabelPrinter`: printer for price labels
  - `StockLabelPrinter`: printer for stock labels

- **Layouts:**
  - `PriceLabelLayout`: layout for price labels
  - `StockLabelLayout`: layout for stock labels

- **Label descriptions in the app:**
  - `PriceLabelPrinterDescription`
  - `StockLabelPrinterDescription`\
    ➞ The description appears in the app to help users identify the correct printer.

> ⚠️ The **JobAgent** must be active for printing to work. If it is not running, no printers will appear and printing is disabled. See the [JobAgent guide](https://github.com/florisoft/User.Manuals/tree/main/CLOUD%20APPLICATIONS/Windows%20Job-Agent%20application) for installation and configuration.

---

### `StockItemDetailSetting`

The **policy group** `StockItemDetailSetting` determines which **parcel** properties are visible and/or editable in the Stock Counting app.

#### `AvailableStockItemDetails`
This policy controls which parcel properties are visible when opening a batch in the app, and the order in which they are shown in the user interface.

For more details on adjusting these settings, refer to the [Policy Management Guide](https://github.com/florisoft/User.Manuals/tree/main/BASIS/Policy%20Management).

#### `AllowEditStockitemDetails`
By default, parcel properties are read-only. This setting lets you configure which visible properties can be edited during counting.

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

## 🔐 Authorizations

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
