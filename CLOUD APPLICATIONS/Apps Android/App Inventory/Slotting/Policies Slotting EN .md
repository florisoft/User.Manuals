![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Slotting Policies (Inventory app)

This manual helps you configure the **Slotting functionality** in the Inventory app.
Using policies, you can influence the app's behavior, including which stocks are available for use and whether predefined locations must be validated.

> ⚠️ Don't forget to set the correct [authorizations](#authorizations). Without them, certain features will be unavailable.

---

## Where to find the Slotting policies

Slotting policies are configured via **Policy Management** in the constants screen of the Backoffice.
Follow the steps below to access them:

| Step  | Description                                                           |
| ----- | --------------------------------------------------------------------- |
| **1** | Open the **constants screen** in the Backoffice via the navigator.    |
| **2** | Navigate to: **System → Users → Policy Management**.                  |
| **3** | Select or create a policy and go to: **Apps → Inventory → Slotting**. |

Want to learn more about configuring and managing policies in general? Refer to the [Policy Management Manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

---

## Overview of policies

This chapter lists policies specifically related to the Slotting functionality.
Each policy description explains its function, how to configure it, and what to watch out for when using it.

> ⚠️ Some policies may depend on how your environment is configured. Not all policies apply in every situation.

---

### Inventory-wide Settings

Some settings apply across the entire Inventory module, regardless of the specific use case.

### `DisplayedStockItemIdentifier`

Determines which type of parcel number is displayed in the app. Only the **last four digits** are shown for clarity and ease of use.

**Available options:**

- `PartijNr`
- `VPartijNr`

---

### `ToPickQuantityDisplay`  
Determines how the quantity to pick is displayed in the app.  

Available options:

* **Colli × content + remainder (default)**  
  Displays the number of colli with their content plus any remaining single stems.

* **Stems**  
  Displays the total number of individual stems.

---

### Location handling settings

These policies determine how the app assigns and processes stock locations.

### `PrintSettings`

This **policy group** defines how stock and price labels are printed.

#### Settings

- **Available printer types:**

  - `AvailablePrinters`: defines which print options are available in the application.
    - Possible values:
      - `PriceLabels`: price labels only
      - `StockLabels`: stock labels only
      - `All`: both options available

- **Printers:**

  - `PriceLabelPrinter`: printer for price labels  
  - `StockLabelPrinter`: printer for stock labels

- **Layouts:**

  - `PriceLabelLayout`: layout for price labels  
  - `StockLabelLayout`: layout for stock labels

- **Description in the app:**
  - `PriceLabelPrinterDescription`
  - `StockLabelPrinterDescription`\
    ➞ The description appears in the app to help users identify the correct printer.

> ℹ️ The **JobAgent** must be active for printing to work. If it is not running, no printers will appear and printing is disabled. See the [JobAgent guide](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Windows/Job-Agent/Manual%20Job-Agent%20-%20EN.md) for installation and configuration.

---

### `AvailableStocks`

This policy defines which stocks can be used for Slotting.
Only the selected stocks are visible and editable in the Slotting app.

---

### `CheckPredefinedLocationCodes`

Enables validation of predefined location codes.
When enabled, the app checks whether the entered location exists in the **Parcel locations** table in the constants screen. Only registered location codes can be used.

> ⚠️ **Recommended Usage**  
We recommend enabling `CheckPredefinedLocationCodes`.  
By allowing only predefined location codes, the app can determine the result more accurately and consistently.

---

### `LinkParcelToLocationThenResetLocation`

Specifies that a parcel is first linked to a location, after which the location setting is cleared.
This prevents subsequent parcels from inheriting the same location by default.

---

### `ClearLocationIsAllowed`

When this policy is enabled, an additional button is added to the hamburger menu. This button allows the user to "clear" a location in one action.

    ℹ️ This functionality is only available after a location code has been scanned. When scanning a parcel, the button is not shown and it is therefore not possible to remove items from a location using this method.

---

### `LocationDisplayType`  
Determines how the location is displayed in the app.  

This policy works in combination with `CheckPredefinedLocationCodes`.  
When this policy is enabled, the location is checked against the **Parcel Locations** table.  
With `LocationDisplayType` you can specify whether the **code** or the **description** of the location is shown.  

Available options:

* **Location code (default)**  
  Displays only the location code.

* **Location description**  
  Displays only the location description.

---

### `StockItemQuantityDisplay`  
Determines how the parcel quantity is displayed in the app.  

Available options:

* **Colli × content + remainder (default)**  
  Displays the number of colli with their content plus any remaining single stems.

* **Stems**  
  Displays the total number of individual stems.


## Settings Outside of Policies

Not all settings are currently included in the policy groups for Slotting. Some settings still reside within the system itself. Although they may be of lower strategic importance, they deserve attention due to their impact on slotting behavior.

### System Setting: `LocationFieldLength`

This setting defines the maximum length (in number of characters) for a scanned value to be recognized as a location barcode within the system. This length is applied across many tables for location or related fields.

**For example:**
If the value is set to `6` and you scan a barcode containing `7` characters, it will not be recognized as a location

This length is also used during purging of tables: once the `LocationFieldLength` value is changed, all tables that depend on this structure must be purged to ensure data and system logic remain consistent with the new setting.

> ⚠️ **Caution:** Modifying this value is at your own risk. Changes may have unintended consequences for processes that rely on location recognition.

**Default value:** `6`

---

## Authorizations

Specific authorizations are required to access the Slotting functionality.
Without these, users cannot open or use the app.

| Step  | Description                                                                                                                                        |
| ----- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| **1** | Open the **constants screen** via the navigator.                                                                                                   |
| **2** | Navigate to **System → Users → System users**.                                                                                                     |
| **3** | Open the relevant user and click **Authorization**.                                                                                                |
| **4** | Press **F3** to open the search window.                                                                                                            |
| **5** | Search for code **424**. Select the authorization: **Navigator palmtop/Location\_pda\_424** and choose **Allow all actions**. Confirm with **OK**. |
| **6** | Repeat for other users. You can speed this up using the **Copy authorization** button.                                                             |

---
