# Address Label Print Variables

This document lists all variables passed by Address Label to an `.FRPT` report layout. Use the variable name from the left-hand column in the layout. Every variable is made available to all report sections.

## Available variables

| Variable | Customer | Hub | Meaning |
| --- | --- | --- | --- |
| `Id` | Yes | Yes | Customer ID or hub ID. |
| `Name` | Yes | Yes | Standard customer name or hub name. |
| `Email` | Yes | Empty | Customer email address. |
| `PhoneNumber` | Yes | Empty | Customer telephone or mobile number. |
| `DeliveryName` | Yes | Yes | Customer delivery name. For a hub, the hub name is used. |
| `ContactPerson` | Yes | Empty | Customer contact person. |
| `StreetNameHouseNumber` | Yes | Yes | Standard street and house number of the customer or hub. |
| `PostalCodeCity` | Yes | Yes | Standard postal code and city, joined with a space. |
| `Country` | Yes | Yes | Standard customer country name. For a hub, the country code is used. |
| `SearchKey` | Yes | Yes | Customer or hub search key. |
| `FaxNumber` | Yes | Empty | Customer fax number. |
| `TransportRoute` | Yes | Empty | Description of the customer's transport route. |
| `DeliveryStreetNameHouseNumber` | Yes | Empty | Customer delivery street and house number. |
| `DeliveryPostalCodeCity` | Yes | Empty | Delivery postal code and city, prefixed with a comma and a space. |
| `DeliveryCountry` | Yes | Empty | Country name of the delivery address. |
| `TransporterName` | Yes | Yes | Name of the linked carrier. |
| `DefaultTrolleyLocation` | Yes | Empty | Customer's default trolley location. |

**Legend**

- **Yes:** the variable is populated when the corresponding source value is available.
- **Empty:** Address Label intentionally passes an empty value for this label type.

## Combined address fields

### `PostalCodeCity`

This variable combines the standard postal code and city with one space:

```text
1234 AB Amsterdam
```

### `DeliveryPostalCodeCity`

This variable intentionally starts with a comma and a space so it can be placed directly after the delivery address:

```text
, 1234 AB Amsterdam
```

If both the delivery postal code and delivery city are empty, the entire variable is empty and no separate comma is printed.

## Choosing the standard or delivery address

The report layout receives both the standard address fields and the delivery address fields. The layout determines which variables are shown.

The Shipping App uses the following order:

1. When a delivery address is available, the app displays the delivery details.
2. When no delivery address is available, the app displays the standard address.

A report layout that needs to reproduce this behaviour must apply the same condition within the layout.

## Values not available

Address Label does not pass separate print variables for:

- the label date shown in the app;
- the requested or default number of copies;
- the printer name;
- the report layout name;
- the customer or hub label type.

These values control the print process but are not passed to the `.FRPT` layout as variables.
