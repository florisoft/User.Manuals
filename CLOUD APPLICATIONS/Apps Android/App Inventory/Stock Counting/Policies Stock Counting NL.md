![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)
# Handleiding – Stock Counting Policies (Inventory-app)

Deze handleiding helpt u bij het configureren van de **Stock Counting-functionaliteit** in de Inventory-app.\
Aan de hand van verschillende policies kunt u bepalen hoe voorraden worden geteld, weergegeven en verwerkt.

> ℹ️ Vergeet niet om ook de juiste [autorisaties](#autorisaties) in te stellen. Zonder de juiste autorisaties zijn bepaalde functies niet beschikbaar.

---

## Waar vindt u de Stock Counting-policies?

De policies voor Stock Counting configureert u via het **Policy Beheer** in het constantenscherm van de Backoffice.\
Volg onderstaande stappen om deze te benaderen:

| Stap  | Uitleg                                                                                                        |
| ----- | ------------------------------------------------------------------------------------------------------------- |
| **1** | Open het **constantenscherm** in de Backoffice via de navigator.                                     |
| **2** | Navigeer naar: **Systeem → Users → Policy Beheer**.                                                   |
| **3** | Selecteer of maak een policy aan, en navigeer vervolgens naar: **Apps → Inventory → Stock Counting**. |

Wilt u meer weten over het instellen en beheren van policies in het algemeen? Raadpleeg dan de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

---

## Overzicht van policies

In dit hoofdstuk vindt u een overzicht van policies die specifiek betrekking hebben op de Stock Counting-functionaliteit.\
Per policy wordt uitgelegd wat de functie is, hoe deze geconfigureerd wordt en waar u op moet letten bij het gebruik.

> ℹ️ De beschikbaarheid van sommige policies kan afhangen van de inrichting van uw omgeving. Niet alle policies zijn in elke situatie van toepassing.

---
### Inventory-brede instellingen

Sommige instellingen gelden Inventory-breed, ongeacht de specifieke module.

### `DisplayedStockItemIdentifier`

Geeft aan welk type partijnummer wordt weergegeven in de app. Enkel de **laatste vier cijfers** worden getoond voor duidelijkheid en gebruiksgemak.

**Beschikbare opties:**

- `PartijNr`
- `VPartijNr`

---

### Instellingen op basis van voorkeur

Deze groep policies is voor alle klanten beschikbaar. U kunt hiermee de functionaliteit aanpassen aan uw eigen voorkeuren en werkwijze.

### `PrintSettings`

Deze **policy-groep** bepaalt hoe voorraad- en prijslabels worden afgedrukt.

#### Instellingen

- **Printers:**

  - `PriceLabelPrinter`: printer voor prijslabels
  - `StockLabelPrinter`: printer voor voorraadlabels

- **Lay-outs:**

  - `PriceLabelLayout`: lay-out voor prijslabels
  - `StockLabelLayout`: lay-out voor voorraadlabels

- **Omschrijving in de app:**

  - `PriceLabelPrinterDescription`
  - `StockLabelPrinterDescription`\
    ➞ Deze omschrijving wordt weergegeven in de gebruikersinterface.

> ℹ️ Voor het correct functioneren van deze policies is de **JobAgent** vereist. Indien deze niet actief is, worden printers niet weergegeven en is afdrukken niet mogelijk. Raadpleeg de [handleiding voor de JobAgent](https://github.com/florisoft/User.Manuals/tree/main/CLOUD%20APPLICATIONS/Windows%20Job-Agent%20application) voor installatie en configuratie-instructies.

---

### `StockItemDetailSetting`

De **policy-groep** `StockItemDetailSetting` bestaat uit instellingen waarmee u bepaalt welke partijeigenschappen zichtbaar en/of bewerkbaar zijn in de Stock Counting-app.

#### `AvailableStockItemDetails`
Met deze instelling bepaalt u welke eigenschappen van een voorraadpartij zichtbaar zijn in de app tijdens het tellen, en in welke volgorde deze worden weergegeven in de gebruikersinterface.

Meer informatie over het aanpassen van deze instellingen vindt u in de [algemene handleiding Policy Management](https://github.com/florisoft/User.Manuals/tree/main/BASIS/Policy%20Management).

#### `AllowEditStockitemDetails`
Standaard zijn eigenschappen van voorraadpartijen alleen-lezen. Met deze instelling bepaalt u welke van de zichtbare eigenschappen bewerkbaar zijn voor gebruikers tijdens de telling.

---

### `StockMutationSettings`

De **policy-groep** `StockMutationSettings` bevat instellingen voor het registreren en verwerken van voorraadverschillen via mutaties.

#### `StockCountingCustomerCode`
Deze policy stelt een vast **debiteurnummer** in waaraan voorraadverschillen worden verdeeld tijdens de telling. Let op: deze functionaliteit werkt alleen als ook `StockMutationAsCounting` is ingeschakeld.

#### `StockMutationAsCounting`
Schakelt de verwerking van voorraadverschillen als voorraadmutaties in. Wanneer deze policy is ingeschakeld, worden afwijkingen bij het tellen direct verwerkt als verdeling op de ingestelde debiteur van `StockCountingCustomerCode`.

#### `StockCountingCustomerCodePerStock`
Gebruik deze policy als u voorraadverschillen per voorraad op een aparte debiteur wilt registreren, zie voorraadinstelling 'Voorraadopname debiteur'. Dit overrulet de instelling uit `StockCountingCustomerCode`. Let op: om deze voorraadinstelling te kunnen aanpassen, moet de gebruiker ook de policy `StockCountingCustomerCodePerStock` op true hebben staan.

#### `StockCountingXorder`
Bij het registreren van een verschil wordt automatisch een **xorder** aangemaakt. Dit is een pickorder waarmee voorraadcorrecties verder verwerkt kunnen worden.

#### `StockQuantityMutAlsoStoredStockItem`
Deze policy zorgt ervoor dat bij het muteren van de voorraad, ook de gekoppelde opgeslagen partij (stored stock item) wordt aangepast. Dit is alleen van toepassing wanneer voorraadbeheer met opslagstructuur wordt gebruikt.

#### `StockMutationAsCountingFallBack`
Deze fallback-instelling is van toepassing wanneer `StockMutationAsCounting` actief is, maar niet kan worden toegepast op een specifieke mutatie. In dat geval wordt het fallback-gedrag toegepast.

---

### `AvailableStocks`

Met deze policy geeft u aan welke voorraadlocaties beschikbaar zijn voor telling.\
Alleen de hier geselecteerde voorraden zijn zichtbaar en bewerkbaar in de Stock Counting-app.

---

### `SetStockItemType`

Bepaalt het type partij dat binnen de app gescand en geteld wordt.

Beschikbare opties:

- `VParcel` (verzamelpartij)
- `Parcel` (standaard partij)
- `LogPartij` (logistieke partij)

De gekozen instelling bepaalt hoe artikelen tijdens het scannen worden herkend en geïnterpreteerd.

---

### `ToPickQuantityDisplay`

Geeft aan hoe het aantal nog te picken eenheden naast de voorraad wordt weergegeven.

- **Stelen**: toont het aantal in stelen (standaardeenheid)
- **Colli-inhoud**: toont het aantal op basis van 'Aantal colli + Inhoud colli + restant'

Kies de optie die het best past bij uw logistieke proces.

---

## Autorisaties

Voor toegang tot de Stock Counting-functionaliteit zijn specifieke autorisaties vereist.\
Zonder deze autorisatie kunnen gebruikers de app niet openen of gebruiken.

| Stap  | Uitleg                                                                                                                                                  |
| ----- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **1** | Open het **constantenscherm** via de navigator.                                                                                                         |
| **2** | Navigeer naar **Systeem → Users → Systeem gebruikers**.                                                                                                 |
| **3** | Open de gewenste gebruiker en klik op **Autorisatie**.                                                                                                  |
| **4** | Druk op **F3** om het zoekvenster te openen.                                                                                                            |
| **5** | Zoek op code **425**. Selecteer de autorisatie: **Navigator palmtop/Voorraad opname_425** en kies **Alle handelingen toegestaan**. Bevestig met **OK**. |
| **6** | Herhaal dit voor andere gebruikers. U kunt het proces versnellen via de knop **Kopie autorisatie**.                                                     |

---