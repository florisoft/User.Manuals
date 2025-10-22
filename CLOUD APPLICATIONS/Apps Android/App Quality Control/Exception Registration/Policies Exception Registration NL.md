![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Exception Registration Policies (Quality Control App)

Deze handleiding helpt u bij het configureren van de **Exception Registration-functionaliteit** in de Quality Control App.
Met behulp van policies kunt u bepalen hoe en met welke parameters gebruikers afwijkingen mogen registreren.

---

## Waar vindt u de Exception Registration-policies?

De policies voor Exception Registration configureert u via het **Policy Beheer** in het constantenscherm van de Backoffice.
Volg onderstaande stappen om deze te benaderen:

| Stap  | Uitleg                                                                                                                        |
| ----- | ----------------------------------------------------------------------------------------------------------------------------- |
| **1** | Open het **constantenscherm** in de Backoffice via de navigator.                                                              |
| **2** | Navigeer naar: **Systeem → Users → Policy Beheer**.                                                                           |
| **3** | Selecteer of maak een policy aan, en navigeer vervolgens naar: **Apps → Logistics → QualityControl → ExceptionRegistration**. |

Wilt u meer weten over het instellen en beheren van policies in het algemeen? Raadpleeg dan de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

---

## Overzicht van policies

In dit hoofdstuk vindt u een overzicht van policies die specifiek betrekking hebben op Exception Registration.
Per policy wordt uitgelegd wat de functie is, hoe deze geconfigureerd wordt en waar u op moet letten bij het gebruik.

> ⚠️ De beschikbaarheid van sommige policies kan afhangen van de inrichting van uw omgeving. Niet alle policies zijn in elke situatie van toepassing.

---

### `SetExceptionReasons`

Met deze policy stelt u het gebruik van redenregistratie in voor Exception Registration.
Een reden is altijd verplicht bij het registreren van een afwijking. De beschikbare redenen komen uit de tabel **Credit Redenen**, te beheren via: **Financieel → Credit Reden**.

Om een reden aan te maken:

1. Klik op het plus-icoon om een nieuwe reden toe te voegen.
2. Vul bij Type omschrijving exact in: `Verdeelcontrole reden`.
3. Vul bij Omschrijving een duidelijke reden in. 
	ℹ️ De app controleert momenteel nog niet op vertalingen.
4. Indien gewenst: geef op hoeveel foto's verplicht toegevoegd moeten worden bij registratie. Waarde `0` betekent dat foto's optioneel zijn, maar de mogelijkheid wordt wel getoond.

<details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Media/policies/1.png"></details>

---

### `BarcodeDecodeOptions`

Met deze policy bepaalt u welke barcodeformaten worden ondersteund bij het scannen van orders tijdens exception registratie. Selecteer hier de decoderingstypen die in uw organisatie gebruikt worden.

* Meerdere barcodeformaten kunnen tegelijkertijd worden geselecteerd.
* Let op dat de gebruikte scanners compatibel zijn met de gekozen instellingen.

---

### `OrderItemQuantityDisplayType`  
Bepaalt hoe het aantal van de order wordt weergegeven in de app.  

Beschikbare opties:

* **Colli × inhoud + restant (standaard)**  
  Toont het aantal colli met hun inhoud plus eventuele losse stelen die overblijven.

* **Stelen**  
  Toont het totaal aantal stelen.

---
