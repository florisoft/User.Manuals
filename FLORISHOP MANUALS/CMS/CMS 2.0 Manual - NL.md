<img src="../fslogo.png">

# Uitgebreide handleiding add-on Content Management Systeem (CMS)

*Let op: omdat het CMS continu wordt doorontwikkeld, kunnen sommige screenshots en stappen in deze handleiding in bepaalde gevallen afwijken van de actuele situatie in het systeem.*
*Let op: Dit document wordt aangevuld*


## Inhoud

### Beheerschermen

#### 1. Pagina's
- [Categorieën](#categorieën)
- [Pagina](#pagina)
- [Blogs (Blog categorieën)](#blogs-blog-categorieën)
- [Blogpagina](#blogpagina)
- [Footer bewerken](#footer-bewerken)
- [Templates](#templates)

#### 2. Geavanceerd
- [Thema Configuratie](#thema-configuratie)
- [Backups](#backups)
- [Redirects](#redirects)
- [Niet opgeslagen wijzigingen](#niet-opgeslagen-wijzigingen)
- [Form tracking](#form-tracking)
- [Component styles](#component-styles)
- [Kleurgroepen (Dashboards)](#kleurgroepen-dashboards)

#### 3. Aside Editor
- [Toolbar](#toolbar)
- [Algemene instellingen](#algemene-instellingen)
- [Styling](#styling)
- [Geavanceerd](#geavanceerd)
- [Zichtbaarheid](#zichtbaarheid)
- [Responsive tabs](#responsive-tabs)

#### 4. Overig
- [Media](#media)
- [Documenten](#documenten)
- [Links](#links)


### Componenten

#### 1. Basis
- [Row](#row)
- [Column](#column)
- [Panel](#panel)
- [Flex](#flex)
- [Header](#header)
- [Text](#text)
- [Collapsible](#collapsible)
- [Bullet list](#bullet-list)
- [Bullet](#bullet)
- [Spacer](#spacer)

#### 2. Media
- [Image](#image)
- [Image overlay](#image-overlay)
- [Hotspot](#hotspot)
- [SVG](#svg)
- [HTML video](#html-video)
- [Youtube video](#youtube-video)
- [Carrousel](#carrousel)
- [Picture row](#picture-row)

#### 3. Navigatie
- [Button](#button)
- [Partijlijst](#partijlijst)
- [Partijkaart](#partijkaart)
- [Social icons](#social-icons)
- [Breadcrumbs](#breadcrumbs)
- [Icon link](#icon-link)
- [Banner](#banner)
- [Voorraad navigatie](#voorraad-navigatie)
- [Shop navigation](#shop-navigation)
- [Aanbieding](#aanbieding)
- [Action link](#action-link)
- [Add to home button](#add-to-home-button)
- [Anchors toolbar](#anchors-toolbar)

#### 4. Formulier
- [Formulier](#formulier)
- [Tekst input](#tekst-input)
- [Email input](#email-input)
- [Nummer input](#nummer-input)
- [Bestand input](#bestand-input)
- [Checkbox](#checkbox)
- [Radio button](#radio-button)
- [Multiple choice](#multiple-choice)
- [Dropdown (single select)](#dropdown-single-select)
- [Dropdown (single select option)](#dropdown-single-select-option)
- [Hidden input](#hidden-input)
- [Hidden debiteur info](#hidden-debiteur-info)
- [Verzendknop](#verzendknop)

#### 5. Gebruiker
- [Login form](#login-form)
- [Debiteur info](#debit-info)
- [Uw account](#uw-account)
- [Accountmanager](#accountmanager)
- [Registratieformulier](#registratieformulier)

#### 6. Templates
- [Footer template](#footer-template)

#### 7. Geavanceerd
- [Iframe](#iframe)
- [Blog](#blog)
- [Category overview](#category-overview)
- [Frame](#frame)
- [Custom](#custom)
- [Keuze component](#keuze-component)
- [Button (Keuze)](#button-keuze)
- [Lottie player](#lottie-player)
- [Suggestions](#suggestions)

#### 8. Dashboard
- [Chart](#chart)
- [Piechart](#piechart)
- [Gauge](#gauge)
- [Table view](#table-view)
- [Progressbar](#progressbar)
- [Dashboard view](#dashboard-view)
- [Embedded dashboard](#embedded-dashboard)
- [Filter toolbar](#filter-toolbar)
- [Searchterm](#searchterm)
- [Query filter](#query-filter)
- [Preset value filter](#preset-value-filter)
- [Query filter date](#query-filter-date)
- [Query variable](#query-variable)

#### 9. Dashboard
- [Health chart](#health-chart)
- [Health check](#health-check)
- [Health errors](#health-errors)
- [Health gauge](#health-gauge)
- [Health log](#health-log)


## Beheerschermen

### Categorieën

Categorieën zijn de tabbladen die zichtbaar zijn naast de voorraden/bestellijsten. CMS pagina's kunnen worden gekoppeld aan een categorie zodat je deze vervolgens als dropdown in de navigatiebalk kunt gebruiken, of om een overzicht te creëren via het component '[Category overview](#category-overview)'.

*Volg onderstaande stappen:*

|#|Uitleg|
|:--|:--|
|**1**|Log in op de webshop met een beheerdersaccount.|
|**2**|Activeer de ‘Management’-omgeving van de webshop door op het gebruikersicoon (1) te klikken. Dit opent een dropdownmenu. Klik vervolgens op de optie '*Management*' (2).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.2.png"></details>|
|**3**|Klik op Content Management (CMS) in de linker beheerbalk (3). Hierdoor opent een dropdownmenu. Klik op de knop '*Categorieën*' (4). Hiermee kom je in het CMS-categorieënscherm terecht. Eventuele bestaande CMS-categorieën worden hier weergegeven.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.3.png"></details>|
|**4**|Om een nieuwe CMS-categorie aan te maken klik je op '**+**' (5). Hierdoor wordt het scherm voor het aanmaken van categorieën geopend. Vul de volgende velden in:- **Categorie Weergave naam (6):** voer hier de naam in van de categorie zoals deze zichtbaar wordt in de balk met voorraad-/bestellijsttabbladen.<br><br>- **Categorie Naam (7):** dit is de naam van de categorie die ook in de URL verschijnt.<br>**GEBRUIK GEEN SPATIES!**<br><br>- **Size mode OPTIONEEL (8):** selecteer hier of je een compacte dropdown (Small) of juist een brede dropdown (FullWidth) wilt tonen in je navigatie balk.<br><br>- **Volgorde in navigatie OPTIONEEL (9):** bepaal hier de volgorde in de navigatiebalk. 1 is vooraan. Hiermee wordt de volgorde van de voorraden niet aangetast. Deze blijven hun positie behouden.<br><br>- **Zichtbaar in navigatie OPTIONEEL (10):** zorg ervoor dat dit selectievakje is ingeschakeld zodat de categorie zichtbaar wordt in de navigatie.<br><br>- **Template OPTIONEEL (11):** hier kun je op basis van een Template bepalen hoe een overzichtspagina van deze categorie gevuld wordt.<br><br>- **Submit (12):** klik op de knop 'Submit' om de categorie aan te maken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.4.png"></details>|
|**5**|Klik op het oranje icoon (13) of 'Niet-opgeslagen wijzigingen' (14).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.5.png"></details>|
|**6**|Om de categorie te publiceren en dus live te kunnen gebruiken klik je op de knop 'Publish all' (15) of het publish-icoon (16). Vervolgens kun je het publiceren bevestigen door op 'Ja' (17) te klikken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.6.png"></details>|
|:bulb:|**Opmerking: de nieuwe categorie is niet direct zichtbaar in de webshop. Dit gebeurt pas wanneer een pagina aan deze categorie gekoppeld wordt. Zie het volgende hoofdstuk voor meer informatie.**|

---

### Pagina

Een CMS-pagina is een toegankelijk onderdeel binnen het CMS waarop content geplaatst kan worden. Een pagina kan onder een zelf gecreëerde categorie vallen. Pagina’s kunnen vergeleken worden met productgroepen in standaard webshopvoorraden. Op een CMS-pagina kunnen verschillende elementen geplaatst worden, zoals afbeeldingen, video’s, tekstblokken, tabellen, enzovoort.

*Volg onderstaande stappen:*

|#|Uitleg|
|:--|:--|
|**1**|Na het aanmaken van de categorie navigeer je via '*Content management (CMS)*' (1) naar '*Pagina’s*' (2).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.1.png"></details>|
|**2**|Om een pagina aan te maken klik je op de knop met het '**+**'-teken (3). Hiermee open je het scherm voor het aanmaken van pagina’s. Er wordt nu een dialoog geopend. Pas hier de volgende instellingen aan:<br><br>- **URL (4):**: de naam van de pagina die zichtbaar wordt in de URL van de pagina. Hier hoef je niet het hele domein in mee te nemen. Enkel het pad-naam is voldoende zoals: '*voorbeeld*'.<br>**GEBRUIK GEEN SPATIES EN HOOFDLETTERS!**<br><br>- **Page display name (5):**: de naam die zichtbaar wordt voor de klant op de website.<br><br>- **Category (6):** selecteer de juiste categorie, namelijk de categorie die in het vorige hoofdstuk is aangemaakt.<br><br>- **Is visible in navigation (7):**: vink dit selectievakje aan om de pagina zichtbaar te maken in de webshop.<br><br>- **Submit (8):** klik op de knop 'Submit' om de pagina aan te maken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.2.png"></details>|
|**3**|Via het potlood-icoontje (9) Open je Properties (10) dialoog van de zojuist aangemaakte pagina. Klik op de knop '*Vertalingen bewerken*' (11).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.3.png"></details>|
|**4**|Het vertaal dialoog wordt geopend. De ingestelde standaard taal (12) wordt aan de linkerkant getoond. Stel via de rechter dropdown (13) de taal in die je wilt toepassen/bewerken. Stel de volgende instellingen in:<br><br>- **URL (14)**: voer de vertalingen in voor het URL pad.|<br><br>- **Weergave pagina naam (15)**: voer de vertalingen in voor de weergave naam van de pagina.|<br><br>- **Bevestigen (16)**: Klik op '*Bevestigen*' om de wijzigingen op te slaan.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.4.png"></details>|
|**5**|Open het tabblad '*Visibility*' (17). Stel de volgende instellingen in:<br><br>- **Taal Zone Selectie (18)**: vink onder het dropdownmenu één of meerdere talen aan waaraan deze categorie gekoppeld moet worden. Onder Zone selectie (19) selecteer je een eigen gemaakte CMS Zone.<br><br>- **Geldig vanaf (20) en Geldig tot (21)**: onder 'Geldig vanaf' en 'Geldig tot' kunnen datums en tijden worden ingesteld waarop bovenstaande instellingen van toepassing zijn.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.5.png"></details>|
|**6**|In het tabblad '*SEO*' (22) kunnen instellingen met betrekking tot SEO (zoekmachineoptimalisatie) worden ingesteld. Deze instellingen zijn niet noodzakelijk voor de werking van het CMS en worden daarom niet behandeld in deze snelstartgids. Raadpleeg de uitgebreide handleiding webshop add-on CMS voor meer informatie over deze instellingen. Klik op '*Opslaan*' (23).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.6.png"></details>|
|**7**|Klik op het oranje icoon (24) of 'Niet-opgeslagen wijzigingen' (25).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.7.png"></details>|
|**8**|Om de pagina te publiceren en dus live te kunnen gebruiken klik je op de knop 'Publish all' (26) of het publish-icoon (27). Vervolgens kun je het publiceren bevestigen door op 'Ja' (28) te klikken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.8.png"></details>|

---

### Blogs (Blog categorieën)

| Onderdeel | Beschrijving |
|---|---|
| Blogs (Blog categorieën) | Deze beschrijving wordt aangevuld |

---

### Blogpagina

| Onderdeel | Beschrijving |
|---|---|
| Blogpagina | Deze beschrijving wordt aangevuld |

---

### Footer bewerken

| Onderdeel | Beschrijving |
|---|---|
| Footer bewerken | Deze beschrijving wordt aangevuld |

---

### Templates

| Onderdeel | Beschrijving |
|---|---|
| Templates | Deze beschrijving wordt aangevuld |

---

## Geavanceerd

### Thema Configuratie

| Onderdeel | Beschrijving |
|---|---|
| Thema Configuratie | Deze beschrijving wordt aangevuld |

---

### Backups

| Onderdeel | Beschrijving |
|---|---|
| Backups | Deze beschrijving wordt aangevuld |

---

### Redirects

| Onderdeel | Beschrijving |
|---|---|
| Redirects | Deze beschrijving wordt aangevuld |

---

### Niet opgeslagen wijzigingen

| Onderdeel | Beschrijving |
|---|---|
| Niet opgeslagen wijzigingen | Deze beschrijving wordt aangevuld |

---

### Form tracking

| Onderdeel | Beschrijving |
|---|---|
| Form tracking | Deze beschrijving wordt aangevuld |

---

### Component styles

| Onderdeel | Beschrijving |
|---|---|
| Component styles | Deze beschrijving wordt aangevuld |

---

### Kleurgroepen (Dashboards)

| Onderdeel | Beschrijving |
|---|---|
| Kleurgroepen (Dashboards) | Deze beschrijving wordt aangevuld |

---

# Aside Editor

## Toolbar

| Onderdeel | Beschrijving |
|---|---|
| Toolbar | Deze beschrijving wordt aangevuld |

---

## Algemene instellingen

| Onderdeel | Beschrijving |
|---|---|
| Algemene instellingen | Deze beschrijving wordt aangevuld |

---

## Styling

| Onderdeel | Beschrijving |
|---|---|
| Styling | Deze beschrijving wordt aangevuld |

---

## Geavanceerd

| Onderdeel | Beschrijving |
|---|---|
| Geavanceerd | Deze beschrijving wordt aangevuld |

---

## Zichtbaarheid

| Onderdeel | Beschrijving |
|---|---|
| Zichtbaarheid | Deze beschrijving wordt aangevuld |

---

## Responsive tabs

| Onderdeel | Beschrijving |
|---|---|
| Responsive tabs | Deze beschrijving wordt aangevuld |

---

# Overig

## Media

| Onderdeel | Beschrijving |
|---|---|
| Media | Deze beschrijving wordt aangevuld |

---

## Documenten

| Onderdeel | Beschrijving |
|---|---|
| Documenten | Deze beschrijving wordt aangevuld |

---

## Links

| Onderdeel | Beschrijving |
|---|---|
| Links | Deze beschrijving wordt aangevuld |

---

# Componenten

## Basis

---

## Row

| Onderdeel | Beschrijving |
|---|---|
| Row | Deze beschrijving wordt aangevuld |

---

## Column

| Onderdeel | Beschrijving |
|---|---|
| Column | Deze beschrijving wordt aangevuld |

---

## Panel

| Onderdeel | Beschrijving |
|---|---|
| Panel | Deze beschrijving wordt aangevuld |

---

## Flex

| Onderdeel | Beschrijving |
|---|---|
| Flex | Deze beschrijving wordt aangevuld |

---

## Header

| Onderdeel | Beschrijving |
|---|---|
| Header | Deze beschrijving wordt aangevuld |

---

## Text

| Onderdeel | Beschrijving |
|---|---|
| Text | Deze beschrijving wordt aangevuld |

---

## Collapsible

| Onderdeel | Beschrijving |
|---|---|
| Collapsible | Deze beschrijving wordt aangevuld |

---

## Bullet list

| Onderdeel | Beschrijving |
|---|---|
| Bullet list | Deze beschrijving wordt aangevuld |

---

## Bullet

| Onderdeel | Beschrijving |
|---|---|
| Bullet | Deze beschrijving wordt aangevuld |

---

## Spacer

| Onderdeel | Beschrijving |
|---|---|
| Spacer | Deze beschrijving wordt aangevuld |

---

# Media

## Image

| Onderdeel | Beschrijving |
|---|---|
| Image | Deze beschrijving wordt aangevuld |

---

## Image overlay

| Onderdeel | Beschrijving |
|---|---|
| Image overlay | Deze beschrijving wordt aangevuld |

---

## Hotspot

| Onderdeel | Beschrijving |
|---|---|
| Hotspot | Deze beschrijving wordt aangevuld |

---

## SVG

| Onderdeel | Beschrijving |
|---|---|
| SVG | Deze beschrijving wordt aangevuld |

---

## HTML video

| Onderdeel | Beschrijving |
|---|---|
| HTML video | Deze beschrijving wordt aangevuld |

---

## Youtube video

| Onderdeel | Beschrijving |
|---|---|
| Youtube video | Deze beschrijving wordt aangevuld |

---

## Carrousel

| Onderdeel | Beschrijving |
|---|---|
| Carrousel | Deze beschrijving wordt aangevuld |

---

## Picture row

| Onderdeel | Beschrijving |
|---|---|
| Picture row | Deze beschrijving wordt aangevuld |

---

# Navigatie

## Button

| Onderdeel | Beschrijving |
|---|---|
| Button | Deze beschrijving wordt aangevuld |

---

## Partijlijst

| Onderdeel | Beschrijving |
|---|---|
| Partijlijst | Deze beschrijving wordt aangevuld |

---

## Partijkaart

| Onderdeel | Beschrijving |
|---|---|
| Partijkaart | Deze beschrijving wordt aangevuld |

---

## Social icons

| Onderdeel | Beschrijving |
|---|---|
| Social icons | Deze beschrijving wordt aangevuld |

---

## Breadcrumbs

| Onderdeel | Beschrijving |
|---|---|
| Breadcrumbs | Deze beschrijving wordt aangevuld |

---

## Icon link

| Onderdeel | Beschrijving |
|---|---|
| Icon link | Deze beschrijving wordt aangevuld |

---

## Banner

| Onderdeel | Beschrijving |
|---|---|
| Banner | Deze beschrijving wordt aangevuld |

---

## Voorraad navigatie

| Onderdeel | Beschrijving |
|---|---|
| Voorraad navigatie | Deze beschrijving wordt aangevuld |

---

## Shop navigation

| Onderdeel | Beschrijving |
|---|---|
| Shop navigation | Deze beschrijving wordt aangevuld |

---

## Aanbieding

| Onderdeel | Beschrijving |
|---|---|
| Aanbieding | Deze beschrijving wordt aangevuld |

---

## Action link

| Onderdeel | Beschrijving |
|---|---|
| Action link | Deze beschrijving wordt aangevuld |

---

## Add to home button

| Onderdeel | Beschrijving |
|---|---|
| Add to home button | Deze beschrijving wordt aangevuld |

---

## Anchors toolbar

| Onderdeel | Beschrijving |
|---|---|
| Anchors toolbar | Deze beschrijving wordt aangevuld |

---

# Formulier

## Formulier

| Onderdeel | Beschrijving |
|---|---|
| Formulier | Deze beschrijving wordt aangevuld |

---

## Tekst input

| Onderdeel | Beschrijving |
|---|---|
| Tekst input | Deze beschrijving wordt aangevuld |

---

## Email input

| Onderdeel | Beschrijving |
|---|---|
| Email input | Deze beschrijving wordt aangevuld |

---

## Nummer input

| Onderdeel | Beschrijving |
|---|---|
| Nummer input | Deze beschrijving wordt aangevuld |

---

## Bestand input

| Onderdeel | Beschrijving |
|---|---|
| Bestand input | Deze beschrijving wordt aangevuld |

---

## Checkbox

| Onderdeel | Beschrijving |
|---|---|
| Checkbox | Deze beschrijving wordt aangevuld |

---

## Radio button

| Onderdeel | Beschrijving |
|---|---|
| Radio button | Deze beschrijving wordt aangevuld |

---

## Multiple choice

| Onderdeel | Beschrijving |
|---|---|
| Multiple choice | Deze beschrijving wordt aangevuld |

---

## Dropdown (single select)

| Onderdeel | Beschrijving |
|---|---|
| Dropdown (single select) | Deze beschrijving wordt aangevuld |

---

## Dropdown (single select option)

| Onderdeel | Beschrijving |
|---|---|
| Dropdown (single select option) | Deze beschrijving wordt aangevuld |

---

## Hidden input

| Onderdeel | Beschrijving |
|---|---|
| Hidden input | Deze beschrijving wordt aangevuld |

---

## Hidden debiteur info

| Onderdeel | Beschrijving |
|---|---|
| Hidden debiteur info | Deze beschrijving wordt aangevuld |

---

## Verzendknop

| Onderdeel | Beschrijving |
|---|---|
| Verzendknop | Deze beschrijving wordt aangevuld |

---

# Gebruiker

## Login form

| Onderdeel | Beschrijving |
|---|---|
| Login form | Deze beschrijving wordt aangevuld |

---

## Debiteur info

| Onderdeel | Beschrijving |
|---|---|
| Debiteur info | Deze beschrijving wordt aangevuld |

---

## Uw account

| Onderdeel | Beschrijving |
|---|---|
| Uw account | Deze beschrijving wordt aangevuld |

---

## Accountmanager

| Onderdeel | Beschrijving |
|---|---|
| Accountmanager | Deze beschrijving wordt aangevuld |

---

## Registratieformulier

| Onderdeel | Beschrijving |
|---|---|
| Registratieformulier | Deze beschrijving wordt aangevuld |

---

# Templates

## Footer template

| Onderdeel | Beschrijving |
|---|---|
| Footer template | Deze beschrijving wordt aangevuld |

---

# Geavanceerd

## Iframe

| Onderdeel | Beschrijving |
|---|---|
| Iframe | Deze beschrijving wordt aangevuld |

---

## Blog

| Onderdeel | Beschrijving |
|---|---|
| Blog | Deze beschrijving wordt aangevuld |

---

## Category overview

| Onderdeel | Beschrijving |
|---|---|
| Category overview | Deze beschrijving wordt aangevuld |

---

## Frame

| Onderdeel | Beschrijving |
|---|---|
| Frame | Deze beschrijving wordt aangevuld |

---

## Custom

| Onderdeel | Beschrijving |
|---|---|
| Custom | Deze beschrijving wordt aangevuld |

---

## Keuze component

| Onderdeel | Beschrijving |
|---|---|
| Keuze component | Deze beschrijving wordt aangevuld |

---

## Button (Keuze)

| Onderdeel | Beschrijving |
|---|---|
| Button (Keuze) | Deze beschrijving wordt aangevuld |

---

## Lottie player

| Onderdeel | Beschrijving |
|---|---|
| Lottie player | Deze beschrijving wordt aangevuld |

---

## Suggestions

| Onderdeel | Beschrijving |
|---|---|
| Suggestions | Deze beschrijving wordt aangevuld |

---

# Dashboard

## Chart

| Onderdeel | Beschrijving |
|---|---|
| Chart | Deze beschrijving wordt aangevuld |

---

## Piechart

| Onderdeel | Beschrijving |
|---|---|
| Piechart | Deze beschrijving wordt aangevuld |

---

## Gauge

| Onderdeel | Beschrijving |
|---|---|
| Gauge | Deze beschrijving wordt aangevuld |

---

## Table view

| Onderdeel | Beschrijving |
|---|---|
| Table view | Deze beschrijving wordt aangevuld |

---

## Progressbar

| Onderdeel | Beschrijving |
|---|---|
| Progressbar | Deze beschrijving wordt aangevuld |

---

## Dashboard view

| Onderdeel | Beschrijving |
|---|---|
| Dashboard view | Deze beschrijving wordt aangevuld |

---

## Embedded dashboard

| Onderdeel | Beschrijving |
|---|---|
| Embedded dashboard | Deze beschrijving wordt aangevuld |

---

## Filter toolbar

| Onderdeel | Beschrijving |
|---|---|
| Filter toolbar | Deze beschrijving wordt aangevuld |

---

## Searchterm

| Onderdeel | Beschrijving |
|---|---|
| Searchterm | Deze beschrijving wordt aangevuld |

---

## Query filter

| Onderdeel | Beschrijving |
|---|---|
| Query filter | Deze beschrijving wordt aangevuld |

---

## Preset value filter

| Onderdeel | Beschrijving |
|---|---|
| Preset value filter | Deze beschrijving wordt aangevuld |

---

## Query filter date

| Onderdeel | Beschrijving |
|---|---|
| Query filter date | Deze beschrijving wordt aangevuld |

---

## Query variable

| Onderdeel | Beschrijving |
|---|---|
| Query variable | Deze beschrijving wordt aangevuld |

---

# Health

## Health chart

| Onderdeel | Beschrijving |
|---|---|
| Health chart | Deze beschrijving wordt aangevuld |

---

## Health check

| Onderdeel | Beschrijving |
|---|---|
| Health check | Deze beschrijving wordt aangevuld |

---

## Health errors

| Onderdeel | Beschrijving |
|---|---|
| Health errors | Deze beschrijving wordt aangevuld |

---

## Health gauge

| Onderdeel | Beschrijving |
|---|---|
| Health gauge | Deze beschrijving wordt aangevuld |

---

## Health log

| Onderdeel | Beschrijving |
|---|---|
| Health log | Deze beschrijving wordt aangevuld |