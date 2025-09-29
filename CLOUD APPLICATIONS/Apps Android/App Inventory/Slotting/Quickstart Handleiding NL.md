![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Florisoft Inventory App – Slotting Handleiding

## Inleiding

Deze handleiding beschrijft het gebruik van de Slotting-functionaliteit in de Florisoft Inventory App.
De workflow van de app is geconfigureerd op basis van de relevante policies.

Met deze functionaliteit kunt u producten eenvoudig en nauwkeurig van een locatie voorzien.

> De uitgebreide handleiding voor het instellen van deze policies is beschikbaar via de volgende link: [Policies Slotting NL](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Inventory%20App/Slotting/Policies%20Slotting%20NL.md)

**Benodigdheden:**

* Florisoft Inventory App
* Backoffice Voorraadmodule
* Module PDA Pickorder location

---

## Stappenplan Slotting

### Stap 1: Inloggen in de Inventory App

Open de Inventory App via de Florisoft Hub-App of via het Inventory-App-icoon. Log in met uw gebruikergegevens.


<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/1.png"></details>

### Stap 2: Slotting

Na het inloggen komt u in het navigatiescherm. Klik op de tegel **Slotting**.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/2.png"></details>

### Stap 3: Overzicht van scanworkflows

Bij het openen van het Slotting-scherm wordt automatisch het scanscherm geopend. We gaan er zoveel mogelijk vanuit dat de gebruiker werkt met een scanner, maar er is ook een zoekfunctie beschikbaar.

In dit scherm zijn twee workflows beschikbaar:

* Scannen van een locatiebarcode
* Scannen van een partijbarcode

Deze workflows worden in de volgende stappen uitgewerkt.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/3.png"></details>

---

#### Stap 4: Locatiebarcode scannen

Gebruik uw scanner om een locatiebarcode te scannen. U kunt ook naar rechts vegen in het scherm om handmatig een barcode in te voeren.

##### Stap 4.a: Partijen koppelen aan deze locatie

Scan de barcodes van de partijen die u aan deze locatie wilt toewijzen. Ze worden onder deze locatie gegroepeerd.

##### Stap 4.b: Volgende locatie scannen

Scan de volgende locatie om het proces te herhalen.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/4.png"></details>

---

#### Stap 5: Partijbarcode scannen

Scan een partijbarcode en daarna een locatiebarcode om deze te koppelen.
U kunt ook het zoekicoon gebruiken om een partij te zoeken. Zoekresultaten worden gevonden op basis van de volgende gegevens:\\

* Artikelnaam
* Partijnummer
* VPartijnummer
* Scancode
* Scancode2

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/5.png"></details>

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/6.png"></details>

##### Stap 5.a: Herhaal voor alle partijen

Herhaal dit voor alle partijen die gelocaliseerd moeten worden.

---

### Stap 6: Controleer partijlocaties in de Backoffice

In de backoffice kunt u de huidige en historische locatie van een partij bekijken.

| Stap  | Uitleg                                                                                                                                                                                                        |
| ----- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **1** | Open het voorraadscherm via de navigator.                                                                                                                                                                     |
| **2** | Klik met de rechtermuisknop op een partij in de relevante voorraad.                                                                                                                                           |
| **3** | Kies in het contextmenu voor **Partijlog**.                                                                                                                                                                   |
| **4** | Het log toont alle wijzigingen op de partij.                                                                                                                                                                  |
| **5** | Gebruik de kolommen *Loc. van* en *Loc. naar* om locatieveranderingen te bekijken.*Niet zichtbaar?* Klik met de rechtermuisknop op de kolomnamen, schakel **LOCATIEVAN** en **LOCATIENAAR** in en druk op OK. |

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/7.png"></details>

---

## Optionele stappen:
### Stickers printen

In het detailscherm kunt u voorraad- of prijsstickers printen. De beschikbare lay-outs en printers zijn vooraf ingesteld.

Klik op het printsjabloon, geef het gewenste aantal labels op en klik op **Print**. U kunt zowel voorraad labels als prijssticker labels selecteren, afhankelijk van het gekozen sjabloon.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/Doorloop/8.png"></details>

## Versiebeheer & Ontwikkelfase

> **Laatste update:** 27 augustus 2025  
> **Huidige ontwikkelfase:** Dev phase 1 afgerond

Deze handleiding is gebaseerd op de actuele Inventory App en wordt periodiek bijgewerkt bij nieuwe functionaliteit of gewijzigde policies.
