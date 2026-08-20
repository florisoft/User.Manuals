![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Order Picking (Picking App)

## Introduction

**Generic picking** allows a warehouse employee to process work orders on a mobile device. The app guides the user through obtaining a work order, collecting and registering products, and completing the assignment.

The workflow is configured entirely through policies. Florisoft can therefore assign a work order automatically or let the employee select one. A pick can also be registered with a button, a verification scan, per colli or in partial quantities.

This manual describes the user workflow and explains within each step which policies determine its behaviour.

---

## Licence requirements and prerequisites

Order Picking requires:

- access to the Florisoft **Picking App**;
- access to the `Logistics.Picking.OrderPicking` use case;
- a valid employee;
- a scanner or camera for scanning workflows;
- available work orders and stocks;
- for printing: a configured printer and layout, and a reachable Job Agent;
- the corresponding licences for additional actions.

The `UseCaseKind` policy determines which picking use case starts. Select `GenericPicking` for the workflow described in this manual. The other available value is `PalletPicking`; `Unknown` does not start a usable Order Picking workflow. `GenericPicking` is the default when no different value is configured.

## Where can you find the policies?

Open the **constants screen** in the Backoffice and navigate through **System → Users → Policy Management** to **Apps → Logistics → Picking**. The subgroups **Packing List**, **Instruction Scan**, **Alternative Location** and **Order Picking** contain the settings for the corresponding process steps.

For more information about creating, assigning and prioritising policies, see the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

> An empty policy value can fall back to an existing Backoffice setting or default behaviour. Test a changed configuration with a separate test policy and a representative work order first.

---

## The order picking process in brief

1. Open **Generic picking** and identify the employee.
2. Select one or more employee groups if required.
3. Accept the automatically assigned work order or select one manually.
4. Check the overview and activate the work order.
5. Go to the displayed location and scan the product or carrier.
6. Check the details and register the pick using the configured method.
7. Process an alternative location or discrepancy if required.
8. Repeat until all products have been processed.
9. Complete the work order.
10. Perform any additional actions and close the assignment.

---

## Step 1 – Start the app and employee context

Open the Florisoft Picking App and select **Generic picking**. If no employee is known yet, Florisoft first asks for identification. All scans, claims and picking activity are then linked to this employee.

Depending on the configuration, the user can select one or more employee groups. The selected groups are saved in the user state and reused in the next session. They determine which work orders Florisoft may offer.

The employee groups shown in the app are the **salesperson groups** from the Backoffice. Create or edit them in the constants screen under **Salesperson group**. Enter the group code and name there, and add the salespeople/employees who belong to the group. The app retrieves only the groups linked to the signed-in employee.

Two Backoffice policies determine which group is recorded when pick orders are entered or delivered:

- `Backoffice_Logistics_Pickorders_Entry_ShowUserGroup` shows the **Salesperson group** field in the pick-order entry screen;
- `Backoffice_Logistics_Pickorders_Entry_DefaultUserGroup` enters the configured salesperson group in that field by default. This default works only when `Backoffice_Logistics_Pickorders_Entry_ShowUserGroup` is enabled.

The selected group is stored on the work order. When the picker selects one or more groups in the app, only work orders assigned to one of those groups are loaded. When no group is selected, the app applies no group restriction. Use a default group to assign new work orders consistently to the correct team or department; the employee-to-group links then determine who can select that group in the app.

The app shows this generic workflow only when `UseCaseKind` is set to `GenericPicking`. Selecting `PalletPicking` starts a different use case to which this manual does not apply.

---

## Step 2 – Determine available work orders

Before the picker sees an assignment, Florisoft limits the available work by date, stock and availability.

The `OrderDateFrom` and `OrderDateTo` policies determine the permitted date range relative to the order date. If no policy value is entered, Florisoft can fall back to the existing pick-order date settings in the Backoffice.

Use `AvailableStocks` to select the stocks from which pick items may be loaded. An empty policy can use the existing list of pick-order stocks. Check this selection carefully: a work order may be absent when its stock is not allowed.

When `UseLogisticParcels` is enabled, Florisoft includes logistic parcels in the availability check. `RemoveLogisticParcelWhenZero` then determines whether such a logistic parcel is removed when its remaining quantity reaches zero. The latter can fall back to the existing system setting.

The policy setting `IniSettings_FSSystem_Pickorder_PakstatusMoetWordenGepakt` determines whether a pick order receives the **Must be picked** status. With the default value `true`, this status is also set during normal delivery and printing. As a result, work orders may be created for orders that should not be delivered via the PDA. Disable the setting when work orders should be created exclusively through **Deliver via PDA**.

`PickOrderSplitStrategy` determines how a required quantity is distributed over available unique carriers:

- `SmallestCarriersFirst` uses the smaller available carriers first and is the default behaviour;
- `FullCarriersFirstThenRemainder` uses full carriers first and processes the remainder afterwards.

This distribution affects which location and unique carrier are offered for a pick item.

---

## Step 3 – Obtain a work order

The `WorkOrderAssignmentStrategy` policy under **Apps → Logistics → Picking → Order Picking** determines how the picker receives a work order.

### Automatic assignment

With `Automatic`, Florisoft reserves a suitable assignment based on the employee groups. This is the default strategy.

The **Overview** screen shows information such as:

- the work order number;
- the carrier, if applicable;
- the total number of picks;
- the numbers of colli, boxes and stems;
- customer and order numbers;
- any order and picking instructions.

Check the information and tap the **arrow** button to activate the work order. Changing the employee groups requests an assignment for the new selection. Use **Refresh** when that button is shown.

### Manual assignment

With `Manual`, the **Work orders** screen opens first. The user can filter the list by employee group and sees the work order number, total number of colli and remaining time until departure for each assignment.

1. Tap the required work order.
2. Tap **Confirm**.
3. Check the overview.
4. Tap the **arrow** button to activate the assignment.

`WorkOrderUrgencyThreshold` determines when the departure time is shown as urgent. The default threshold is 30 minutes. When the remaining time falls within that threshold, the assignment receives a prominent urgency marker.

The `Backoffice_Logistics_OrderPick_AuthorizeInvoiceHeaderUrgent` Backoffice policy enables the **XOrder header priority** button in the pick-orders screen. An authorised user can use it to change the priority marker on the `XORDERKOP`. The app displays this marker as an urgent work order and sorts priority assignments before non-priority assignments. `WorkOrderUrgencyThreshold` then determines whether the remaining departure time has passed the urgency threshold and therefore how prominently the urgency is displayed.

Use these settings together for visibility and control: the Backoffice policy determines whether planners may manually mark an assignment as priority, while the Picking policy determines when its departure time requires extra attention.

### Temporary reservation

A claimed assignment remains reserved for the employee temporarily. If it is not activated in time, Florisoft releases the claim. The user receives a message and must retrieve a new assignment. This prevents abandoned work orders from remaining blocked.

---

## Step 4 – Activate the work order and print documents

After activation, the **Orderpicks** screen opens. The `ActivateWorkOrderAdditionalActions` policy determines which actions Florisoft performs immediately during activation. The supported actions are `PrintPackingList` and `PrintPickItemLabels`; an empty list performs no automatic action.

### Automatically print pick-item labels

Select `PrintPickItemLabels` in `ActivateWorkOrderAdditionalActions` to automatically print labels for the work order's pick items after activation. Configure the following policies under **Order Picking → PickItemLabelPrintSettings** first:

- `PickItemLabelPrinter`: the printer for pick-item labels;
- `PickItemLabelLayout`: the layout for pick-item labels.

After successful submission, Florisoft shows the usual message that the print job was sent to the configured printer. This message confirms that the job was submitted, not that the labels were physically printed. Always use a test work order when setting up or changing a printer. A separate message is not always available for an unknown or unreachable printer.

### Automatically print a packing list

For automatic printing, the policies under **Packing List** must be configured correctly:

- `PrinterName` contains the printer;
- `ReportName` contains the packing-list layout and is selected from the available packing-list layouts;
- `Enabled` enables or disables packing-list printing;
- `GroupPickItemsForPackingListType` determines how lines are grouped.

`Customer` groups lines by customer and is the default. `CustomerOrderName` groups them by customer and order name.

The Job Agent must be reachable to send the print job to the printer. Florisoft shows a message when a printer or layout is missing or printing fails. Check this message before starting the physical picking process.

`Backoffice_Logistics_OrderPick_AllowedToPrintPackingListToPDA` must also be enabled when the packing list is printed through the PDA delivery and printing flow. When this Backoffice policy is disabled, Florisoft blocks packing-list printing through PDA even if `ActivateWorkOrderAdditionalActions` contains `PrintPackingList` and `PrinterName`, `ReportName` and `Enabled` are configured correctly.

---

## Step 5 – Read the pick list

Each product line shows the information the picker needs to recognise the correct product and location. The default line includes the product image, description, location, customer, order number, quantity, parcel characteristics, parcel suffix, unique carrier and any instructions.

The `LocationDisplayType` policy determines which location information is shown:

- `LocationCode` shows the location code and is the default;
- `LocationDescription` shows the location description.

### Pick-item order

By default, the pick-item screen sorts the lines by location code. This displays the locations in a logical order.

If a walking route is linked to the work order, Florisoft follows the location sequence defined by that route instead. This allows the picker to collect the products in the order in which the warehouse locations are visited. Locations that are not included in the walking route appear after the route locations and are sorted by location code.

`StockItemIdentifier` determines which parcel identifier is visible. Available values are `None` (default), `StockItemNr` and `VStockItemNr`.

`StockItemWordReferenceKind` determines how Florisoft finds the parcel word in the `WOORDEN` table. `ParcelID` uses the parcel number, `VParcelID` uses the V-parcel number and `Unknown` uses no defined reference method.

### Details screen contents and order

The ordered `PickItemDetails` list determines which additional fields appear on the details screen and their order. Available values are:

- `Sku`: parcel number or SKU;
- `Word`: parcel word;
- `S1`, `S2`, `S3`, `S4` and `S5`: sorting characteristics;
- `Color`: colour;
- `PackagingCode`: packaging code;
- `TotalColliToPick`: original total number of colli to pick;
- `Remark`: remark;
- `ArticleNumber`: article number.

An available `Remark` appears by default in **Orderpicks** and **Details** and can also be added as a detail item through `PickItemDetails`. The manual order-line remark (`OPMERKING`) takes precedence; if it is empty, the app displays the webshop note from **Stock > Note** (`OPMERKING2`). Remarks are not combined.

The default list contains `Sku`, `Word`, `S1` through `S5`, `Color` and `PackagingCode`.

An information marker indicates that a product may be divided over multiple locations or stock records. The progress indicator at the bottom shows how many lines have been processed. Pull the list down to retrieve the current work order again.

---

## Step 6 – Pick a product

1. Go to the location displayed for the product.
2. Check the product, characteristics, quantity and any instructions.
3. Scan the barcode of the stock parcel or unique carrier.
4. Check the **Details** screen.
5. Take the stated quantity.
6. Register the pick using the configured method.

The combination of three policies determines the confirmation method:

- when `SplitOrderPicking` is enabled, the picker enters the number of full colli and any remainder;
- when `ScanPerUnit` is enabled, the picker scans each colli separately and the app shows a counter and progress bar;
- when `ConfirmPickWithScan` is enabled, the picker confirms the active product with a matching second scan;
- when all three are disabled, the picker confirms with the **check-mark** button.

`ConfirmPickWithScan` and `ScanPerUnit` are disabled by default. `SplitOrderPicking` behaves as disabled when no value is configured.

Preferably configure one primary method. When `SplitOrderPicking` and `ScanPerUnit` are enabled together, the split-picking calculation takes precedence during final processing. A clear policy prevents the screen instruction and expected action from becoming confusing.

After successful registration, Florisoft reduces the remaining quantity. A fully processed line disappears from the open pick list. When `RemoveLogisticParcelWhenZero` is enabled, a used logistic parcel can also be removed at zero.

---

## Step 7 – Pick manually

The `AllowManualPicking` policy determines whether the user can continue without a working scan. It is disabled by default.

When manual picking is allowed:

1. swipe across the relevant product line;
2. tap the **hand icon**;
3. confirm that the product is being registered manually;
4. check the details screen;
5. confirm the pick.

Use this option only when a barcode is missing or cannot be scanned. The picker remains responsible for checking the product, location and quantity.

---

## Step 8 – Use an alternative location

`AllowAlternativeLocationSelection` under **Alternative Location** determines whether the picker may select stock from another location. It is enabled by default.

1. Press and hold the product line or swipe across it.
2. Tap the **location icon**.
3. Select a stock record. The app shows its location, unique carrier and available quantity.
4. Tap the **check mark**.
5. Confirm the selected location.
6. Check the details screen and register the pick.

Florisoft books the pick against the selected location and unique carrier. When `AllowAlternativeLocationSelection` is disabled, the user cannot confirm the alternative selection.

---

## Step 9 – Process discrepancies

When insufficient stock is available, Florisoft can create a distribution check. `ExceptionReasonMissingInventory` determines which exception reason is used.

If the Exception Registration integration and licence are available, the picker can also register a discrepancy from a pick item:

1. swipe across the product line;
2. tap the **exclamation mark**;
3. select a reason and enter the requested information;
4. confirm the discrepancy.

Florisoft then reloads the work order and adjusts the outstanding quantity.

### Discrepancy on a unique carrier

The policies under **Alternative Location → Carrier Discrepancy** determine whether a specific carrier can be reported as discrepant.

`AllowRegisterUniqueCarrierDiscrepancy` shows the discrepancy action on an alternative stock record when enabled. `UniqueCarrierDiscrepancyReasons` contains the permitted reason IDs from the selection list. Both settings are required for a usable workflow.

1. Swipe across the stock record.
2. Tap the **exclamation mark**.
3. Select a reason.
4. Confirm the registration.

Without valid reasons, Florisoft shows a message and returns the user.

---

## Step 10 – Complete the work order

When all lines have been processed, Florisoft indicates that the work order can be completed.

The `FinalizationMethod` policy under **Order Picking → Finalize Work Order** describes two variants:

- `Scan`: the user scans the configured completion barcode; this is the default;
- `Manual`: the user completes the finished work order with a button.

Florisoft always checks that the work order contains pick items, is complete and is still assigned to the active picker. An incorrect completion barcode is rejected, and an assignment with outstanding lines cannot be completed normally.

### Complete with a special instruction scan

The special instruction scan is part of completing the work order. Once all pick lines have been processed, the user scans the configured instruction barcode. Florisoft compares this scan with the barcode configured under **Instruction Scan**. If the barcode does not match, the work order remains open and Florisoft reports that the barcode is invalid.

After a valid scan, Florisoft first completes the work order. Only if completion succeeds does Florisoft perform the associated instruction. The configuration can be set to:

- print a packing list;
- print a production receipt;
- print either a packing list or a production receipt, depending on the type of work order;
- perform no additional print action.

Configure the instruction barcode, the required action, and the necessary printer and layout in advance. This printing action at completion is separate from automatic printing when a work order is activated, as described in step 4.

> `Manual` is specified in the Order Picking use case, but the currently reviewed app code still completes the work order through a completion scan. Use this policy value only when the manual variant is available in the app version being used.

After successful completion, Florisoft shows a summary. Tap the **check mark** to close the assignment and start a new work order.

---

## Step 11 – Perform additional actions

The `Addons_EnableAddons` policy under **Order Picking → Add-ons** determines which additional actions are offered after completion. Order Picking supports:

- `AdressLabel`: print an address label;
- `Returnables`: register outbound returnable packaging;
- `Photos`: add pictures to the work order.

A selected action is usable only when the corresponding licence and integration are also available. The general add-on values `CMR` and `ExceptionRegistration` are not offered through this Order Picking list.

### Print an address label

1. Open **Additional actions**.
2. Select **Print address label**.
3. Tap **Confirm**.
4. Follow the steps to print the label.

### Register returnable packaging

1. Open **Additional actions**.
2. Select **Register returnables**.
3. Tap **Confirm**.
4. Register the outbound packaging for the displayed order.

### Take and retain pictures

Follow the shared [manual for capturing and managing photos](../../Additional%20actions/Photos/Manual%20capturing%20and%20managing%20photos%20-%20EN.md). The photos are linked to the active work order. Then return to the summary and tap the **check mark** to leave the work order.

---

## Messages and solutions

### No work orders are available

- Check the employee groups.
- Check that the correct salesperson group is stored on the work order and that the employee is linked to that group.
- Check `Backoffice_Logistics_Pickorders_Entry_ShowUserGroup`, `Backoffice_Logistics_Pickorders_Entry_DefaultUserGroup` and `IniSettings_FSSystem_Pickorder_PakstatusMoetWordenGepakt`.
- Check `OrderDateFrom`, `OrderDateTo` and `AvailableStocks`.
- Check whether `UseLogisticParcels` matches the stock workflow.
- Tap **Refresh** and ask the planner whether assignments are available.

### The reservation has expired

The work order was not activated in time and has been released. Retrieve a new assignment and activate it within the available claim period.

### The barcode is not recognised

- Check that you are scanning the correct stock parcel or carrier.
- Check that the product belongs to the active work order.
- Check the location and configured confirmation method.
- Use manual picking or an alternative location only when allowed.

### There is insufficient stock

Check the location and unique carrier. Select an alternative location or register a discrepancy if available. Also check that `ExceptionReasonMissingInventory` is configured correctly.

### Printing does not work

Check whether automatic printing at activation is enabled and the correct action is selected. For pick-item labels, check `PrintPickItemLabels`, `PickItemLabelPrinter`, `PickItemLabelLayout` and that the Job Agent is reachable. The message that a job was sent to a printer confirms only submission; always check the physical result when setting up or changing a printer. For a packing list, check the printer and layout, whether printing from the PDA is permitted, and the selected packing-list grouping. For printing after the completion scan, also check the configured instruction barcode and its associated print action.

### An additional action is unavailable

Check the corresponding licence and the required integration. For photos, also check the policies, storage location, and access permissions described in the [manual for capturing and managing photos](../../Additional%20actions/Photos/Manual%20capturing%20and%20managing%20photos%20-%20EN.md).

---

## Important for a correct configuration

- Use `GenericPicking` as the `UseCaseKind` for this workflow.
- Select one clear picking method and do not combine `SplitOrderPicking`, `ScanPerUnit` and `ConfirmPickWithScan` without deliberate testing.
- Test the available stocks, carrier distribution and location display with actual warehouse data.
- Test every printer, layout and instruction barcode before using the policy in production.
- Record shortages as discrepancies, not as fully picked.
- Test the completion method and all add-ons with the same permissions and licences as the end user.
