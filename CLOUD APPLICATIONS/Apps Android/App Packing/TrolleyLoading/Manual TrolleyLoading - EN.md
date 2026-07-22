![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – TrolleyLoading

## What is TrolleyLoading?

TrolleyLoading supports the complete trolley-building process: selecting an order, creating or opening a trolley, registering products and boxes, and completing the trolley for transport.

The app helps warehouse employees work with the correct order and trolley. Progress is immediately visible, and every scan is validated before a product or package is registered on the trolley.

The orders, product information, filters, barcodes, and trolley actions that are available depend on the configured policies.

## Requirements

Using TrolleyLoading requires at least:

- access to the `Logistics.Packing.TrolleyLoading` use case;
- a valid Florisoft user and employee code;
- at least one permitted trolley packaging code in `ValidTrolleyPackagingCodes`;
- the correct barcode decoders for the order, product, box, and trolley labels being used;
- a scanner when scan workflows are used.

To print trolley labels and completed-trolley lists automatically, a printer and print layout must also be configured. Address labels and exception registration additionally require the corresponding add-on and licence.

## Workflow

### Step 1: find or scan an order

After entering the employee code, the order overview opens. Each order shows the customer or hub, order number, and trolley and colli progress. If `EnableVolumeIndication` is active, the overview also shows the processed, total, and remaining volume.

You can open an order in several ways:

1. select the order from the list;
2. search by customer or hub code, name, or key;
3. select a date in the calendar;
4. scan a supported order or product barcode;
5. scan the barcode of an existing trolley.

Scanning an existing trolley automatically opens the associated order and activates the trolley. If no order or trolley is found, the app displays a message and leaves the current context unchanged.

Pull down the list to refresh the orders and progress. Active filters and the configured sorting remain applied.

Policies filter the list before it is displayed. For example, only trolley-building customers, specific dates, departments, stock codes, or default trolley locations may be visible. Orders without visible items to process are not shown.

### Step 2: check the order and plan the work

The order details show the active customer or hub, the order number, and the order progress. You can see how many trolleys are complete and how many colli have already been processed.

Depending on the configuration, the menu contains the following read-only overviews:

- **Look ahead:** shows only the remaining colli, grouped by packaging code and stem length. For a hub, the information is grouped by customer.
- **Show order:** shows the complete order, including processed and unprocessed items and the progress per product.

Use these overviews to plan how the products will be divided between the available trolleys. Going back does not close the order and preserves the active context.

### Step 3: open or add a trolley

Existing trolleys are listed in the order details. Each trolley shows its status and progress. Completed trolleys have the status **Complete**.

Open an existing trolley by selecting it or scanning its barcode.

Create a new trolley as follows:

1. select **Add new trolley**;
2. select the trolley packaging code;
3. scan or enter a trolley barcode when required;
4. confirm the input.

If only one trolley packaging code is permitted, it is selected automatically. Manually entered barcodes are stored in uppercase. The app checks the maximum length and whether the barcode is already used within the order.

After creation, the new trolley opens immediately or you remain in the trolley overview. This is controlled by `CreateNewTrolleyAndOpenDetails`. If the label printer is active, a trolley label is printed automatically. A failed print does not prevent the trolley from being created; the label can be printed again from the actions menu.

For hubs, the trolley can also be registered on the designated returnables invoice, depending on `RegisterTrolleyOnInvoice`. When lock plate registration is configured as an additional creation action, the new trolley is also included in the lock plate registration.

### Step 4: put products and boxes on the trolley

Open a trolley. The trolley details contain two main sections:

- **Processed:** products and packages already registered on the active trolley;
- **To process:** products that still need to be processed for the active order.

You can filter the to-process list using the available filters and, when `ShowSearchBox` is active, search by product description.

#### Register manually

1. select a product under **To process**;
2. check the product information;
3. select **Put on trolley**;
4. enter the number of colli, stems, or bunches when requested;
5. confirm the registration.

The configured `ToProcessQuantityMode` determines which quantity is requested. When exactly one colli remains, the app can process it immediately without asking an unnecessary quantity question.

If `ShowAdvancedProductDetails` is active, you can also change the quantity and packaging code before placing the product. Changing the quantity can split the original order line. Only codes from `AllowedPackagingCodesForTrolleyItems` are then available.

#### Register by scanning

Scan a supported product or box barcode from the trolley details. The app finds the corresponding order item and performs the configured validations. A valid scan registers the item on the active trolley and immediately updates the progress.

Depending on `ShowProductDetailsOnScan`, the product details open first or the registration is performed immediately. An item that has already been fully processed or whose barcode was previously processed is not added again; the message states that the item has already been scanned or is fully processed.

When a scanned package contains multiple products, the associated content lines are registered on the trolley together.

#### View product details

Select a product or package under **Processed** or **To process** to view its details. `AvailableProductDetails` determines which information is visible and in which order.

For a package, the contents are shown. For a product, the app can show the quantity, length, customer, supplier, picking time, picker, packaging code, packaging quantity, packaging description, and stock information. If a product has already been partially processed, the trolleys and quantities on which it was registered are also shown.

When **Packaging code** and **Packaging quantity** are shown through `AvailableProductDetails`, you can change these values. **Packaging code** opens a lookup containing the values from `AllowedPackagingCodesForTrolleyItems`; the existing packaging code remains visible. After confirmation, the changed values are saved on the order line. If the invoice has already been printed, the change is blocked and the app reports that the order items can no longer be changed.

### Step 5: check and correct the trolley

Use **Processed** to verify that all products and boxes are on the correct trolley. After confirmation, an individual product or package can be removed from the trolley. The order progress is restored so that the item can be processed again.

For several corrections, use **Actions → Start correction mode**:

1. start correction mode;
2. scan the product or package that must be removed from the active trolley;
3. check the confirmation message;
4. scan the next item if required;
5. close correction mode through the active notification.

The app only removes items belonging to the active order and trolley. An invalid scan leaves the item in place and displays the reason.

If the `ExceptionRegistration` add-on is active, you can register an exception from both **Processed** and **To process**, for example for a damaged or unavailable product. The line then disappears from the normal trolley-building list, and the exception is recorded as a TrolleyLoading registration.

### Step 6: complete the trolley

Select **Complete** when the trolley is ready.

Depending on the configuration, you can register additional elements before completion, such as shelves, extension racks, or other packaging. Check the quantities and then confirm that the trolley is complete.

After successful completion:

- the trolley receives the status **Complete**;
- you return to the order details;
- the updated trolley and order progress are displayed;
- the completed-trolley list or label is printed automatically when the completion printer is active.

A completed trolley remains visible for the retention period configured in `CompletedTrolleyVisibleFromDays`.

## Trolley actions

The **Actions** menu can contain the following functions. `AvailableTrolleyActions` determines which actions are visible and their order.

| Action | Operation |
| --- | --- |
| **Transfer trolley** | Replaces the external barcode of the active trolley with a newly scanned or entered barcode. |
| **Manage additional elements** | Registers quantities of shelves, racks, or other permitted packaging against the order and trolley. |
| **Change trolley** | Changes the trolley packaging code. If the new code requires a barcode, it must be scanned or entered immediately. |
| **Reprint trolley label** | Prints the label of the existing trolley again. |
| **Print address label** | Starts the address-label workflow for the active customer or hub when the licence and add-on are active. |
| **Delete trolley** | Removes all products and boxes from the trolley and removes the trolley from the order. |
| **Empty trolley** | Removes all products and boxes but preserves the trolley itself. |
| **Start correction mode** | Removes processed products or packages one by one by scanning them. |

The app always asks for confirmation before emptying or deleting a trolley. The progress of the affected order lines is restored.

## Reverse trolley loading

When `AllowReverseLoading` is active, the employee starts with the product instead of the trolley:

1. scan a product barcode on the reverse-loading scan page;
2. the app finds the associated order and active trolleys;
3. with one active trolley, the app opens that trolley; with none or several, it opens the order details;
4. check the banner containing the pending product and remaining quantity;
5. scan the correct trolley barcode to confirm the link.

Opening or selecting a trolley does not register the product. The trolley confirmation scan is mandatory. After a valid scan, the product is linked and the app returns to the scan page for the next product.

You can cancel the pending product through the banner. Scanning a new product always replaces the current pending scan.

## External supplier barcodes

TrolleyLoading can process KOWADI product and box barcodes provided by suppliers. This requires `ExternalBarcodePrefixes`, the correct decoder, and, for external boxes, `DefaultExternalPackagingCode`.

External barcodes can only be scanned within an active trolley and cannot be used to open an order.

- A valid product barcode links the remaining quantity of the corresponding order item to the active trolley.
- A valid box barcode creates a box and links all valid content lines to the active trolley in one operation.
- If a hub contains several possible customers, the app asks which customer is being processed.

The normal validations and additional put-on-trolley actions remain applicable.

## Configure policies

Open the constants screen in the Backoffice and go to **System → Users → Policy Management**. The settings are located under `Apps → Logistics → Packing → TrolleyLoading`.

### General settings

Configuration starts with `ValidTrolleyPackagingCodes`, which defines the packaging codes that may be used as trolleys or load carriers. Employees cannot create a new trolley unless at least one valid code is available. `ExcludedOrderNumbers` removes specific order numbers from both the order overview and product-scan processing. `ExcludedCustomerCodes` does the same for all orders belonging to the selected customers.

When several customers are processed through a hub, `EnableHubGrouping` determines whether their orders are grouped by hub. The order contents can then be narrowed further. `FilterStockCodes` shows only lines belonging to the configured stock codes, while `FilterDepartmentCodes` filters by department. These settings hide lines from the overviews. To prevent a hidden line from still being processed through a scan, include the corresponding validations in `EnabledOrderLineValidationOptions`. New trolleys and external boxes use the department from `DefaultDepartmentId` when it has been configured.

### OrderOverview

When TrolleyLoading starts, Florisoft first builds the order overview. `DateFilterType` determines whether this uses the order date, requested date, departure date, or delivery date, for example. `FilterDateFromDays` and `FilterDateToDays` define the default period around today. Orders whose selected date field is empty are only included when `AllowOrdersWithEmptyDates` is active. When an employee selects a date in the calendar, `EnableFilterOnSelectedDate` ensures that only orders for that date are shown.

Not every order in that period is necessarily suitable for trolley building. `FilterOptions` therefore contains the validations Florisoft uses to decide which orders are loaded. `FilterByDefaultTrolleyLocations` can narrow the result further to customers with one of the configured default trolley locations. After the selection is complete, `SortingOption` determines the order in which the results appear.

Search and scan behaviour are also configured here. With `FilterOrdersByScanAction`, a scanned value is used as a search query. `ValidBarcodeDecodeOptions` determines which order, product, or trolley barcodes are recognised from the order overview. Enable `EnableVolumeIndication` when employees should see the volume distribution in addition to colli and trolley progress. Finally, `CompletedTrolleyVisibleFromDays` defines how long completed trolleys remain visible.

### TrolleyHandling and NewTrolley

After an order is opened, `TrolleySortingStrategy` determines how its trolleys are arranged. The `ValidBarcodeDecodeOptions` under `TrolleyHandling` specify which barcodes may open or activate a trolley. In the trolley details, Florisoft builds the actions menu from `AvailableTrolleyActions`; this setting controls both the available actions and their order.

When a trolley is created, Florisoft first determines whether a custom barcode is required. `RequireCustomTrolleyBarcode` controls the general requirement, and `TrolleyBarcodeMaxLength` limits the permitted input. Florisoft then calculates the trolley number using `TrolleySequenceStrategies`. `DefaultTrolleyId` can add a fixed number to each new trolley. `AllowedWorkingDays` specifies the days on which trolleys may be registered. If the current day is not permitted, Florisoft uses the next permitted working day.

After saving, Florisoft performs the operations in `AdditionalActions`, such as lock plate registration. For a hub, `RegisterTrolleyOnInvoice` determines whether the trolley is also recorded on the returnables invoice. `CreateNewTrolleyAndOpenDetails` then sends the employee directly to the new trolley or back to the trolley overview.

Additional shelves, racks, or other packaging elements may be needed while building. Employees can only choose values from `ValidPackagingCodesForExtraTrolleyElements`. When `RegisterExtraElementsOnInvoice` is active, those quantities are also registered on the invoice. If a removal operation takes all contents off a trolley, `RemoveEmptyTrolley` determines whether the empty trolley itself is removed from the order as well.

### ProductHandling and PutOnTrolley

In the trolley details, `AvailableProductDetails` determines which product information an employee sees and the order in which it appears. `ShowSearchBox` adds a search field to the to-process list, while `AvailableOrderItemFilterOptions` determines the additional filters available there.

For manual registration, `ToProcessQuantityMode` determines whether the employee processes quantities in colli, stems, or bunches. When `ShowAdvancedProductDetails` is active, a more detailed put-on-trolley page opens where an order line can be changed or split. Its packaging code can only be changed to a value from `AllowedPackagingCodesForTrolleyItems`.

For scan registration, the `ValidBarcodeDecodeOptions` under `ProductHandling` determine which product and box barcodes are valid. `ShowProductDetailsOnScan` controls whether the details open before processing. Before Florisoft places the item on the trolley, it performs the checks from `EnabledOrderLineValidationOptions`. After successful placement, the operations in `EnabledAdditionalActions` can run, such as registering the barcode as processed.

Enable `AllowReverseLoading` when the workflow must start with a product scan. The employee then scans the product first and confirms the correct trolley afterwards. For external KOWADI barcodes, `ExternalBarcodePrefixes` defines the recognised prefixes. When such a scan creates a new external box, Florisoft uses the packaging code from `DefaultExternalPackagingCode`.

### Labels and add-ons

The label for a new trolley is configured under `TrolleyHandling → NewTrolley → TrolleyLabel`. `PrintUseOriginalHub` determines whether the label uses the hub from the current order. In the underlying `Printer` category, `IsActive` enables printing. `TrolleyPrinterName` selects the printer, while `TrolleyPrintLayout` selects the layout.

For a completed trolley, use `TrolleyHandling → CompleteTrolley → CompleteTrolleyLabel → Printer`. Here too, `IsActive` enables printing. `CompleteTrolleyPrinterName` selects the printer, and `CompleteTrolleyPrintLayout` selects the completed-trolley list or label layout.

Connected use cases are not made available through the trolley actions menu alone. Under `Addons`, `EnableAddons` determines which integrations TrolleyLoading may start. Add `ExceptionRegistration`, for example, to record order-line exceptions, and `AdressLabel` to print an address label for the active customer or hub. The required licences must also be available for these functions.

For more information about configuring and assigning policies, see the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

## Frequently asked questions

**Why is an order not visible?**

Check the selected date and search filters. Then check `FilterOptions`, `ExcludedOrderNumbers`, `ExcludedCustomerCodes`, the stock and department filters, and `FilterByDefaultTrolleyLocations`. An order without visible items to process is not shown.

**Why can I not create a new trolley?**

Check that `ValidTrolleyPackagingCodes` contains at least one valid packaging code. For a custom barcode, also check `RequireCustomTrolleyBarcode`, `TrolleyBarcodeMaxLength`, and whether the barcode is already used within the order.

**Why is my scan not recognised?**

The permitted decoders are configured separately for each page. Check the `ValidBarcodeDecodeOptions` under `OrderOverview`, `TrolleyHandling`, or `ProductHandling`, depending on where the scan is made.

**Why can I not put a product on the trolley?**

Read the validation message. The product may already be fully processed, its barcode may already have been processed, the item may be outside the configured stock or department, or it may not belong to the active order. Check `EnabledOrderLineValidationOptions`.

**Why is a trolley action not visible?**

Check `AvailableTrolleyActions`. For **Print address label**, the correct licence must also be active and `EnableAddons` must contain `AdressLabel`.

**Why is no label printed?**

Check that `IsActive` is enabled and that the printer name and layout are configured in the correct label category. A failed new-trolley print still creates the trolley; use **Reprint trolley label** afterwards.

**How do I recover a product placed on the wrong trolley?**

Remove the individual item, use correction mode for several scans, or select **Empty trolley** when the entire contents must be divided again.

**Can I still open a completed trolley?**

Completed trolleys remain visible temporarily. The period is determined by `CompletedTrolleyVisibleFromDays`.
