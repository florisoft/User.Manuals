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

### Location handling settings

These policies determine how the app assigns and processes stock locations.

### `AvailableStocks`

This policy defines which stocks can be used for Slotting.
Only the selected stocks are visible and editable in the Slotting app.

---

### `CheckPredefinedLocationCodes`

Enables validation of predefined location codes.
When enabled, the app checks whether the entered location exists in the **Parcel locations** table in the constants screen. Only registered location codes can be used.

---

### `LinkParcelToLocationThenResetLocation`

Specifies that a parcel is first linked to a location, after which the location setting is cleared.
This prevents subsequent parcels from inheriting the same location by default.

---

### `ClearLocationIsAllowed`

When this policy is enabled, an additional button is added to the hamburger menu. This button allows the user to "clear" a location in one action.

    ℹ️ This functionality is only available after a location code has been scanned. When scanning a parcel, the button is not shown and it is therefore not possible to remove items from a location using this method.

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
