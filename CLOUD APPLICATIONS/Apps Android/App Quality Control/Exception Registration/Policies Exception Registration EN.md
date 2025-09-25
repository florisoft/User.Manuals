![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Exception Registration Policies (Quality Control App)

This manual helps you configure the **Exception Registration functionality** in the Quality Control App.
Using various policies, you can define how **exceptions** are registered, processed, and validated.

---

## Where to find the Exception Registration policies

Exception Registration policies are configured via **Policy Management** in the Backoffice constants screen.
Follow the steps below to locate them:

| Step  | Explanation                                                                                                 |
| ----- | ----------------------------------------------------------------------------------------------------------- |
| **1** | Open the **constants screen** in the Backoffice via the navigator.                                          |
| **2** | Navigate to: **System → Users → Policy Management**.                                                        |
| **3** | Select or create a policy, then navigate to: **Apps → Logistics → QualityControl → ExceptionRegistration**. |

For more general information on managing policies, consult the [Policy Management Guide](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

---

## Policy Overview

This section provides an overview of policies related to the Exception Registration functionality.
Each policy explains its purpose, how to configure it, and any important usage notes.

> ⚠️ The availability of certain policies depends on how your environment is configured. Not all policies apply in every case.

---

### `SetExceptionReasons`

This policy enables the use of reason registration in the Exception Registration app.
Providing a reason is always mandatory when logging an exception. Reasons are managed in the **Credit Reasons** table: **Financial → Credit Reason**.

#### To configure a reason:

1. Click the plus icon to add a new reason.
2. In Type description enter exactly: `Division control reason`.
3. In Description enter a clear explanation. (The app currently does not validate translations.)
4. Optionally: define how many photos are required. `0` means photos are optional, but the upload field will still be shown.

<details><summary><b>Click here for an example!</b></summary><img src="Media/policies/2.png"></details>

---

### `BarcodeDecodeOptions`

This policy defines which barcode formats are supported when scanning during exception registration.
Select the decoding types that apply to your operation.

* Multiple barcode formats can be selected.
* Ensure scanner compatibility with the selected options.

---

### `OrderItemQuantityDisplayType`  
Determines how the order quantity is displayed in the app.  

Available options:

* **Colli × content + remainder (default)**  
  Displays the number of colli with their content plus any remaining single stems.

* **Stems**  
  Displays the total number of individual stems.

---