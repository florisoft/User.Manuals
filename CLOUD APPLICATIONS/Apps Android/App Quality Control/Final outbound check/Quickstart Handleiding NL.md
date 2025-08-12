![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Florisoft Logistics App - Final Outbound Check Handleiding

## Inleiding

Deze handleiding beschrijft het gebruik van de **Final Outbound Check**-functionaliteit in de Florisoft Logistics App. De workflow van de app is afgestemd op de relevante policies.

> ℹ️ De uitgebreide handleiding voor het instellen van deze policies is beschikbaar via de volgende link: [Policies Final Outbound Check NL](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Android/App%20Quality%20Control/Final%20outbound%20check/Policies%20Final%20outbound%20check%20-%20NL.md)

**Benodigdheden:**

* Florisoft QualityControl App
* Backoffice Final Outboud Check module 

## Stappenplan Final Outbound Check

### Stap 1: Inloggen in de Logistics App

Open de Logistics App vanuit de Florisoft Hub-App of via het Logistics App-icoon. Log in met uw gebruikersgegevens.

### Stap 2: Order selecteren

Zoek en selecteer een openstaande klantorder. Dit kan via:

* Scannen van barcode van een orderitem 
* Handmatige invoer

De zichtbare velden in het orderoverzicht worden bepaald door de ingestelde policy `Apps_Logistics_QualityControl_FinalInspection_BarcodeDecodeOptions`.

### Stap 3: Orderitems controleren

1. Selecteer een orderitem.
2. Scan de barcode of voer handmatig het gecontroleerde aantal in.
3. Het systeem valideert:

   * Is de barcode herkend?
   * Hoort het artikel bij de order?
   * Is het item al volledig gecontroleerd?
4. Pas indien nodig de telling aan. Handmatige aanpassingen worden gelogd.
5. Herhaal voor alle orderitems tot de status **FinalInspectionDone** is bereikt.

### Stap 4: Foutmeldingen en correcties

Tijdens de controle kunnen meldingen verschijnen zoals:

* Barcode niet herkend
* Item hoort niet bij de order
* Item al gecontroleerd
* Geen actieve orders

Elke melding stuurt de gebruiker terug naar de juiste stap voor correctie.

### Stap 5: Order afronden

Wanneer alle items gecontroleerd zijn:

1. Klik op **Afronden/Goedkeuren**.
2. Mogelijke vervolgstappen:

   * Volgende order laden
   * Foto’s maken
   * CMR genereren, printen of verzenden
   * Handtekening toevoegen
   * Verpakkingstelling starten

Policies bepalen of waarschuwingen verschijnen bij ontbrekende items en of autorisatie vereist is.

### Optionele stappen

### - Resetten van een order

Indien nodig kan de controle opnieuw gestart worden via de resetfunctie. Policies bepalen of autorisatie vereist is.

**Menu → Reset order → Bevestigen**

---

Deze handleiding is gebaseerd op de actuele Logistics App en wordt periodiek bijgewerkt bij nieuwe functionaliteit of gewijzigde policies.
