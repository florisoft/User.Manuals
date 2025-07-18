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