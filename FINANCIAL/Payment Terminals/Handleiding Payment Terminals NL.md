<img src="../../fslogo.png" height=250px>

# Florisoft Handleiding Terminals

In deze handleiding leert u hoe u een MultiSafepay betaalterminal instelt en vervolgens betalingen mee kunt verrichten. Deze module werkt met de betaaldienstaanbieder MultiSafePay.

## Vereisten

Voor het gebruik van deze module heeft u een aantal dingen nodig:

1. Gekoppelde betaalterminal van MultiSafepay.
2. Florisoft "Payment Terminals" module.

## Instelwerk

Om deze module in te stellen heeft u een aantal zaken nodig. Florisoft verstrekt deze informatie aan u:

1. **MultiSafepay API Key**: de API-sleutel waarmee u de betalingen verricht.
2. **Terminal Ids**: de unieke Id's van de betaalterminals. Hiermee kunt u de verschillende terminals differentiëren.

*Volg vervolgens de onderstaande stappen:*

### Aanmaken betaalwijze

|Stap|Uitleg|
|:-:|:--|
|**1**|Open de constanten en navigeer naar het pad:<br>**Financieel→Betaalwijzen**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/4.png"></details>|
|**2**|Maak een nieuwe betaalwijze aan en vul de volgende velden in:<br>**Code betaalwijze**: geef dit een passende waarde van maximaal 6 tekens.<br>**Omschrijving**: Vul hier een korte gepaste naam in, dit is wat uiteindelijk zichtbaar is in het kassascherm.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/2.png"></details>|
|**3**|Zet vervolgens de checkbox "**Toon als knop in het nieuwe betalingenscherm**" aan.|
|**4**|Navigeer nu naar het mapje **C&C Touch**.|
|**5**|Zet hier de checkbox **Betaalwijze is gekoppeld aan pinbetaling** aan.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/1.png"></details>|

### Instellen pinautomaatprotocol

|Stap|Uitleg|
|:-:|:--|
|**1**|Open het constantenscherm en navigeer naar het pad:<br> **Systeem→Users→Systeemgebruikers**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/5.png"></details>|
|**2**|Zet in de INI-bestanden FS_KASSA de instelling **CCPINAUTOMAATPROTOCOL** op de waarde **MultiSafepay**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/6.png"></details>|
|**3**|Sluit het INI-scherm en sla de wijzigingen in de gebruiker op.|

### Instellen van policies

|Stap|Uitleg|
|:-:|:--|
|**1**|Open het constantenscherm en navigeer naar het pad:<br>**Systeem→Users→PolicyBeheer**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/7.png"></details>|
|**2**|Maak een beleidsregel aan met de volgende instellingen:<br>**Backoffice_Financial_Payment_ApiKey**: vul hier de MultiSafepay API-key in.<br><br>**Backoffice_Financial_Payment_TerminalId**: stel hier het te gebruiken terminal-ID in.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/8.png"></details> |
|**3**|Koppel vervolgens de nodige gebruikers aan deze beleidsregel.<br><br>**Let op**: Als u meerdere terminals (dus ook meerdere terminal-ID's) heeft, moet u verschillende beleidsregels aanmaken voor de verschillende gebruikers die bij de terminal horen. <br><br>:warning:*Een gebruiker kan echter maar aan één terminal gekoppeld zijn!* |
|**4**|Sla de beleidsregel vervolgens op.|

**Heeft u meer uitleg nodig over het beleidscherm? Lees dan [hier](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md) meer over hoe dit werkt.**

## Werking

De werking van deze module bevindt zich in het kassascherm dat te vinden is via de facturenbak.<br>
*Volg hiervoor de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Ga met een gebruiker die deze betaalmethode via beleidsregels en INI heeft ingesteld naar het facturenscherm.<br>**Navigator→Facturen**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/9.png"></details>|
|**2**|Selecteer vervolgens een factuur en klik op de F12-toets om een nieuwe betaling te starten. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/10.png"></details>|
|**3**|Vul vervolgens het te betalen bedrag in (#1). |
|**4**|Selecteer vervolgens de eerder aangemaakte betaalwijze (MultiSafepay) door op de knop (#2) te drukken.|
|**5**|Selecteer met behulp van de spatiebalk nu de bij de betaling behorende facturen. De geselecteerde factuurnummers ziet u vervolgens terug als opmerking bij de transactie.|
|**6**|Wanneer u nu op **Ok** drukt, zal Florisoft bevriezen en ziet u binnen enkele ogenblikken een betalingsprompt verschijnen op de betaalterminal.|
|**7.a**|Als de betaling succesvol wordt afgerond, ziet u in Florisoft een bevestigingsprompt.|
|**7.b**|Als de betaling mislukt of te lang duurt, zal Florisoft een time-out bericht weergeven.|
