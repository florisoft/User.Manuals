![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Openstaande Returnables-sessies verwerken

Deze handleiding beschrijft hoe u openstaande Returnables-sessies voorkomt, terugvindt, hervat en afrondt. De werkwijze geldt voor zowel Returnables Inbound als Returnables Outbound.

## Wanneer is een sessie openstaand?

Een sessie doorloopt meerdere statussen:

| Status | Betekenis |
| --- | --- |
| `Inactive` | De sessie is openstaand, maar momenteel niet bij een medewerker in gebruik. |
| `Active` | Een medewerker werkt in de sessie. |
| `Completed` | De telling is voltooid, maar de sessie is nog niet volledig verwerkt en gesloten. |
| `Closed` | De sessie is volledig verwerkt en niet meer openstaand. |

In deze handleiding betekent **openstaand** dat de status niet `Closed` is. Een sessie is pas volledig afgerond wanneer deze `Closed` is.

## Openstaande sessies voorkomen

Rond een telling altijd af via **Gereed**, de eindcontrole en de bevestiging. Alleen teruggaan naar het startscherm of de app verlaten verwerkt de telling niet als voltooid.

### Normaal stoppen of uitloggen

Wanneer u **Order sluiten** kiest of normaal uitlogt, wordt de actieve sessie gestopt en teruggezet naar `Inactive`. De geregistreerde telling blijft bewaard. De sessie kan later opnieuw worden geselecteerd en kan dan ook door een andere medewerker worden geopend.

### Onverwachte PDA-uitval

Als de app of PDA onverwacht uitvalt, kan de sessie `Active` blijven. Meld opnieuw aan als dezelfde gebruiker. Deze gebruiker kan de eigen actieve sessie terugvinden en hervatten.

Een actieve sessie van een andere gebruiker kan niet worden geopend. Hiermee voorkomt Florisoft dat twee medewerkers tegelijkertijd dezelfde telling wijzigen.

## Openstaande sessies terugvinden

Er zijn drie manieren om een sessie terug te vinden.

### 1. Via de Returnables-app

1. Open Returnables Inbound of Returnables Outbound.
2. Kies handmatige selectie.
3. Open het klantenfilter.
4. Schakel **Met openstaande sessies** (`WithActiveSessions`) in.
5. Selecteer de klant, order en sessie.

Het filter is alleen beschikbaar wanneer `AvailableCustomerFilterOptions` de optie `WithActiveSessions` bevat.

De technische selectie combineert klanten met een niet-gesloten sessie met klanten die nog een actieve order hebben. Hierdoor kan ook een klant met een actieve order maar zonder bestaande sessie in de resultaten staan.

### 2. Via de Backoffice

In het factuuroverzicht en de transportplanning kan de kolom **Sessie's afgerond** worden getoond:

- **Rood:** er bestaat minimaal één sessie die nog niet `Closed` is;
- **Groen:** er bestaan sessies en deze zijn allemaal `Closed`;
- **Geen groene status:** er zijn geen Returnables-sessies gevonden.

Via **Uitleveren → Returnables sessie's** opent u het centrale overzicht. Dit overzicht toont alle sessies die nog niet `Closed` zijn, dus ook inactieve, actieve en eventueel voltooide maar nog niet gesloten sessies.

Gebruik de zoekfunctie om de klant, order of sessie te vinden. Met **Vernieuwen** haalt u de actuele status op.

### 3. Vanuit de factuurwaarschuwing

Wanneer de policy `Backoffice → Financial → Invoicing → Returnables_PrintNotAllowedWhenActive` is ingeschakeld, controleert Florisoft bij het afdrukken van een factuur op `Active` en `Inactive` Returnables-sessies bij dezelfde klant en order.

Als zo'n sessie bestaat:

1. wordt de factuur niet afgedrukt;
2. verschijnt een waarschuwing;
3. kunt u de bijbehorende openstaande sessies laten tonen.

Rond de sessies af en start daarna de factuuractie opnieuw. Een eventuele sessie met status `Completed` wordt wel als niet-gesloten getoond in de statuskolom en het centrale overzicht, maar valt niet onder deze specifieke factuurcontrole.

## Een sessie openen met een FSQR-code

Met een sessie-QR opent u direct de juiste Returnables-sessie.

### QR-code maken

1. Open in de Backoffice **Uitleveren → Returnables sessie's**.
2. Selecteer de gewenste sessie.
3. Open het contextmenu.
4. Kies **Maak QR-code voor sessie scan**.
5. Florisoft maakt een afbeelding met de sessie-ID.

De sessielijst die vanuit een factuurwaarschuwing wordt geopend, is bedoeld om de betreffende sessies te bekijken. Maak de QR-code vanuit het algemene overzicht onder **Uitleveren**.

### QR-code scannen

1. Open Returnables Inbound of Returnables Outbound, passend bij het type sessie.
2. Scan de FSQR-code in het startscherm.
3. De app controleert de sessie, klant, order, het sessietype en de toegang van de gebruiker.
4. Na een geldige scan wordt de sessie geactiveerd en opent de telpagina.

Als de sessie nog geen batches bevat, maakt de app op de telpagina een eerste batch aan.

## Sessie hervatten en afronden

Controleer na het openen eerst of u de juiste klant, order en sessie hebt geselecteerd. Ga daarna verder met tellen:

1. controleer bestaande batches en aantallen;
2. voeg zo nodig een nieuwe batch toe;
3. kies **Gereed**;
4. controleer de totalen;
5. vul verplichte aanvullende gegevens in;
6. bevestig de sessie.

Na een succesvolle verwerking krijgt de sessie status `Closed`. Controleer daarna zo nodig opnieuw de kolom **Sessie's afgerond** of vernieuw het centrale sessieoverzicht.

## Problemen oplossen

### De sessie wordt niet gevonden na het scannen

Controleer of u de juiste app hebt geopend. Een Inbound-sessie kan niet als Outbound-sessie worden geopend en andersom. Controleer ook of het barcodetype `FsqrCode` is toegestaan via `ValidBarcodeDecodeOptions`.

### De order van de sessie bestaat niet meer

De app weigert een sessie wanneer de gekoppelde order niet meer bestaat. De sessie kan dan niet via de normale appworkflow worden afgerond. Laat deze situatie door een Florisoft-beheerder onderzoeken.

### De sessie is actief bij een andere medewerker

De sessie blijft geblokkeerd voor de huidige gebruiker. Laat de andere medewerker de sessie normaal sluiten of uitloggen. Daarna wordt de sessie `Inactive` en kan een andere medewerker deze openen.

### De PDA is uitgevallen en de sessie blijft actief

Meld aan als dezelfde gebruiker die als laatste in de sessie werkte. Zoek de sessie via de klant en order of scan de sessie-QR opnieuw.

### De sessie bevat nog geen batches

Open de sessie. Op de telpagina wordt een nieuwe batch aangemaakt, waarna u het inkomende of uitgaande fust kunt registreren.

### De factuur blijft geblokkeerd

Controleer klant en order in **Uitleveren → Returnables sessie's**. Vernieuw het overzicht en rond iedere `Active` of `Inactive` sessie af. Controleer ook de rode status in het factuuroverzicht.

## Relevante policies

| Pad | Policy | Werking |
| --- | --- | --- |
| `Apps → Logistics → Returnables` | `AvailableCustomerFilterOptions` | Maakt onder andere het filter `WithActiveSessions` beschikbaar. |
| `Apps → Logistics → Returnables` | `ValidBarcodeDecodeOptions` | Bepaalt welke barcodes in het startscherm worden herkend, waaronder FSQR. |
| `Backoffice → Financial → Invoicing` | `Returnables_PrintNotAllowedWhenActive` | Blokkeert het afdrukken bij actieve of inactieve sessies voor de klant en order. |

Raadpleeg voor het normale tel- en afrondproces de handleiding [Returnables Inbound](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Returnables/Returnables%20Inbound/Handleiding%20Returnables%20Inbound%20-%20NL.md) of [Returnables Outbound](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Returnables/Returnables%20Outbound/Handleiding%20Returnables%20Outbound%20-%20NL.md).
