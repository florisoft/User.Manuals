![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Final Outbound Check Policies (Quality Control App)

Deze handleiding helpt u bij het configureren van de **Final Outbound Check-functionaliteit** in de Quality Control App.
Met behulp van policies kunt u bepalen hoe de eindcontrole plaatsvindt, welke acties gebruikers mogen uitvoeren en welke gegevens daarbij zichtbaar zijn.

---

## Waar vindt u de Final Outbound Check-policies?

De policies voor Final Outbound Check configureert u via het **Policy Beheer** in het constantenscherm van de Backoffice.
Volg onderstaande stappen om deze te benaderen:

| Stap  | Uitleg                                                                                                                  |
| ----- | ----------------------------------------------------------------------------------------------------------------------- |
| **1** | Open het **constantenscherm** in de Backoffice via de navigator.                                                        |
| **2** | Navigeer naar: **Systeem → Users → Policy Beheer**.                                                                     |
| **3** | Selecteer of maak een policy aan, en navigeer vervolgens naar: **Apps → Logistics → QualityControl → FinalInspection**. |

Wilt u meer weten over het instellen en beheren van policies in het algemeen? Raadpleeg dan de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

---

## Overzicht van policies

In dit hoofdstuk vindt u een overzicht van policies die specifiek betrekking hebben op Final Outbound Check.
Per policy wordt uitgelegd wat de functie is, hoe deze geconfigureerd wordt en waar u op moet letten bij het gebruik.

> ⚠️ De beschikbaarheid van sommige policies kan afhangen van de inrichting van uw omgeving. Niet alle policies zijn in elke situatie van toepassing.

---

### `BarcodeDecodeOptions`

**Beschrijving:**
Bepaalt welke barcodetypen (bijvoorbeeld Trolleybarcode, Orderitembarcode of FSQR) tijdens de eindcontrole worden herkend. De 'decoder' is simpel gezegd het stukje informatie dat vanuit de lay-out in de barcode wordt gezet, zodat de app weet hoe de barcode gelezen moet worden.

**Gebruik:**

* Kies alleen de barcodetypen die in uw proces voorkomen voor snellere en efficiëntere scans.
* Meerdere typen kunnen tegelijk geselecteerd worden.

---

### `SignatureRequired`

**Beschrijving:**
Stelt verplicht dat de gebruiker een digitale handtekening plaatst bij het afronden van de eindcontrole. Dit geldt specifiek voor het CMR-document.

**Gebruik:**

* Zonder handtekening kan de order niet worden afgesloten.
* Verhoogt de juridische geldigheid en traceerbaarheid van het proces.

---

### `FinalInspectionScanMethod`

**Beschrijving:**
Definieert de standaardmethode voor het ophogen van het gecontroleerde aantal tijdens de eindcontrole.

**Opties:**

* Scan telt direct volledige item.
* Scan telt op kolli aantal
* Scan telt op waarde in barcode

---

### `AllowedToResetOrderItem`

**Beschrijving:**
Geeft aan of de telling van een specifieke orderregel kan worden teruggezet naar nul.

**Gebruik:**

* Handig bij fouten tijdens het scannen.
* Biedt flexibiliteit voor her-controle van afzonderlijke items.

---

### `AllowedToResetEntireTarget`

**Beschrijving:**
Bepaalt of de volledige controle in één keer kan worden gereset.

**Gebruik:**

* Nuttig bij grote fouten of het opnieuw uitvoeren van een complete controle.

---

### `AllowedToCompleteEntireTarget`

**Beschrijving:**
Staat toe om een hele order met één actie af te ronden, ook als niet alle items afzonderlijk zijn gecontroleerd.

**Gebruik:**

* Handig bij uitzonderingsgevallen of om processen te versnellen.

---

### `FinalInspectionDateFilter`

**Beschrijving:**
Filtert het orderoverzicht in de eindcontrole op basis van een datum.&#x20;

**Opties:**

* Besteldatum
* Vertrekdatum
* Leveringsdatum

---

### `ShowHubsInSelectionList`

**Beschrijving:**
Bepaalt of orders gegroepeerd worden op hub niveau in de selectielijst bij het kiezen van een order.

---

### `OrderItemQuantityDisplayType`  
Bepaalt hoe het aantal van de order wordt weergegeven in de app.  

Beschikbare opties:

* **Colli × inhoud + restant (standaard)**  
  Toont het aantal colli met hun inhoud plus eventuele losse stelen die overblijven.

* **Stelen**  
  Toont het totaal aantal stelen.

---