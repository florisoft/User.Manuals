<img src="../../fslogo.png">

# Florisoft API Policies Manual

This manual provides information about the various policies related to the operation of the server management API. Please note that it does not describe how to create and configure a policy. If you're unsure how to do this, refer to [this manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md) for instructions on creating and configuring policies.

First, open the policy screen by navigating to the path **System→Users→Policy Management** in the constants. The policy screen will open in a new window.

<details><summary><b>Click here for an example!</b></summary><img src="media EN/Policies/1.png"></details>

In the policy screen, you can create a new policy or open an existing one. Within this policy, navigate to the setting **External→Management** where you'll find the policies that affect the operation of the server management API.

<details><summary><b>Click here for an example!</b></summary><img src="media EN/Policies/2.png"></details>

## Policies

*Below is a brief description of the server management API policies.*
The policies AvailableDivisions, AvailableStocks, and AvailableFinancialAdmins act as filters on specific endpoints. If not configured, the default behavior is to send all data unfiltered. These filters are particularly useful if you need to limit available data for a third party.

### External_Management_Access

This setting must be enabled for users who require access to the server management API. If not enabled, all login attempts for unauthorized users will be rejected.

**:warning: This setting is also relevant for API endpoints not directly related to the Server Management API module.**

### External_Management_AvailableDivisions

This setting applies a filter to the data returned by the Server Management API, specifically filtering on **Divisions** of your Florisoft system. If no filter is applied, all data will be returned.
**This filter is only relevant for results returned from the API endpoints OrderlistAssortment and OrderlistComponents.**

### External_Management_Available_Stocks

This setting filters the data returned by the Server Management API based on selected stocks. If no filter is applied, data for all stocks will be returned. Click the arrow and select the stocks to include according to this policy.

### External_Management_AvailableFinancialAdmins

This setting filters the data based on configured Financial Administrations, specifically for sales and invoice-related endpoints. If no filter is applied, data for all financial administrations will be returned. Click the arrow and select the financial administrations to include in this policy.

**This filter is relevant for the endpoints: SalesHistory, SalesHistoryBouquets, SalesHistoryInvoiceHeaders, and OutstandingInvoices.**
