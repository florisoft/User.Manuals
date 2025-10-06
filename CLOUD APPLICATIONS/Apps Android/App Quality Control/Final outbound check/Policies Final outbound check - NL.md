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

### `Overview`
De **policy-groep** `Overview` bestaat uit instellingen waarmee u bepaalt welke orders zichtbaar zijn op de Order Overview-pagina in de app.

#### `ShowHubs`
Bepaalt of orders gegroepeerd worden op hub niveau in de selectielijst bij het kiezen van een order.

#### `ShowWarningIfIncomplete`
Toont een waarschuwing wanneer de inspectie niet compleet is. Dit kan handig zijn omdat het voorkomt dat een order of proces wordt afgerond zonder dat alle verplichte controles zijn uitgevoerd.  

#### `ScopeDateFilter`
Filtert het orderoverzicht in de eindcontrole op basis van een datum.

**Opties:**
* Orderdatum
* Vertrekdatum
* Leveringsdatum
* Besteldatum

#### `ScopeDateFromDays`
Bepaalt het aantal dagen **vóór vandaag** waar het datumbereik start voor het ophalen van de op te bouwen orders in het orderoverzicht.  

- **0 = vandaag**  
- **1 = gisteren**  
- **2 = eergisteren**  
- Er hoeven **geen negatieve waarden** ingevoerd te worden (dus `2` i.p.v. `-2`). 

#### `ScopeDateToDays`
Bepaalt het aantal dagen **na vandaag** waar het datumbereik eindigt voor het ophalen van de op te bouwen orders in het orderoverzicht.  

- **0 = vandaag**  
- **1 = morgen**  
- **2 = overmorgen**  

---
### `Addons`
De **policy-groep** `addons` bestaat uit instellingen waarmee u bepaalt welke addons gebruikt kunnen worden in de app.

### `EnableAddons`  
Met deze policy kun je extra add-ons inschakelen die extra functionaliteit aan de app toevoegen.  

**Opties:**

* **Foto's**  
  Maakt het mogelijk om een foto aan een order toe te voegen.  
  Dit is handig om bijvoorbeeld een foto van de ladingdrager te maken, zodat later kan worden gecontroleerd of een product daadwerkelijk is meegestuurd.

* **ExceptionRegistration**  
  Integreert met de ExceptionRegistration-functionaliteit, waarmee gebreken of afwijkingen aan een orderitem geregistreerd kunnen worden.  
  Dit helpt bij het vastleggen van problemen voor opvolging.


---

### `BarcodeDecodeOptions`
Bepaalt welke barcodetypen (bijvoorbeeld Trolleybarcode, Orderitembarcode of FSQR) tijdens de eindcontrole worden herkend. De 'decoder' is simpel gezegd het stukje informatie dat vanuit de lay-out in de barcode wordt gezet, zodat de app weet hoe de barcode gelezen moet worden.

**Gebruik:**
* Kies alleen de barcodetypen die in uw proces voorkomen voor snellere en efficiëntere scans.
* Meerdere typen kunnen tegelijk geselecteerd worden.

---

### `RequireSignature`
Stelt verplicht dat de gebruiker een digitale handtekening plaatst bij het afronden van de eindcontrole. Dit geldt specifiek voor het CMR-document.

**Gebruik:**
* Zonder handtekening kan de order niet worden afgesloten.
* Verhoogt de juridische geldigheid en traceerbaarheid van het proces.

---

### `CountingStrategy`
Definieert de standaardmethode voor het ophogen van het gecontroleerde aantal tijdens de eindcontrole.

**Opties:**
* Scan telt direct volledige item.
* Scan telt op kolli aantal
* Scan telt op waarde in barcode

---

### `AllowResetOrderItem`
Geeft aan of de telling van een specifieke orderregel kan worden teruggezet naar nul.

**Gebruik:**

* Handig bij fouten tijdens het scannen.
* Biedt flexibiliteit voor her-controle van afzonderlijke items.

---

### `AllowResetEntireTarget`
Bepaalt of de volledige controle in één keer kan worden gereset.

**Gebruik:**

* Nuttig bij grote fouten of het opnieuw uitvoeren van een complete controle.

---

### `AllowCompleteEntireTarget`
Staat toe om een hele order met één actie af te ronden, ook als niet alle items afzonderlijk zijn gecontroleerd.

**Gebruik:**

* Handig bij uitzonderingsgevallen of om processen te versnellen.

---

### `OrderItemQuantityDisplayType`  
Bepaalt hoe het aantal van de order wordt weergegeven in de app.  

**Opties:**

* **Colli × inhoud + restant (standaard)**  
  Toont het aantal colli met hun inhoud plus eventuele losse stelen die overblijven.

* **Stelen**  
  Toont het totaal aantal stelen.

---