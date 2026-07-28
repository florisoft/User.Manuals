# Telesales

## Opening TeleSales

The Telesales screens can be opened by clicking the **Telesales** button in the Navigator.

<p align="center">
  <img src="Telesales.assets/TelesalesNavigator.png" alt="Telesales button in the Navigator">
</p>

When configured, you need to enter your personal Seller ID.

<p align="center">
  <img src="Telesales.assets/TeleSalesSellerId.png" alt="Telesales Seller ID">
</p>

After a valid Seller ID has been entered, the Telesales main screen is shown.

## Main screen layout

<p align="center">
  <img src="Telesales.assets/TeleSalesMainScreen.png" alt="Telesales main screen">
</p>

### 1. Stocks

This window contains the stocks that are available to the user. The **All stocks** option shows the available parcels from every visible stock.

To determine which stocks are visible:

1. Right-click the Telesales button in the Navigator. A pop-up menu appears.

<p align="center">
  <img src="Telesales.assets/TeleSalesStockSelection.png" alt="Telesales stock-selection menu">
</p>

2. Click **Stock** to open the stock-selection window. Press the spacebar on the active line to select or deselect a stock.

<p align="center">
  <img src="Telesales.assets/TeleSalesStockSelected.png" alt="Selected Telesales stocks">
</p>

The stocks highlighted in yellow will be visible in the Telesales main screen for this user.

### 2. Filters

Various filters can be found and used in this window.

### 3. Parcels

This window shows the parcels from the selected stock or from **All stocks**. Right-click the header to configure the visible columns.

### 4. Debtors

This window contains the debtors. Its columns change after a debtor has been selected.

<p align="center">
  <img src="Telesales.assets/TeleSalesSellColumnsr.png" alt="Telesales debtor columns">
</p>

The columns make it possible to specify how many stems are sold in each colli:

- **Col:** number of colli to sell.
- **Content:** content of each colli.
- **Separate:** additional separate stems that are not placed in a container.
- **Price:** price per item.
- **Fst:** bucket type used for the product.

### 5. Debtor and order information

The selected debtor and the related order information are shown in this section.

## Buttons at the top of the main screen

The following buttons are available at the top of the screen:

<p align="center">
  <img src="Telesales.assets/TeleSalesButtonBar.png" alt="Telesales button bar">
</p>

- **Close:** closes the Telesales screen.
- **Stock:** shows all parcels in the selected stock.
- **Purchase list:** shows parcels from all stocks on which an order has been placed. Parcels without an order are hidden.
- **Packing list:** shows a pop-up with the divisions for all debtors that still have stock.

Double-click a debtor to see a summary of all sales for that debtor.

<p align="center">
  <img src="Telesales.assets/TeleSalesPackingList.png" alt="Telesales packing list">
</p>

- **Details:** shows a pop-up with details of the active parcel.
- **Refresh:** refreshes the stock.
- **Picture:** shows the picture linked to the active parcel.
- **Customer:** selects a debtor.
- **History:** shows historical invoices for the active debtor.

<p align="center">
  <img src="Telesales.assets/TeleSalesInvoiceHistory.png" alt="Telesales invoice history">
</p>

- **Customer Total:** shows all orders and order numbers for the active debtor.

<p align="center">
  <img src="Telesales.assets/TeleSalesOutstandingOrders.png" alt="Outstanding Telesales orders">
</p>

Double-click an order to see its details in the customer summary.

<p align="center">
  <img src="Telesales.assets/TeleSalesOrderDetails.png" alt="Telesales order details">
</p>

- **Current:** shows the current Telesales order for the selected date.

<p align="center">
  <img src="Telesales.assets/TeleSalesCurrent.png" alt="Current Telesales order">
</p>

- **Ordering:** shows all order lists. After an order list is selected, Florisoft searches for the order-list parcel linked to the active stock parcel. This function can be used when the stock parcel and order-list parcel reference each other.
- **Invoicing:** opens the Invoice screen to process invoices.

<p align="center">
  <img src="Telesales.assets/TeleSalesInvoiceScreen.png" alt="Telesales invoice screen">
</p>

## Selling

Start by selecting a debtor. Click the button with three dots at the top of the debtor window, or scroll through the list and click the debtor number.

<p align="center">
  <img src="Telesales.assets/TeleSalesSelectDebtor1.png" alt="Select a debtor from the debtor window">
</p>

Alternatively, click **Customer** at the top of the screen.

<p align="center">
  <img src="Telesales.assets/TeleSalesSelectDebtor2.png" alt="Customer button">
</p>

The debtor-selection screen opens, where you can search for and select a debtor.

<p align="center">
  <img src="Telesales.assets/TeleSalesSelectDebtor3.png" alt="Debtor-selection screen">
</p>

After the debtor has been selected, a screen may appear in which you can enter or select an order number.

<p align="center">
  <img src="Telesales.assets/TeleSalesDebtorOrdernumber.png" alt="Select a debtor order number">
</p>

This screen is shown when **Use Order Number** is enabled under **Setup**.

<p align="center">
  <img src="Telesales.assets/TeleSalesOrderNumber.png" alt="Telesales order number">
</p>

After the debtor and order number have been selected, orders can be entered. Use the search and filtering options to find a product more quickly.

Enter a quantity in the buyer column to allocate the desired quantity to the debtor.

<p align="center">
  <img src="Telesales.assets/TeleSalesSelling.png" alt="Selling in Telesales">
</p>

When the following option is enabled, sales are always entered using the parcel's sales unit.

<p align="center">
  <img src="Telesales.assets/TeleSalesSalesUnitOption.png" alt="Telesales sales-unit option">
</p>

When you enter `1`, the quantity is automatically changed to the sales unit. The sales unit is visible in the **SU** column.

### Delete a sale

Enter a quantity of `0` in the yellow column to delete a sale.

<p align="center">
  <img src="Telesales.assets/TeleSalesDeleteSale.png" alt="Delete a Telesales sale">
</p>

The **PC** column contains the package code. The **FA** column contains the number of packages included in the sale. Change **FA** to `0` if the packaging should not be included.

## Sales margins and total amount

Columns are available on each line to show the margin for that sale.

**When a price configuration is used to calculate the sales price shown in the price column, a margin is not calculated. A margin is calculated when the price in the yellow VPrice column is changed, based on the difference between Price and VPrice.**

## Searching and filtering

Telesales includes a quick-search function. Start typing to display the entered characters at the bottom of the screen. Parcels are filtered using these characters, and a space can separate multiple keywords.

<p align="center">
  <img src="Telesales.assets/TeleSalesFiltering.png" alt="Quick filtering in Telesales">
</p>

Use the Backspace key to remove the entered characters and reset the search.

The second filtering method uses the filters window.

<p align="center">
  <img src="Telesales.assets/TeleSalesFiltering2.png" alt="Telesales filters window">
</p>

Open or close the filters window via **Screen > Show filters**.

<p align="center">
  <img src="Telesales.assets/TeleSalesMenuFilter.png" alt="Show filters menu option">
</p>
