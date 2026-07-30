![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Cash & Carry (POS App)

## Introduction

With **Cash & Carry**, a sales employee processes direct sales in the Florisoft POS App. The employee selects a customer and order, adds products by scanning or searching, registers returnable packaging and completes the sale through a checkout or the internal payment flow.

The workflow is largely configured through policies. This allows each organisation to determine which customers, orders, stocks, prices, sales units, payment methods and finalisation options are available.

This manual describes the user steps and explains directly at each step which policies determine the behaviour.

---

## Licence requirements and prerequisites

Cash & Carry requires at least:

- access to the Florisoft **POS App**;
- access to the `Sales.POS.CashCarry` use case;
- a valid user and employee;
- a scanner or camera for the scanning flows;
- available customers, orders, stock items and stocks;
- for payments: configured payment methods or an integration with the external checkout;
- for printing: a configured printer and layout, and an accessible Cloud Server or Job Agent;
- for email: valid email addresses and a working email configuration.

Install the app through the Florisoft Hub. The app is shown as **Sales.POS** in the catalogue. On first use, check the Cloud Server URL, language and login details before opening Cash & Carry.

## Where can you find the policies?

In the Backoffice, open the **constants screen** and navigate through **System → Users → Policy Management** to **Apps → Sales → POS → CashCarry**.

The underlying groups **OrderActivation**, **ShoppingCart**, **StockItemSelection**, **Returnables**, **Payment** and **PackageListPrintSettings** contain the settings for the corresponding process steps. **OrderActivation** and **ShoppingCart** contain additional subgroups for customer, order and order-line settings.

More information about creating, linking and prioritising policies is available in the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

> An empty policy value may fall back to an existing Backoffice setting or to default behaviour. Therefore, first test a changed configuration with a separate test policy, a test customer and a representative order.

---

## Additional Backoffice configuration

Policies determine which functions the POS App provides, but they are not the only configuration. Cash & Carry also uses master data and settings for the customer, user, products, stock items, returnable packaging, documents and printers.

> The exact name or location of a field may differ between Florisoft versions. Some fields on the classic **Customer → Cash & Carry** tab originate from the desktop application. Where the current POS App uses a newer setting, this is stated below.

### Customer selection and blocks

The POS App uses the following customer data when searching for and selecting a customer:

| Setting or data | Behaviour in Cash & Carry |
|---|---|
| Customer number, name and search key | The employee can search for the customer using these values. |
| Inactive or archived | The customer is not offered in customer selection. |
| Financial unit | Only customers within the financial units assigned to the signed-in user are offered. The user's additional financial units are included. |
| Account manager | If account-manager filtering is enabled for the user, only customers belonging to the associated salesperson are offered. |
| Do not supply and reason | The app shows the delivery block. `BlockDoNotSupplyCustomers` can prevent the customer from being selected at all. |
| Division information | Can be shown for the customer when `ShowCustomerDivisionInfo` is enabled. |
| Stock customer | `IncludeStockCustomers` determines whether stock customers may appear in the selection. |

If a customer is missing, check not only the policy but also the customer's status, financial unit and account manager.

### Customer card and scan identification

In the current POS App, a customer card should preferably be recorded as a **customer contact value**:

- contact type: **Cash & Carry**;
- list type: **Customer card**;
- value: the code printed on the card or barcode;
- status: active.

The default barcode configuration can recognise both the customer number and this customer contact. `ValidBarcodeDecodeOptions` determines which barcode types are actually accepted.

The **Customer card code** field (`KLANTCODE`) on the classic **Customer → Cash & Carry** tab belongs to the older desktop workflow and may be used there together with the `CCScanKlantPas` system setting. For the current POS App, use the customer contact unless the environment demonstrably still uses the classic integration.

### Customer → Cash & Carry

The classic Cash & Carry tab for a customer may contain the following data:

| Setting | Description |
|---|---|
| Default payment method | Default payment method for the classic Cash & Carry flow, such as account, cash, direct debit, card or cheque. |
| Allowed payment methods | Limits the payment methods allowed for this customer in the classic flow. In the current POS App, `PaymentMethods` and the user's allowed payment methods are the main controls. |
| Surcharge by stock | Records a percentage and/or fixed surcharge for each customer and stock. The price calculation can apply this customer surcharge. |
| Purchase price | Indicates that the stock item's purchase price is used as the basis for a customer surcharge. Test the result with a representative product because other pricing rules can also affect it. |
| Automatically email to | Can enable automatic packing-list emailing in the classic flow. The destination is recorded in **Packing-list email address**. |
| Packing-list email address (`PAKEMAIL`) | First preferred address used by the current POS App for emailing a packing list. |
| Always request additional information | Makes the classic packing-list or pick-order flow request additional text that can be printed on the packing list. |
| Default department | Default department for PDA/Cash & Carry processing. Its practical effect may differ between configurations and should be tested in the applicable order flow. |
| Never use minimum purchase price | Excludes this customer from minimum purchase price 1. |
| Never use minimum purchase price 2 | Excludes this customer from minimum purchase price 2. |
| Always use minimum purchase price | Forces the minimum purchase price for this customer. Have this configuration checked if it is combined with either exclusion above. |
| Department and cost type | Can determine a customer-specific cost or discount line when an invoice is created, for example a collection discount. |
| Customer card code | Classic customer-card code; for the current POS App, preferably use the customer contact described above. |

The final Cash & Carry price can be affected not only by the customer surcharge but also by price lists, quantity scales, minimum purchase prices, product and stock-item data, and the price-editing policies.

### Customer-specific POS settings

Customer-specific Cash & Carry settings can be recorded in the customer extension. The exact location of these fields may differ by release or screen configuration.

| Setting | Description |
|---|---|
| `CCOrdernumberInputMandatory` | Makes an order number or order name mandatory for this customer. This also applies if the customer is not included in `RequireOrderNumberForCustomers`. |
| `CCFinaliseOrdersPackingListSetting` | Determines this customer's preference for printing and/or emailing the packing list when the shopping cart is finalised. |
| `CCFinaliseOrdersInvoiceSetting` | Determines this customer's preference for printing and/or emailing the invoice when the shopping cart is finalised. |

The following values are available for the two finalisation settings:

| Value | Meaning |
|---|---|
| Policy | Use the general policy configuration. |
| Off | Do not show the applicable print and email questions. |
| Print | Select printing by default. |
| Email | Select emailing by default. |
| Print and email | Select both options by default. |
| Do not print or email | Select neither option by default; the available questions may remain visible. |

These customer preferences primarily apply when finalising the shopping cart. Output after payment is also controlled by the policies under **Payment → OrderFinalization**.

### Invoice, packing list and email addresses

Check the following Backoffice data for document output:

| Data | Use |
|---|---|
| Invoice layout (`FACTLAYOUT`) | Required to generate, print or email an invoice correctly. |
| Packing-list layout (`PAKLAYOUT`) | Overrides the general `PackageListPrintLayout` when a customer-specific layout has been entered. |
| Packing-list email address (`PAKEMAIL`) | First preferred address for the packing list. |
| Active customer contacts – Packing list, Email | Used when no packing-list email address has been entered. |
| Customer's general email address | Final fallback address for the packing list. |
| Active customer contacts – Invoice, Email | Offered as additional invoice addresses. |

Physical printing also requires the `PackageListPrinter` and `Invoice_Printing_PrinterName` policies and an accessible Cloud Server or Job Agent.

### User and employee

The signed-in user's configuration directly affects the available data and actions:

| Setting | Effect |
|---|---|
| Salesperson/employee | Used to record sales, changes and payments. |
| Financial unit and additional financial units | Determine which customers the user can select. |
| Account-manager filtering | Limits the customer list to customers of the salesperson linked to the user. |
| Allowed payment methods | Can limit the current POS App's payment methods or act as the default when `PaymentMethods` contains no explicit alternative. |
| Rights to the use case and follow-up processes | Determine whether the user can run Cash & Carry, take payments, print and use linked workflows. |

### Product, stock item, sales unit and returnable packaging

For a complete product and scanning flow, the following master data must also be correct:

- the product and stock item must be active, saleable and available in an allowed stock;
- product barcodes must be linked to the correct product and barcode type;
- sales unit, contents, colli and any partial-sale configuration must be correct;
- purchase and sales prices must use the correct price bases and units;
- returnable-packaging products and codes must correspond to `PackageCodes`;
- any stock-item marks must match `AllowedStockItemMarksForSellingBelowPurchasePrice`.

`AllowedStockCodes`, `AllowSellingBelowSalesUnit`, `ShowPurchasePrice` and the other product and price policies then determine which of this master data the user may view or change.

### Fallback to classic system settings

If no explicit value is configured, several policies can fall back to an existing system or desktop setting:

| Policy | Possible classic fallback |
|---|---|
| `OrderNumberDeterminationType` | `CCOrdernummerBepalingType` |
| `TransferToCheckout` | `CCOverhevelenNaarKassa` |
| `ShowWarningWithoutAddedReturnables` | `CCWaarschuwingGeenFustIngevrd` |
| `RequireInvoiceSignature` | `HandtekeningVoorFactuur` |
| `AllowSellingBelowSalesUnit` | `CashCarryOnderVEVerkoop` |
| `ShowPurchasePrice` | `CCPDAInkPrijs1KolomWeergeven` |
| `AllowEditOrderitemDetails` | Among others, `CashCarryPrijsWijzigen` and `CashCarryVEWijzigen` |

For new configurations, prefer explicit policies. Document which classic fallbacks are still intentionally used in each environment to prevent an old desktop setting from unexpectedly controlling the POS App.

---

## Cash & Carry process summary

1. Open **Cash & Carry** and identify the employee.
2. Select a customer or scan a customer or order barcode.
3. Select an existing order or create a new order.
4. Check the shopping cart.
5. Scan products or add them through the stock-item overview.
6. Check and, where necessary, change quantities, sales units, prices and details.
7. Register outgoing and returned packaging.
8. Finalise the shopping cart.
9. Depending on the configuration, choose the checkout or the internal payment flow.
10. Select the invoices to be paid and register one or more payments.
11. Check the invoice, capture a signature if necessary and choose printing or emailing.
12. Complete the sale; Florisoft returns to customer selection.

---

## Step 1 – Start the app and employee context

Open the POS App and select **Cash & Carry**. Florisoft loads the policies and saved user state. If no employee is known yet, the app first requests an employee ID. All sales, changes and payments are then linked to this employee.

The app stores user choices that are relevant to the next session, such as filters in the stock-item overview and the last selected sales unit.

`DefaultEmployeeGroup` determines the default employee group when a work order is created from Cash & Carry. Set this value only when the linked follow-up processes use employee groups.

> If the employee cannot be identified, the sales flow will not start. Check the employee, authorisations and connection to the Cloud Server.

---

## Step 2 – Select or scan a customer

On the **Customers** screen, you can browse the list, search or scan a barcode. Select the customer and check the displayed name and address details before continuing.

The policies under **OrderActivation → CustomerSelection** determine which customers and tools are available:

- `IncludeStockCustomers` determines whether stock customers are included in the search results;
- `ShowRecentlyUsedCustomersInSearch` shows recently used customers at the top or as a quick selection;
- `BlockDoNotSupplyCustomers` blocks customers with the **Do not supply** status;
- `ValidBarcodeDecodeOptions` determines which barcode variants are used for customer and order recognition.

Florisoft opens the customer found for a valid customer barcode. If the scan refers to an order line, Florisoft looks up the corresponding customer and order.

An order belonging to another customer is not automatically opened under the active customer. Florisoft displays a message to prevent a sale from accidentally being registered against the wrong customer.

---

## Step 3 – Select or create an order

After customer selection, Florisoft shows the available orders. You can open an existing order or create a new one.

### Select an existing order

The policies under **OrderActivation → OrderSelection** determine which orders are shown:

- `ExcludePastOrders` hides orders from the past;
- `OrderDateFilter` determines the date by which open orders are filtered. The default value is `OrderDate`.

Select the order, check its number and date, and continue to the shopping cart.

When `EnableOrderLocking` is enabled, Florisoft locks the order as soon as it is opened in Cash & Carry. Another user cannot change the same order simultaneously. The lock is released when the order is closed or the session ends.

### Create a new order

The policies under **OrderActivation → OrderCreation** determine which input is requested:

- `InputType` selects the first input screen:
  - `None`: no additional input screen;
  - `OrderDetails`: enter order details;
  - `DeliveryChoice`: make a delivery selection;
- `RequireOrderNumberForCustomers` contains the customers for whom an order number or order name is mandatory;
- `DeliveryOrderSuffix` adds the configured suffix to delivery orders;
- `OrderNumberDeterminationType` determines how Florisoft assigns the new order number.

Enter the requested details and confirm the order. A mandatory order number must be valid and unique according to the selected numbering method.

### Order sessions

The Cash & Carry use-case description includes an optional order-session mode. This allows multiple sales moments on the same order to be processed separately. New order lines and packaging registrations then receive the active session number, while the payment step can show the entire order.

The corresponding settings `UseOrderSessions` and `FilterCartByActiveSession` are included in the use-case description, but are not offered as configurable Cash & Carry policies in every app version. Use this method only when order sessions are available and tested in the release you use.

---

## Step 4 – Check the shopping cart

After opening or creating the order, the **Shopping cart** appears. For an existing order, Florisoft reloads the permitted order lines.

`ShoppingCartItemsPurchaseTypes` determines which additional distribution types are loaded into the shopping cart alongside Cash & Carry. Lines from another distribution type can be marked with a compartment or slot symbol.

The following policies determine the general display:

- `ProductQuantityDisplayType` determines how product quantities are shown;
- `ShowPurchasePrice` shows or hides the purchase price;
- `ShowCustomerDivisionInfo` shows additional customer division information;
- `AllowViewInvoiceDetails` determines whether you can open the complete price breakdown through the total amount;
- `InvoiceTotalsDisplayType` under **Payment** selects a simple or complete totals display.

For an existing order, always check that the expected lines and quantities are visible before adding new products.

---

## Step 5 – Scan and add a product

1. If necessary, select the required sales unit.
2. Scan the barcode of the stock item or product.
3. Check the recognised description, quantity and price.
4. Scan again to increase the existing line or change the quantity manually.

`ValidBarcodeDecodeOptions` at **CashCarry** level determines which barcode decoders are valid when adding products. A disallowed or unknown barcode is rejected.

`AllowedStockCodes` limits the stocks from which products may be sold in Cash & Carry. A valid stock item may therefore still be absent or impossible to add when its stock code is not allowed.

### Sales unit and quantities

The policies under **ShoppingCart** determine how the employee enters quantities:

- `ShowSalesUnitSelector` shows the choice between **Colli** and **SU**;
- `DefaultSalesUnit` sets `Colli` or `SU` as the default;
- `AllowSellingBelowSalesUnit` determines whether less than one complete sales unit may be sold;
- `ResetSalesUnitAfterScan` resets the selected unit to `DefaultSalesUnit` after each scan. If this policy is disabled or empty, the selected unit remains active.

In the Backoffice, a sales unit can be linked to each barcode type, for example for Scan code, EAN code or Scan code 2. When that link exists and the corresponding unit is filled in on the stock item, the scanned barcode automatically determines the sales unit. Without a usable link, Florisoft uses the normal behaviour from `DefaultSalesUnit` and the active user selection.

`ShowOrderItemDetailsAfterAdd` automatically opens the details screen after adding a product. If this policy is disabled, the user remains in the shopping cart.

---

## Step 6 – Search for a product manually

If a product cannot be scanned, tap the **magnifying glass** to open the stock-item overview.

1. Search by name, code, description or product number.
2. Use the advanced filters if necessary.
3. Select the correct stock item.
4. Add the item and check the result in the shopping cart.

`AvailableStockItemFilterOptions` under **StockItemSelection** determines which advanced filters are available:

- `StockIds`: stock codes;
- `PackagingIds`: packaging codes;
- `SupplierIds`: suppliers;
- `ShipmentNumber`: shipment number;
- `EmptyItems`: empty items;
- `StemLength`: stem length;
- `ProductGroupIds`: product groups;
- `StockItemMarks`: stock-item marks.

The app saves the selected filters in the user state and reapplies them the next time. Clear the filters when an expected stock item cannot be found.

A marker in the stock-item overview can indicate that an item is already in the shopping cart. Adding it again then increases the existing order line.

`SetPurchasePriceType` determines which configurable price field is shown. Possible values are `DoNotShow`, `PurchasePrice1`, `PurchasePrice2`, `PriceGroup1` and `PriceGroup2`. This setting is separate from `ShowPurchasePrice`: depending on the combination, zero, one or two price fields may be visible.

---

## Step 7 – Change quantities, price and line details

Open an order line to view its details. The ordered lists under **ShoppingCart → OrderItemDetails** determine which fields are visible and editable:

- `AvailableOrderitemDetails` determines which fields are shown and in which order;
- `AllowEditOrderitemDetails` determines which of these fields the employee may change.

Available detail fields are:

- `Description`: description;
- `Price`: sales price;
- `Quantity`: quantity;
- `PackageAmount`: packaging quantity;
- `PackageCode`: packaging code;
- `SalesUnit`: sales unit;
- `Colli`: number of colli;
- `ArticleNumber`: product number;
- `ArticleKey`: product key;
- `StockItemMark`: stock-item mark.

After saving, Florisoft recalculates the line and order total.

### Selling below the purchase price

`AllowSellingBelowPurchasePrice` determines what happens when the sales price is lower than the purchase price:

- `AllowWithoutWarning`: save without a warning;
- `AllowWithWarning`: allow after displaying a warning;
- `DoNotAllowWithWarning`: block and display a warning;
- `AllowWithStockItemMark`: allow only for stock items with an allowed mark.

With `AllowWithStockItemMark`, the stock-item mark must be included in `AllowedStockItemMarksForSellingBelowPurchasePrice`. Otherwise, the original price remains.

`ShoppingcartSaleUnder0` determines whether the distribution may fall below zero during a sale. Use this setting only when negative or not-yet-available stock is deliberately allowed by the business procedure.

---

## Step 8 – Use discounts and order actions

### Discount using a barcode

A discount barcode can activate a percentage or fixed amount for the next product scan. Scan the discount barcode first and then the product. Always check that the discount has been applied to the intended line and the new total.

`DiscountCategory` determines which discount category Florisoft uses for this registration.

### Discount on the order

`EnableDiscount` under **Payment** determines whether a discount may be added to or changed on the open order from the invoice-totals screen. This is separate from the discount barcode for an individual product scan.

### Change the order

`EnabledOrderActions` under **ShoppingCart** determines which additional order actions are available:

- `MoveOrder`: move the order to another customer;
- `DeleteOrder`: delete the order;
- `NewOrderLine`: create a new order line without the normal scanning flow.

Florisoft asks for confirmation for significant actions. Before moving or deleting, always check the customer, order number and shopping-cart contents.

---

## Step 9 – Register returnable packaging

Open **Returnable packaging** to record outgoing and returned packaging.

1. Select an existing packaging code or add an allowed code.
2. Enter the outgoing quantity.
3. Enter the quantity received back.
4. Check the balance.
5. Save the registration and return to the shopping cart.

The following policies determine the behaviour:

- `PackageCodes` contains the packaging codes that the employee may select;
- `DisplayedReturnableIdentifier` shows the `Description` or `Code` for each packaging item;
- `ShowWarningWithoutAddedReturnables` warns during finalisation if no returnable packaging has been registered;
- `RegisterPackagingInOrderlineType` determines how packaging is recorded in the order lines.

A packaging code that has already been used is not added twice. Change the existing line instead.

When QR barcodes containing packaging information are configured, a scan can add the packaging code and quantities or increase an existing packaging line. After each scan, check the outgoing quantity, returned quantity and balance.

---

## Step 10 – Finalise the shopping cart

Tap **Finalise** or **Pay** when all products and packaging have been checked.

`ProcessPayments` under **Payment** determines the next step:

- `Yes`: always continue to the internal payment flow;
- `No`: finalise without internal payment, for example through a packing list or external checkout;
- `UserChoice`: the employee chooses whether to pay or continue without internal payment.

`TransferToCheckout` determines whether the order is transferred to an external checkout. With this method, check that the order has arrived at the checkout before closing the Cash & Carry session.

The policies under **ShoppingCart → OrderFinalization** determine which finalisation options are available and selected by default before the payment flow:

- `AllowedShoppingCartFinalizationOptions`;
- `DefaultShoppingCartFinalizationValues`.

Possible options are `PrintPackageList`, `MailPackageList`, `PrintInvoice` and `MailInvoice`. Only options in the allowed list can be selected. The default list determines which options are preset to **Yes**.

`AdditionalActions` can perform additional actions when finalising a Cash & Carry order. Which values can be used depends on the configured app version and linked processes.

---

## Step 11 – Select and pay invoices

In the internal payment flow, Florisoft shows an order overview and the active customer's outstanding invoices.

1. Check the products and the full invoice amount.
2. Select one or more outstanding invoices.
3. Check the total of the selection.
4. Add one or more payments.
5. Check the remaining amount or change due.
6. Continue when the registration is correct.

`PaymentMethods` determines which payment methods are available, such as cash and card. Multiple payment methods can be combined.

The other payment policies determine:

- `RequirePaymentBeforeCompletion`: the sale cannot be completed without payment;
- `ShowPaymentSummary`: shows a summary of paid, payable and difference;
- `InvoiceTotalsDisplayType`: `Simple` shows a concise total and `Complete` the complete price breakdown;
- `EnableDiscount`: allows an order discount from the invoice details.

When payment is not mandatory, Florisoft can continue without a payment registration after explicit confirmation. Use this only for customers and situations permitted by the business procedure.

### Pay outstanding invoices without an active order

When `ProcessPayments` is set to `Yes` or `UserChoice`, a separate payment route may be available from customer or order selection. This allows you to select and pay outstanding invoices without first creating a new order or empty shopping cart.

Florisoft starts a clean payment state for this purpose so invoices, email addresses and print selections from a previous sale are not reused.

---

## Step 12 – Finalise invoice, signature and output

After payment, Florisoft retrieves the invoice files and fills in the customer's available invoice email addresses. Check the document and recipients before continuing.

The policies under **Payment → OrderFinalization** determine which output is available:

- `AllowedPaymentFinalizationOptions`: allowed print and email options;
- `DefaultPaymentFinalizationValues`: preselected options;
- `ShowInvoiceSignaturePage`: shows or hides the page containing the invoice, email addresses and signature;
- `RequireInvoiceSignature`: makes the signature mandatory.

`ShowInvoiceSignaturePage` behaves as enabled unless its value is explicitly disabled. If `RequireInvoiceSignature` is active, the user cannot complete the process without a signature.

At least one valid address is required for email. Correct the address in the app when the configuration permits this, or update the customer address in the Backoffice.

The following settings are important for printing:

- `Invoice_Printing_PrinterName`: printer for invoices through the Cloud Server;
- `PackageListPrintLayout`: packing-list layout;
- `PackageListPrinter`: packing-list printer;
- `FillPackingListNo`: fills in the packing-list number when a pick order is created.

Confirm the selected output. After successful finalisation, Florisoft locks the final order, clears the active customer, order, shopping-cart and payment state, and returns to customer selection.

---

## Cash & Carry as part of another workflow

Cash & Carry can be opened as a child use case from another process, for example to register a replacement product. In that case, the parent workflow supplies the customer, order or work-order context.

The user then works only within the supplied context. Order lines from the parent process may be visible for checking but not editable. After adding or selecting the requested product, the app returns to the parent workflow.

In this variant, do not independently select another customer or order. If the context is unexpected, check the original work order and restart the child use case.

---

## Messages and solutions

### A customer is missing

- Clear the search text and try again.
- Check `IncludeStockCustomers`.
- Check whether the customer has the **Do not supply** status and whether `BlockDoNotSupplyCustomers` is active.
- Check the customer rights and connection to the Cloud Server.

### An order is missing or cannot be opened

- Check `ExcludePastOrders` and `OrderDateFilter`.
- Check whether the order belongs to the selected customer.
- Check whether a mandatory order reference is missing.
- Ask another user to close the order if it is locked.

### The barcode is not recognised

- Check whether you are scanning a customer, order or product barcode on the correct screen.
- Check the applicable `ValidBarcodeDecodeOptions`.
- Check whether the stock code is included in `AllowedStockCodes`.
- Search for the product manually to determine whether the stock item is available.

### A stock item is missing

- Clear saved filters in the stock-item overview.
- Check `AvailableStockItemFilterOptions` and the selected filter values.
- Check `AllowedStockCodes`.
- Check whether the item still has stock and is saleable.

### The price cannot be saved

- Check whether `Price` is included in `AllowEditOrderitemDetails`.
- Check `AllowSellingBelowPurchasePrice`.
- With `AllowWithStockItemMark`, also check `AllowedStockItemMarksForSellingBelowPurchasePrice`.
- Check whether the correct purchase price is recorded on the stock item.

### Returnable packaging is missing or reported twice

- Check whether the packaging code is included in `PackageCodes`.
- Change an existing packaging line instead of adding the same code again.
- Check the outgoing and returned quantities.
- Check `ShowWarningWithoutAddedReturnables`.

### Payment is not available

- Check `ProcessPayments`.
- Check the employee's payment rights.
- Check whether `PaymentMethods` contains valid payment methods.
- For an external checkout, check `TransferToCheckout` and the checkout integration.

### Finalising without payment does not work

`RequirePaymentBeforeCompletion` requires a complete payment registration. Check the selected invoices, payment amounts and remaining amount, or change the policy only if the business procedure allows finalisation without payment.

### Printing or emailing does not work

- Check whether the required option is included in the relevant `Allowed...FinalizationOptions`.
- Check the printer, layout, Cloud Server or Job Agent.
- Check the invoice printer and packing-list printer separately.
- For email, check the customer address and email configuration.

### The signature page does not appear

Check `ShowInvoiceSignaturePage`. Also check `RequireInvoiceSignature` when a signature must be mandatory.

---

## Important for correct configuration

- Test customer selection, order scans and product scans with the configured barcode decoders.
- Limit `AllowedStockCodes`, price fields and order actions to what the employee actually needs.
- Deliberately choose whether the app sells in `Colli` or `SU` by default and test the behaviour of `ResetSalesUnitAfterScan`.
- Test all four variants for selling below the purchase price, including the allowed stock-item marks.
- Check packaging codes and outgoing and returned quantities before every production rollout.
- Test `ProcessPayments`, `TransferToCheckout` and `RequirePaymentBeforeCompletion` as one coherent payment configuration.
- Test the invoice and packing-list printers separately with the final layouts.
- Use order sessions only when they are available and tested end to end in the app version being used.
- Fully complete a test session and check that the next sale starts with an empty customer, order and payment state.
