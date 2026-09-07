![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – EntryControl (Receiving App)

## Introduction

With **EntryControl**, a logistics employee registers inbound items on a mobile device. The employee identifies an expected item by scanning a barcode or searching manually, checks the item data and registers the fully or partially received quantity. During processing, Florisoft can print distribution and pick-order labels.

The workflow is configured through policies. These determine the active inbound area, available stocks, visible search filters, and printer and label settings.

This manual describes the current user steps and explains the policies that determine the behaviour at each step.

---

## Licence requirements and prerequisites

EntryControl requires at least:

- access to the Florisoft **Receiving App**;
- access to the `Logistics.Receiving.EntryControl` use case;
- a valid employee;
- a configured box or inbound area containing expected inbound items;
- a scanner or camera for the scanning workflow;
- for printing: a configured printer, distribution-label layout and accessible printing service.

The Receiving App only shows EntryControl when the user has full access to the use case. If no employee is known yet, Florisoft requests employee identification when the use case starts. Processing is then performed with this employee.

## Where can you find the policies?

Open the **constants screen** in the Backoffice and go through **System → Users → Policy Management** to **Apps → Logistics → Receiving → EntryControl**. Processing and label settings are in the underlying **ProcessInboundItem** group.

For more information about creating, linking and prioritising policies, see the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

> Test a changed configuration first with a separate test policy, a representative inbound area and the intended printer. The receipt may already have been processed administratively when Florisoft subsequently reports that the printer or layout is missing.

---

## The EntryControl process in brief

1. Open the Receiving App, select **EntryControl** and identify the employee when requested.
2. Check whether **Print directly** is suitable for the intended workflow.
3. Scan the inbound item or open the search function.
4. Select the correct item when multiple results are available.
5. Check the item data and remaining quantity.
6. Register the full or a partial receipt.
7. Check the message and printed labels.
8. Process a remaining quantity or return to receive another item.

---

## Step 1 – Configure the receiving context

EntryControl always works within one active box or inbound area. The `InboundAreaId` policy determines which box code is active. Its selection list uses the available boxes from the Backoffice.

The app only displays, searches and processes inbound lines whose box code matches `InboundAreaId`. When this policy is empty, EntryControl finds no lines with a valid box code. An incorrect box code can result in the employee seeing no items or a scanned item being reported as not found.

The `AvailableStocks` policy determines the stocks from which items may be found. Its list uses the available stock codes from the Backoffice:

- scanning and manual searching remain limited to the selected stocks;

An empty `AvailableStocks` list does not add an extra stock restriction to the search and scan query. The active `InboundAreaId` always remains applicable. Populate the list explicitly when employees may only process items from particular stocks.

Check the combination of `InboundAreaId` and `AvailableStocks` with actual inbound lines before using the policy in production.

---

## Step 2 – Scan with or without Print directly

The start screen requests an inbound-item scan. The **Print directly** option is shown at the bottom.

### Print directly disabled

When **Print directly** is disabled:

1. scan the barcode of the inbound item;
2. select the correct item when the barcode produces multiple results;
3. check the item data and quantity on the details screen;
4. adjust the quantity to process when necessary;
5. tap the **check-mark** button to process the receipt.

This method is suitable when the employee must check the data or received quantity before registration.

### Print directly enabled

When **Print directly** is enabled, Florisoft immediately processes the full remaining quantity after a valid scan. The details screen and manual quantity check are skipped. If multiple inbound items belong to the barcode, the employee must first select the correct item.

Only use **Print directly** when the physical delivery matches the full outstanding quantity. Disable the option for a partial receipt or when a check is required before registration.

The app temporarily displays a loading screen after the scan. Do not scan the next item until processing and any message have finished.

### No or multiple results

- When the barcode produces no valid result, Florisoft reports that the scanned barcode is invalid.
- When the barcode produces exactly one item, the app continues immediately using the selected printing method.
- When the barcode produces multiple items, **Select inbound item** opens. Tap the correct item and confirm the selection.

The scan only searches stocks from `AvailableStocks`. The final item selection and processing must also be within the active `InboundAreaId`.

---

## Step 3 – Search for an inbound item manually

Use the **magnifying-glass** button on the start screen when a barcode is missing, damaged or unusable.

The **Search inbound item** screen shows expected inbound items from the active inbound area and permitted stocks. The list is sorted by description and then by stock-item number. Each row shows:

- the product picture, when available;
- the description;
- characteristics S1, S2 and S3;
- the supplier;
- the total quantity;
- a green status indicator when the processed quantity is equal to or greater than the total quantity.

Enter at least three characters to refresh the list with a search term. Text searches the description without distinguishing uppercase and lowercase letters. A numeric search term also compares the final four digits of the stock-item number. Clear the search field to load the complete permitted list again.

1. Search for the required item.
2. Tap the correct row.
3. Tap **Select inbound item**.
4. Check the details screen and register the quantity.

Manually selected items are always processed through the details screen. The **Print directly** option on the scanning screen does not skip this check.

---

## Step 4 – Filter the search list

The `AvailableInboundItemFilterOptions` policy determines which fields are available in **Filter inbound items**. Only explicitly supplied options are shown. When the list is empty or is not supplied to the app, the filter button is hidden.

EntryControl supports the following values:

- `StockIds`: filter by one or more stock codes;
- `PackagingIds`: filter by one or more packaging codes;
- `SupplierIds`: filter by one or more suppliers;
- `ShipmentNumber`: filter by text contained in the shipment number, without distinguishing uppercase and lowercase letters.

Open the filter, enter or select the required values and select **Apply**. The number beside the filter button shows how many filter fields are active. Multiple filter types apply together, so a result must satisfy every active filter type. Within one multiple selection, such as two stocks, an item may match either selected value.

Select **Reset** to clear every filter field. The search term remains in place, and the list reloads using that search term, `InboundAreaId` and `AvailableStocks`.

> The current EntryControl app has no separate **Hide completed** filter. Fully processed lines can remain in the overview and are identifiable by the green status indicator.

---

## Step 5 – Check the item and quantity

The **Review item** screen shows:

- product picture and description;
- supplier;
- packaging code;
- characteristics S1, S2 and S3;
- number of boxes × content, with the total number of stems;
- shipment number;
- the quantity still to process.

When the screen opens, Florisoft proposes the full remaining quantity. The input accepts a minimum of zero and a maximum of the remaining quantity. The **check-mark** button only becomes active for a quantity above zero.

Check the physical item, characteristics, packaging and quantity before confirming. Use the **home button** to return to the start screen without registering. Use the **magnifying glass** to search for another item.

---

## Step 6 – Register a full or partial receipt

### Full receipt

Leave the proposed remaining quantity unchanged and tap the **check mark**. After successful processing, Florisoft returns to the start screen. The item is fully processed when the registered quantity equals the total expected quantity.

### Partial receipt

For a partial receipt, enter a quantity below the remaining quantity and tap the **check mark**. Florisoft only processes this amount. The details screen remains open, reduces the remaining quantity and resets the input to zero.

You can then:

- process another quantity of the same item;
- use the magnifying glass to search for another item;
- use the home button to return to the scanning screen.

Never register more than was physically received. Successful processing may already have performed stock and distribution actions, even when a subsequent printing warning appears.

---

## Step 7 – Print and check labels

EntryControl invokes the distribution-label printing workflow for every confirmed processing action. The policies under `ProcessInboundItem` determine the output.

`ProcessInboundItem.InboundItemLabelLayout` selects the distribution-label layout. The selection list contains print layouts of the **BoxVerdeelsticker** type. Without a layout, Florisoft still processes the item but then warns that it may not have been printed.

`ProcessInboundItem.InboundItemLabelPrinter` selects the printer. Without a printer, Florisoft still processes the item but then warns that it may not have been printed.

`ProcessInboundItem.AlwaysPrintPickItemLabels` determines whether distribution or pick-order labels must always be printed during processing. Without an enabled value, this behaviour is disabled. Test this policy with an item allocated to a pick order and an item that is not.

`ProcessInboundItem.PrintOneLabelPerBox` determines whether one label is printed for each box. Without an enabled value, processing does not enforce this one-label-per-box variant. Use different box and content quantities to check that the physical label count matches the warehouse process.

The `ProcessInboundItem.TakePictureDuringProcessing` policy is visible in Policy Management, but is marked there as **not yet implemented**. Do not rely on this setting to take or retain pictures, and do not include picture capture in the operational workflow.

After a success message, processing has been performed and the application has handled the print request. Always check whether the correct number of labels physically appeared on the intended printer. An app message does not prove that paper, media or printer hardware worked correctly.

---

## Important for a correct configuration

- Configure a valid `InboundAreaId` before employees use EntryControl.
- Use `AvailableStocks` to deliberately restrict the permitted receiving stock.
- Use `AvailableInboundItemFilterOptions` to offer only the filters employees require.
- Test full receipt, partial receipt and **Print directly** separately.
- Test the printer, layout, `AlwaysPrintPickItemLabels` and `PrintOneLabelPerBox` as one coherent configuration.
- Treat a printing warning as an already completed receipt registration; do not blindly register it again.
- Do not rely on `TakePictureDuringProcessing` while the function is marked as not implemented.
- Handling units, visible cross-dock instructions, separate customer-label controls and a filter for hiding completed lines are not part of the current app workflow.
