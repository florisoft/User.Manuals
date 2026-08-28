![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – BoxPacking (Packing App)

## Introduction

With **BoxPacking**, a logistics employee packs order lines into boxes. The app supports two starting methods: selecting an order or working with products linked to a packing table through Sorting. The employee then selects an existing box or a new packaging type, registers quantities, and pauses or completes the box.

The workflow is configured entirely through policies. These determine the starting method, active packing table, visible boxes, quantity unit, permitted packaging codes, labels and any lockplate registration.

This manual describes the user steps and explains the policies that determine the behaviour at each step.

---

## Licence requirements and prerequisites

BoxPacking requires at least:

- access to the Florisoft **Packing App**;
- access to the `Logistics.Packing.BoxPacking` use case;
- a valid employee;
- orders with order lines that still need to be packed;
- for the Sorting workflow: pick items linked to the correct packing table;
- valid box packaging codes;
- for label actions: a configured printer, sticker layout and accessible printing service;
- for lockplate registration: packaging for which `FUST.SLTPLTDV` is enabled and a working lockplate integration;
- for discrepancies: access to Exception Registration.

The `BoxPackingStrategy` policy determines which workflow starts. `OrderSelection` is the default and opens the order selector. `PackingStation` uses the packing-table context prepared by Sorting.

## Where can you find the policies?

Open the **constants screen** in the Backoffice and go through **System → Users → Policy Management** to **Apps → Logistics → Packing → BoxPacking**. The underlying **NewPacking**, **FinalizeBox**, **PauseBox** and **LinkBox** groups contain the settings for the corresponding process steps. The label settings are under **FinalizeBox → BoxLabel** and **PauseBox → BoxLabel**.

For more information about creating, linking and prioritising policies, see the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

> Test a changed configuration first with a separate test policy, representative orders, an actual packing table and the intended printers. An empty configuration list does not always mean that all values are available.

---

## The BoxPacking process in brief

1. Open BoxPacking and identify the employee.
2. Select an order or open the packing table prepared by Sorting.
3. Select an order line or prepared pick item.
4. Select an existing box or create a new box with a permitted packaging code.
5. Check and confirm the quantity to pack.
6. Repeat this for the remaining products.
7. Register a discrepancy or correct the packaging when necessary.
8. Pause or complete the box.
9. Scan the lockplate barcode if required and check the printed label.

---

## Step 1 – Start the app and employee context

Open the Packing App in Florisoft and select **BoxPacking**. If no employee is known yet, Florisoft first requests identification. The registered box contents are then linked to that employee.

The `BoxPackingStrategy` policy determines the first work screen:

- `OrderSelection`: the employee starts with an overview of orders that can still be packed. This is the default value;
- `PackingStation`: the employee starts with the products that Sorting prepared for the configured packing table.

The employee does not select between these workflows while working. The policy determines which method is available beforehand.

---

## Step 2 – Determine the packing context

### Start from an order

With `BoxPackingStrategy = OrderSelection`, the order selector opens automatically.

1. Search by customer number or order number if needed.
2. Check the customer, order number and displayed progress for each order.
3. Tap the order you want to pack.
4. Check the remaining order lines.

BoxPacking only shows orders with at least one order line that can still be packed. Fully processed orders are not offered. Use **Choose order** to activate another available order later.

### Start from Sorting and a packing table

With `BoxPackingStrategy = PackingStation`, the `PackingStationId` policy determines the active packing table. The table number is shown above the incoming list.

Before you can start in BoxPacking, an employee scans the pick items in the Sorting App and links them to the correct packing table. BoxPacking then shows:

- only unprocessed products from the configured packing table;
- products from top to bottom in the Sorting scan order;
- separate groups for each customer and order;
- the first group as the active group and subsequent groups as a queue.

See the [Sorting manual](../Sorting/Manual%20Sorting%20-%20EN.md#the-sorting-process-in-brief) for the complete pick-item-first and packing-table-first workflows.

When the active group is empty, the next group becomes active automatically. New products for the active order are added to the overview periodically.

If `PackingStationId` contains the wrong table number, BoxPacking shows products from another table or no products. Always check the number above the incoming list.

---

## Step 3 – Read the product list

Select an order line or prepared pick item. BoxPacking shows the product image, description, characteristics, packaging information and remaining quantity. The product and packing details appear in the centre of the screen.

The `ToPackQuantityDisplayType` policy determines the displayed and entered quantity unit:

- `Bunches`: show and enter quantities in bunches. This is the default value;
- `Stems`: show and enter quantities in stems.

The backend always processes the final quantity in stems. With `Bunches`, BoxPacking converts the entered quantity using the product's bunch content. If valid bunch content is missing, the app uses at least one stem per bunch to prevent an invalid calculation. Check such product data before continuing.

The **Look ahead** action is available in the Sorting workflow. It shows which pick items for the active customer and order have not yet been processed at the packing table. This action does not change the packing table or pack any products.

---

## Step 4 – Select an existing or new box

When you select a product from another order, BoxPacking checks whether a usable box already exists for that customer and order. You can resume an existing box or select a new packaging type.

### Available new packaging

The `NewPacking.AvailablePackagingIds` policy contains the packaging codes that may be selected under **Empty packaging**. The selection list uses records from the Backoffice `FUST` table and shows the description with the packaging code.

BoxPacking also adds the customer-specific box packaging code when one is configured for the customer. An empty `AvailablePackagingIds` list therefore means:

- only the customer-specific box packaging code is available when it exists;
- no new packaging options are available when both the policy list and the customer-specific box packaging code are empty.

An empty list does not automatically provide access to all packaging codes. Explicitly add every generally permitted packaging code to `AvailablePackagingIds`.

### Visible existing boxes

In the packing-table workflow, `BoxVisibilityStrategy` determines which incomplete boxes are loaded:

- `ActiveTableOnly`: show only boxes from the active packing table. This is the default when no different value is configured;
- `AllTables`: show boxes from all packing tables so an existing box can potentially be transferred.

The `BoxAdditionalInfo` policy determines which additional location information is displayed for boxes:

- `None`: no additional location information. This is the default value;
- `TableNumber`: show the current packing table number;
- `RackNumber`: show the customer's rack number.

The current screen uses this additional information when `BoxVisibilityStrategy = AllTables`. With `RackNumber`, the box selector groups the available boxes by rack. Always test `BoxVisibilityStrategy` and `BoxAdditionalInfo` together.

### Transfer a box from another table

With `AllTables`, a box from another packing table may be available. BoxPacking first checks whether unpacked products for the same order remain at the original table. The box cannot be transferred while those products remain.

When a transfer is allowed, the app shows the current and new table and requests confirmation. After confirmation, the box is linked to the active packing table. In the rack workflow with `BoxAdditionalInfo = RackNumber`, the app follows the rack-based selection without the normal table confirmation.

---

## Step 5 – Pack a product into the active box

1. Select the product from the active group.
2. Select the correct existing box or a new packaging code.
3. Check the packing note and product details.
4. Check the suggested quantity on the numeric keypad.
5. Adjust the quantity if necessary.
6. Tap **Confirm**.

BoxPacking prevents you from packing more than the remaining order quantity. After successful registration:

- the contents are added to the active box;
- an existing content line for the same product is increased instead of duplicated;
- the remaining order and packing-table quantities are updated;
- a fully processed product line disappears from the active list.

The `LinkBox.DepartmentId` policy contains the ID of the box-packing department recorded when a new box is created. When this policy is empty, Florisoft can fall back to the existing `DoosvullenVerpakkingAfdeling` Backoffice setting. Check this department when new boxes are administratively assigned to the wrong department.

---

## Step 6 – Change the active box packaging code

When incorrect packaging was selected or different packaging is needed:

1. select the active box;
2. select the action for changing the current packaging code;
3. select another available packaging type;
4. confirm the change.

The new packaging code is saved and used for subsequent packing and label actions. The available options are again determined by `NewPacking.AvailablePackagingIds` and the customer-specific box packaging code.

---

## Step 7 – Process discrepancies and incorrect packing-table lines

If Exception Registration is available, you can register a discrepancy from a product line:

1. swipe across the product line;
2. open the discrepancy action;
3. select a reason and register the discrepant quantity;
4. confirm the registration.

BoxPacking then lowers the remaining packing-table quantity. If nothing remains, the line disappears from the overview. The discrepancy stores the BoxPacking use case as its source for traceable follow-up.

The `AllowRemovingPackingStationItems` policy determines whether the additional remove action is available for packing-table lines:

- `false`: the waste-bin action is unavailable. This is the default value;
- `true`: the user can manually remove a line from the active packing table without registering it as normally packed.

Only use removal for an incorrectly scanned or no longer processable pick item. The action marks the packing-table line as processed and removes it from the active overview, but does not add the product to a box.

---

## Step 8 – Pause a box

Select **Pause box** when you want to continue with the active box later. The box remains available and can be selected again during a subsequent packing action.

The policies under `PauseBox.BoxLabel` determine the pause label:

- `PausedBoxPrinterName`: printer for the pause label. It can fall back to the existing box-label printer;
- `PausedBoxPrintLayout`: sticker layout for the pause label;
- `PauseBox.BoxLabel.IsActive`: enables or disables printing the pause label.

For a successful pause action, the printer, layout and printing setting must form a valid printer configuration. If this configuration is missing or the layout is invalid, the pause action stops with a message that no printer is configured.

After a successful action, check that the pause label was physically printed and attached to the correct box.

---

## Step 9 – Complete a box

Select **Complete box** when the active box is ready. A completed box receives the fully packed status and disappears from the overview of open boxes.

The policies under `FinalizeBox.BoxLabel` determine the final label:

- `CompletedBoxPrinterName`: printer for the completed-box label. It can fall back to the existing box-label printer;
- `CompletedBoxPrintLayout`: sticker layout for the final label;
- `FinalizeBox.BoxLabel.IsActive`: enables or disables printing the final label.

The printer, layout and printing setting must also form a valid configuration here. The box is not completed when the printer configuration is missing or invalid.

### Register a required lockplate

The `FinalizeBox.RequireLockPlateRegistration` policy determines whether BoxPacking must register an external identifier when completing a box. The default value is `false`.

The scan is only required when both conditions apply:

- `RequireLockPlateRegistration = true`;
- `FUST.SLTPLTDV = TRUE` for the selected packaging code.

BoxPacking then asks for the box barcode before completing the box. Completion stops without a valid barcode. After a valid scan, the lockplate integration registers the external identifier for the customer and packaging code.

---

## Messages and solutions

### No orders are available

- Check that `BoxPackingStrategy` is set to `OrderSelection`.
- Check that the order still has at least one order line that is not fully packed.
- Search again by customer or order number.
- Ask the planner whether the order lines are available correctly.

### No products are available at the packing table

- Check that `BoxPackingStrategy` is set to `PackingStation`.
- Check `PackingStationId` and the table number above the incoming list.
- Check in Sorting that the pick items are linked to this packing table.
- Check that the lines still have a quantity above zero and are not marked as processed.

### No packaging is available

- Check `NewPacking.AvailablePackagingIds`.
- Check that the selected codes exist in the Backoffice `FUST` table.
- Check the customer-specific box packaging code.
- Remember that an empty policy list does not release all packaging codes.

### A box from another table is not visible

- Check that `BoxVisibilityStrategy = AllTables`.
- Check `BoxAdditionalInfo` when the table or rack number is needed to recognise the box.
- Check that the box is not fully packed and is linked to a packing table.

### A box cannot be transferred

Unpacked products for the same order remain at the original packing table. Process or correct these products first and try again.

### The quantity cannot be confirmed

- Select a product and an active box first.
- Enter a quantity above zero.
- Check `ToPackQuantityDisplayType` and the product's bunch content.
- Do not enter more than the remaining order quantity.

### A packing-table line cannot be removed

Check that `AllowRemovingPackingStationItems = true`. Only use this action for an incorrect line; always register normal products through the box.

### Pausing or completing does not work

- Check `PauseBox.BoxLabel.IsActive` or `FinalizeBox.BoxLabel.IsActive` for the relevant action.
- Check `PausedBoxPrinterName` and `PausedBoxPrintLayout` when pausing.
- Check `CompletedBoxPrinterName` and `CompletedBoxPrintLayout` when completing.
- Check that the printer and print layout are accessible and valid.
- For lockplate packaging, check `FinalizeBox.RequireLockPlateRegistration`, `FUST.SLTPLTDV` and the scanned barcode.

---

## Important for a correct configuration

- Configure a valid `PackingStationId` for the Sorting workflow.
- Align `BoxVisibilityStrategy` and `BoxAdditionalInfo`.
- Only enable `AllowRemovingPackingStationItems` for employees who may clean up incorrect packing-table lines.
- Select one clear quantity unit with `ToPackQuantityDisplayType` and check product bunch content.
- Add all generally permitted packaging codes to `NewPacking.AvailablePackagingIds` and check the customer-specific box packaging code.
- Check `LinkBox.DepartmentId` before creating new boxes in production.
- Test `PauseBox.BoxLabel.PausedBoxPrinterName`, `PausedBoxPrintLayout` and `IsActive` together.
- Test `FinalizeBox.BoxLabel.CompletedBoxPrinterName`, `CompletedBoxPrintLayout` and `IsActive` together.
- Only enable `FinalizeBox.RequireLockPlateRegistration` when the relevant packaging codes and lockplate integration are configured correctly.
