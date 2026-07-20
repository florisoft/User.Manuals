![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Returnables Outbound (Returnables App)

## Wat is Returnables Outbound?

Returnables Outbound is bedoeld voor het registreren en controleren van uitgaand fust, zoals pallets, kratten en karren, voordat dit het bedrijf verlaat.

U selecteert een klant en order, werkt in een sessie, telt het uitgaande fust in één of meer batches en controleert de totalen voordat u de sessie afrondt. Welke filters, invoermogelijkheden en afrondopties zichtbaar zijn, hangt af van de ingestelde policies.

## Werkwijze

### Stap 1: order en sessie openen

U kunt een order of sessie openen door een ondersteunde barcode te scannen of door handmatig een klant en order te selecteren.

Bij handmatige selectie:

1. Zoek en selecteer de klant.
2. Gebruik eventueel de beschikbare klantfilters.
3. Selecteer een bestaande order of maak een nieuwe order aan.
4. Kies een bestaande outbound-sessie of maak een nieuwe sessie.

Als er precies één sessie bij een gescande order bestaat, opent de app deze direct. Bij meerdere sessies kiest u de juiste sessie. Als er nog geen sessie bestaat, maakt de app er een aan.

De gedeelde policy `AvailableCustomerFilterOptions` bepaalt welke filters beschikbaar zijn:

- `WithInvoice`: klanten met een openstaande factuur;
- `WithActiveSessions`: klanten met openstaande returnables-sessies.

De gedeelde policy `ValidBarcodeDecodeOptions` bepaalt welke soorten barcodes in het startscherm worden herkend. Afhankelijk van de configuratie kan de app onder meer orderregel-, FSQR-sessie- en karbarcodes verwerken. Bij een ondersteunde karbarcode kan de app het aan de kar gekoppelde fust overnemen in de telling.

Na onverwachte PDA-uitval kan dezelfde gebruiker de eigen actieve sessie opnieuw openen. Een actieve sessie van een andere gebruiker blijft geblokkeerd. Een gescande sessie wordt alleen geopend wanneer het type klopt en de gekoppelde order nog bestaat. Als een heropende sessie nog geen batches bevat, maakt de telpagina een eerste batch aan.

### Stap 2: uitgaand fust tellen

De telling wordt opgeslagen in batches. Een batch kan bijvoorbeeld één kar, werkplek of telronde voorstellen.

Op de telpagina kunt u:

- de aantallen van standaard getoonde fustcodes wijzigen;
- een toegestaan extra fusttype toevoegen;
- snelle invoer gebruiken;
- een fustbarcode scannen, waarna het aantal met één wordt verhoogd;
- een volgende batch beginnen en tussen bestaande batches navigeren.

Een eerste batch moet minimaal één positief aantal bevatten voordat u verder kunt. Een hoeveelheid nul verwijdert een eerder geregistreerde regel na bevestiging. Negatieve aantallen zijn niet toegestaan.

De volgende policies bepalen de telpagina:

| Policy | Werking |
| --- | --- |
| `StandardPackageCodes` | Bepaalt welke fustcodes standaard op iedere batch worden getoond. |
| `SortPackagingType` | Sorteert volgens de policyvolgorde, fustcode of omschrijving. |
| `AllowAdditionalPackaging` | Bepaalt of andere fustcodes handmatig mogen worden toegevoegd. |
| `ShowQuickInput` | Toont of verbergt de snelle invoer. |
| `ValidBarcodeDecodeOptions` | Bepaalt welke fustbarcodes op de telpagina worden herkend. Standaard is de fustbarcode beschikbaar. |

Als `Apps → PackagingPicturesFolderPath` is ingesteld, kan de app bij een fustcode een herkenningsfoto tonen. De foto moet in de ingestelde map beschikbaar zijn met de fustcode als bestandsnaam.

### Stap 3: eindcontrole

Kies **Gereed** om naar de eindcontrole te gaan. Hier ziet u de totalen per fustcode. Selecteer een totaal om de onderliggende batchregels te bekijken.

Controleer de aantallen zorgvuldig. U kunt een foutieve batchregel verwijderen voordat u bevestigt. De sessie kan niet worden afgerond zonder geregistreerde totalen of wanneer het totaal nul is. Vanuit dit scherm kan, indien nodig, ook een adreslabel worden afgedrukt.

### Stap 4: sessie afronden

Bij het bevestigen kan de app, afhankelijk van de policies, aanvullende informatie vragen:

- `RequireReferenceCode`: vraagt verplicht om een referentie, registratiedatum en eventueel een opmerking;
- `PrintPackingListOption`: verbergt de afdrukkeuze of toont deze met standaard **Ja** of **Nee**;
- `MailPackingListOption`: verbergt de e-mailkeuze of toont deze met standaard **Ja** of **Nee**;
- `RequireSignature`: vraagt om een handtekening wanneer een paklijst wordt afgedrukt of gemaild.

Als afdrukken of mailen is gekozen, gebruikt de app `PackageListPrinter` en `PackageListPrintLayout`.

De policy `PackageManagementRegistrationStrategy` bepaalt wat er bij afronden met de uitgaande fustaantallen gebeurt:

- `PackageApproval`: de registratie gaat via het goedkeuringsproces voor fust;
- `PackageAdministration`: de aantallen worden rechtstreeks in de fustadministratie verwerkt. Dit is de standaardstrategie in de applicatie.

Na een succesvolle verwerking wordt de sessie gesloten.

## Een sessie stoppen zonder afronden

Met **Order sluiten** of normaal uitloggen stopt u de actieve werksessie zonder de telling als voltooid te verwerken. De sessie wordt `Inactive` en kan later opnieuw worden geselecteerd. Bij onverwachte uitval kan de sessie `Active` blijven; meld dan opnieuw aan als dezelfde gebruiker.

## Openstaande sessies controleren

Openstaande sessies kunnen zichtbaar blijven in de app, het factuuroverzicht, de transportplanning en het centrale Backoffice-overzicht. Actieve en inactieve sessies kunnen bij ingeschakelde factuurcontrole het afdrukken blokkeren. Vanuit **Uitleveren → Returnables sessie's** kunt u een FSQR-code maken om een sessie direct te hervatten.

Lees de volledige werkwijze in [Openstaande Returnables-sessies verwerken](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Returnables/Openstaande%20sessies%20verwerken%20-%20NL.md).

## Policies instellen

Open in de Backoffice het constantenscherm en ga naar **Systeem → Users → Policy Beheer**.

De policies staan op de volgende plaatsen:

| Pad | Policies |
| --- | --- |
| `Apps` | `PackagingPicturesFolderPath` |
| `Apps → Logistics → Returnables` | `AvailableCustomerFilterOptions`, `ValidBarcodeDecodeOptions` |
| `Apps → Logistics → Returnables → Outbound → PackagingCounting` | `StandardPackageCodes`, `SortPackagingType`, `AllowAdditionalPackaging`, `ShowQuickInput`, `ValidBarcodeDecodeOptions` |
| `Apps → Logistics → Returnables → Outbound → FinalizeSession` | `RequireReferenceCode`, `RequireSignature`, `PrintPackingListOption`, `MailPackingListOption`, `PackageManagementRegistrationStrategy` |
| `Apps → Logistics → Returnables → Outbound → PrinterSettings` | `PackageListPrinter`, `PackageListPrintLayout` |
| `Backoffice → Financial → Invoicing` | `Returnables_PrintNotAllowedWhenActive` |

Meer informatie over policies vindt u in de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

## Veelgestelde vragen

**Kan ik fust toevoegen dat niet standaard wordt getoond?**

Ja, als `AllowAdditionalPackaging` is ingeschakeld en de fustcode in Florisoft bestaat.

**Waarom kan ik de sessie niet afronden?**

Controleer of er een positief totaal is en of een verplichte referentie is ingevuld. Controleer daarnaast of de order en sessie nog geldig zijn.

**Waarom verschijnt geen keuze voor afdrukken of mailen?**

De betreffende policy staat dan op `DoNotShow` (**Niet tonen**).

**Waar worden de aantallen verwerkt?**

Dat wordt bepaald door `PackageManagementRegistrationStrategy`: via fustgoedkeuring of rechtstreeks in de fustadministratie.
