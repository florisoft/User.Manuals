![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Final Outbound Check (Quality Control App)

This manual describes using and configuring **Final Outbound Check** in the Florisoft Quality Control App. The complete workflow and all associated policies are included in this document. Integrated features such as photos and returnables refer to their separate manuals.

**Requirements:**

* Florisoft Quality Control App
* Final Outbound Check license

## What is Final Outbound Check?

Final Outbound Check verifies that the correct articles and quantities are ready for dispatch. You work within an active selection, also called a **scope** in the app. This can be one customer order, a hub order, a group of orders for a customer or hub, a date group or a picking list. Grouping determines which order lines are checked together and which orders are affected by additional actions.

## Step-by-step guide for Final Outbound Check

1. Log in to the Quality Control App.
2. Select the order, group of orders or picking list to check.
3. Check order lines and boxes by scanning or manual input.
4. Review progress and perform the required additional actions.

## Step 1: Log in to the Quality Control App

Open the Quality Control App from the Florisoft Hub-App or via the Quality Control App icon. Log in using your user credentials. Select an employee if prompted. The logged-in user and employee are recorded with the check.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/1.png"></details>
<br>

> ℹ️ If the Quality Control App has not yet been installed, download it via the Florisoft Hub-App. Refer to the installation guide: [Hub-App Installation EN](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/App%20Hub/Hub-App%20Installation%20EN.md)

## Step 2: Select Order

To begin checking an order, first select an open customer order. This can be done in two ways:

### Option 1: Scan a barcode

Scan the barcode of an order line, for example, a pickorder sticker. The correct barcode setting must be enabled via the policy `BarcodeDecodeOptions`.

On the start screen, you can also use a **customer barcode**, **box barcode** or **picking-list barcode** to find its check. A picking list requires `EnablePickingListProcessing`. A standalone parcel or V-parcel barcode is used within an already opened check, rather than to open an order from this start screen.

The initial scan selects the check and does not yet count the scanned order line or box as checked. Scan it again in the active check overview to do so. One matching selection opens directly; with multiple matches, select the correct one first. If the selected scope is already complete, the app may open additional actions directly. Tap **Check** there to view its check lines.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/2.png"></details>

> ℹ️  When the `AllowScanningRedistributedBarcodes` policy is enabled, it is possible that multiple results are found during scanning, for example in the case of redistributed items. In that case, a selection screen will automatically appear in which the correct order item must be selected in order to continue the scanning process.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/2A.png"></details>
### Option 2: Search order via search icon

Use the search icon to display an overview of available customer orders. This overview can be customized according to your preference. The associated policies are under `OrderOverview` within Final Outbound Check. Enter at least three search characters for a targeted search, or clear the search box for the complete available overview. Use the refresh action to reload the overview.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/3.png"></details>

### Which orders are available?

The `OrderOverview_Filters` group controls the selection:

| Policy | Behavior |
| --- | --- |
| `EnableFilters` | Enable `IsFinalOutboundCustomer` to retrieve only orders for customers configured as **Final Outbound Check customer**. This is a list of filter options, rather than a general switch for all filters below. |
| `ScopeDateFilterType` | Choose `None` for no date filter, or filter by `OrderDate`, `DepartureDate`, `DeliveryDate` or `PurchaseDate`. |
| `ScopeDateFromDays` | Sets how many days before today the date range starts. For example, use `2` for the day before yesterday. |
| `ScopeDateToDays` | Sets how many days after today the date range ends. Use `0` for today or `1` for tomorrow. |
| `ExcludeOrderNumber` | Excludes the specified order numbers. Matching uses the complete order number: `FUST` does not automatically exclude every number containing that text. |
| `FilterStockCodes` | Restricts order lines to the selected stock codes. An empty list applies no stock filter. |

The date filter, exclusion list and stock selection are applied separately, including when `EnableFilters` is empty. If an order or line is missing, check these settings and the configured customer.

### Group orders and display quantities

| Policy under `OrderOverview` | Behavior |
| --- | --- |
| `ShowHubs` | Also makes hubs available in order selection. Disabled by default. |
| `ScopeGroupedBy` | Groups by `OrderNumber` (customer/hub and order number), `Identifier` (the complete customer/hub), `OrderDate`, `DeliveryDate`, `DepartureDate` or `PurchaseDate`. Date grouping displays a date instead of one order number. |
| `ProgressDisplayType` | Shows progress by `Orderline` or `Colli`. An order with three lines and seven colli therefore displays a total of three or seven. |
| `OrderItemQuantityDisplayType` | Displays quantities as colli × content + remainder or as total stems. |
| `StockItemIdDisplayType` | Selects parcel identification: `StockItemID` (PartijNr) or `VstockItemID` (VPartijNr). The compact display uses the last four digits. |
| `AvailableProductDetails` | Selects the visible product details and their order; see [Product details and status view](#product-details-and-status-view). |

### Check a picking list

`EnablePickingListProcessing` lets you choose a separate picking list within a selected order. Select the required picking list or choose the complete order. If no picking lists are available, the app continues with the complete order. A picking-list barcode is only accepted when both this policy and the associated barcode type are enabled.

## Step 3: Check Order Lines

After selecting a customer order, the **To check** page will open. This page displays all order lines that still need to be checked. Each order line can be checked by scanning the corresponding barcode. During scanning, the system automatically validates:

* whether the barcode is recognized,
* whether the item belongs to the selected order,
* and whether the line has already been fully checked.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/4.png"></details>
<br>
### Barcodes and counting strategy

| Policy | Behavior |
| --- | --- |
| `BarcodeDecodeOptions` | Selects recognized barcode types. Choose only the types used in your process. |
| `CountingStrategy` | `Kolli` counts per colli, `EntireOrderItem` checks the complete order item, and `Barcode` uses the quantity in the barcode. |
| `StoreScannedBarcodes` | Stores scans in `BARCODES` and checks for previously scanned barcodes. Use it for unique labels. Repeatedly scanning a non-unique parcel barcode can cause this check to block further counting. |
| `AllowScanningRedistributedBarcodes` | For redistributed order lines, also accepts the original barcode in `FromBarcode` alongside the new barcode. |

Available barcode types are `OrderItemDetailBarcode` (trolley-detail barcode), `OrderItemBarcode`, `PickorderCvar15Barcode`, `FinalCheckBarcode`, `FsqrCode`, `CustomerIdBarcode`, `StockItemCvar7Barcode`, `VStockItemIdBarcode`, `BoxBarcode` and `PickingListBarcode`.

With `Barcode`, the barcode must contain a quantity. If it does not, the app reports that the counting strategy and barcode do not match and does not count the scan. `VStockItemIdBarcode` lets you check by V-parcel number within the active selection; if multiple unchecked lines match, select the correct order line.

The current multiple-result flow does not pass a barcode quantity after an order line is selected. With the `Barcode` counting strategy, this can therefore produce the missing-quantity message even after a valid scan. Use an appropriate scan route with one result or register the check manually.

A barcode without a result within the active selection is rejected. If all matching lines have already been checked, the app reports that the check is complete. **To check** and **Checked** show open and checked lines respectively; partially checked lines can appear in both lists. Use the refresh action to retrieve the current state.

### Actions on an order line

Tap an order line to open product details. Swipe a line sideways to show available actions: **manual check**, **print product label**, **reset** or **register exception**. Available actions depend on check status, policies and access to integrated features. A fully checked line retains printing and, when permitted, resetting; manual counting and exception registration are intended for lines with quantities still to check.

When permitted, the check overview menu also contains **Check all** and **Reset all checked**. These actions affect the complete active selection and ask for confirmation. With the required configuration, this menu also offers **Print Address Label** as a shortcut to the integrated label feature.

The quantity requiring inspection can be lower than the original order quantity because of registered exceptions that reduce it and linked credit lines. The app then subtracts the quantity already checked to determine the remainder. If the remainder is unexpected, also review exceptions and credit lines; do not register the same quantity again as a check.

### Change selection during a check

From the check overview, scan a customer barcode to find another customer selection, or a picking-list barcode to move to that list when picking-list processing is configured. An incomplete check can first trigger the `ShowWarningIfIncomplete` warning. Choose **No** to remain on the current check, or confirm to continue. Previously recorded progress is retained.

When `StoreScannedBarcodes` is enabled, also configure table cleanup through **Constants → Timer → Clean Up Tables**. Add `BARCODES` and select a suitable retention period, for example 90 days. This is a separate process from cleaning up photo files.

### Product details and status view

For each order line, it is possible to open the **product details**. This screen displays additional information about the item.

Part of these product details is the **status page**. This page provides insight into the logistical progress of the item and is based on the actions recorded in the batch log.

`OrderOverview_AvailableProductDetails` selects details and their display order. Available details are **Quantity**, **Length**, **Customer**, **Supplier**, **Picking time**, **Picker name**, **Packaging code**, **Packaging quantity**, **Packaging description**, **Stock code**, **Stock description**, **S2** and **Subcustomer name**. These are information fields in the product detail.

The shared `Apps_Logistics_ShowLogisticStatusOptions` policy selects the logistical statuses shown: arrived, at location, order picked, packed in box, loaded on trolley and final checked. The status page shows the corresponding log records. An empty list hides the status log.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/11.png"></details>
<br>

### Reprint a product label

Is a product label missing or damaged? Open the product details for the relevant order line and choose the **print icon**. The app sends a new print job for all associated packages (colli) to the configured printer. This does not change the final-check status or progress of the order line.

The `Printer` policy group contains:

| Policy | Behavior |
| --- | --- |
| `IsActive` | Allows reprinting product labels. |
| `PickItemLabelLayout` | Selects the layout for pick-order price labels (`PickOrderPrijsSticker`). |
| `PickItemLabelPrinter` | Selects the printer to which labels are sent. |

Printing must be active and both printer and layout must be configured. Missing configuration or a failed print job produces a message.

### Manual Final Check of Order Lines

If scanning an order line is not possible, the check can also be performed manually.
Choose manual checking for the order line. The app proposes the quantity still to check. Enter the quantity actually checked and confirm; it must be greater than zero. Cancel returns without recording this count. The manual check is visually displayed on the screen.

When an order line is manually checked, this is automatically recorded in the Backoffice for the corresponding order line.
The field _Handm.FinalChecked_ is then selected, and the manual check is also logged in the parcel log.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/5.png"></details>
<br>
<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/6.png"></details>
<br>

If there is a problem with an order line, use **Exception Registration** to register it. `ExceptionRegistration` must be included in `Addons_EnableAddons` and the integrated feature must be available. Registration is limited to the quantity still to check. Details and remaining quantities are reloaded after returning.

The shared `Apps_Logistics_QualityControl_SetExceptionReasons` policy selects available reasons. An empty selection produces no reasons. For further configuration and instructions, consult the [Exception Registration manual](../Exception%20Registration/Quickstart%20Manual%20EN.md).

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/4A.png"></details>
<br>

`AllowCompleteEntireTarget` lets the user mark the complete active selection as checked without scanning every line separately. The app asks for confirmation first. Check that this is intended for every order in the selected group.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/6A.png"></details>

### Check boxes

Open box details to view the contents. `RequireBoxInspection` controls whether boxes must be checked separately:

- **Enabled:** scan or manually approve the box, including when its contents have already been checked.
- **Disabled:** a box does not need a separate check when its associated lines are complete. The app finalizes these boxes during further scope processing.

An explicit box check also processes the quantities not yet final-checked on the associated invoice lines. The manual/scan method determines the registration; review processing in the Backoffice.

## Step 4: Complete the Order

Once all required order lines and boxes are checked, the active selection is complete and the processed items appear under **Checked**.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/7.png"></details>
<br>
Various details are also updated in **Backoffice → Invoices**. These details are stored on the relevant invoice line (`ORDERREG`) and can be displayed as columns to verify the final check afterwards:

| Column (`ORDERREG`) | What is recorded? |
| --- | --- |
| `EINDCHECK` | The quantity checked with Final Outbound Check. |
| `SCAN_USER` | The user ID of the logged-in user who registered the final check. |
| `SCAN_DATE` | The date on which the final check was registered. |
| `SCAN_TIME` | The time at which the final check was registered. |
| `CONTROLEUR` | The employee ID/seller code of the inspector. |
| `SCAN_HAND` | Indicates that the invoice line was checked manually. This field is enabled only for a manual check. |

The user, date, time, and inspector details are populated when they are still empty on the invoice line. When a box is final-checked, the quantities not yet final-checked on its related invoice lines are also processed. These columns can therefore also be used to audit checks of products packed in boxes.

There are also additional options:

| Policy | Behavior |
| --- | --- |
| `AllowResetOrderItem` | Makes order-line reset and the box reset action available. The app asks for confirmation and then reloads the check. |
| `AllowResetEntireTarget` | Allows releasing the complete active selection for another check. A grouped scope can affect multiple orders. Confirmation is required here as well. |
| `AllowCompleteEntireTarget` | Allows the complete check in one action, as described earlier. |

Resetting is intended for rechecking; it does not delete an order or order line.

<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/8.png"></details>
<br>
Choose **Next** to open additional actions. `EnableAddons` in the `Addons` group (`Addons_EnableAddons`) determines which integrations are offered. Their order follows the configured list; an empty selection offers no additional actions.

To review the check from this screen, tap **Check** beside the progress display to return to the overview. The start button takes you to another check; an incomplete selection can first trigger the configured warning.

| Value | Capability and requirements |
| --- | --- |
| `Photos` | Add photos to the active selection. See the separate [manual for capturing and managing photos](../../Additional%20actions/Photos/Manual%20capturing%20and%20managing%20photos%20-%20EN.md). |
| `ExceptionRegistration` | Register an issue from an order line that still requires checking. This action is offered on the line/product detail rather than as a normal completion action in the additional-actions overview. |
| `AdressLabel` | Print an address label for the customer or hub. Requires Address Label access and the associated Shipping policies. Unavailable from a separate picking-list scope. |
| `Returnables` | Register outgoing returnables through Returnables Outbound. The integration must be available and a valid returnables customer/order context must be resolved. |
| `ApproveInvoices` | Approve invoices within the active selection for further processing. |
| `CMR` | Schedule CMR printing for a customer/hub grouped by one order number. |

For Address Label, configure the printer and report under **Apps → Logistics → Shipping → AddressLabels → PrinterSetting**. `ReportName` only accepts layouts of list type `Stickers` or `AdresSticker`. Consult the [Address Label manual](../../App%20Shipping/Adress%20Label/Manual%20Address%20Label%20-%20EN.md).

Returnables registration uses the Returnables Outbound configuration, including resolution of the returnables customer and order number. Consult the [Returnables Outbound manual](../../App%20Returnables/Returnables%20Outbound/Manual%20Returnables%20Outbound%20-%20EN.md).

### Photo storage and retention

| Policy under `Addons` | Behavior |
| --- | --- |
| `PhotoStorageDirectoryPath` | Optional alternative photo directory. Leave empty for the default archive directory in the data folder. For an alternative, use an accessible network path such as `\\server\share\pictures\FinalOutboundCheck`; the cloud server needs read/write access and Backoffice users need read access. |
| `PhotoStorageRetentionDays` | Retention period in days. The policy default is `100`. Removal only occurs through the **Clean app photos** timer process. Check the timer user's effective policy value. |

Complete operating instructions, storage and cleanup configuration are covered by the separate [manual for capturing and managing photos](../../Additional%20actions/Photos/Manual%20capturing%20and%20managing%20photos%20-%20EN.md). This shared manual remains the reference for the photo feature.

### Print a CMR

Enable `CMR` in `Addons_EnableAddons`. The action is available for a customer or hub scope grouped by `OrderNumber`, rather than a picking-list scope or an order collection without one order number.

Choose **Print CMR** to place the print request in the existing queue. The Backoffice printer, layout and associated timer process handle it. The scheduled-print message confirms queueing; subsequently check the actual print. Orders already queued or printed produce the existing feedback; part of a hub's orders may already have been processed.

If lines or boxes have not been fully checked, the current app asks whether to print the CMR anyway. This warning permits confirmation to continue, rather than automatically blocking printing.

The `RequireSignature` policy is intended for a signature when printing/emailing the CMR. The current Final Outbound Check flow does not use this policy to request or enforce a digital signature. Do not rely on this setting as a guarantee that a signature is required.

### Approve invoices

After the logistical final check is complete, you can release the invoice for posting. Enable the **Approve invoices** option in `Addons_EnableAddons` in the Final Outbound Check policy. Complete the active scope, open the additional actions and select **Approve invoices**.

The app records the date, time and logged-in user on every affected order header. For a hub, date grouping or other grouped scope, all orders within the active scope are processed. If you run the action again, these values are updated with the current date, time and user.

### Show photos on the invoice

Photos stored during Final Outbound Check can be added to the invoice layout.

1. Add the `FinalOutboundCheckPhotos.DBF` table to the invoice layout.
2. Use the fields `PHOTOPATH1` through `PHOTOPATH8`. They contain up to the last eight photos associated with the invoice; unused fields remain empty.
3. Add an image element for each photo field and start its script with `URL :=`, for example `URL := FinalOutboundCheckPhotos.PHOTOPATH1`.
4. Check the print preview to confirm that only photos belonging to the relevant invoice are shown.

The cloud server must be able to read the photo directory in use. See [Photo storage and retention](#photo-storage-and-retention) for the associated policies and the reference to the shared photo manual.

### Find photos in the Backoffice

Photos from a completed Final Outbound Check can also be viewed directly from **Invoices** and **Invoice History**.

1. Select the relevant invoice.
2. Open the invoice's context menu.
3. Select **Show Final Outbound Check photos**.

All photos associated with the selected invoice are opened. The Backoffice uses the alternative archive directory configured through `Apps_Logistics_QualityControl_FinalOutboundCheck_Addons_PhotoStorageDirectoryPath`. If this policy is not configured, the default Final Outbound Check archive directory is used. The user must have read access to the directory in use.

<br>
<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/9.png"></details>
<br>
`ShowWarningIfIncomplete` displays a warning when leaving an incomplete check or changing the selection. You can return to continue checking or confirm that you want to stop. Recorded progress is retained so you can continue later; the warning does not automatically complete the remaining lines.

<br>
<details><summary><b>Click here for an example!</b></summary><img src="Media/Doorloop/10.png"></details>

---

## Where to find the Final Outbound Check policies

| Step | Explanation |
| --- | --- |
| **1** | Open the constants screen in the Backoffice through the navigator. |
| **2** | Navigate to **System → Users → Policy Management**. |
| **3** | Select or create a policy and open **Apps → Logistics → QualityControl → FinalOutboundCheck**. |
| **4** | For additional settings, open **OrderOverview**, **OrderOverview → Filters**, **Addons** or **Printer**. |

Policy names in this manual are relative to this route. For example, `OrderOverview_Filters_ScopeDateFilterType` is the full key `Apps_Logistics_QualityControl_FinalOutboundCheck_OrderOverview_Filters_ScopeDateFilterType`.

`Apps_Logistics_ShowLogisticStatusOptions` is under **Apps → Logistics** and `Apps_Logistics_QualityControl_SetExceptionReasons` under **Apps → Logistics → QualityControl**. Integrated modules such as Address Label, Returnables Outbound and Exception Registration also have their own configuration and access requirements. Always check the effective policies for the user and situation, and reload changed configuration.

For general management, consult the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).
