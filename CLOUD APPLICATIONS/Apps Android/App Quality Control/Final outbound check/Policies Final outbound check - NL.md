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

### `OrderOverview`
De **policy-groep** `Overview` bestaat uit instellingen waarmee u bepaalt welke orders zichtbaar zijn op de Order Overview-pagina in de app.

### `OrderOverview_Filters`
De **policy-groep** `OrderOverview_Filters` bevat alle instellingen waarmee u bepaalt **welke orders wel of niet zichtbaar zijn** op de **Order Overview**-pagina in de app.
#### `OrderNumberFilter`
Met deze policy kunt u specifieke ordernummers uitsluiten van het overzicht in de Final Outbound Check-app.  
Dit is handig wanneer bepaalde orders niet relevant zijn voor controle, of wanneer u wilt voorkomen dat specifieke orders zichtbaar of selecteerbaar zijn in het orderoverzicht.
#### `ScopeDateFilter`
Met deze instelling wordt bepaald welke datum wordt gebruikt om het orderoverzicht te filteren. De bijbehorende van- en tot-dagen (ScopeDateFromDays & ScopeDateToDays) instellingen passen dit filter toe op die gekozen datum.

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
#### `ExcludeOrderNumber`
Sluit specifieke ordernummers uit van het orderoverzicht.

Orders waarvan het ordernummer overeenkomt met deze instelling worden niet getoond in de Final Outbound Check-app.  
Handig om niet-relevante orders te verbergen.

**Voorbeeld:**  
Door `FUST` in te stellen, worden **fust-facturen** (ordernummers die `FUST` bevatten) niet getoond.
#### `FilterStockCodes`
Filtert het orderoverzicht op basis van voorraadcodes. Alleen orders met minstens één orderregel met een geselecteerde voorraadcode worden getoond.  Binnen deze orders zijn alleen de bijbehorende orderregels zichtbaar.

Orders en orderregels zonder overeenkomstige voorraadcode worden uitgesloten.  
Als er geen voorraadcodes zijn ingesteld, wordt alles getoond.

---
#### `ShowHubs`
Bepaalt of orders gegroepeerd worden op hub niveau in de selectielijst bij het kiezen van een order.
#### `ProgressDisplayType`

Met deze policy bepaalt u wat er in de voortgangsbalk (progress bar) van de order wordt weergegeven tijdens de eindcontrole.

U kunt kiezen of de voortgang gebaseerd wordt op het aantal kolli of op het aantal orderregels.  
Dit biedt flexibiliteit in de manier waarop de voortgang van het orderproces visueel wordt gepresenteerd in de app.

**Voorbeeld:**  
Een order bestaat uit **3 orderregels** en **7 colli’s**.

- Wanneer de policy op **Orderregels** staat, toont de voortgangsbalk een totaal van **3**.
    
- Wanneer de policy op **Kolli** staat, toont de voortgangsbalk een totaal van **7**.

#### `OrderItemQuantityDisplayType`
Bepaalt hoe het aantal van de order wordt weergegeven in de app.  

Beschikbare opties:

* **Colli × inhoud + restant (standaard)**  
  Toont het aantal colli met hun inhoud plus eventuele losse stelen die overblijven.

* **Stelen**  
  Toont het totaal aantal stelen.

#### `StockItemIdDisplayType`
Geeft aan welke partij-identificatie wordt weergegeven in de app. Enkel de **laatste vier cijfers** worden getoond voor duidelijkheid en gebruiksgemak.

**Beschikbare opties:**

- `PartijNr`
- `VPartijNr`
#### `ScopeGroupedBy`

Bepaalt de groeperingslogica van orders in het **orderoverview**-scherm.

**Opties:**
- Klant en ordernummer _(standaard)_
- Alleen klant
- Orderdatum
- Leverdatum
- Vertrekdatum
- Besteldatum

 **Gedrag**

- Bij groepering op een **datumveld** wordt het ordernummer vervangen door een **datumnotatie**.
    
- De gekozen groepering beïnvloedt hoe orders visueel gegroepeerd en weergegeven worden in het scherm.

---

### `Addons`
De **policy-groep** `addons` bestaat uit instellingen waarmee u bepaalt welke addons gebruikt kunnen worden in de app.

### `EnableAddons`  
Met deze policy kun je extra add-ons inschakelen die extra functionaliteit aan de app toevoegen.  

**Opties:**

* **Foto's**  
  Maakt het mogelijk om een foto aan een order toe te voegen.  
  Dit is handig om bijvoorbeeld een foto van de ladingdrager te maken, zodat later kan worden gecontroleerd of een product daadwerkelijk is meegestuurd.
	>  **Let op!**  
	  Bij gebruik van deze functie worden foto’s op de server opgeslagen. Dit kan ervoor zorgen dat de schijfruimte volloopt. Zorg er daarom voor dat de Timer-functie **‘Tabellen opschonen’** actief is en de foto’s opruimt. Dit stel je in door de tabel **EindcontroleFoto** toe te voegen via **Constanten → Timer → Tabellen opschonen**.  Wij adviseren een bewaartermijn van **90 dagen**.

* **ExceptionRegistration**  
  Integreert met de ExceptionRegistration-functionaliteit, waarmee gebreken of afwijkingen aan een orderitem geregistreerd kunnen worden.  
  Dit helpt bij het vastleggen van problemen voor opvolging.

---

### `BarcodeDecodeOptions`
Bepaalt welke barcodetypen (bijvoorbeeld Trolleybarcode, Orderitembarcode of FSQR) tijdens de eindcontrole worden herkend.  
De _decoder_ bevat de informatie uit de barcode-lay-out waarmee de app bepaalt hoe de barcode gelezen moet worden.

**Gebruik:**

- Selecteer alleen de barcodetypen die in uw proces voorkomen voor **snellere en efficiëntere scans**.
    
- Meerdere barcodetypen kunnen **tegelijk** worden geselecteerd.
    

**Optie – Vpartijnummer (VStockItemIdBarcode):**  
Het is ook mogelijk om orderitems te controleren via het **Vpartijnummer** door de optie `VStockItemIdBarcode` toe te voegen.

- De barcode moet beginnen met **prefix `V`**
    
- De totale lengte moet **12 karakters** zijn  
    _Voorbeeld:_ `V00000008186`
    
Wanneer een gescande barcode **meerdere orderitems** oplevert, wordt een **keuzescherm** getoond waarin u het juiste orderitem selecteert.


---

### `RequireSignature`
Stelt verplicht dat de gebruiker een digitale handtekening plaatst bij het afronden van de eindcontrole. Dit geldt specifiek voor het CMR-document.

**Gebruik:**
* Zonder handtekening kan de order niet worden afgesloten.
* Verhoogt de juridische geldigheid en traceerbaarheid van het proces.

---

### `CountingStrategy`
Bepaalt hoe het gecontroleerde aantal wordt opgehoogd tijdens de eindcontrole.

**Opties:**

- **Scan telt direct volledige item**  
    Elke scan telt één volledig orderitem.
    
- **Scan telt op kolli aantal**  
    Elke scan telt het ingestelde kolli-aantal.
    
- **Scan telt op waarde in barcode**  
    Het aantal wordt gelezen uit de barcode.
    

**Let op:**  
Als **‘Scan telt op waarde in barcode’** is ingesteld en er wordt een barcodetype gebruikt **zonder aantal in de barcode** (zie `BarcodeDecodeOptions`), dan is controle via de barcode niet mogelijk.  

De volgende melding wordt dan getoond:

> _Telstrategie staat ingesteld op Barcodewaarde maar de gescande barcode bevat geen aantal. Controleer of de telregels correct zijn._


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

### `StoreScannedBarcodes`
Bepaalt of gescande barcodes worden opgeslagen in de database (tabel BARCODES). Wanneer deze optie is ingeschakeld, wordt elke barcode vastgelegd om te voorkomen dat een product meerdere keren wordt geregistreerd. Dit is alleen aan te raden als elk product een unieke barcode heeft. Als er geen unieke waarde in de barcode zit, schakel dan de policy uit om foutmeldingen over dubbel gescande barcodes te voorkomen.

**Let op – tabel BARCODES opschonen**
Wanneer `StoreScannedBarcodes` is ingeschakeld, loopt de tabel *BARCODES* op termijn vol.  
Gebruik daarom de functie **Tabellen opschonen** om deze automatisch te legen:

- Ga naar: **Constanten → Timer → Tabellen opschonen**  
- Voeg de tabel **BARCODES** toe  
- Stel de bewaartermijn in op **90 dagen**  
- Controleer dat de timer **Tabellen opschonen** is ingeschakeld

Dit voorkomt onnodige groei van de database.

---
### `AllowScanningRedistributedBarcodes`
Maakt het mogelijk om tijdens de Final Outbound Check ook artikelen te scannen die zijn herverdeeld via Factuur wijzigen.  

Bij herverdeling wordt **FromBarcode** gevuld met de oorspronkelijke barcode. Met deze policy accepteert het systeem zowel de nieuwe barcode als de oorspronkelijke barcode (**FromBarcode**), waardoor her-labeling van originele stickers niet nodig is.

---
### `ShowWarningIfIncomplete`
Toont een waarschuwing wanneer de inspectie niet compleet is. Dit kan handig zijn omdat het voorkomt dat een order of proces wordt afgerond zonder dat alle verplichte controles zijn uitgevoerd.  

---