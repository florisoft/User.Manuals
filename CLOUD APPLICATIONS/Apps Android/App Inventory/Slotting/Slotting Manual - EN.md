![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Inventory Slotting (Slotting App)

This manual explains how to use and configure the Slotting functionality in the Florisoft Inventory App. It covers the complete user workflow, the relevant policies, the system setting, and authorization.

---

## Requirements

To use Slotting, you need:

- Florisoft Inventory App
- Backoffice Stock module
- PDA Pickorder location module

---

## What is Slotting?

Slotting allows warehouse employees to link stock items to physical warehouse locations. An employee can start with a location and link several stock items to it, or identify a stock item first and then scan the target location. Depending on policies and authorization, the app can also display locations and their linked stock items, clear locations, and print labels.

---

## Workflow overview

1. Open Slotting in the Inventory App.
2. Scan a location or stock item, or use the search function.
3. Scan the second item to link the stock item and location.
4. Check the link in the app or Backoffice.
5. Print a price or stock label if required.

The following sections explain the applicable settings and policies for each step.

---

## Step 1 – Log in and open Slotting

Open the Inventory App from the Florisoft Hub App or with the Inventory App icon, and log in with your credentials. Select the **Slotting** tile on the navigation screen.

The user needs authorization code **424** to open and use Slotting. See [Authorizations](#authorizations) for configuration instructions.

---

## Step 2 – Select the scanning workflow

The scanning screen opens immediately when you start Slotting. Select the workflow that best matches the warehouse task:

- **Location first:** scan the location and then scan the stock items you want to place there. Use this workflow when several stock items are going to the same location.
- **Stock item first:** scan the stock item and then scan its location. Use this workflow when you pick up an individual stock item and take it to a location.

You can enter barcodes with a scanner. Swipe right to enter a barcode manually. Scanning is available on the home screen, location overview, and stock item details. On the home screen, the app opens the identified location or stock item. On a location overview, a scanned stock item is linked directly to the active location. On a stock item detail screen, scanning a location links the active stock item directly to that location. If a scan produces multiple results, first select the correct result from the selection screen.

### Find a stock item manually

Use the search icon on the home screen or location overview when a stock item cannot be scanned. You can search by product name, stock item number, V-stock item number, `Scancode`, or `Scancode2`. The search screen displays regular stock items. After you make a selection, the app applies the active slotting strategy. For example, it may open the selected stock item as a complete V-stock item or display a follow-up selection for partial stock items or unique carriers.

If several stocks are available, you can filter the results by stock. Use `AvailableStockItemFilterOptions` to configure the additional filters that are available. These can include stock, packaging, supplier, shipment number, empty stock items, stem length, product group, and stock item marks.

The following policies determine which stock items and locations are available and how their information is displayed:

- `AvailableStocks`: determines which stocks the app searches.
- `DisplayedStockItemIdentifier`: displays the last four digits of the `StockItemNr` or `VStockItemNr`.
- `LocationDisplayType`: displays either the location code or location description.
- `StockItemQuantityDisplay`: displays the stock item quantity as packages × contents + remainder, or as the total number of stems.
- `ToPickQuantityDisplay`: displays the quantity to pick as packages × contents + remainder, or as the total number of stems.

---

## Step 3A – Workflow: location first

Scan the barcode of the location where you want to place stock items. The app validates the location and opens the location overview. Then scan the stock items you want to link to this location. Scan another location to repeat the process there.

When `CheckPredefinedLocationCodes` is enabled, the app accepts only locations registered in the **Stock Item Locations** table. `AdditionalActions` can perform an additional action automatically after a successful link. The currently available action is `MarkAsReceived`, which immediately registers the stock item as received.

> **Important:** `MarkAsReceived` requires a valid **Entry Control** license (`Logistics.Receiving.EntryControl`).

The location overview follows the active slotting strategy and therefore displays stock items, V-stock items, partial stock items, or unique carriers. It shows only data from the available stocks. For V-stock items, the quantities of the underlying stock items are combined. Partial stock items and unique carriers belonging to the same main stock item can be grouped by stock item number.

### Create a new location

When `AllowCreateLocation` is enabled, you can add a location that does not yet exist:

| Step | Instructions |
| --- | --- |
| **1** | Open the hamburger menu on the Slotting scanning screen. |
| **2** | Select **Create location**. |
| **3** | Enter the location code or scan the location barcode. |
| **4** | Enter the location name or description. |
| **5** | Save the location. |

The location code and location name are required. The location code is stored in uppercase in the Stock Item Location table (`PARTIJLOC`). If the code already exists, the app does not create a duplicate and displays an error. After the location is saved successfully, it is immediately available for location validation.

### View stock items or clear a location

After you scan a location, the app displays the stock objects linked to it. When `ClearLocationIsAllowed` is enabled, the hamburger menu contains an action for clearing the location. This removes linked stock items, partial stock items, and unique carriers from the location.

This action is available only after a location has been scanned. The button is not displayed when you started with a stock item scan.

---

## Step 3B – Workflow: stock item first

Scan a stock item barcode or select a stock item from the search screen. Check the stock item details and then scan the location barcode to create the link. Repeat this process for all stock items that require a location.

---

## After a successful link

The app displays a confirmation when the link is complete. The new location is updated immediately on the stock item detail screen. When you work from a location overview, the linked stock object is added to the list and selected. When `ReturnToHomeAfterLinking` is enabled, the app returns to the home screen after each successful link.

---

## Workflow by slotting strategy

Use `SlottingStrategy` to determine the type of stock object used by both scanning workflows:

- `StockItem`: standard slotting based on individual stock items.
- `VstockItem`: places all stock items belonging to the relevant V-stock item and available to the user on the location together.
- `PartialStockItem`: divides a stock item over one or more locations by using partial stock items.
- `UniqueCarrier`: performs slotting based on unique carriers.

With `VstockItem`, a single action can therefore change several underlying stock items.

### Create or move partial stock items

With `PartialStockItem`, the app displays the existing partial stock items after you identify a stock item. Select an existing partial stock item to move it, select **New partial stock item** to place a new part on a location, or cancel to return.

Next, scan the target location and enter the quantity. For a new partial stock item, the suggested maximum is the quantity of the main stock item that has not yet been divided. For an existing partial stock item, the maximum is the quantity of that partial stock item.

- Enter the complete quantity of an existing partial stock item to move it in full.
- Enter a lower quantity to split the partial stock item and move only the specified part.
- If a partial stock item belonging to the same main stock item already exists at the target location, the entered quantity is added to it.
- A quantity of zero, a negative quantity, or a quantity above the available maximum is rejected.
- If the target location is the same as the current location, the app reports that the partial stock item is already there.

### Place unique carriers on a location

With `UniqueCarrier`, you can scan the barcode or QR code of the carrier directly. If you first search for or scan the related stock item, select the appropriate carrier from the carriers found. The app selects it automatically when only one carrier is available.

Then scan the location. You do not need to enter a quantity: the app uses the quantity of the unique carrier. If no logistics partial stock item is linked to the carrier yet, the system creates one while placing the carrier on the location. A carrier with an unknown or in-transit status cannot be placed on a location; the app displays an error in that situation.

---

## Step 4 – Check stock item locations in Backoffice (optional)

Backoffice allows you to view the current and previous locations of a stock item.

| Step | Instructions |
| --- | --- |
| **1** | Open the stock screen from the navigator. |
| **2** | Right-click a stock item in the relevant stock. |
| **3** | Select **Stock item log**. |
| **4** | Review the changes made to the stock item. |
| **5** | Use the **Loc. from** and **Loc. to** columns to review location changes. If these columns are not visible, right-click the column names, enable `LOCATIEVAN` and `LOCATIENAAR`, and select **OK**. |

---

## Step 5 – Print price and stock labels (optional)

You can print price and stock labels from the stock item detail screen. Open the print dialog, enter the required quantity for each label type, and select **Print**. No print job is sent when both quantities are zero.

For a regular stock item, the label is generated from its stock item number. For a partial stock item or unique carrier, the app uses the stock item number of the related main stock item. For a V-stock item, the app uses an underlying stock item from the V-stock item.

The `PrintSettings` policy group contains:

- `AvailablePrinters`: makes price and/or stock labels available with the values `Price` and `Stock`.
- `PriceLabelPrinter` and `StockLabelPrinter`: configure the printers.
- `PriceLabelLayout` and `StockLabelLayout`: configure the label templates.
- `PriceLabelPrinterDescription` and `StockLabelPrinterDescription`: configure the descriptions displayed in the app.

Printing is not possible without a configured printer. The **JobAgent** must also be active. If necessary, see the [JobAgent manual](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Windows/Job-Agent/Manual%20Job-Agent%20-%20EN.md).

---

## Where can you find the Slotting policies?

Configure the policies through **Policy Management** in the Backoffice constants screen.

| Step | Instructions |
| --- | --- |
| **1** | Open the constants screen from the navigator. |
| **2** | Go to **System → Users → Policy Management**. |
| **3** | Select or create a policy and go to **Apps → Inventory → Slotting**. |

For general information about policies, see the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

---

## Setting outside Policy Management

### `LocatieVeldLengte`

This system setting determines the maximum length at which a scanned value is recognized as a location barcode. The default value is `6`; a barcode with seven characters is therefore not recognized as a location. When a different length is configured, a location code within that length must contain at least one non-numeric character.

After changing this setting, tables that use this field structure may need to be purged so their storage and processing match the new length.

> **Important:** change this setting only in consultation with Florisoft or your system administrator. A change can affect every process that uses location recognition.

---

## Authorizations

Users cannot open or use Slotting without the required authorization.

| Step | Instructions |
| --- | --- |
| **1** | Open the constants screen from the navigator. |
| **2** | Go to **System → Users → System users**. |
| **3** | Open the required user and select **Authorization**. |
| **4** | Press **F3** to open the search window. |
| **5** | Search for code **424** and select **Navigator palmtop/Locatie_pda_424**. Select **All operations allowed** and confirm with **OK**. |
| **6** | Repeat this for other users or use **Copy authorization**. |
