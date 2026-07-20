![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Processing Open Returnables Sessions

This manual explains how to prevent, find, resume and complete open Returnables sessions. It applies to Returnables Inbound and Returnables Outbound.

## Session statuses

| Status | Meaning |
| --- | --- |
| `Inactive` | The session is open but is not currently being used by an employee. |
| `Active` | An employee is working in the session. |
| `Completed` | Counting is complete, but the session has not yet been fully processed and closed. |
| `Closed` | The session has been fully processed and is no longer open. |

In this manual, **open** means that the status is not `Closed`. A session is fully completed only when it is `Closed`.

## Prevent open sessions

Always complete a count through **Done**, the final check and confirmation. Returning to the home page or leaving the app does not process the count as completed.

### Normal stop or logout

When you choose **Close order** or log out normally, the active session is stopped and returned to `Inactive`. Registered counts are retained. The session can be selected later and can then also be opened by another employee.

### Unexpected device failure

If the app or device stops unexpectedly, the session may remain `Active`. Sign in again as the same user. That user can find and resume their own active session.

An active session owned by another user cannot be opened. This prevents two employees from changing the same count at the same time.

## Find an open session

### 1. In the Returnables app

1. Open Returnables Inbound or Returnables Outbound.
2. Choose manual selection.
3. Open the customer filter.
4. Enable **With open sessions** (`WithActiveSessions`).
5. Select the customer, order and session.

The filter is available only when `AvailableCustomerFilterOptions` contains `WithActiveSessions`.

The technical selection combines customers with a session that is not closed with customers that still have an active order. A customer with an active order but no existing session can therefore also appear.

### 2. In the Backoffice

The **Sessions completed** column can be displayed in the invoice overview and transport planning:

- **Red:** at least one session is not yet `Closed`;
- **Green:** sessions exist and all of them are `Closed`;
- **No green status:** no Returnables sessions were found.

Open **Delivery → Returnables sessions** to see the central overview. It contains every session that is not `Closed`, including inactive, active and potentially completed but not yet closed sessions.

Use search to find the customer, order or session. Use **Refresh** to retrieve the latest status.

### 3. From the invoice warning

When `Backoffice → Financial → Invoicing → Returnables_PrintNotAllowedWhenActive` is enabled, Florisoft checks for `Active` and `Inactive` Returnables sessions for the same customer and order when an invoice is printed.

When such a session exists, the invoice is not printed, a warning is shown and you can view the related sessions. Complete those sessions and start the invoice action again.

A session with status `Completed` is shown as not closed in the status column and central overview, but is not included in this specific invoice check.

## Open a session with FSQR

### Create the QR code

1. Open **Delivery → Returnables sessions** in the Backoffice.
2. Select the session.
3. Open the context menu.
4. Choose **Create QR code for session scan**.
5. Florisoft creates an image containing the session ID.

The list opened from an invoice warning is intended for viewing the affected sessions. Create the QR code from the general overview under **Delivery**.

### Scan the QR code

1. Open Returnables Inbound or Returnables Outbound, matching the session type.
2. Scan the FSQR code on the start page.
3. The app validates the session, customer, order, session type and user access.
4. After a valid scan, the session is activated and the counting page opens.

If the session has no batches yet, the app creates the first batch on the counting page.

## Resume and complete the session

Verify the selected customer, order and session. Continue the count, check existing batches, choose **Done**, verify the totals, enter required additional information and confirm the session.

After successful processing the session becomes `Closed`. Refresh the central overview or check the **Sessions completed** column again when required.

## Troubleshooting

### The scanned session is not found

Make sure you opened the correct app. An Inbound session cannot be opened as Outbound or vice versa. Also verify that `FsqrCode` is allowed through `ValidBarcodeDecodeOptions`.

### The linked order no longer exists

The app rejects a session when its order no longer exists. The session cannot be completed through the normal app workflow and must be investigated by a Florisoft administrator.

### The session belongs to another active employee

The session remains unavailable. Ask the other employee to close the session or log out normally. The session then becomes `Inactive` and another employee can open it.

### The device stopped and the session remains active

Sign in as the user who last worked in the session. Find it through the customer and order or scan its session QR code again.

### The session has no batches

Open the session. A batch is created on the counting page so that incoming or outgoing packaging can be registered.

### The invoice remains blocked

Check the customer and order under **Delivery → Returnables sessions**. Refresh the overview and complete every `Active` or `Inactive` session. Also check the red status in the invoice overview.

## Relevant policies

| Path | Policy | Effect |
| --- | --- | --- |
| `Apps → Logistics → Returnables` | `AvailableCustomerFilterOptions` | Makes filters such as `WithActiveSessions` available. |
| `Apps → Logistics → Returnables` | `ValidBarcodeDecodeOptions` | Controls accepted start-page barcodes, including FSQR. |
| `Backoffice → Financial → Invoicing` | `Returnables_PrintNotAllowedWhenActive` | Blocks printing for active or inactive sessions belonging to the customer and order. |

For the regular counting and completion process, see [Returnables Inbound](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Returnables/Returnables%20Inbound/Manual%20Returnables%20Inbound%20-%20EN.md) or [Returnables Outbound](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Returnables/Returnables%20Outbound/Manual%20Returnables%20Outbound%20-%20EN.md).
