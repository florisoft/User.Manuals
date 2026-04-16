![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Returnables Outbound  (Returnables App)

Deze handleiding helpt u bij het configureren van de **Returnables Outbound-functionaliteit** in de Returnables App.

---

## Wat is Returnables Outbound?
Returnables Outbound is bedoeld voor het registreren en controleren van uitgaande verpakkingen (pallets, kratten, etc.) voordat deze het pand verlaten.

Returnables Outbound is het proces waarin u:
- **Orders met verpakkingen opzoekt** in de app
- **Verpakkingen telt en registreert** die met de order meegaan
- **Een eindcontrole uitvoert** om alles te verifiëren
- **De sessie afsluit** met alle nodige informatie

Afhankelijk van uw instellingen, kan dit proces verschillende stappen bevatten.

---

## Hoe werkt de Returnables Outbound-app?

De app is opgebouwd uit verschillende schermen waarmee u het proces doorloopt:

---

## Stap 1: Order Selectie (Policygroep: `OrderOverview`)

Wanneer u de app opent, ziet u het **Order Overzicht** waar u een order kunt opzoeken of aanmaken.

### Order opzoeken via scannen

**Het meest efficiënt:** Scan de barcode van de order .
- Welke types barcodes u kunt scannen, hangt af van de Policy: `ValidBarcodeDecodeOptions` Dit kan zijn:
- Barcodes met een verwijzing naar de order barcode (zoals)
- Returnables Sessie ID 



### Order opzoeken via handmatig selecteren

Als u niet kunt scannen, kunt u handmatig selecteren:

**1. Selecteer eerst een klant**
- U kunt instellen dat alleen klanten met actieve facturen zichtbaar zijn (Policy: `FilterCustomersWithInvoice`) – Dit helpt ervoor te zorgen dat u alleen orders verwerkt van klanten met een actieve relatie
- Kies de gewenste klant uit de lijst

**2. Selecteer vervolgens een order of maak een nieuwe aan**
- Kies een bestaande order van die klant
- Of maak een nieuwe order aan voor de klant

### Sessies: Het hartslagpunt van het proces

Belangrijk concept: **Sessies**
- **Eerste keer:** Wanneer u een order voor het eerst opent, maakt het systeem automatisch op de achtergrond een **sessie** aan. Dit is een unieke werkplek voor deze order.
- **Tweede keer:** Wanneer u dezelfde order opnieuw opent EN er is nog een actieve sessie, kunt u kiezen:
  - Een bestaande sessie **voortzetten** (om verder te gaan waar u gebleven bent)
  - Een **nieuwe sessie aanmaken** (om opnieuw te beginnen)

**Sessies zijn belangrijk:** Alle verpakkingen die u telt, worden in een sessie opgeslagen. U kunt meerdere sessies hebben voor dezelfde order met verschillende tellingen.

---

## Stap 2: Verpakkingen Tellen in Batches (Policygroep: `PackagingCounting`)

Nadat u een order en sessie hebt geselecteerd, begint u met het **registreren van verpakkingen**.

### Het batch-concept: U bepaalt zelf hoe u telt

**Batches** zijn groepen waarmee u uw telling indeelt. Dit stelt u in staat om zelf te bepalen hoe u wilt tellen:
- U kunt bijvoorbeeld per **fustcode** tellen (alle pallets, dan alle kratten, etc.)
- Of per **kar/werkplek** tellen (kar 1, kar 2, etc.)
- Of op een ander logisch systeem dat voor uw workflow belangrijk is

**Dit geeft u flexibiliteit:** Op deze manier kunt u de verpakkingen tellen op de manier die het meest efficiënt voor u werkt.

### Verpakkingen toevoegen per batch

Binnen elke batch kunt u verpakkingen registreren. Dit kan op verschillende manieren:
- **Standaard fustcodes gebruiken** (Policy: `StandardPackageCodes`) – Standaard verpakkingstypes die standaard voor iedere batch pagina getoond worden
- **Verpakkingen handmatig invoeren** – U kunt opgeven welke fust meegaat en in welke hoeveelheden
- **Barcode scannen** – U kunt barcodes op de verpakkingen scannen om deze toe te voegen (de fustcode moet in de barcode verwerkt zijn). Welke types barcodes u kunt scannen, hangt af van uw instellingen (Policy: `ValidBarcodeDecodeOptions`)

### Afbeeldingen van verpakkingen (Policy: `Apps_PackagingPicturesFolderPath`)

U kunt **afbeeldingen van verpakkingen** tonen in de app. Dit helpt u de juiste verpakking snel te herkennen.
- Als u dit heeft ingesteld, ziet u afbeeldingen naast de fustcodes
- De afbeelding verschijnt alleen als de bestandsnaam gelijk is aan de fustcode (bijvoorbeeld: "566.jpg" voor fustcode "566")

**Download de verpakkingsfoto's:** [Link naar afbeeldingen – hier invoegen]

### Sortering van verpakkingen (Policy: `SortPackagingType`)

Binnen uw batches kunnen de verpakkingen op verschillende manieren worden gesorteerd:
- **Op volgorde zoals deze in policy StandardPackageCodes is ingesteld**
- **Verpakkings code**
- **Verpakkings omschrijving op alfabetische volgorde**

### Extra verpakkingen toevoegen (Policy: `AllowAdditionalPackaging`)

Sommige bedrijven staan toe dat u **extra verpakkingen** toevoegt die niet in het originele order stonden. Anderen willen dat u dit niet doet. Dit zal u duidelijk zien in de app – als u extra verpakkingen mag toevoegen, dan is deze optie beschikbaar.

### Snelle invoer (Policy: `ShowQuickInput`)

Voor efficiënterheid kunt u een **Quick Input-modus** inschakelen. Dit is een snelle manier om meerdere verpakkingen snel achter elkaar in te voeren zonder veel extra klikken.

---

## Stap 3: Overzicht en Batch-beheer

Als u klaar bent met tellen, ziet u een **Overzichtspagina** met alle verpakkingen die u geregistreerd hebt.

### Groepering en batches zien

Op deze pagina worden alle verpakkingen gegroepeerd weergegeven:
- U ziet **welke verpakkingen u geteld hebt**
- U ziet **in welke batch** elke verpakking zit
- U kunt **batches aanpassen** als nodig (verhogen/wijzigen)

Dit geeft u een volledig overzicht voordat u de sessie afsluit.

---

## Stap 4: Sessie Afronden (Policy: `FinalizeSession`)

Als u klaar bent met het registreren van verpakkingen, sluit u de sessie af via het scherm **Sessie Afronden**.
Hier voert u aanvullende informatie in voordat u de sessie definitief als voltooid markeert.

### CMR Information

**CMR** = Internationale vrachtbriefformule (vervoersdocumentatie).

Voor transport van verpakkingen kunnen **CMR-gegevens** nodig zijn (afhankelijk van uw instellingen):
- Informatie over de verzender
- Informatie over de ontvanger  
- Details van de sessie

Vul deze gegevens in als deze nodig zijn (dit hangt af van uw instellingen).

### Overige verplichte informatie

Naast CMR kunnen er nog andere gegevens vereist zijn:

#### Referentie Code (Policy: `RequireReferenceCode`)
Sommige bedrijven vereisen een **referentie code** of **opmerking** voordat u de sessie mag afronden. Dit kan zijn:
- Een verkoopordernummer
- Een ordernummer van de klant
- Een notitie over bijzonderheden

Als dit verplicht is, kunt u de sessie niet afronden zonder deze code in te vullen.

#### Elektronische Handtekening (Policy: `RequireSignature`)
U kunt eisen dat een **elektronische handtekening** wordt gezet voordat de sessie wordt afgesloten. Dit dient ter bevestiging dat alles correct is geregistreerd.
- Als dit verplicht is, ziet u een handtekeningveld
- U moet hierop tekenen met uw vinger of stylus
- U kunt niet verder zonder een handtekening

### Paklijst Afdrukken en Verzenden

Na afronding van de sessie kunt u de paklijst afdrukken of per e-mail versturen.

#### Afdrukken (Policy: `PrintPackingListOption`)
U kunt bepalen of de optie om af te drukken beschikbaar is:
- **Niet zichtbaar is** – U kunt niet afdrukken
- **Standaard aan staat (JA)** – Er wordt een toggle getoond die standaard aangevinkt is (ja), maar u kunt deze nog uitzetten als u niet wilt afdrukken
- **Standaard uit staat (NEE)** – Er wordt een toggle getoond die standaard uitgezet is (nee), maar u kunt deze nog aanzetten als u wel wilt afdrukken

Wanneer u afdrukt, wordt een **paklijst** gemaakt met alle verpakkingen die u geregistreerd hebt.

#### Per E-mail Verzenden (Policy: `MailPackingListOption`)
Net als bij afdrukken kunt u bepalen of de paklijst per e-mail kan worden verzonden:
- **Niet beschikbaar** – U kunt niet per e-mail versturen
- **Standaard aan staat (JA)** – Er wordt een toggle getoond die standaard aangevinkt is (ja), maar u kunt deze nog uitzetten als u niet wilt mailen
- **Standaard uit staat (NEE)** – Er wordt een toggle getoond die standaard uitgezet is (nee), maar u kunt deze nog aanzetten als u wel wilt mailen

### Printer Instellingen (Policy: `PrinterSettings`)

Als afdrukken ingeschakeld is, kunt u ook bepalen:
- **Welke printer** gebruikt wordt voor de paklijsten (Policy: `PackageListPrinter`)
- **Welk layout/format** de paklijst heeft (Policy: `PackageListPrintLayout`)

---

## Sessie Beheer en Controle

### Wat gebeurt er bij succesvol afronden van een sessie?

Bij het succesvol afronden van een sessie wordt het geregistreerde fust verwerkt naar de factuur. Het is daarom essentieel dat alle sessies correct worden afgerond voordat facturering plaatsvindt. Om dit te waarborgen, zijn verschillende controlemechanismen geïmplementeerd.

### Controlemechanismen voor openstaande sessies

#### 1. Waarschuwing bij facturering in Backoffice

Wanneer u probeert een factuur door te boeken in de Backoffice, wordt automatisch gecontroleerd of er nog onafgeronde sessies zijn voor deze order.

**Policy:** `Backoffice_Financial_Invoicing_Returnables_PrintNotAllowedWhenActive`

Als deze policy is ingeschakeld, is het niet mogelijk om een factuur te verwerken zolang er nog onafgeronde sessies zijn. U krijgt een waarschuwingsmelding met de optie om direct naar het openstaande sessies scherm te gaan, zodat de sessie vanuit daar verwerkt kan worden.

#### 2. Visuele indicatoren in factuur- en transportplanning schermen

In zowel het **Facturen overzicht scherm** als het **Transportplanning detailgrid** zijn nieuwe kolommen toegevoegd die de voortgang van sessies weergeven:

- **Nieuwe kolom:** "Sessie's afgerond" 
- **Kleurindicatie:**
  - 🔴 **Rood:** Er staan nog één of meerdere sessies open voor deze order
  - 🟢 **Groen:** Alle sessies hebben status "completed"

#### 3. Returnables Sessies scherm

Er is een nieuw overzichtsscherm ontwikkeld voor het beheren van openstaande sessies:

**Locatie:** Via de navigator → Overzichten → Uitleveren → "Returnables sessie's"

Dit scherm toont een grid met alle openstaande (actieve) sessies. Vanuit dit scherm kunt u:
- Alle openstaande sessies bekijken
- Een QR-code genereren waarmee de sessie direct in de app geopend kan worden

#### 4. Toekomstig filter in de app

In de toekomst wordt er een filter toegevoegd aan de Returnables Outbound app waarmee u orders kunt filteren die nog actieve/openstaande sessies hebben. Dit maakt het eenvoudiger om prioriteit te geven aan orders die nog aandacht nodig hebben.

---

## Veelgestelde Vragen

**V: Wat als gebruikers een fout maken bij het registreren van verpakkingen?**
A: Afhankelijk van de fase van het proces kunnen gebruikers dit vaak corrigeren. Dit hangt af van hoe u de policies heeft geconfigureerd.

**V: Kan ik instellen dat verpakkingen toegevoegd kunnen worden die niet in de originele order stonden?**
A: Ja, via de Policy `AllowAdditionalPackaging` kunt u bepalen of gebruikers extra verpakkingen mogen toevoegen.

**V: Wat gebeurt er na beëindiging van de sessie?**
A: De sessie wordt geregistreerd in het systeem, en een paklijst kan worden afgedrukt of gemaild, afhankelijk van uw instellingen.

**V: Hoe kan ik de instellingen aanpassen?**
A: U kunt deze instellingen aanpassen via het Policy Beheer in het constantenscherm van de Backoffice.

**V: Hoe kan ik controleren of er nog openstaande sessies zijn?**
A: Er zijn meerdere manieren: via de kleurindicatoren in het factuur- en transportplanning scherm, het AssetManagement Sessies scherm (Navigator → Overzichten → Uitleveren), of via de waarschuwing bij facturering (indien de policy `Backoffice_Financial_Invoicing_Returnables_PrintNotAllowedWhenActive` is ingeschakeld).

---

## Waar vindt u de Returnables Outbound-policies?

De policies voor Returnables Outbound configureert u via het **Policy Beheer** in het constantenscherm van de Backoffice.
Volg onderstaande stappen om deze te benaderen:

| Stap  | Uitleg                                                                                                                  |
| ----- | ----------------------------------------------------------------------------------------------------------------------- |
| **1** | Open het **constantenscherm** in de Backoffice via de navigator.                                                        |
| **2** | Navigeer naar: **Systeem → Users → Policy Beheer**.                                                                     |
| **3** | Selecteer of maak een policy aan, en navigeer vervolgens naar: **Apps → Logistics → Returnables → Outbound**. |

Wilt u meer weten over het instellen en beheren van policies in het algemeen? Raadpleeg dan de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).
