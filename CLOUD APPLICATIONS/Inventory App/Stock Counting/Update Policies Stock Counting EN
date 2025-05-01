# Guide – Stock Counting Policies (Inventory App)

This guide helps you configure the **Stock Counting functionality** in the Inventory app.\
Using various policies, you can define how stock is counted, displayed, and processed.

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

These policies are available to all customers and allow the Stock Counting functionality to be adapted to your specific workflows.

### `PrintSettings`

This **policy group** defines how stock and price labels are printed.

#### Configuration options

- **Printers:**
  - `PriceLabelPrinter`: printer for price labels
  - `StockLabelPrinter`: printer for stock labels

- **Layouts:**
  - `PriceLabelLayout`: layout for price labels
  - `StockLabelLayout`: layout for stock labels

- **App label display:**
  - `PriceLabelPrinterDescription`
  - `StockLabelPrinterDescription`\
    ➞ The entered description is shown in the app interface.

> ⚠️ The **JobAgent** must be active for printing to work. If it is not running, no printers will appear and printing is disabled. See the [JobAgent guide](https://github.com/florisoft/User.Manuals/tree/main/CLOUD%20APPLICATIONS/Windows%20Job-Agent%20application) for setup instructions.

---

### `StockItemDetailSetting`

The **policy group** `StockItemDetailSetting` contains settings that determine which batch properties are visible and/or editable in the Stock Counting app.

#### `AvailableStockItemDetails`
This setting controls which batch properties are visible when opening a batch in the app and the order in which they appear in the user interface.

More information on adjusting these settings is available in the [Policy Management Guide](https://github.com/florisoft/User.Manuals/tree/main/BASIS/Policy%20Management).

#### `AllowEditStockitemDetails`
By default, batch properties are read-only. This setting allows you to define which visible properties are editable during counting.

---

### `StockMutationSettings`

The **policy group** `StockMutationSettings` includes settings for recording and processing stock discrepancies using mutations.

#### `StockCountingCustomerCode`
This policy defines the **debtor number** to which stock discrepancies are assigned during counting. Note: this only works if `StockMutationAsCounting` is also enabled.

#### `StockMutationAsCounting`
Enables the processing of stock discrepancies as stock mutations. When enabled, discrepancies are immediately processed as a mutation for the configured debtor in `StockCountingCustomerCode`.

#### `StockCountingCustomerCodePerStock`
Use this policy to assign stock discrepancies per stock location to a different debtor. See the stock setting 'Stock count debtor'. This overrides `StockCountingCustomerCode`. Note: users must also have this policy enabled (`true`) to adjust the stock setting.

#### `StockCountingXorder`
When a discrepancy is registered, an **xorder** (picking order) is automatically created to process the correction.

#### `StockQuantityMutAlsoStoredStockItem`
Ensures that when stock is mutated, the linked stored stock item is also updated. This only applies if stock is managed with a storage structure.

#### `StockMutationAsCountingFallBack`
This fallback setting applies when `StockMutationAsCounting` is active but cannot be used for a specific mutation. The fallback behavior is then applied.

---

### `AvailableStocks`

This policy controls which stock locations are available for counting.\
Only the selected stocks will be visible and editable in the Stock Counting app.

---

### `SetStockItemType`

Defines which type of batch is scanned and counted in the app.

Available options:

- `VParcel` (combined batch)
- `Parcel` (standard batch)
- `LogPartij` (logistic batch)

The selected option determines how items are recognized during scanning.

---

### `ToPickQuantityDisplay`

Specifies how the remaining pick quantity is displayed next to the stock.

- **Stems**: shows the quantity in stems (standard unit)
- **Colli content**: shows the quantity as 'Number of colli + Content of colli + remainder'

Choose the option that best fits your logistics process.

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
| **5** | Search for code **425**. Select the authorization: **Navigator palmtop/Voorraad opname_425** and set to **All actions allowed**. Confirm with **OK**. |
| **6** | Repeat for other users. You can speed this up using the **Copy authorization** button.                                               |

---

