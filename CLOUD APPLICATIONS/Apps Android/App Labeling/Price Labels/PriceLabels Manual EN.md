# Manual - Price Labels (Labeling App)

This manual helps you use the **Price Labels functionality** in the Labeling App.

The workflow, barcode recognition, printer, and layout are configured in advance through policies. Because of this, the process may differ slightly per environment.

---

## What is Price Labels?

Price Labels is used to provide sold products, or order items, with a price label. This allows the end customer to receive products that are already priced.

Price Labels is the process where you:
- **Scan an order item barcode**
- **Check the order item details**
- **Adjust the bunch content if needed**
- **Print price labels** with the configured printer and layout

Depending on your settings, the app can perform additional checks, for example when a price label has already been printed or when an order must contain handling information.

---

## How does the Price Labels app work?

The app uses a short scan-and-print flow. You scan an order item, check the details, and then print the required price labels.

---

## Step 1: Scan the order item (Policies: `ValidBarcodeDecodeOptions`, `ProcessBluComBarcodes`)

Scan the order item barcode of the sold product for which you want to print price labels.

Which barcodes the app accepts depends on the configured policy:
- `ValidBarcodeDecodeOptions` determines which barcode types are recognized and processed.
- `ProcessBluComBarcodes` determines whether BluCom barcodes may be processed.

When a barcode type is not allowed in the policy, that barcode is not processed in the Price Labels flow.

---

## Step 2: Check the order item and adjust the bunch content

After scanning, the order item detail screen opens.

In this screen you see the details of the scanned order item. Check that this is the correct product before printing.

If needed, you can adjust the **bunch content** before printing the price labels.

The way quantities and totals are displayed can depend on the policy `TotalPriceLabelsDisplayType`.

---

## Step 3: Checks before printing (Policies: `CheckIfPriceLabelPrinted`, `CheckIfOrderHasHandling`)

Depending on the configuration, the app can perform additional checks before printing.

### Check for previously printed price labels

With the policy `CheckIfPriceLabelPrinted`, the app can show a message when a price label has already been printed for the scanned order item.

This helps prevent price labels from being printed twice by accident.

### Check for handling information

With the policy `CheckIfOrderHasHandling`, the app can check whether the scanned order contains handling information.

Use this check when only orders with handling may be processed in the Price Labels flow.

---

## Step 4: Print price labels (Policies: `AskPriceLabelCopyAmount`, `PriceLabelPrinter`, `PriceLabelLayout`, `PriceLabelPrinterPerCustomer`)

Press the print button to print price labels.

The printer and layout are determined in advance by policies:
- `PriceLabelPrinter` determines which printer is used.
- `PriceLabelLayout` determines which price label layout is used.
- `PriceLabelPrinterPerCustomer` determines whether the price label settings of the debtor are used instead of the default settings.

If the policy `AskPriceLabelCopyAmount` is enabled, the app asks how many copies of the price label must be printed.

Enter the required number and confirm printing.

---

## Step 5: Process the next order item

After printing, you can scan the next order item barcode.

Repeat the previous steps for all order items that require price labels.

---

## Frequently Asked Questions

**Q: Which barcode can I scan?**

A: This depends on the policy `ValidBarcodeDecodeOptions`. If BluCom barcodes are used, `ProcessBluComBarcodes` must also be configured correctly.

**Q: Why does the app ask how many price labels I want to print?**

A: This happens when the policy `AskPriceLabelCopyAmount` is enabled.

**Q: Why do I get a message that a price label has already been printed?**

A: The policy `CheckIfPriceLabelPrinted` checks whether a price label has already been printed for the scanned order item.

**Q: Which printer and layout does the app use?**

A: This is determined by `PriceLabelPrinter` and `PriceLabelLayout`. If `PriceLabelPrinterPerCustomer` is enabled, the debtor settings can be used.

**Q: Where do I change the settings?**

A: You manage the settings through Policy Management in the constants screen of the Backoffice.

---

## Where can you find the Price Labels policies?

The Price Labels policies are configured through **Policy Management** in the constants screen of the Backoffice.
Follow the steps below to find them:

| Step | Explanation |
| ----- | ----- |
| **1** | Open the **constants screen** in the Backoffice through the navigator. |
| **2** | Navigate to: **System -> Users -> Policy Management**. |
| **3** | Select or create a policy, and then navigate to: **Apps -> Labeling -> Price labels**. |

Would you like to learn more about setting up and managing policies in general? See the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

This manual also describes the relevant policies for the Price Labels functionality.
