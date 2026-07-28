# WebService API Updates

## Added: Token Bucket Rate Limiter

A new Token Bucket-based rate limiter has been implemented for the WebService API.

### Overview

* Rate limiting is applied per user using the **UserHashCode** as the partition key.
* Anonymous users are grouped under the partition key **`unknown`**.
* Each user receives a token bucket with:

  * **Maximum capacity:** 20 tokens
  * **Replenishment rate:** 1 token per second
  * **Default request cost:** 1 token per request

When a user exceeds the available token budget within a short period of time, requests are rejected and the API responds with:

```http
429 Too Many Requests
```

### Logging

Rejected requests are written to the Health Log with category **Warning**.

Example log entry:

```text
Web service API request rejected by rate limiter. Partition: <userHashCode>, Path: /fswsapi/v1/parcels/get, Method: POST, Status: 429
```

### Configuration

The rate limiter can be configured through the API Webshop Settings (**CONFIG** section).

| Setting                          | Description                              | Default                   |
| -------------------------------- | ---------------------------------------- | ------------------------- |
| `WSAPIRATELIMITTOKENLIMIT`       | Maximum bucket size (burst) per user     | `20`                      |
| `WSAPIRATELIMITDEFAULTTOKENCOST` | Default token cost per request           | `1`                       |
| `WSAPIRATELIMITTOKENSPERPERIOD`  | Tokens added per replenishment period    | `1`                       |
| `WSAPIRATELIMITREPLENISHSECONDS` | Replenishment period length in seconds   | `1`                       |
| `WSAPIRATELIMITTOKENQUEUELIMIT`  | Number of pending requests per user      | `0`                       |
| `WSAPIRATELIMITREJECTSTATUSCODE` | HTTP status code returned upon rejection | `429 (Too Many Requests)` |
| `WSAPIRATELIMITEXCLUDEDPATH`     | Path excluded from rate limiting         | `/swagger`                |

---

## Changed: HTTP Method for Retrieval Endpoints

The following endpoints have been changed from **POST** to **GET**:

* `/fswsapi/v1/parcels/get`
* `/fswsapi/v1/orderLists/get`
* `/fswsapi/v1/orderListParcels/get`

As a result, request parameters that were previously supplied in the JSON request body must now be provided as query parameters.

### Parcels

#### Before

```http
POST /fswsapi/v1/parcels/get
```

Request body:

```json
{
  "departureDate": "2026-06-15T00:00:00+02:00"
}
```

#### After

```http
GET /fswsapi/v1/parcels/get?departureDate=2026-06-15T00:00:00+02:00
```

`departureDate` is now supplied via query parameters.

---

### Order Lists

#### Before

```http
POST /fswsapi/v1/orderLists/get
```

Request body:

```json
{
  "departureDate": "2026-06-15T00:00:00+02:00"
}
```

#### After

```http
GET /fswsapi/v1/orderLists/get?departureDate=2026-06-15T00:00:00+02:00
```

`departureDate` is now supplied via query parameters.

---

### Order List Parcels

#### Before

```http
POST /fswsapi/v1/orderListParcels/get
```

Request body:

```json
{
  "departureDate": "2026-06-15T00:00:00+02:00",
  "orderListCode": "...",
  "orderListSubCode": "..."
}
```

#### After

```http
GET /fswsapi/v1/orderListParcels/get?departureDate=2026-06-15T00:00:00+02:00&orderListCode=...&orderListSubCode=...
```

The following fields are now supplied via query parameters:

* `departureDate`
* `orderListCode` *(optional)*
* `orderListSubCode` *(optional)*

---

## Added: Departure Dates Endpoint

A new endpoint has been added to retrieve available departure dates.

### Endpoint

```http
GET /fswsapi/v1/departureDates/get
```

### Query Parameters

| Parameter     | Required | Description                                              |
| ------------- | -------- | -------------------------------------------------------- |
| `listType`    | No       | `0 = Not Set`, `1 = Stock`, `2 = OrderList`              |
| `listCode`    | No*      | Stock code or order list code                            |
| `sublistCode` | No       | Order list subcode (only applicable when `listType = 2`) |

> **Note:** When `listCode` is specified, `listType` is required.

### Response

Returns a collection of Departure Date objects.

#### Departure Date Object

| Field           | Description                          |
| --------------- | ------------------------------------ |
| `orderNumber`   | Example: `260615`                    |
| `departureDate` | Example: `2026-06-15T00:00:00+02:00` |

### Examples

#### 1. Retrieve all available departure dates

```http
GET /fswsapi/v1/departureDates/get
```

or

```http
GET /fswsapi/v1/departureDates/get?listType=0
```

Returns departure dates across all stocks and order lists.

#### 2. Retrieve departure dates for a specific stock

```http
GET /fswsapi/v1/departureDates/get?listType=1&listCode=STO1
```

#### 3. Retrieve departure dates for a specific order list

```http
GET /fswsapi/v1/departureDates/get?listType=2&listCode=ORD1
```

#### 4. Retrieve departure dates for a specific order list and sublist

```http
GET /fswsapi/v1/departureDates/get?listType=2&listCode=ORD1&sublistCode=SUB2
```

### Validation Rules

* If `listCode` is specified, `listType` must also be specified.
* Depending on the value of `listType`, the API will search either:

  * Stocks (`listType = 1`)
  * Order Lists (`listType = 2`)

---

## Changed: Field Renaming

### Parcel

| Previous Field       | New Field               |
| -------------------- | ----------------------- |
| `AmountPerBunch`     | `QuantityPerBunch`      |
| `AmountPerLayer`     | `QuantityPerLayer`      |
| `AmountPerCarrier`   | `QuantityPerCarrier`    |
| `IsBinnen`           | `Received`              |
| `MinimumOrder`       | `MinimumOrderQuantity`  |
| `MinimumOrder2`      | `MinimumOrder2Quantity` |
| `MinimumOrderPrice2` | `MinimumOrder2Price`    |
| `SendingHeaderID`    | `SupplyHeaderId`        |

### Additional Information

`SupplyHeaderId` (`PARTIJ.AANVKOPID`) is populated only when `DEBITEUR.WSAVKOPID` is enabled.

### OrderListParcel

| Previous Field          | New Field               |
| ----------------------- | ----------------------- |
| `MinimumOrderQuantity2` | `MinimumOrder2Quantity` |
| `MinimumOrderPrice2`    | `MinimumOrder2Price`    |

---

## Summary

### Added

* Token Bucket-based API rate limiter.
* Configurable rate limiting settings.
* New `/departureDates/get` endpoint.

### Changed

* `/parcels/get` changed from POST to GET.
* `/orderLists/get` changed from POST to GET.
* `/orderListParcels/get` changed from POST to GET.
* Request body parameters moved to query parameters.
* Multiple response field names renamed for consistency.
