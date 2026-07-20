![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Returnables Outbound Manual (Returnables App)

## What is Returnables Outbound?

Returnables Outbound registers and verifies outgoing returnable packaging, such as pallets, crates and trolleys, before it leaves the premises.

Select a customer and order, work in a session, count the outgoing packaging in one or more batches, verify the totals and complete the session. The configured policies determine which filters, entry methods and completion options are available.

## Workflow

### 1. Open the order and session

Open an order or session by scanning a supported barcode or by manually selecting a customer and order.

When selecting manually:

1. Find and select the customer.
2. Apply an available customer filter if required.
3. Select an existing order or create a new order.
4. Select an existing outbound session or create a new one.

If exactly one session exists for a scanned order, the app opens it directly. If several sessions exist, select the correct one. If no session exists, the app creates one.

The shared `AvailableCustomerFilterOptions` policy can make these filters available:

- `WithInvoice`: customers with an open invoice;
- `WithActiveSessions`: customers with active returnables sessions.

The shared `ValidBarcodeDecodeOptions` policy determines which barcode types are accepted on the start page. Depending on the configuration, the app can process order-line, FSQR session and trolley barcodes. A supported trolley barcode can import the packaging linked to that trolley into the count.

After an unexpected device failure, the same user can reopen their own active session. An active session owned by another user remains unavailable. A scanned session is opened only when its type is correct and the linked order still exists. If a reopened session has no batches, the counting page creates the first batch.

### 2. Count outgoing packaging

Counts are stored in batches. A batch can represent a trolley, workstation or counting round.

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

Choose **Done** to open the final check. Verify the total for each package code and select a total to see its batch lines. An incorrect line can be removed before confirmation. An address label can also be printed from this page when required.

A session cannot be completed without registered totals or when the total is zero.

### 4. Complete the session

Depending on the policies, the app may request:

- a required reference, registration date and optional comment (`RequireReferenceCode`);
- a print choice (`PrintPackingListOption`);
- an email choice (`MailPackingListOption`);
- a signature when a packing list is printed or emailed (`RequireSignature`).

Printing and emailing use `PackageListPrinter` and `PackageListPrintLayout`.

`PackageManagementRegistrationStrategy` determines how the quantities are processed:

- `PackageApproval`: send the registration through the package approval process;
- `PackageAdministration`: register the quantities directly in package administration. This is the application's default strategy.

The session is closed after successful processing.

## Stop without completing

**Close order** or a normal logout stops the active work session without processing the count as completed. The session becomes `Inactive` and can be selected later. After an unexpected failure it may remain `Active`; sign in again as the same user.

## Check open sessions

Open sessions can remain visible in the app, invoice overview, transport planning and central Backoffice overview. When invoice control is enabled, active and inactive sessions can block printing. Use **Delivery → Returnables sessions** to create an FSQR code and resume a session directly.

See [Processing Open Returnables Sessions](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Returnables/Processing%20open%20sessions%20-%20EN.md) for the complete procedure.

## Policy locations

Open the Backoffice constants screen and go to **System → Users → Policy Management**.

| Path | Policies |
| --- | --- |
| `Apps` | `PackagingPicturesFolderPath` |
| `Apps → Logistics → Returnables` | `AvailableCustomerFilterOptions`, `ValidBarcodeDecodeOptions` |
| `Apps → Logistics → Returnables → Outbound → PackagingCounting` | `StandardPackageCodes`, `SortPackagingType`, `AllowAdditionalPackaging`, `ShowQuickInput`, `ValidBarcodeDecodeOptions` |
| `Apps → Logistics → Returnables → Outbound → FinalizeSession` | `RequireReferenceCode`, `RequireSignature`, `PrintPackingListOption`, `MailPackingListOption`, `PackageManagementRegistrationStrategy` |
| `Apps → Logistics → Returnables → Outbound → PrinterSettings` | `PackageListPrinter`, `PackageListPrintLayout` |
| `Backoffice → Financial → Invoicing` | `Returnables_PrintNotAllowedWhenActive` |

See the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md) for general policy configuration.
