![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual - Inventory Consolidation (Consolidation App)

This manual describes how to use and configure the Consolidation functionality in the Inventory App. Consolidation is intended as a practical workflow for warehouse employees and combines tasks from both Slotting and Stock Counting, so stock and locations can be updated directly and efficiently.

---

## License requirements

Consolidation uses functionality from both `Inventory.Slotting` and `Inventory.StockCounting`. To use the full use case, you need at least one valid license for both modules. Without the correct licenses, parts of the workflow, such as linking parcels, updating stock, or printing labels, may not be available. If you have questions about licenses, contact your account manager or system administrator.

---

## What is Consolidation?

Consolidation is the simple action in which an employee links parcels to physical warehouse locations. In one smooth workflow, the following steps can take place: scanning the target location, selecting and linking one or more parcels, and, if needed, immediately correcting stock, recording a quality issue, or printing labels. This makes Consolidation especially suitable for receiving and relocation processes where stock is placed at the correct location and checked right away.

---

## Why a combined workflow?

Because Slotting and Stock Counting largely share the same actions, such as identifying a location, selecting parcels, linking them, and performing stock actions, Consolidation is designed as a combined workflow. Combining these processes saves time and reduces errors:

- Fewer walking routes: one scanning round is often enough for multiple tasks.
- Shorter processing time: actions are completed in one go instead of in several separate steps.
- Immediate corrections: stock changes and quality issues are visible in the system right away.

Practical example: with consolidated receiving, employees place parcels directly at the correct location, check quantities and quality, and print labels without having to perform a separate counting round later.

---

## Workflow steps (short overview)

1) Identify the location - scan the barcode of the target location and check whether the location is valid.

2) Select parcels - choose the available parcels or scan parcel numbers.

3) Link and confirm - confirm the link, perform stock corrections or quality issue registration where needed, and print labels.

The following sections describe which settings and policies are important for each step.

---

## Step 1 - Identify the location

Always start by scanning the target location. The app checks whether the location exists and whether it may be used.

Important settings:

- `CheckPredefinedLocationCodes`
- `ClearLocationIsAllowed`
- `LocationDisplayType`

When validation against predefined locations is enabled, the app checks whether the scanned location exists in the central Parcel Location table; only registered locations can then be used. This is recommended for companies with fixed locations because it prevents input errors and improves consistency. If the reset option is allowed, the menu shows an action to reset, or empty, a location in one step; this action is visible after a location has been scanned. The display setting determines whether the app shows the location code or the location description - choose the option that helps your users recognize locations most easily.

After scanning, the app opens the location overview with the list of linked parcels.

---

## Step 2 - Identify and display parcels

The app displays parcels based on the configured strategy and filters. Important settings:

- `ConsolidationStrategy`
- `AvailableStocks`
- `StockItemQuantityDisplay`

Use filters and sorting to quickly find relevant parcels, for example only parcels with stock or only active parcels. Pay attention when choosing the `ConsolidationStrategy`: similar to Stock Counting, you can work at parcel level or consolidate at `VPartijNr` level. When consolidating, selected parcels are combined internally, and processing rules such as distributing mutations or determining which parcel is used for printing follow the configured order of the available stocks. The available stocks setting determines which sources are visible and editable in the app, and the quantity display setting controls the same display behavior as in Stock Counting, for example colli x content + remainder or stems.

---

## Step 3 - Link parcel and location

Select one or more parcels and confirm the link with the scanned location. During this step, checks may be performed:

- `PickCheckStocks`: determines whether checks on stock lines or business rules must be performed beforehand.

When the link is successful, the location is updated and a confirmation is shown. If an error occurs, the app shows a message with the reason.

---

## Step 4 - Stock check and correction (optional)

In the parcel detail view, you can adjust quantities directly and process a mutation.

When open pick orders are linked to the parcel, Consolidation includes the remaining quantity to pick in the displayed stock total by default.

If **Pickorders niet meetellen in voorraad opname** (`PICKNOOPN`) is enabled in the linked customer's relation settings under **Distribution**, open pick orders for this customer are excluded from the displayed stock total. The displayed total can therefore be lower than for a customer for whom this setting is disabled.

Relevant settings:

- `StockMutationSettings_StockMutationAsCounting`: determines whether mutations are processed as counts.
- `StockMutationSettings_StockCountingCustomerCode`: uses customer codes for specific processing, for example 'WASTE'.
- `StockMutationSettings_StockCountingCustomerCodePerStock`: allows a different customer code to be used per stock.
- `StockMutationSettings_StockCountingXorder`: links mutations to internal orders if needed.
- `StockMutationSettings_StockQuantityMutAlsoStoredStockItem`: synchronizes changes with `StoredStockItem` where applicable.

Practical use: enter the new quantity, add a reason if needed, and confirm. If the mutation settings are enabled, discrepancies entered during Consolidation are processed directly as mutations instead of temporary counts. This can result in immediate postings. The configured customer code determines which debtor discrepancies are posted to, unless a stock-specific customer code is configured. Optionally, automatic internal xorders, or picking orders, can be created for further processing. If your environment works with stored parcels, those are synchronized as well when the option is enabled. Note: these settings can have financial consequences. Always test them in a test environment first and consult your finance or implementation team.

---

## Step 5 - Record quality issues (optional)

If you find damage or discrepancies during the check, record them as a quality issue:

- `QualityIssue_Authorization`: defines who may record issues.
- `QualityIssue_CustomerCode`: links issues to a customer code if needed.
- `QualityIssue_Reasons`: uses the predefined reason list.

Open the quality issue dialog, choose a reason, enter a quantity, and save the issue.

Make sure only authorized employees have permission to record issues. If authorization is disabled, users cannot record quality issues through the app. If no special customer code for quality issues is configured, the default customer code for stock mutations is used. Enter separate codes when you want to post quality problems separately, for example 'WASTE'. The list of available reasons is managed centrally and is mandatory when registering an issue.

---

## Step 6 - Print price and stock labels

From the parcel detail view, you can print price or stock labels. Settings:

- `PrintSettings_AvailablePrinters`: available printers.
- `PrintSettings_PriceLabelLayout` / `PrintSettings_StockLabelLayout`: choose the templates.
- `PrintSettings_PriceLabelPrinter` / `PrintSettings_StockLabelPrinter`: default printers.

User steps: open the print dialog, choose quantities and a printer, and start the print job.

Printing is not possible without selected printers. You can configure whether only price labels, only stock labels, or both options are visible in the app. The **JobAgent** is required for printers and printing to function correctly. If it is not active, printers may not appear and the print flow will not work. Always test your printer templates to make sure labels align correctly on your physical labels.

---

## Where can you find the Consolidation policies?

You configure the Consolidation policies through **Policy Management** in the constants screen of the Backoffice. Follow the steps below to find the Consolidation policies:

| Step  | Explanation |
| ----- | ----------- |
| **1** | Open the **constants screen** in the Backoffice through the navigator. |
| **2** | Navigate to: **System -> Users -> Policy Management**. |
| **3** | Select or create a policy, then navigate to: **Apps -> Inventory -> Consolidation**. |

Would you like to know more about configuring and managing policies in general? See the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).
