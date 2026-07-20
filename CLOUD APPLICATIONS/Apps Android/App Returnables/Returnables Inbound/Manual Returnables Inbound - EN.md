![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Returnables Inbound Manual (Returnables App)

## What is Returnables Inbound?

Returnables Inbound is used exclusively to register incoming returnable packaging, such as pallets, crates and trolleys. It does not register received products.

The workflow is similar to Returnables Outbound: select a customer and order, work in a session, count the received packaging in one or more batches, verify the totals and complete the session. The configured policies determine which filters, entry methods and completion options are available.

## Workflow

### 1. Select the customer, order and session

Start by scanning a supported barcode or by manually selecting a customer and order. When selecting manually:

1. Find and select the customer.
2. Apply an available customer filter if required.
3. Select an existing order or create a new order.
4. Select an existing inbound session or create a new one.

If the order has no inbound session, the app creates one. An existing session can be selected and continued. A scanned FSQR session code is accepted only for an Inbound session with a valid order that still exists.

After an unexpected device failure, the same user can reopen their own active session. An active session owned by another user remains unavailable. If a reopened session has no batches, the counting page creates the first batch.

The shared `AvailableCustomerFilterOptions` policy can make these filters available:

- `WithInvoice`: customers with an open invoice;
- `WithActiveSessions`: customers with active returnables sessions.

The shared `ValidBarcodeDecodeOptions` policy determines which barcode types are accepted on the start page.

### 2. Count incoming packaging

Counts are stored in batches. A batch can represent a trolley, unloading position or counting round.

On the counting page you can change the quantities of standard package codes, add another package type when permitted, use quick input, scan a package barcode to add one, create a new batch and navigate between batches.

The first batch must contain at least one positive quantity before you can continue. Setting a previously registered quantity to zero removes it after confirmation. Negative quantities are not allowed.

| Policy | Effect |
| --- | --- |
| `StandardPackageCodes` | Package codes shown by default in every batch. |
| `SortPackagingType` | Sort by policy order, package code or description. |
| `AllowAdditionalPackaging` | Allows other package codes to be added manually. |
| `ShowQuickInput` | Shows or hides quick input. |
| `ValidBarcodeDecodeOptions` | Controls accepted package barcodes. A package barcode is enabled by default. |

When `Apps → PackagingPicturesFolderPath` is configured, the app can show a recognition image for a package code. The image must be present in that folder with the package code as its filename.

### 3. Verify the totals

Choose **Done** to open the final check. Verify the total for each package code and select a total to see its batch lines. An incorrect line can be removed before confirmation.

A session cannot be completed without registered totals or when the total is zero.

### 4. Complete the session

Depending on the policies, the app may request:

- a required reference, registration date and optional comment (`RequireReferenceCode`);
- a print choice (`PrintPackingListOption`);
- an email choice (`MailPackingListOption`);
- a signature when a packing list is printed or emailed (`RequireSignature`).

After successful completion, the incoming quantities are registered for the selected customer and order and the session is closed. The order must belong to an existing invoice.

Printing and emailing use `PackageListPrinter` and `PackageListPrintLayout`.

## Stop without completing

**Close order** or a normal logout stops the active work session without processing the count as completed. The session becomes `Inactive` and can be selected later. After an unexpected failure it may remain `Active`; sign in again as the same user.

See [Processing Open Returnables Sessions](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Returnables/Processing%20open%20sessions%20-%20EN.md) for the customer filter, Backoffice overview, invoice control and FSQR recovery procedure.

## Policy locations

Open the Backoffice constants screen and go to **System → Users → Policy Management**.

| Path | Policies |
| --- | --- |
| `Apps` | `PackagingPicturesFolderPath` |
| `Apps → Logistics → Returnables` | `AvailableCustomerFilterOptions`, `ValidBarcodeDecodeOptions` |
| `Apps → Logistics → Returnables → Inbound → PackagingCounting` | `StandardPackageCodes`, `SortPackagingType`, `AllowAdditionalPackaging`, `ShowQuickInput`, `ValidBarcodeDecodeOptions` |
| `Apps → Logistics → Returnables → Inbound → FinalizeSession` | `RequireReferenceCode`, `RequireSignature`, `PrintPackingListOption`, `MailPackingListOption` |
| `Apps → Logistics → Returnables → Inbound → PackageListPrintSettings` | `PackageListPrinter`, `PackageListPrintLayout` |

See the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md) for general policy configuration.
