![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Florisoft POS App Manual

## What is the POS App?

The Florisoft POS App supports sales employees during direct customer sales. From one app, the employee selects a customer and order, registers products and returnable packaging, and completes the sale through an external checkout or the internal payment flow.

Products can be scanned with a barcode or found manually in the stock-item overview. Depending on the configuration, the employee can also change prices and quantities, apply discounts, pay outstanding invoices, and print or email documents.

The available sections and actions depend on the configuration, user permissions and licences.

---

## Opening the app

1. Open the Florisoft Hub App.
2. Start the **Sales.POS** app.
3. Sign in with your Florisoft user.
4. Select the available POS section.
5. Identify the employee when requested.

If the POS App or a section is not visible, the required access or licence may be missing. Contact your administrator or Florisoft consultant.

---

## POS App sections

### Cash & Carry

Cash & Carry guides the employee through a direct sale to a selected customer. The exact route to completion and payment is determined by the configured policies.

The normal workflow consists of:

1. selecting or scanning a customer;
2. opening an existing order or creating a new order;
3. scanning products or searching for them manually;
4. checking quantities, sales units, prices and details;
5. registering outbound and returned packaging;
6. completing the shopping cart;
7. sending the order to a checkout or processing payments internally;
8. printing or emailing an invoice or packing list;
9. closing the sale and returning to a clean session for the next customer.

- [Full Cash & Carry manual](Cash%20%26%20Carry/Manual%20Cash%20%26%20Carry%20-%20EN.md)

---

## Payment and completion

The POS App can transfer the order to an external checkout or process the payment entirely in the app. In the internal payment flow, the employee can select one or more invoices and combine payment methods, such as cash and card.

When configured, a customer can also pay outstanding invoices without creating a new order first.

After payment, Florisoft can show an invoice or packing list, request a signature, and print or email the document. The available choices are configured centrally.

---

## Integration with other Florisoft Apps

Cash & Carry can be opened as part of another workflow, for example to register a product or replacement product from a work order. The parent workflow then supplies the customer, order or work-order context.

The POS App can also integrate with:

- stock and stock items;
- returnable-packaging administration;
- external checkouts and payment methods;
- invoicing, email and document printing;
- work orders and additional sales processes.

These integrations are available only when the corresponding configuration, integration and licence are present.

---

## Practical points

- Always work under your own employee identity.
- Check the active customer and order number before every sale.
- Check the product, sales unit, quantity and price before confirming a line.
- Register outbound and returned packaging separately.
- Check the full invoice amount and selected payment methods before completion.
- Fully close the sale before starting with the next customer.
- Contact the administrator when customers, orders, stock, payment methods or printing options are missing.

---

## Support

The POS App is configured centrally. An administrator or Florisoft consultant determines which customers, orders, stock, prices, payment methods, printers and completion options are available.

For general information about installation, licences, updates and support, see the [Florisoft Apps introduction](../../README_EN.md).
