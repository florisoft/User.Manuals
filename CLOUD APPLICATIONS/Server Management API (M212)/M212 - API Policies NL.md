<img src="../../fslogo.png">

# Florisoft Handleiding API Policies

In deze handleiding leest u over de verschillende policies die betrekking hebben op de werking van de server management API.
Hoe u een policy aanmaakt en instelt wordt niet beschreven in deze handleiding, weet u niet hoe u dat doet? Raadpleeg dan [deze handleiding](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md) om te leren hoe u een policy aanmaakt en instelt. 


Open eerst het policy scherm door in de constanten te navigeren naar het pad: **Systeem→Users→Policy beheer**, het policy scherm zal in een nieuw venster openen.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="media NL/Policies/1.png"></details>

In het policy scherm maakt u een policy aan of opent u een al bestaande policy, navigeer in deze policy naar de instelling **External→Management** hier staan de policies die de werking van server management API beïnvloeden.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="media NL/Policies/2.png"></details>

## Policies

*Hieronder leest u een korte beschrijving over de server management API policies.*
De policies AvailableDivisions, AvailableStocks en AvailableFinancialAdmins zijn filters op bepaalde endpoints, wanneer u deze niet instelt is het standaard gedrag om alle gegevens ongefilterd te versturen. Deze filters zijn vooral handig als u de beschikbare gegevens wil limiteren voor een derde partij.

### External_Management_Access

Deze instelling moet aan staan voor gebruikers die toegang willen hebben tot de server management API. 
Indien deze niet aan staat worden alle login pogingen voor niet geautoriseerde gebruikers afgewezen.

**:warning: Deze instelling is ook relevant voor API endpoints die niet direct onder de Server Management API module vallen.**

### External_Management_AvailableDivisions

Met deze instelling stelt u een filter in op de data dat de Server Management API terug geeft, met deze instelling filter u dan op **Devisies** van uw Florisoft systeem.
Wanneer u hier geen filter instelt krijgt u de alle gegevens terug.<br><Br>
**Dit filter is enkel relevant voor resultaten terug gegeven vanuit de API-endpoints OrderlistAssortment en OrderlistComponents.**

### External_Management_Available_Stocks

Met deze instelling stelt u een filter in op de data dat de ServerManagement API terug geeft, deze instelling filtert op welke voorraden meegenomen worden in de API data.
Wanneer u hier geen filter op instelt krijgt u de voorraadgegevens terug van elke voorraad. Klik hier op het pijltje en selecteer welke voorraden volgens deze policy meegenomen mogen worden. 

### External_Management_AvailableFinancialAdmins

Met deze instelling filtert u de data op ingestelde Financiële administraties, dit betreft enkel de verkoop & factuur gerelateerde endpoints.
Wanneer u hier geen filter op in stelt krijgt u de verkoop- en factuurgegevens terug van alle financiële administraties. Klik op het pijltje en selecteer welke financiële administraties meegenomen worden in deze policy. <br><Br>**Dit filter is relevant voor de endpoints: SalesHistory, SalesHistoryBouquets, SalesHistoryInvoiceHeaders en OutstandingInvoices**

