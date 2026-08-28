![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Sorting (Sorting App)

## Introduction

With **Sorting**, a logistics employee links scanned pick items to a packing table. The app supports two fixed workflows: scanning a pick item before the packing table, or activating a packing table before scanning multiple pick items.

The active workflow is determined centrally through a policy. The employee does not select it. The app always shows which scan is expected, rejects unsuitable barcodes and, after a successful action, records the pick item, quantity, packing table and employee.

This manual describes the user steps and the settings that determine the behaviour.

---

## Licence requirements and prerequisites

Sorting requires at least:

- access to the Florisoft **Sorting App**;
- full access to the `Logistics.Sorting` use case;
- a valid employee;
- a scanner or camera;
- valid pick-item barcodes from which both the pick item and quantity can be recognised;
- valid packing-table barcodes;
- pick items that have not yet been fully processed;
- correctly configured packing tables;
- for the next step: an appropriate BoxPacking configuration.

## Where can you find the policies?

Open the **constants screen** in the Backoffice and go through **System → Users → Policy Management** to **Apps → Logistics → Sorting**.

Sorting contains the following policies:

- `SortingStrategy`: determines whether the employee scans a pick item or a packing table first;
- `DisplayedStockItemIdentifier`: determines which stock-item identifier is displayed for a sorted pick item.

For more information about creating, linking and prioritising policies, see the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

> Test a changed sorting strategy first with separate test barcodes and a test packing table. An employee cannot change the configured scan order in the app.

---

## The Sorting process in brief

### Pick item first

1. Open Sorting and identify the employee.
2. Scan a pick-item barcode containing a quantity.
3. Check the product details and any known packing table.
4. Scan the required packing table.
5. Check the confirmation and scan the next pick item.

### Packing table first

1. Open Sorting and identify the employee.
2. Scan the packing table.
3. Scan one or more pick-item barcodes containing quantities.
4. When a warning appears, confirm whether the pick item may still be sent to this table.
5. Scan the next packing table directly if required.
6. Return to the start screen with the home button when finished.

---

## Step 1 – Start the app and employee context

Open the Sorting App. If no employee is known yet, Florisoft first requests identification. Every successful sorting scan is then linked to this employee.

The `SortingStrategy` policy determines the instruction on the start screen:

- `PickItemFirst`: the start screen shows **Scan pick item**. This is the default value;
- `PackingStationFirst`: the start screen shows **Scan packing table**.

The app only accepts the object type that belongs to the configured strategy on the start screen. If you scan a packing table first with `PickItemFirst`, the app asks you to scan a pick item first. If you scan a pick item first with `PackingStationFirst`, the app asks you to scan a packing table first.

---

## Step 2 – Use valid barcodes

Sorting passes every scan through the central barcode decoder.

### Pick-item barcode

A valid pick-item scan must produce both a pick-item ID and a quantity. The Sorting use case uses the trolley-building or order-line barcode containing the quantity. The app rejects the scan when:

- the pick-item ID is missing or zero;
- the quantity is missing or zero;
- the pick item does not exist;
- no unprocessed pick item is found for the barcode;
- the barcode cannot be recognised as a pick item.

### Packing-table barcode

A valid packing-table barcode must be recognised as a packing table by the decoder and produce a table number above zero. The use case defines these as barcodes beginning with `T`. An unknown or invalid table barcode is rejected.

After an incorrect scan, you remain on the current screen and can scan again immediately.

---

## Step 3 – Use the pick-item-first workflow

1. Scan a valid pick-item barcode on the start screen.
2. Check the image, description and `S1`, `S2` and `S3` characteristics on the pick-item screen.
3. Check whether the app indicates that a box or context for the same customer and order is already known at a packing table.
4. Scan the packing table to which you want to link this pick item.
5. Wait for confirmation that the pick item was successfully sorted for the packing table.

After a successful link, Florisoft records the quantity from the barcode at the scanned packing table. The app automatically returns to the start screen so you can scan the next pick item.

If a packing table is already known for the same customer and order, the pick-item screen shows its number as a point of attention. The packing table actually scanned by the employee determines where the current pick item is linked.

---

## Step 4 – Use the packing-table-first workflow

1. Scan a valid packing-table barcode on the start screen.
2. Check the active table number at the top of the packing-table screen.
3. Scan a valid pick-item barcode containing a quantity.
4. Check the success message and the newly added product in the overview.
5. Scan the next pick item for the same packing table directly.
6. Scan another packing-table barcode to change tables without returning to the start screen.
7. Tap the home button when you want to leave the packing-table workflow.

The screen shows the number of pick items successfully sorted during the open table context. The most recently scanned pick item appears at the top and is selected automatically so it remains immediately visible.

When you activate another packing table or reopen the screen, the visible session overview starts empty again. The earlier links remain stored in Florisoft and are available for the next step in BoxPacking.

---

## Step 5 – Process a warning about another known packing table

In the packing-table-first workflow, Sorting checks after every pick-item scan whether a packing table is already known for the same customer and order. This can occur, for example, when a paused box for the order is present there.

If the known table differs from the active packing table, the app shows a warning containing that table number and asks whether you want to continue:

- select **Yes** to link the pick item to the active packing table anyway;
- select **No** to cancel the action. The existing situation then remains unchanged.

Before selecting **Yes**, check that the product is physically at the active table and that the order is deliberately being processed across multiple tables. This prevents additional products from ending up at a different table from the paused box.

---

## Step 6 – Configure the displayed stock-item identifier

The `DisplayedStockItemIdentifier` policy determines which parcel number is displayed in the overview of sorted pick items:

- `StockItemNr`: show the last four characters of the stock-item number. This is the default value;
- `VStockItemNr`: show the last four characters of the V stock-item number;
- `None`: in the current Sorting processing, this value falls back to `StockItemNr` and therefore does not hide the number.

The policy only changes the recognition information on the screen. It does not change which pick item is linked and does not affect the quantity from the barcode.

---

## Step 7 – Continue in BoxPacking

After a successful sorting scan, the pick item is linked to the packing table. BoxPacking retrieves the products that have not yet been packed for its configured table, retains the sorting order and groups the products by customer and order.

Use the [BoxPacking manual](../BoxPacking/Manual%20BoxPacking%20-%20EN.md#start-from-sorting-and-a-packing-table) for the next steps. It explains how to:

- check the correct packing table;
- select an existing or new box;
- pack quantities;
- process discrepancies;
- pause or complete a box.

---

## Messages and solutions

### Scan a pick item first

The selected scan strategy expects a pick item first, but you scanned a packing table. Scan a valid pick-item barcode first and then the packing table.

### Scan a packing table first

The selected scan strategy expects a packing table first, but you scanned a pick item. Scan the packing table first and then one or more pick items.

### Invalid barcode

- Check that you are scanning the object type requested on the screen.
- Check that a packing-table barcode is valid and produces a table number.
- Check that the pick-item barcode contains both an ID and a quantity.
- Clean the barcode or print a new label when it cannot be read.

### No unprocessed pick item found

- Check that you scanned the correct label.
- Check that the pick item still exists and has not been fully processed.
- Check that the quantity in the barcode is above zero.

### The pick item is already active at another packing table

Check the stated table and the product's physical location. Only select **Yes** when the pick item may deliberately be sent to the current table. Otherwise select **No** and take the product to the table that is already known.

### The required stock-item number is not displayed

Check `DisplayedStockItemIdentifier`. Remember that only the final four characters are displayed and that `None` currently falls back to `StockItemNr`.

---

## Important for a correct configuration

- Use one fixed process order: `PickItemFirst` or `PackingStationFirst`.
- Align the physical warehouse workflow and screen instructions with this strategy.
- Use pick-item barcodes containing a valid pick-item ID and quantity.
- Use recognisable, unique packing-table barcodes that Florisoft decodes as packing tables.
- Select the parcel number employees recognise on the warehouse floor.
- Test the warning for another known packing table with a representative paused box.
- Check together with BoxPacking that sorted pick items appear at the intended packing table and in the correct order.
