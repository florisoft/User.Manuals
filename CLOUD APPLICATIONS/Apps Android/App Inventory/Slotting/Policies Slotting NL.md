![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Slotting Policies (Inventory-app)

Deze handleiding helpt u bij het configureren van de **Slotting-functionaliteit** in de Inventory-app.
Met behulp van policies kunt u het gedrag van de app beïnvloeden, waaronder welke voorraden beschikbaar zijn voor gebruik en of er wordt gecontroleerd op vooraf gedefinieerde locaties.

> ⚠️ Vergeet niet om ook de juiste [autorisaties](#autorisaties) in te stellen. Zonder de juiste autorisaties zijn bepaalde functies niet beschikbaar.

---

## Waar vindt u de Slotting-policies?

De policies voor Slotting configureert u via het **Policy Beheer** in het constantenscherm van de Backoffice.
Volg onderstaande stappen om deze te benaderen:

| Stap  | Uitleg                                                                                          |
| ----- | ----------------------------------------------------------------------------------------------- |
| **1** | Open het **constantenscherm** in de Backoffice via de navigator.                                |
| **2** | Navigeer naar: **Systeem → Users → Policy Beheer**.                                             |
| **3** | Selecteer of maak een policy aan, en navigeer vervolgens naar: **Apps → Inventory → Slotting**. |

Wilt u meer weten over het instellen en beheren van policies in het algemeen? Raadpleeg dan de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

---

## Overzicht van policies

In dit hoofdstuk vindt u een overzicht van policies die specifiek betrekking hebben op de Slotting-functionaliteit.
Per policy wordt uitgelegd wat de functie is, hoe deze geconfigureerd wordt en waar u op moet letten bij het gebruik.

> ⚠️ De beschikbaarheid van sommige policies kan afhangen van de inrichting van uw omgeving. Niet alle policies zijn in elke situatie van toepassing.

---

## Inventory-brede instellingen

Sommige instellingen gelden Inventory-breed, ongeacht de specifieke module.

### `DisplayedStockItemIdentifier`

Geeft aan welk type partijnummer wordt weergegeven in de app. Enkel de **laatste vier cijfers** worden getoond voor duidelijkheid en gebruiksgemak.

**Beschikbare opties:**

- `PartijNr`
- `VPartijNr`

---

### Instellingen voor locatiebeheer

Deze policies bepalen hoe de app omgaat met het toewijzen en verwerken van voorraadlocaties.

### `AvailableStocks`

Met deze policy geeft u aan welke voorraden gebruikt mogen worden voor Slotting.
Alleen de hier geselecteerde voorraden zijn zichtbaar en bewerkbaar in de Slotting-app.

---

### `CheckPredefinedLocationCodes`

Activeert de controle op vooraf gedefinieerde locatiecodes.
Wanneer deze policy is ingeschakeld, controleert de app of de ingevoerde locatie voorkomt in de tabel **Partij locaties** in het constantenscherm. Alleen locatiecodes die daar zijn geregistreerd kunnen worden gebruikt.

---

### `LinkParcelToLocationThenResetLocation`

Bepaalt dat een partij eerst aan een locatie wordt gekoppeld en daarna wordt de locatie-instelling teruggezet.
Dit voorkomt dat volgende partijen automatisch dezelfde locatie overnemen.

---

### `ClearLocationIsAllowed`

Wanneer deze policy is ingeschakeld, wordt er in het hamburger-menu een extra knop toegevoegd. Deze knop geeft de gebruiker de mogelijkheid om een locatie in één keer te "leegmaken".

    ℹ️ Deze functionaliteit is alleen beschikbaar nadat een locatiecode is gescand. Bij het scannen van een partij wordt de knop niet getoond en is het dus niet mogelijk om via deze route partijen van een locatie te verwijderen.

---

## Instellingen buiten policies om
Niet alle instellingen zijn momenteel opgenomen in de policies groepen voor Slotting. Sommige instellingen bevinden zich nog in het systeem zelf en zijn van minder strategisch belang, maar verdienen toch aandacht vanwege hun invloed op het gedrag van het slottingproces.

### Systeeminstelling: `LocatieVeldLengte`

Met deze instelling bepaal je de maximale lengte (in aantal karakters) waarmee een gescande waarde wordt herkend als locatiebarcode in het systeem. Deze lengte wordt in veel tabellen gehanteerd voor locatie- of gerelateerde velden.

**Bijvoorbeeld:**
Als de waarde is ingesteld op `6` en je scant een barcode met `7` karakters, dan wordt deze niet als locatie herkend.

Daarnaast wordt deze lengte ook gebruikt bij het purgen van tabellen: zodra de waarde van `LocatieVeldLengte` is gewijzigd, moeten tabellen die deze structuur gebruiken worden*gepurgd, zodat de data en verwerking overeenkomen met de nieuwe instelling.

> ⚠️ **Let op:** Het aanpassen van deze waarde is **op eigen risico**. De  wijzigingen kunnen onbedoelde gevolgen hebben voor processen waarin locatieherkenning een rol speelt.

**Standaardwaarde:** `6`

---

## Autorisaties

Voor toegang tot de Slotting-functionaliteit zijn specifieke autorisaties vereist.
Zonder deze autorisatie kunnen gebruikers de app niet openen of gebruiken.

| Stap  | Uitleg                                                                                                                                                |
| ----- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| **1** | Open het **constantenscherm** via de navigator.                                                                                                       |
| **2** | Navigeer naar **Systeem → Users → Systeem gebruikers**.                                                                                               |
| **3** | Open de gewenste gebruiker en klik op **Autorisatie**.                                                                                                |
| **4** | Druk op **F3** om het zoekvenster te openen.                                                                                                          |
| **5** | Zoek op code **424**. Selecteer de autorisatie: **Navigator palmtop/Locatie\_pda\_424** en kies **Alle handelingen toegestaan**. Bevestig met **OK**. |
| **6** | Herhaal dit voor andere gebruikers. U kunt het proces versnellen via de knop **Kopie autorisatie**.                                                   |

---