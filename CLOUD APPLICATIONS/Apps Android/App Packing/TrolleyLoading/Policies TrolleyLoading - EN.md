![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – TrolleyLoading Policies (Packing App)

This manual describes all policies within the **TrolleyLoading functionality** of the Packing App.

With these settings you determine:

- Which orders are visible
- How trolleys are created and numbered
- Which barcodes are recognized
- How products are placed on trolleys
- Which checks the system performs

The explanation is written from a user perspective:  
**What changes in the app when you set this policy?**

---

## Where can you find the TrolleyLoading policies?

You configure these via:

**Backoffice → System → Users → Policy Management → Apps → Logistics → Packing → TrolleyLoading**

---

# `BarcodeDecodeOptions (Barcode settings)`

Within TrolleyLoading there are three separate settings for barcode recognition.  
Although they work the same technically, each applies to a different part of the app.

With these policies you determine **which barcodes are recognized and processed in that specific screen**.

> ⚠️ If a barcode type is not selected, it will not be recognized in that part of the app.

---

## `OrderOverview_ValidBarcodeDecodeOptions`

Determines which barcodes are recognized in the **order overview**.

This controls which barcodes may be used to:

- Open an order  
- Filter a customer  

Example: a barcode that contains the debtor number or order number.

---

## `TrolleyHandling_ValidBarcodeDecodeOptions`

Determines which barcodes are recognized for **trolley-related actions**.

This defines which barcode is considered a valid **trolley barcode** for:

- Activating an existing trolley  
- Scanning a trolley label  
- Opening a trolley via scan  

---

## `ProductHandling_ValidBarcodeDecodeOptions`

Determines which barcodes are recognized when **building products onto a trolley**.

This includes barcodes for:

- Order items  
- Boxes 

This setting therefore determines which product barcodes may be processed during scanning.

---

# `OrderOverview`

These policies determine which orders are visible in the **order overview** and how users work with them.

## `DateFilterType`

With this policy you determine which date is used to filter the order overview.

The selected date type determines which orders are visible in the app.  
This is important when your logistics process is based on, for example, departure or delivery moments.

**Available options:**

- **Order date**  
- **Departure date**  
- **Order placed date**  
- **Delivery date**  

> ⚠️ Note: This setting works together with `FilterDateFromDays` and `FilterDateToDays`.  
Together these policies determine which orders actually appear in the overview.

## `FilterDateFromDays`

Determines how many days back from today are included in the overview.

- Not set → all orders are shown  
- 0 → only today  
- 1 → today and yesterday  

This limits the list to relevant orders.

## `FilterDateToDays`

Determines how many days ahead are included.

- Not set → all future orders are shown  
- 0 → only today  
- 1 → today and tomorrow  

Together with `FilterDateFromDays` this determines the date range.

## `AllowOrdersWithEmptyDates`
When this policy is enabled, orders without a filled-in date are also shown.

This can be useful when in your process not all date fields are always filled, but orders still need to be built.


## `EnableFilterOnSelectedDate`

Allows users to select a specific date via the calendar.

The app then only shows orders for that selected date.

## `FilterOptions`

With this policy you determine which additional checks are applied to the order overview. This allows you to control which orders are and are not visible to the user.

You can combine one or more options.

**Available options:**

- **OrderHasOrderlines**  
  Only orders with valid order items are shown.  
  Orders without order items remain outside the overview.

- **IsCustomerTrolleyLoading**  
  Only shows orders for customers where the **‘Is trolley loading customer’** checkbox is enabled.  

- **IsDateInValidRange**  
  Only shows orders that fall within the configured date range  
  (based on `DateFilterType`, `FilterDateFromDays` and `FilterDateToDays`).

- **IsCustomerNotStockCustomer**  
  Hides orders for customers configured as **stock debtors**.  
  This prevents internal stock customers from being processed in TrolleyLoading.

- **HasOrderNumber**  
  Orders without an order number are not shown.  


> 💡 Tip: Configure these filters so employees only see orders that may actually be built. This prevents confusion and reduces the chance of incorrect processing.


## `SortingOption`

Determines how orders are sorted by default in the order overview.

**Options:**

- **No sorting** – Default system order.  
- **Debtor number** – Sorts by customer number.  
- **Debtor name** – Sorts alphabetically by customer name.

Choose a sorting that fits your workflow.

## `FilterOrdersByScanAction`

When this policy is enabled, a user can filter the order overview by scanning a barcode. The scanned value (for example a barcode containing the **debtor number**) is automatically placed in the search field. The list is immediately filtered based on that value.

This speeds up opening the correct customer or order.

## `OrderOverview_ValidBarcodeDecodeOptions`

See chapter **BarcodeDecodeOptions (Barcode settings)** for explanation.


## `FilterByDefaultTrolleyLocations`

Only shows orders for customers whose default trolley location (`DEFKARLOC`) matches the configured list.

This is especially useful when working with fixed loading or staging zones.

---

# `TrolleyHandling`

These policies determine how trolleys are created, printed, completed, and managed.

---

## `NewTrolley - Trolley label printer settings`

### `TrolleyPrinterName`

Here you configure which printer is used to print new trolley labels.

### `TrolleyPrintLayout`

Determines which layout is used for the trolley label.

### `IsActive`

Enables or disables automatic printing of a new trolley label.

When disabled, no label is printed when creating a trolley.

---

### `PrintUseOriginalHub`

Determines which hub code is printed on the trolley label.

- **Enabled** → The hub code of the current order is printed.  
- **Disabled** → The hub code of the configured hub packaging debtor is used.

Use this setting when the hub information on the label must match the order.

---

## `TrolleyBarcodeMaxLength`

Determines the maximum allowed length when entering a trolley barcode. If a longer barcode is entered, it will be rejected.

This setting is especially useful when you use **custom trolley barcodes** with a fixed length.  
This prevents entry errors or scanning invalid barcodes.

## `CreateNewTrolleyAndOpenDetails`
Determines what happens after creating a new trolley.

- **Enabled** → The new trolley is opened directly in the trolley details.  
- **Disabled** → The user remains in the trolley overview.

## `AdditionalActions`
Determines whether an extra action is automatically performed immediately after creating a new trolley.

**Available option:**

- **Lock plate registration**  
  The trolley is automatically registered as a lock plate in the background.  

## `RequireCustomTrolleyBarcode`

By default, the user is asked to enter a trolley barcode.

With this policy you can:
- Make this entry required  
- Disable it  
- Or configure it per packaging code  

## `TrolleySequenceStrategies`
With this policy you determine **how new trolley numbers are generated automatically**.

You can select a separate strategy for:
- **Normal orders**
- **Hub orders**

This allows you to align numbering with different logistics flows.

**Available options:**

- **Default**  
  - Normal orders → *Per customer per order*  
  - Hub orders → *Per hub per invoice*

- **Trolley number per customer per day**  
- **Trolley number per customer per order**  
- **Trolley number per hub**  
- **Trolley number per hub per day**  
- **Trolley number per hub per invoice**  
- **Trolley number per hub per order date**

Choose a strategy that matches your internal numbering structure and administrative processing.

## `AllowedWorkingDays`

Determines on which weekdays trolleys may be created.

If a trolley is created on a non-allowed day, it is automatically registered on the next allowed working day.

## `DefaultDepartmentId`

Sets a default department on which the trolley is registered.

## `DefaultTrolleyId`

Automatically adds a default number to every new trolley.

## `RegisterTrolleyOnInvoice`

Determines whether the trolley should also be registered on the invoice, specifically for hubs

---

# `CompleteTrolley `

These settings determine what happens when a trolley is completed.


### CompleteTrolleyLabel - Printer settings

- `CompleteTrolleyPrinterName`  
- `CompleteTrolleyPrintLayout`  
- `IsActive`  

These settings determine whether and how a label is printed when completing a trolley.

---

## `ValidPackagingCodesForExtraTrolleyElements`

Here you determine which extra elements (for example shelves) can be added when completing or editing a trolley.

## `RemoveEmptyTrolley`

When enabled, empty trolleys are automatically removed.

This keeps the overview clean.

## `TrolleySortingStrategy`


Determines how trolleys are sorted in the trolley overview.

**Options:**

- **No sorting** – Trolleys are shown in creation order.  
- **Sort by number** – Trolleys are sorted by trolley number.

Choose the option that best fits your shopfloor workflow.

## `TrolleyHandling_ValidBarcodeDecodeOptions`

See chapter **BarcodeDecodeOptions (Barcode settings)** for explanation.


## `RegisterExtraElementsOnInvoice`

Ensures that extra elements are also registered on the invoice.

---

# `ProductHandling`

These policies determine how products are placed on a trolley.

---

## `PutOnTrolley_AllowReverseLoading`

Enables **reverse loading**.

The user scans a product (or box) first and then scans the trolley to confirm. The product is then linked to that trolley.

This is especially useful in situations where different order items are delivered via, for example, a conveyor belt and need to be distributed over multiple trolleys.

## `PutOnTrolley_AllowedPackagingCodesForTrolleyItems`

Allows the packaging code of an order item to be changed to one of the configured codes.

This works together with the advanced product details screen.

## `PutOnTrolley_EnabledAdditionalActions`

Determines which extra actions are performed automatically when a product or box is placed on a trolley.

**Available options:**

- Receive box  
- Change stock-in status of batch  
- Mark outbound check barcode as processed  
- Register barcode as processed for trolley loading  
- Process outbound check  

## `PutOnTrolley_ShowAdvancedProductDetails`

Shows an extended product details screen **after scanning an order item or during manual processing**.

In this screen the user can change data (for example packaging code or quantities).  
Changes are applied immediately to the order item.

Use this setting when additional control or adjustments during loading are required.

## `PutOnTrolley_ShowProductDetailsOnScan`

Automatically opens the product details screen after scanning an order item.

## `PutOnTrolley_ShowSearchBox`

Shows a search field that allows users to filter remaining products to process.

---

## `AvailableProductDetails`

Here you determine which product information is visible in the app.

The order of the fields in this policy also determines the order on the screen.

When a product is selected in the screen, the detail screen opens where this product information is shown.

## `ToProcessQuantityMode`
Determines how the number of stems to be processed is calculated and increased during scanning.

**Available options:**

- **Process quantity from barcode**  
  The quantity is taken from the scanned barcode.

- **Process quantity per colli**  
  Each scan increases by the configured quantity per colli.

Choose the option that matches how your barcodes are structured.


## `ProductHandling_ValidBarcodeDecodeOptions`

See chapter **BarcodeDecodeOptions (Barcode settings)** for explanation.

## `EnabledOrderLineValidationOptions`
Determines which checks are performed on an order item before it may be placed on a trolley.

The selected validations:

- Filter the ‘To process’ overview (only valid order items are shown)  
- Validate the configured value during scanning or processing

**Examples of validations:**

- `IsOrderLocked`  
- `IsStockValid`  
- `IsDepartmentValid`  

If an order item does not meet one of the configured checks, it cannot be placed on the trolley.

# Other policies

## `ValidTrolleyPackagingCodes`

Determines which packaging codes may be used when registering a new trolley.

## `ExcludedOrderNumbers`

Orders with these order numbers are not shown in the order overview and cannot be processed.

## `ExcludedCustomerCodes`

Orders for these customers are not shown in the order overview.

## `FilterStockCodes`

Filters the order item overview on configured stock codes.

Items outside this list:
- Are not shown  
- Can only not be scanned when `IsStockValid` is enabled  


## `FilterDepartmentCodes`

Filters the order item overview on configured department codes.

Items outside this list:
- Are not shown  
- Can only not be scanned when `IsDepartmentValid` is enabled  


## `EnableHubGrouping`

When enabled, orders are grouped per hub in the order overview.


## `ReturnOnLockplateRegistration`

When creating a trolley, the system checks whether an issued lock plate exists.

If present, it is automatically registered as returned, including date and time.

---
