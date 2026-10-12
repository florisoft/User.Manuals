# Microsoft Graph API Email

Met **Microsoft Graph API Email** koppelt u Florisoft aan een mailbox in Microsoft 365 of Office 365. Florisoft kan deze koppeling gebruiken om e-mails te verzenden en, wanneer dit binnen uw inrichting nodig is, berichten uit de mailbox op te halen. Voorbeelden zijn digitale facturen, documenten en EKT- of EDI-berichten.

Deze handleiding is bedoeld voor applicatiebeheerders die zowel Florisoft als het Microsoft 365-maildomein van hun organisatie beheren.

## Voorwaarden

Zorg voordat u begint dat:

- uw organisatie Microsoft 365 of Office 365 gebruikt;
- u in Florisoft toegang hebt tot de e-mailinstellingen;
- u kunt aanmelden met het Microsoft 365-account dat Florisoft gaat gebruiken;
- u in Microsoft Entra de Florisoft-applicatie en de toegekende machtigingen kunt beheren;
- u de juiste set **Email login gegevens** kent;
- u een Florisoft-versie gebruikt waarin **Microsoft Graph** beschikbaar is. Deze keuze is beschikbaar vanaf versie **139.000 / 140.000**.

> **Let op:** gebruikt u verschillende mailboxaccounts voor verzenden en ontvangen? Controleer dan dat u de juiste set **Email login gegevens** aanpast.

## 1. Open de e-mailinstellingen

1. Open in Florisoft het scherm **Constanten**.
2. Ga naar `Systeem → Email login gegevens`.
3. Open de set e-mailgegevens die u aan Microsoft Graph wilt koppelen.
4. Controleer de omschrijving en het Microsoft 365-account voordat u wijzigingen aanbrengt.

## 2. Selecteer Microsoft Graph

1. Zoek in de e-mailconfiguratie de keuze voor de authenticatiemethode.
2. Selecteer **Microsoft Graph** in plaats van traditionele SMTP-authenticatie.
3. Sla de wijziging nog niet definitief af voordat u de OAuth-koppeling hebt voltooid.

## 3. Maak de OAuth-koppeling

1. Klik op **OAuth2 instellen**.
2. Meld u aan met het Microsoft 365-account dat Florisoft gaat gebruiken.
3. Controleer welke machtigingen worden gevraagd.
4. Accepteer de machtigingen als deze passen bij uw inrichting.
5. Rond de aanmelding af en sla de set **Email login gegevens** op.

Wanneer u een bestaande e-mailconfiguratie omzet naar Microsoft Graph, maakt u altijd een nieuwe OAuth-token aan.

## 4. Controleer de machtigingen in Microsoft Entra

1. Open het Microsoft Entra-beheercentrum.
2. Zoek de Florisoft-applicatie die tijdens de OAuth-aanmelding is gebruikt.
3. Open het overzicht met de toegekende machtigingen.
4. Controleer of de aangevraagde Microsoft Graph-machtigingen zijn toegekend.
5. Ontbreekt de beheerderstoestemming, open dan **Permissions** en kies **Grant admin consent**.
6. Controleer na afloop of de toestemming als verleend wordt weergegeven.

> Het kan enkele minuten duren voordat wijzigingen in Microsoft Entra overal actief zijn.

## 5. Test de koppeling

### Verzenden

1. Verzend vanuit Florisoft een testbericht naar een extern e-mailadres.
2. Controleer of Florisoft geen foutmelding toont.
3. Controleer of het bericht daadwerkelijk bij de ontvanger aankomt.

### Ontvangen

Voert Florisoft voor uw proces berichten uit de mailbox in, controleer dan of een nieuw testbericht correct wordt opgehaald en verwerkt.

## Problemen oplossen

| Probleem | Controle |
|---|---|
| Aanmelden of autoriseren lukt niet | Controleer of u het juiste Microsoft 365-account gebruikt en of beheerderstoestemming is verleend. |
| Florisoft blijft een authenticatiefout tonen | Maak opnieuw een OAuth-token aan en controleer de machtigingen in Microsoft Entra. |
| Verzenden lukt niet | Controleer de gekozen set **Email login gegevens**, het gebruikte mailboxaccount en de toegekende machtigingen. |
| Ontvangen lukt niet | Controleer of de juiste mailbox en set **Email login gegevens** worden gebruikt en of de koppeling toestemming heeft om berichten op te halen. |
| De configuratie werkt direct na een wijziging nog niet | Wacht enkele minuten en test opnieuw; wijzigingen in Microsoft Entra kunnen vertraagd worden verwerkt. |
| Er verschijnt een `504 Gateway Timeout` | Test later opnieuw. Deze melding wijst doorgaans op een tijdelijk netwerk- of verbindingsprobleem met Microsoft Graph. |

## Na wijzigingen in Microsoft 365

Maak een nieuwe OAuth-koppeling wanneer het mailboxaccount, de toestemming of relevante beveiligingsinstellingen zijn gewijzigd en Florisoft niet meer kan aanmelden. Test daarna opnieuw zowel verzenden als ontvangen voor zover beide functies in uw organisatie worden gebruikt.
