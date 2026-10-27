<img src="../../fslogo.png" alt="Florisoft bedrijfslogo">

# Florisoft Webservice API (M234)

Met de Florisoft Webservice API kan een externe applicatie beschikbare voorraad- en bestellijstpartijen ophalen, bestellingen plaatsen of wijzigen en deze bevestigen. Deze handleiding is bedoeld voor ontwikkelaars en applicatiebeheerders die met de API koppelen.

De voorbeelden gebruiken API-versie `v1`. De Swagger-pagina in de eigen omgeving is altijd leidend voor het exacte request- en responsemodel dat daar beschikbaar is.

## Inhoud

- [Voorwaarden](#voorwaarden)
- [Swagger en basis-URL](#swagger-en-basis-url)
- [Authenticatie en headers](#authenticatie-en-headers)
- [Datumnotatie](#datumnotatie)
- [Snelheidslimiet](#snelheidslimiet)
- [Overzicht van endpoints](#overzicht-van-endpoints)
- [Gebruiker aanmelden](#gebruiker-aanmelden)
- [Vertrekdatums](#vertrekdatums)
- [Voorraadpartijen en bestellingen](#voorraadpartijen-en-bestellingen)
- [Bestellijsten en bestellingen](#bestellijsten-en-bestellingen)
- [Administratieve negatieve bestellingen](#administratieve-negatieve-bestellingen)
- [Hernoemde responsevelden](#hernoemde-responsevelden)
- [Testen en problemen oplossen](#testen-en-problemen-oplossen)

## Voorwaarden

Controleer voor het gebruik van de API dat:

- de Webservice API in IIS is geïnstalleerd en actief is;
- voor de koppeling een API-sleutel is uitgegeven;
- de Florisoft-gebruiker toegang heeft tot de juiste voorraden en bestellijsten;
- de gebruiker niet is geblokkeerd voor levering (`LEVSTOP`);
- de gebruiker toegang heeft tot de Webservice API (`TOEGANGWS`);
- de benodigde licenties actief zijn.

De beschikbare endpointgroepen zijn afhankelijk van de actieve licentie:

| Licentie | Doel |
|---|---|
| `Basic` | Aanmelden en basiswerking van de API |
| `Parcels` | Voorraadpartijen ophalen |
| `Buy` | Voorraadbestellingen toevoegen, wijzigen en bevestigen |
| `OrderlistParcels` | Bestellijsten en bestellijstpartijen ophalen |
| `OrderlistBuy` | Bestellijstbestellingen toevoegen, wijzigen en bevestigen |

Neem contact op met Florisoft wanneer een endpoint niet in Swagger staat of een autorisatiefout geeft terwijl het request geldig is.

## Swagger en basis-URL

Open de root-URL van de Webservice API in een browser om Swagger te bekijken. Swagger toont de endpoints en modellen die in de geïnstalleerde versie beschikbaar zijn. Na het invullen van de API-sleutel kunnen requests vanuit deze pagina worden getest.

<details><summary><b>Toon een voorbeeld van het Swagger-overzicht</b></summary><img src="V1.3/media/image1.png" alt="Swagger-overzicht van de Florisoft Webservice API"></details>

Plaats voor ieder endpoint de basis-URL van de eigen omgeving. Bijvoorbeeld:

```text
https://localhost:7179/fswsapi/v1/user/login
```

Vervang `https://localhost:7179/fswsapi` door de URL die voor de eigen omgeving is verstrekt.

## Authenticatie en headers

Stuur de API-sleutel met ieder request mee:

```http
x-api-key: <API-sleutel>
```

Start een sessie met `POST /fswsapi/v1/user/login`. Een succesvolle response bevat een hashcode. Stuur deze code met ieder volgend request mee:

```http
UserHashCode: <hashcode uit de loginresponse>
```

Neem echte API-sleutels, wachtwoorden of hashcodes nooit op in documentatie, tickets of logfragmenten.

## Datumnotatie

Gebruik, tenzij Swagger voor een veld iets anders aangeeft, een ISO 8601-datum en -tijd met tijdzone:

```text
yyyy-MM-ddTHH:mm:sszzz
```

Voorbeeld:

```text
2026-06-15T00:00:00+02:00
```

## Snelheidslimiet

Het aantal requests wordt per `UserHashCode` begrensd. Standaard heeft een gebruiker een tokenbucket met maximaal 20 tokens. Iedere seconde komt er een token bij en een normaal request kost een token.

Wanneer geen token beschikbaar is, antwoordt de API met:

```http
429 Too Many Requests
```

Wacht voordat het request opnieuw wordt verstuurd en gebruik een beheerste retrystrategie met oplopende wachttijd. Herhaal niet direct een grote reeks afgewezen requests.

Een beheerder kan de standaardwaarden aanpassen via de Webshop-instellingen in de sectie `CONFIG`:

| Instelling | Standaard | Doel |
|---|---:|---|
| `WSAPIRATELIMITTOKENLIMIT` | `20` | Maximale bucketgrootte per gebruiker |
| `WSAPIRATELIMITDEFAULTTOKENCOST` | `1` | Tokenkosten van een normaal request |
| `WSAPIRATELIMITTOKENSPERPERIOD` | `1` | Aantal tokens dat per periode wordt toegevoegd |
| `WSAPIRATELIMITREPLENISHSECONDS` | `1` | Lengte van de periode in seconden |
| `WSAPIRATELIMITTOKENQUEUELIMIT` | `0` | Aantal requests in de wachtrij |
| `WSAPIRATELIMITREJECTSTATUSCODE` | `429` | Statuscode bij een afgewezen request |
| `WSAPIRATELIMITEXCLUDEDPATH` | `/swagger` | Pad waarop de limiet niet geldt |

Afgewezen requests worden als waarschuwing in de Health Log vastgelegd.

## Overzicht van endpoints

| Methode | Endpoint | Doel |
|---|---|---|
| `POST` | `/user/login` | Een gebruikerssessie starten |
| `GET` | `/departureDates/get` | Beschikbare vertrekdatums ophalen |
| `GET` | `/parcels/get` | Beschikbare voorraadpartijen ophalen |
| `POST` | `/orderItem/addOrUpdate` | Een voorraadbestelregel toevoegen, wijzigen of verwijderen |
| `GET` | `/orderItem/get` | Open voorraadbestelregels uit de huidige sessie ophalen |
| `POST` | `/orders/confirm` | Voorraadbestelregels bevestigen |
| `GET` | `/orderLists/get` | Beschikbare bestellijsten ophalen |
| `GET` | `/orderListParcels/get` | Beschikbare bestellijstpartijen ophalen |
| `POST` | `/orderListOrderItem/addOrUpdate` | Een bestellijstregel toevoegen, wijzigen of verwijderen; wordt ook gebruikt voor administratieve negatieve bestellingen |
| `POST` | `/orders/confirmOrderlist` | Bestellijstregels bevestigen |

> `parcels/get`, `orderLists/get` en `orderListParcels/get` zijn `GET`-endpoints. Oudere koppelingen gebruiken mogelijk nog `POST` met een JSON-body; verplaats deze parameters naar de querystring.

## Gebruiker aanmelden

### `POST /fswsapi/v1/user/login`

Gebruik dit endpoint voordat de overige endpoints worden aangeroepen.

```json
{
  "userId": "<gebruikers-id>",
  "password": "<wachtwoord>"
}
```

Aanmelden kan mislukken wanneer de gegevens onjuist zijn, de gebruiker is geblokkeerd voor levering (`LEVSTOP`) of geen toegang heeft tot de Webservice API (`TOEGANGWS`). Bewaar de ontvangen hashcode alleen zolang de koppeling deze nodig heeft.

<details><summary><b>Toon een voorbeeld van de loginresponse</b></summary><img src="V1.3/media/image4.png" alt="Voorbeeldresponse van het loginendpoint"></details>

## Vertrekdatums

### `GET /fswsapi/v1/departureDates/get`

Gebruik dit endpoint om alle beschikbare vertrekdatums op te halen of te filteren op voorraad of bestellijst.

| Queryparameter | Verplicht | Omschrijving |
|---|---|---|
| `listType` | Nee | `0` = alles, `1` = voorraad, `2` = bestellijst |
| `listCode` | Nee* | Voorraadcode of bestellijstcode |
| `sublistCode` | Nee | Subcode van de bestellijst; alleen van toepassing bij `listType=2` |

*Wanneer `listCode` wordt meegestuurd, is `listType` verplicht.

Voorbeelden:

```http
GET /fswsapi/v1/departureDates/get
GET /fswsapi/v1/departureDates/get?listType=1&listCode=STO1
GET /fswsapi/v1/departureDates/get?listType=2&listCode=ORD1
GET /fswsapi/v1/departureDates/get?listType=2&listCode=ORD1&sublistCode=SUB2
```

De response bevat voor iedere beschikbare datum `orderNumber` en `departureDate`.

<details><summary><b>Toon een voorbeeld van de response</b></summary><img src="V1.3/media/image15.png" alt="Voorbeeldresponse van het endpoint voor vertrekdatums"></details>

## Voorraadpartijen en bestellingen

### Voorraadpartijen ophalen

```http
GET /fswsapi/v1/parcels/get?departureDate=2026-06-15T00:00:00+02:00
```

`departureDate` is verplicht. De response bevat de voorraadpartijen die voor de huidige gebruiker beschikbaar zijn. Wanneer geen partij beschikbaar is, is de collectie leeg.

<details><summary><b>Toon een voorbeeld van een partijenresponse</b></summary><img src="V1.3/media/image5.png" alt="Voorbeeldresponse met beschikbare voorraadpartijen"></details>

### Een voorraadbestelregel toevoegen, wijzigen of verwijderen

```http
POST /fswsapi/v1/orderItem/addOrUpdate
```

Verplichte requestvelden:

- `parcelNumber`: gebruik de waarde uit `parcels/get`;
- `departureDate`;
- `orderedQuantity`;
- `uniqueOrderLineId`.

Gebruik bij het aanmaken van een regel `0` voor `uniqueOrderLineId`. Gebruik bij een latere wijziging of verwijdering het nummer uit de eerste `addOrUpdate`-response.

Optioneel kan met `groupId` een UUID worden meegestuurd om gerelateerde bestelregels te groeperen:

```json
{
  "parcelNumber": 12345,
  "departureDate": "2026-06-15T00:00:00+02:00",
  "orderedQuantity": 10,
  "uniqueOrderLineId": 0,
  "groupId": "aa40f903-2cdd-45e6-b8b8-013d5ff29732"
}
```

### Open voorraadbestelregels ophalen

```http
GET /fswsapi/v1/orderItem/get
```

Dit endpoint retourneert de niet-geannuleerde en niet-bevestigde voorraadbestelregels voor de huidige debiteur in de huidige sessie.

### Voorraadbestellingen bevestigen

```http
POST /fswsapi/v1/orders/confirm
```

Zonder body bevestigt dit endpoint alle huidige voorraadbestelregels. Stuur een `groupId` mee om alleen een groep te bevestigen:

```json
{
  "groupId": "aa40f903-2cdd-45e6-b8b8-013d5ff29732"
}
```

## Bestellijsten en bestellingen

### Bestellijsten ophalen

```http
GET /fswsapi/v1/orderLists/get?departureDate=2026-06-15T00:00:00+02:00
```

`departureDate` is verplicht. De response bevat de bestellijsten die voor de gebruiker en vertrekdatum beschikbaar zijn.

### Bestellijstpartijen ophalen

```http
GET /fswsapi/v1/orderListParcels/get?departureDate=2026-06-15T00:00:00+02:00&orderListCode=ORD1&orderListSubCode=SUB2
```

`departureDate` is verplicht. Met `orderListCode` en `orderListSubCode` kan het resultaat worden beperkt. De response is leeg wanneer geen passende partij beschikbaar is.

### Een bestellijstregel toevoegen, wijzigen of verwijderen

```http
POST /fswsapi/v1/orderListOrderItem/addOrUpdate
```

Verplichte requestvelden:

- `orderListCode` en `orderListSubCode`, zoals ontvangen via `orderListParcels/get`;
- `parcelNumber`, zoals ontvangen via `orderListParcels/get`;
- `departureDate`;
- `orderedQuantity`;
- `uniqueOrderLineId`.

Gebruik bij het aanmaken van een regel `0` voor `uniqueOrderLineId` en bij het wijzigen of verwijderen het ontvangen regelnummer.

### Bestellijstbestellingen bevestigen

```http
POST /fswsapi/v1/orders/confirmOrderlist
```

Dit endpoint bevestigt de huidige bestellijstregels. Gebruik de normale bevestigingsflow niet voor een administratieve negatieve bestelling; zie het volgende hoofdstuk.

## Administratieve negatieve bestellingen

De API kan een negatieve bestellijstregel registreren voor administratieve facturatie, bijvoorbeeld voor een retour of credit. Dit is geen normale inkoop: er wordt geen voorraad gekocht of verdeeld. De regel wordt rechtstreeks geregistreerd om later in Florisoft Backoffice naar een factuur te verwerken.

> Test deze flow samen met de Florisoft-beheerder of consultant voordat deze in productie wordt gebruikt. De bronpartij bepaalt belangrijke factuurgegevens, waaronder de prijs. Een bronprijs van `0` resulteert in een creditregel van `0`.

### Aanvullende configuratie

Naast de normale API-authenticatie zijn de volgende instellingen nodig:

- licentie/rol `OrderListBuy`;
- Webshop-instelling `BESTEL - WSAPIALLOWNEGATIVEORDERS` op `ON`;
- Backoffice-policy `SendOrdersWithNegativeOriginalToInvoices` op `true`.

Laat een bevoegde beheerder of Florisoft-consultant deze instellingen en het beoogde factuurresultaat controleren.

### Een negatieve bestelling registreren

Gebruik het normale endpoint voor bestellijstregels:

```http
POST /fswsapi/v1/orderListOrderItem/addOrUpdate
```

Voorbeeldrequest:

```json
{
  "departureDate": "2026-08-18",
  "orderedQuantity": -120,
  "parcelNumber": 110,
  "orderListCode": "1",
  "orderListSubCode": ""
}
```

Voorwaarden:

- `orderedQuantity` is kleiner dan `0`;
- `parcelNumber` verwijst naar een bestaande, beschikbare bestelpartij;
- `departureDate` is een geldige datum;
- `orderListCode` en `orderListSubCode` wijzen naar de bedoelde bestellijst.

De debiteur wordt bepaald aan de hand van de aangemelde gebruiker.

Bij succes antwoordt de API met HTTP `200`, bijvoorbeeld:

```json
{
  "negativeOrderRegistrationResult": {
    "succeeded": true,
    "message": "Negative order registered successfully for administrative invoicing. ID: 167",
    "orderId": 167
  }
}
```

Wanneer de bestelpartij niet wordt gevonden, antwoordt de API met HTTP `412`, bijvoorbeeld:

```json
{
  "negativeOrderRegistrationResult": {
    "succeeded": false,
    "message": "Negative order could not be registered because no order parcel was found for parcel number: 999",
    "orderId": null
  }
}
```

### Belangrijke controles

- Ieder negatief request maakt momenteel een nieuwe administratieve regel aan.
- `uniqueOrderLineId` wordt niet gebruikt om een bestaande negatieve regel te wijzigen of het request idempotent te maken.
- Herhaal een request na een onzeker resultaat niet automatisch zonder eerst te controleren of de regel is aangemaakt. Anders kan een dubbele creditregel ontstaan.
- Controleer prijs, aantal, fustinformatie, debiteur en factuurresultaat in Backoffice voordat de regel verder wordt verwerkt.
- Laat de regel niet alsnog via de normale leverings- of voorraadflow verwerken.

## Hernoemde responsevelden

Gebruik in nieuwe koppelingen de actuele veldnamen.

### Voorraadpartij

| Vorig veld | Actueel veld |
|---|---|
| `AmountPerBunch` | `QuantityPerBunch` |
| `AmountPerLayer` | `QuantityPerLayer` |
| `AmountPerCarrier` | `QuantityPerCarrier` |
| `IsBinnen` | `Received` |
| `MinimumOrder` | `MinimumOrderQuantity` |
| `MinimumOrder2` | `MinimumOrder2Quantity` |
| `MinimumOrderPrice2` | `MinimumOrder2Price` |
| `SendingHeaderID` | `SupplyHeaderId` |

`SupplyHeaderId` wordt alleen gevuld wanneer `DEBITEUR.WSAVKOPID` is ingeschakeld.

### Bestellijstpartij

| Vorig veld | Actueel veld |
|---|---|
| `MinimumOrderQuantity2` | `MinimumOrder2Quantity` |
| `MinimumOrderPrice2` | `MinimumOrder2Price` |

## Testen en problemen oplossen

Voer voor de ingebruikname de volgende controles uit:

1. Open Swagger en controleer of de benodigde endpoints beschikbaar zijn.
2. Meld aan met een speciale testgebruiker en controleer de ontvangen hashcode.
3. Haal vertrekdatums en partijen op voor een bekende testdatum.
4. Maak een bestelregel aan met `uniqueOrderLineId: 0` en wijzig deze daarna met het ontvangen regelnummer.
5. Bevestig de bedoelde bestelling en controleer het resultaat in Florisoft.
6. Controleer bij negatieve bestellingen het volledige credit- of retourresultaat in Backoffice voordat geautomatiseerd gebruik wordt ingeschakeld.

Veelvoorkomende responses:

| Response | Controle |
|---|---|
| Aanmelden mislukt | Inloggegevens, `LEVSTOP` en `TOEGANGWS` |
| `401` of `403` | API-sleutel, `UserHashCode`, licentie en gebruikerstoegang |
| `412` bij een negatieve bestelling | Of de gevraagde bestelpartij bestaat en beschikbaar is |
| `429` | Verlaag het aantal requests en probeer later opnieuw met oplopende wachttijd |
| Lege collectie | Vertrekdatum, toegang tot voorraad/bestellijst en filterwaarden |

Wanneer het geïnstalleerde Swagger-model afwijkt van deze handleiding, stop dan de wijziging aan de koppeling en neem contact op met Florisoft om vast te stellen welke API-versie en configuratie actief zijn.
