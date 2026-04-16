![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Guide – Returnables Outbound (Returnables App)

This guide helps you configure the **Returnables Outbound functionality** in the Returnables App.

---

## What is Returnables Outbound?
Returnables Outbound is used to register and verify outgoing packaging (pallets, crates, etc.) before it leaves the facility.

Returnables Outbound is the process in which you:
- **Look up orders with packaging** in the app
- **Count and register packaging** that goes with the order
- **Perform a final check** to verify everything
- **Complete the session** with the required information

Depending on your settings, this process may contain several steps.

---

## How does the Returnables Outbound app work?

The app is built from different screens that guide you through the process:

---

## Step 1: Order Selection (Policy group: `OrderOverview`)

When you open the app, you see the **Order Overview** where you can search for or create an order.

### Search for an order by scanning

**Most efficient:** Scan the order barcode.
- Which barcode types you can scan depends on the Policy: `ValidBarcodeDecodeOptions`. This may include:
- Barcodes that reference the order barcode
- Returnables Session ID

### Search for an order manually

If you cannot scan, you can select manually:

**1. First select a customer**
- You can configure that only customers with active invoices are visible (Policy: `FilterCustomersWithInvoice`) – This helps ensure you only process orders from customers with an active relationship
- Choose the desired customer from the list

**2. Then select an order or create a new one**
- Choose an existing order for that customer
- Or create a new order for the customer

### Sessions: the heartbeat of the process

Important concept: **Sessions**
- **First time:** When you open an order for the first time, the system automatically creates a **session** in the background. This is a unique workspace for that order.
- **Second time:** When you open the same order again AND there is still an active session, you can choose:
  - Continue an existing session **(to continue where you left off)**
  - Create a **new session** **(to start over)**

**Sessions are important:** All packaging you count is stored in a session. You can have multiple sessions for the same order with different counts.

---

## Step 2: Counting Packaging in Batches (Policy group: `PackagingCounting`)

After selecting an order and session, you start **registering packaging**.

### The batch concept: You decide how you count

**Batches** are groups that divide your count. This allows you to decide how you want to count:
- You can count by **package type** (all pallets, then all crates, etc.)
- Or by **cart/workstation** (cart 1, cart 2, etc.)
- Or by another logical system that is important for your workflow

**This gives you flexibility:** It allows you to count packaging in the way that is most efficient for you.

### Add packaging per batch

Within each batch, you can register packaging. This can be done in several ways:
- **Use standard package codes** (Policy: `StandardPackageCodes`) – Standard packaging types that are shown by default on each batch page
- **Manually enter packaging** – You can specify which package type is included and in what quantities
- **Scan barcode** – You can scan barcodes on the packaging to add them (the package code must be encoded in the barcode). Which barcode types you can scan depends on your settings (Policy: `ValidBarcodeDecodeOptions`)

### Packaging images (Policy: `Apps_PackagingPicturesFolderPath`)

You can show **packaging images** in the app. This helps you quickly recognize the correct package.
- If you have enabled this, you see images next to the package codes
- The image appears only if the filename matches the package code (for example: "566.jpg" for package code "566")

**Download the packaging images:** [Link to images – insert here]

### Packaging sorting (Policy: `SortPackagingType`)

Within your batches, packaging can be sorted in several ways:
- **In the order defined by the StandardPackageCodes policy**
- **By package code**
- **By package description alphabetically**

### Add extra packaging (Policy: `AllowAdditionalPackaging`)

Some companies allow you to add **extra packaging** that was not in the original order. Others do not allow this. The app will make it clear—if you are allowed to add extra packaging, the option is available.

### Quick input (Policy: `ShowQuickInput`)

For efficiency, you can enable a **Quick Input mode**. This is a fast way to enter multiple packages one after another without extra clicks.

---

## Step 3: Overview and Batch Management

When you finish counting, you see an **Overview page** with all the packaging you have registered.

### View grouping and batches

On this page, all registered packaging is displayed in groups:
- You can see **which packages you counted**
- You can see **which batch** each package is in
- You can **adjust batches** if needed (increase/change)

This gives you a complete overview before you complete the session.

---

## Step 4: Complete Session (Policy: `FinalizeSession`)

When you have finished registering packaging, you complete the session via the **Complete Session** screen.
Here you enter additional information before marking the session as final.

### CMR information

**CMR** = international consignment note documentation.

For transport of packaging, **CMR data** may be required (depending on your settings):
- Shipper details
- Receiver details
- Session details

Fill in this information if required (this depends on your settings).

### Other required information

In addition to CMR, other data may also be required:

#### Reference Code (Policy: `RequireReferenceCode`)
Some companies require a **reference code** or **note** before you can complete the session. This may be:
- A sales order number
- A customer order number
- A note about special circumstances

If this is required, you cannot complete the session without entering this code.

#### Electronic Signature (Policy: `RequireSignature`)
You can require an **electronic signature** before the session is closed. This confirms that everything has been recorded correctly.
- If this is required, you will see a signature field
- You must sign with your finger or stylus
- You cannot proceed without a signature

### Print and email packing list

After completing the session, you can print the packing list or send it by email.

#### Print (Policy: `PrintPackingListOption`)
You can determine whether the print option is available:
- **Not visible** – You cannot print
- **Default on (YES)** – A toggle is shown that is on by default, but you can turn it off if you do not want to print
- **Default off (NO)** – A toggle is shown that is off by default, but you can turn it on if you want to print

When you print, a **packing list** is created with all the packaging you registered.

#### Email (Policy: `MailPackingListOption`)
Like printing, you can determine whether the packing list can be sent by email:
- **Not available** – You cannot send by email
- **Default on (YES)** – A toggle is shown that is on by default, but you can turn it off if you do not want to email
- **Default off (NO)** – A toggle is shown that is off by default, but you can turn it on if you want to email

### Printer settings (Policy: `PrinterSettings`)

If printing is enabled, you can also determine:
- **Which printer** is used for the packing lists (Policy: `PackageListPrinter`)
- **Which layout/format** the packing list uses (Policy: `PackageListPrintLayout`)

---

## Session Management and Control

### What happens when a session is successfully completed?

When a session is successfully completed, the registered packaging is processed into the invoice. It is therefore essential that all sessions are completed correctly before invoicing occurs. Several control mechanisms are implemented to ensure this.

### Control mechanisms for open sessions

#### 1. Warning when invoicing in Backoffice

When you try to post an invoice in the Backoffice, the system automatically checks whether there are any incomplete sessions for that order.

**Policy:** `Backoffice_Financial_Invoicing_Returnables_PrintNotAllowedWhenActive`

If this policy is enabled, it is not possible to process an invoice while there are incomplete sessions. You receive a warning message with an option to go directly to the open sessions screen so the session can be processed from there.

#### 2. Visual indicators in invoice and transport planning screens

In both the **Invoice overview screen** and the **Transport planning detail grid**, new columns have been added that display session progress:

- **New column:** "Sessions completed"
- **Color indication:**
  - 🔴 **Red:** One or more sessions are still open for this order
  - 🟢 **Green:** All sessions have status "completed"

#### 3. Returnables Sessions screen

A new overview screen has been developed for managing open sessions:

**Location:** Via the navigator → Overviews → Delivery → "Returnables sessions"

This screen shows a grid with all open (active) sessions. From this screen you can:
- View all open sessions
- Generate a QR code that opens the session directly in the app

#### 4. Future filter in the app

In the future, a filter will be added to the Returnables Outbound app that allows you to filter orders with active/open sessions. This makes it easier to prioritize orders that still need attention.

---

## Frequently Asked Questions

**Q: What if users make a mistake while registering packaging?**
A: Depending on the stage of the process, users can often correct this. It depends on how you have configured the policies.

**Q: Can I configure whether packaging not included in the original order can be added?**
A: Yes, via the `AllowAdditionalPackaging` policy you can determine whether users may add extra packaging.

**Q: What happens after a session is completed?**
A: The session is recorded in the system, and a packing list can be printed or emailed depending on your settings.

**Q: How can I adjust the settings?**
A: You can adjust these settings through Policy Management in the Backoffice constants screen.

**Q: How can I check whether there are open sessions?**
A: There are multiple ways: via the color indicators in the invoice and transport planning screens, the AssetManagement Sessions screen (Navigator → Overviews → Delivery), or via the warning when invoicing (if the policy `Backoffice_Financial_Invoicing_Returnables_PrintNotAllowedWhenActive` is enabled).

---

## Where can I find the Returnables Outbound policies?

You configure the Returnables Outbound policies through **Policy Management** in the Backoffice constants screen.
Follow these steps to access it:

| Step | Description |
| ----- | ----------------------------------------------------------------------------------------------------------------------- |
| **1** | Open the **constants screen** in the Backoffice via the navigator. |
| **2** | Navigate to: **System → Users → Policy Management**. |
| **3** | Select or create a policy and then navigate to: **Apps → Logistics → Returnables → Outbound**. |

If you want to learn more about configuring and managing policies in general, consult the [Policy Management guide](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).