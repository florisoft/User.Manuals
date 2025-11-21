![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Address Label (Shipping App)

Deze handleiding helpt u bij het configureren van de **Address Label-functionaliteit** in de Shipping App.
Met behulp van policies kunt u bepalen hoe en met welke parameters gebruikers adreslabels mogen genereren en afdrukken.

---

## Waar vindt u de Address Label-policies?

De policies voor Address Label configureert u via het **Policy Beheer** in het constantenscherm van de Backoffice.
Volg onderstaande stappen om deze te benaderen:

| Stap  | Uitleg                                                                                                                        |
| ----- | ----------------------------------------------------------------------------------------------------------------------------- |
| **1** | Open het **constantenscherm** in de Backoffice via de navigator.                                                              |
| **2** | Navigeer naar: **Systeem → Users → Policy Beheer**.                                                                           |
| **3** | Selecteer of maak een policy aan, en navigeer vervolgens naar: **Apps → Logistics → Shipping → AdressLabels**. |

Wilt u meer weten over het instellen en beheren van policies in het algemeen? Raadpleeg dan de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

---

## Overzicht van policies

In dit hoofdstuk vindt u een overzicht van policies die specifiek betrekking hebben op Address Label.
Per policy wordt uitgelegd wat de functie is, hoe deze geconfigureerd wordt en waar u op moet letten bij het gebruik.

> ⚠️ De beschikbaarheid van sommige policies kan afhangen van de inrichting van uw omgeving. Niet alle policies zijn in elke situatie van toepassing.

---

### `PrinterSetting`
De **policy-groep** `PrinterSetting` bestaat uit instellingen waarmee u bepaalt welke orders zichtbaar zijn op de Order Overview-pagina in de app.

#### `PrinterName`
Bepaalt welke printer wordt gebruikt voor het afdrukken van adreslabels.

#### `ReportName`
Bepaalt welke lay-out wordt gebruikt voor het afdrukken van adreslabels.

#### `DefaultCopies`
Bepaalt hoeveel kopieën standaard geprint worden per adreslabel.

#### `Enabled`
schakelt de printerinstellingen in of uit voor Address Labels.

> ℹ️ Voor het correct functioneren van deze policies is de **JobAgent** vereist. Indien deze niet actief is, worden printers niet weergegeven en is afdrukken niet mogelijk. Raadpleeg de [handleiding voor de JobAgent](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Windows/Job-Agent/Handleiding%20Job-Agent%20-%20NL.md) voor installatie en configuratie-instructies.

---

### `BarcodeDecodeOptions`
Bepaalt welke barcodetypen (bijvoorbeeld Trolleybarcode, Orderitembarcode of FSQR) tijdens de eindcontrole worden herkend. De 'decoder' is simpel gezegd het stukje informatie dat vanuit de lay-out in de barcode wordt gezet, zodat de app weet hoe de barcode gelezen moet worden.

**Gebruik:**
* Kies alleen de barcodetypen die in uw proces voorkomen voor snellere en efficiëntere scans.
* Meerdere typen kunnen tegelijk geselecteerd worden.

---