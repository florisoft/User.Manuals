![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Returnables Inbound (Returnables App)

## Wat is Returnables Inbound?

Returnables Inbound is bedoeld voor het registreren van inkomend fust, zoals pallets, kratten en karren. De app is alleen bedoeld voor de fustregistratie: artikelen of andere ontvangen goederen worden niet met deze app geregistreerd.

De werkwijze lijkt sterk op Returnables Outbound. U selecteert een klant en order, werkt in een sessie, telt het ontvangen fust in één of meer batches en controleert de totalen voordat u de sessie afrondt.

Welke filters, invoermogelijkheden en afrondopties zichtbaar zijn, hangt af van de ingestelde policies.

## Werkwijze

### Stap 1: klant, order en sessie selecteren

Open **Returnables Inbound**. U kunt het proces starten door een ondersteunde barcode te scannen of door handmatig een klant en order te selecteren.

Bij handmatige selectie:

1. Zoek en selecteer de klant.
2. Gebruik eventueel de beschikbare klantfilters.
3. Selecteer een bestaande order of maak een nieuwe order aan.
4. Kies een bestaande inbound-sessie of maak een nieuwe sessie.

Als een order nog geen inbound-sessie heeft, maakt de app een nieuwe sessie aan. Bestaat er al een sessie, dan kunt u deze selecteren en voortzetten. Een gescande FSQR-sessiecode opent alleen een Inbound-sessie met een geldige, nog bestaande order.

Na onverwachte PDA-uitval kan dezelfde gebruiker de eigen actieve sessie opnieuw openen. Een actieve sessie van een andere gebruiker blijft geblokkeerd. Als een heropende sessie nog geen batches bevat, maakt de telpagina een eerste batch aan.

De gedeelde policy `AvailableCustomerFilterOptions` bepaalt welke filters op de klantenpagina beschikbaar zijn:

- `WithInvoice`: klanten met een openstaande factuur;
- `WithActiveSessions`: klanten met openstaande returnables-sessies.

De gedeelde policy `ValidBarcodeDecodeOptions` bepaalt welke soorten barcodes in het startscherm worden herkend.

### Stap 2: inkomend fust tellen

De telling wordt opgeslagen in batches. Een batch kan bijvoorbeeld één kar, losplaats of telronde voorstellen. U bepaalt zelf welke praktische indeling u gebruikt.

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

Controleer de aantallen zorgvuldig. U kunt een foutieve batchregel verwijderen voordat u bevestigt. De sessie kan niet worden afgerond zonder geregistreerde totalen of wanneer het totaal nul is.

### Stap 4: sessie afronden

Bij het bevestigen kan de app, afhankelijk van de policies, aanvullende informatie vragen:

- `RequireReferenceCode`: vraagt verplicht om een referentie, registratiedatum en eventueel een opmerking;
- `PrintPackingListOption`: verbergt de afdrukkeuze of toont deze met standaard **Ja** of **Nee**;
- `MailPackingListOption`: verbergt de e-mailkeuze of toont deze met standaard **Ja** of **Nee**;
- `RequireSignature`: vraagt om een handtekening wanneer een paklijst wordt afgedrukt of gemaild.

Na een succesvolle afronding worden de inkomende fustaantallen bij de geselecteerde klant en order geregistreerd en wordt de sessie gesloten. De order moet daarom bij een bestaande factuur horen; anders kan de registratie niet worden voltooid.

Als afdrukken of mailen is gekozen, gebruikt de app de volgende instellingen:

- `PackageListPrinter`: printer voor de fustpaklijst;
- `PackageListPrintLayout`: afdruklay-out voor de fustpaklijst.

## Een sessie stoppen zonder afronden

Met **Order sluiten** of normaal uitloggen stopt u de actieve werksessie zonder de telling als voltooid te verwerken. De sessie wordt `Inactive` en kan later opnieuw worden geselecteerd. Bij onverwachte uitval kan de sessie `Active` blijven; meld dan opnieuw aan als dezelfde gebruiker.

Lees [Openstaande Returnables-sessies verwerken](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Returnables/Openstaande%20sessies%20verwerken%20-%20NL.md) voor het klantfilter, het Backoffice-overzicht, de factuurcontrole en het hervatten via FSQR.

## Policies instellen

Open in de Backoffice het constantenscherm en ga naar **Systeem → Users → Policy Beheer**.

De policies staan op de volgende plaatsen:

| Pad | Policies |
| --- | --- |
| `Apps` | `PackagingPicturesFolderPath` |
| `Apps → Logistics → Returnables` | `AvailableCustomerFilterOptions`, `ValidBarcodeDecodeOptions` |
| `Apps → Logistics → Returnables → Inbound → PackagingCounting` | `StandardPackageCodes`, `SortPackagingType`, `AllowAdditionalPackaging`, `ShowQuickInput`, `ValidBarcodeDecodeOptions` |
| `Apps → Logistics → Returnables → Inbound → FinalizeSession` | `RequireReferenceCode`, `RequireSignature`, `PrintPackingListOption`, `MailPackingListOption` |
| `Apps → Logistics → Returnables → Inbound → PackageListPrintSettings` | `PackageListPrinter`, `PackageListPrintLayout` |

Meer informatie over policies vindt u in de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

## Veelgestelde vragen

**Kan ik met Returnables Inbound ook ontvangen artikelen registreren?**

Nee. Deze app registreert uitsluitend inkomend fust.

**Waarom zie ik een fustcode niet?**

Controleer `StandardPackageCodes`. Als toevoegen is toegestaan, kunt u de fustcode ook handmatig toevoegen. De fustcode moet wel in Florisoft bestaan.

**Waarom kan ik de sessie niet afronden?**

Controleer of er een positief totaal is, of een verplichte referentie is ingevuld en of de geselecteerde order aan een factuur is gekoppeld.

**Waarom verschijnt geen keuze voor afdrukken of mailen?**

De betreffende policy staat dan op `DoNotShow` (**Niet tonen**).
