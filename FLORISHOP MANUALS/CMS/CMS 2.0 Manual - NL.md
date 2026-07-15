<img src="../fslogo.png">

# Uitgebreide handleiding add-on Content Management Systeem (CMS)

*Let op: omdat het CMS continu wordt doorontwikkeld, kunnen sommige screenshots en stappen in deze handleiding in bepaalde gevallen afwijken van de actuele situatie in het systeem.*
*Let op: Dit document wordt aangevuld*


## Inhoud

### Beheerschermen

---

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

#### 3. Overig
- [Media](#media)
- [Documenten](#documenten)
- [Links](#links)

---

### Aside editor

---

#### 1. Toolbar
- [Menu](#menu)
- [Zoeken](#zoeken)
- [CMS editor](#cms-editor)
- [Drag & Drop](#drag--drop)
- [SEO](#seo)
- [Voorkeuren](#voorkeuren)

#### 2. Responsive tabs
- [Desktop](#desktop)
- [Tablet](#tablet)
- [Mobile](#mobile)

#### 3. Algemene instellingen
- [Vertalingen](#vertalingen)

#### 4. Styling
- [Color picker](#color-picker)
- [Omlijning](#omlijning)
- [Margin/padding](#margin-padding)
- [Hoekafronding](#hoekafronding)
- [Hoogte/Breedte](#hoogte-breedte)
- [Slagschaduw](#slagschaduw)
- [Overflow](#overflow)

#### 5. Geavanceerd
- [Verborgen wanneer leeg](#verborgen-wanneer-leeg)
- [Identificatie naam](#identificatie-naam)
- [Slotnaam](#slotnaam)
- [HTML klassenaam](#html-klassenaam)
- [Tag](#tag)
- [Z-index](#z-index)

#### 6. Zichtbaarheid
- [Content verbergen](#content-verbergen)
- [Content tonen](#content-tonen)
- [Content uitlichten](#content-uitlichten)

---

### Componenten

---

#### 1. Basis
- [Row/Column](#row-column)
- [Panel](#panel)
- [Flex](#flex)
- [Header](#header)
- [Text](#text)
- [Collapsible](#collapsible)
- [Bullet list/Bullet](#bullet-list-bullet)
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
|:bulb:|**Opmerking: de nieuwe categorie is niet direct zichtbaar in de webshop. Dit gebeurt pas wanneer een pagina aan deze categorie gekoppeld wordt. [Zie het volgende hoofdstuk](#pagina) voor meer informatie.**|

---

### Pagina

Een CMS-pagina is een toegankelijk onderdeel binnen het CMS waarop content geplaatst kan worden. Een pagina kan onder een zelf gecreëerde categorie vallen. Pagina’s kunnen vergeleken worden met productgroepen in standaard webshopvoorraden. Op een CMS-pagina kunnen verschillende elementen geplaatst worden, zoals afbeeldingen, video’s, tekstblokken, tabellen, enzovoort.

*Volg onderstaande stappen:*

|#|Uitleg|
|:--|:--|
|**1**|Na het aanmaken van de categorie navigeer je via '*Content management (CMS)*' (1) naar '*Pagina’s*' (2).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.1.png"></details>|
|**2**|Om een pagina aan te maken klik je op de knop met het '**+**'-teken (3). Hiermee open je het scherm voor het aanmaken van pagina’s. Er wordt nu een dialoog geopend. Pas hier de volgende instellingen aan:<br><br>- **URL (4):**: de naam van de pagina die zichtbaar wordt in de URL van de pagina. Hier hoef je niet het hele domein in mee te nemen. Enkel het pad-naam is voldoende zoals: '*voorbeeld*'.<br>**GEBRUIK GEEN SPATIES EN HOOFDLETTERS!**<br><br>- **Page display name (5):**: de naam die zichtbaar wordt voor de klant op de website.<br><br>- **Category (6):** selecteer de juiste categorie, namelijk de categorie die in het vorige hoofdstuk is aangemaakt.<br><br>- **Is visible in navigation (7):**: vink dit selectievakje aan om de pagina zichtbaar te maken in de webshop.<br><br>- **Submit (8):** klik op de knop 'Submit' om de pagina aan te maken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.2.png"></details>|
|**3**|Via het potlood-icoontje (9) Open je Properties (10) dialoog van de zojuist aangemaakte pagina. Klik op de knop '*Vertalingen bewerken*' (11).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.3.png"></details>|
|**4**|Het vertaal dialoog wordt geopend. De ingestelde standaard taal (12) wordt aan de linkerkant getoond. Stel via de rechter dropdown (13) de taal in die je wilt toepassen/bewerken. Stel de volgende instellingen in:<br><br>- **URL (14)**: voer de vertalingen in voor het URL pad.<br><br>- **Weergave pagina naam (15)**: voer de vertalingen in voor de weergave naam van de pagina.<br><br>- **Bevestigen (16)**: Klik op '*Bevestigen*' om de wijzigingen op te slaan.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.4.png"></details>|
|**5**|Open het tabblad '*Visibility*' (17). Stel de volgende instellingen in:<br><br>- **Taal Zone Selectie (18)**: vink onder het dropdownmenu één of meerdere talen aan waaraan deze categorie gekoppeld moet worden. Onder Zone selectie (19) selecteer je een eigen gemaakte CMS Zone.<br><br>- **Geldig vanaf (20) en Geldig tot (21)**: onder 'Geldig vanaf' en 'Geldig tot' kunnen datums en tijden worden ingesteld waarop bovenstaande instellingen van toepassing zijn.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.5.png"></details>|
|**6**|In het tabblad '*SEO*' (22) kunnen instellingen met betrekking tot SEO (zoekmachineoptimalisatie) worden ingesteld. Hiermee kun je ervoor zorgen dat zoekmachines zoals Google jouw website sneller kunnen vinden. Meer informatie over SEO instellingen [vind je hier](#seo). Klik op '*Opslaan*' (23).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.6.png"></details>|
|**7**|Klik op het oranje icoon (24) of 'Niet-opgeslagen wijzigingen' (25).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.7.png"></details>|
|**8**|Om de pagina te publiceren en dus live te kunnen gebruiken klik je op de knop 'Publish all' (26) of het publish-icoon (27). Vervolgens kun je het publiceren bevestigen door op 'Ja' (28) te klikken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/5.8.png"></details>|

---

### Blogs (Blog categorieën)

Blog categorieën kunnen net als de [Pagina categorieën](#categorieën) de tabbladen zijn die zichtbaar zijn naast de voorraden/bestellijsten. Blog pagina's kunnen worden gekoppeld aan een Blog categorie zodat je deze vervolgens als dropdown in de navigatiebalk kunt gebruiken, of om een overzicht te creëren via het component '[Blog](#blog)'. De Pagina categorieën en de Blog categorieën lijken best veel op elkaar, maar onderscheiden doe je ze als volgt:<br><br>- Gebruik Pagina's voor belangrijke basis pagina's zoals een Contact, Klantregistratie of een Over Ons pagina.<br>- Gebruik Blogpagina's voor bijvoorbeeld nieuws items, evenementen of het uitlichten van een specifieke voorraad/artikel.

*Volg onderstaande stappen:*

|#|Uitleg|
|:--|:--|
|**1**|Log in op de webshop met een beheerdersaccount.|
|**2**|Activeer de ‘Management’-omgeving van de webshop door op het gebruikersicoon (1) te klikken. Dit opent een dropdownmenu. Klik vervolgens op de optie '*Management*' (2).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/4.2.png"></details>|
|**3**|Klik op Content Management (CMS) in de linker beheerbalk (3). Hierdoor opent een dropdownmenu. Klik op de knop '*Blogs*' (4). Hiermee kom je in het CMS-categorieënscherm terecht. Eventuele bestaande CMS-categorieën worden hier weergegeven.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/3.3.png"></details>|
|**4**|Om een nieuwe CMS-categorie aan te maken klik je op '**+**' (5). Hierdoor wordt het scherm voor het aanmaken van categorieën geopend. Vul de volgende velden in:- **Categorie Weergave naam (6):** voer hier de naam in van de categorie zoals deze zichtbaar wordt in de balk met voorraad-/bestellijsttabbladen.<br><br>- **Categorie Naam (7):** dit is de naam van de categorie die ook in de URL verschijnt.<br>**GEBRUIK GEEN SPATIES!**<br><br>- **Size mode OPTIONEEL (8):** selecteer hier of je een compacte dropdown (Small) of juist een brede dropdown (FullWidth) wilt tonen in je navigatie balk.<br><br>- **Volgorde in navigatie OPTIONEEL (9):** bepaal hier de volgorde in de navigatiebalk. 1 is vooraan. Hiermee wordt de volgorde van de voorraden niet aangetast. Deze blijven hun positie behouden.<br><br>- **Zichtbaar in navigatie OPTIONEEL (10):** zorg ervoor dat dit selectievakje is ingeschakeld zodat de categorie zichtbaar wordt in de navigatie.<br><br>- **Submit (11):** klik op de knop 'Submit' om de categorie aan te maken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/3.4.png"></details>|
|**5**|Klik op het oranje icoon (12) of 'Niet-opgeslagen wijzigingen' (13).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/3.5.png"></details>|
|**6**|Om de categorie te publiceren en dus live te kunnen gebruiken klik je op de knop 'Publish all' (14) of het publish-icoon (15). Vervolgens kun je het publiceren bevestigen door op 'Ja' (16) te klikken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/3.6.png"></details>|
|:bulb:|**Opmerking: de nieuwe categorie is niet direct zichtbaar in de webshop. Dit gebeurt pas wanneer een pagina aan deze categorie gekoppeld wordt. [Zie het volgende hoofdstuk](#blogpagina) voor meer informatie.**|

---

### Blogpagina

Een Blogpagina is een toegankelijk onderdeel binnen het CMS waarop content geplaatst kan worden. Een Blogpagina kan onder een zelf gecreëerde categorie vallen. Op een Blogpagina kunnen verschillende elementen geplaatst worden, zoals afbeeldingen, video’s, tekstblokken, tabellen, enzovoort. CMS Pagina's en Blogpagina's lijken best veel op elkaar, maar onderscheiden doe je ze als volgt:<br><br>- Gebruik Pagina's voor belangrijke basis pagina's zoals een Contact, Klantregistratie of een Over Ons pagina.<br>- Gebruik Blogpagina's voor bijvoorbeeld nieuws items, evenementen of het uitlichten van een specifieke voorraad/artikel.

*Volg onderstaande stappen:*

|#|Uitleg|
|:--|:--|
|**1**|Na het aanmaken van de Blog categorie navigeer je via '*Content management (CMS)*' (1) naar '*Pagina’s*' (2).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/4.1.png"></details>|
|**2**|Om een pagina aan te maken klik je op de knop met het '**+**'-teken (3). Hiermee open je het scherm voor het aanmaken van pagina’s. Er wordt nu een dialoog geopend. Pas hier de volgende instellingen aan:<br><br>- **URL (4):**: de naam van de pagina die zichtbaar wordt in de URL van de pagina. Hier hoef je niet het hele domein in mee te nemen. Enkel het pad-naam is voldoende zoals: '*voorbeeld*'.<br>**GEBRUIK GEEN SPATIES EN HOOFDLETTERS!**<br><br>- **Page display name (5):** de naam die zichtbaar wordt voor de klant op de website.<br><br>- **Category (6):** selecteer de juiste categorie, namelijk de categorie die in het vorige hoofdstuk is aangemaakt.<br><br>- **Is visible in navigation (7):** vink dit selectievakje aan om de pagina zichtbaar te maken in de webshop.<br><br>- **Submit (8):** klik op de knop 'Submit' om de pagina aan te maken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/4.2.png"></details>|
|**3**|Via het potlood-icoontje (9) Open je Properties (10) dialoog van de zojuist aangemaakte pagina. Klik op de knop '*Vertalingen bewerken*' (11).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/4.3.png"></details>|
|**4**|Het vertaal dialoog wordt geopend. De ingestelde standaard taal (12) wordt aan de linkerkant getoond. Stel via de rechter dropdown (13) de taal in die je wilt toepassen/bewerken. Stel de volgende instellingen in:<br><br>- **URL (14)**: voer de vertalingen in voor het URL pad.<br><br>- **Weergave pagina naam (15)**: voer de vertalingen in voor de weergave naam van de pagina.<br><br>- **Bevestigen (16)**: Klik op '*Bevestigen*' om de wijzigingen op te slaan.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/4.4.png"></details>|
|**5**|Open het tabblad '*Visibility*' (17). Stel de volgende instellingen in:<br><br>- **Taal Zone Selectie (18)**: vink onder het dropdownmenu één of meerdere talen aan waaraan deze categorie gekoppeld moet worden. Onder Zone selectie (19) selecteer je een eigen gemaakte CMS Zone.<br><br>- **Geldig vanaf (20) en Geldig tot (21)**: onder 'Geldig vanaf' en 'Geldig tot' kunnen datums en tijden worden ingesteld waarop bovenstaande instellingen van toepassing zijn.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/4.5.png"></details>|
|**6**|In het tabblad '*SEO*' (22) kunnen instellingen met betrekking tot SEO (zoekmachineoptimalisatie) worden ingesteld. Hiermee kun je ervoor zorgen dat zoekmachines zoals Google jouw website sneller kunnen vinden. Meer informatie over SEO instellingen [vind je hier](#seo). Klik op '*Opslaan*' (23).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/4.6.png"></details>|
|**7**|Klik op 'Niet-opgeslagen wijzigingen' (24).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/4.7.png"></details>|
|**8**|Om de pagina te publiceren en dus live te kunnen gebruiken klik je op de knop 'Publish all' (25) of het publish-icoon (26). Vervolgens kun je het publiceren bevestigen door op 'Ja' (27) te klikken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/4.8.png"></details>|

---

### Footer bewerken

Bij het aanmaken van een nieuwe CMS-pagina wordt automatisch een container aangemaakt voor een footer. Een footer is het onderste gedeelte van een pagina. Elke CMS-pagina bevat standaard een footer. Wijzigingen die je in de footer maakt, worden over de gehele website zichtbaar. Meestal bevat een footer secundaire informatie zoals adresgegevens, links naar externe websites en sociale media. Het CMS biedt standaard een vooraf gedefinieerd footer-element.

Het is ook mogelijk om de footer volledig naar eigen wens te ontwerpen (zoals je in eerdere voorbeelden misschien al is opgevallen), op dezelfde manier als eerder aangemaakte elementen zoals carousels, tekstvakken en video’s. Het aanmaken van een footer werkt als volgt:

|Stap|Uitleg|
|:--|:--|
|**1**|Klik in de Navigator op het '+'-icoon van de '*Container (footer)*' (1). Het venster ‘Add Component’ wordt geopend. Navigeer via de categorie 'Templates' (2) naar Footer Template. Je kunt hier ook de zoekbalk voor gebruiken (3). Klik op het '+'-icoon (4) om het Template toe te voegen.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/14.1.png"></details>|
|**2**|Er wordt een standaard footer-element met vier kolommen toegevoegd. Twee kolommen bevatten een tekstvak (5). De laatste kolom bevat iconen voor sociale media ([SocialIcons Component](#social-icons)) (6).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/14.2.png"></details>|
|**3**|Zoals eerder beschreven is het mogelijk om de footer volledig naar eigen wens vorm te geven. Dit werkt op dezelfde manier als het aanmaken/bewerken van andere elementen zoals carousels, tekstvakken en video’s.<br>Wanneer alle gewenste elementen op de pagina staan kan de beheeromgeving worden afgesloten.|
|**4**|Klik op het menu-icoon (7) en vervolgens onderin op het sluit-icoon (8) om de beheeromgeving af te sluiten. De webshop keert nu terug naar de normale weergave zoals klanten deze ook zien.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/14.4.png"></details>|

---

### Templates

Met templates kun je gemakkelijk terug vallen op content wat je eerder hebt gebouwd met het CMS. Dit kunnen kleine blokken met inhoud zijn, maar ook complete pagina's. Hierdoor hoef je steeds opnieuw te beginnen met het bouwen van dezelfde content.

Ook kun je templates gemakkelijk inzetten voor [Blog componenten](#blog) om dynamisch content in te laden en gebruik je het [Frame component](#frame) om een template in te laden die op meerdere plekken inzetbaar is en vervolgens reageert op een wijziging binnen het template.

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer via Content management (1) naar Templates (2)<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.1.png"></details>|
|**2**|Klik vervolgens op het '+'-icoon om te starten met het aanmaken van een nieuw template (3). <details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.2.png"></details>|
|**3**|Er wordt een dialoog geopend. Vul hier een naam (4) in voor het nieuwe template, beschrijving (5), een categorie (6) of maak een nieuwe categorie aan. In dit geval hebben wij een nieuwe categorie aangemaakt en deze 'standaard blokken' genoemd (7). Vervolgens klik je op 'Opslaan' (8). De Template editor zal nu worden geopend. <details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.3.png"></details>|
|**4**|In de Template-edtor kun je CMS elementen toevoegen zoals je dat ook gewend bent in elke andere CMS pagina. Activeer in dit scherm ook de CMS-editor (9) en klik op het '+'-icoon (10). Het componenten dialoog zal nu worden geopend.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.4.png"></details>|
|**5**|Vervolgens heb je de mogelijkheid om CMS elementen toe te passen in het Template. Om te beginnen bijvoorbeeld met een [Panel](#panel) (11).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.5.png"></details>|
|**6**|In het [Panel component](#panel) hebben wij twee [Tekst componenten](#text) geplaatst als voorbeeld (12). Wanneer je tevreden bent over het template kun je deze opslaan (13).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.6.png"></details>|
|**7**|Klik vervolgens op 'Ja' (14) om het opslaan te bevestigen. Je kunt achteraf altijd het template nog bewerken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.7.png"></details>|
|**8**|Na het opslaan keer je terug op het Templates-scherm. Via de dropdownmenu (15) kun je gemakkelijk het zojuist aangemaakt categorie selecteren. Hiermee zie je gelijk hoeveel templates je onder deze categorie hebt gemaakt. Handig om bijvoorbeeld vooruit te werken op speciale dagen zoals Moderdag en/of Kerst! Navigeer terug naar de Homepagina (16) om het template te plaatsen op de pagina.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.8.png"></details>|
|**9**|Nu je weer terug bent op de Homepagina kun je via het componenten dialoog naar 'Templates' (17), Template categorie (18) het zojuist gebouwde template op de pagina plaatsen (19). <details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.9.png"></details>|
|**10**|Het template (20) zal nu zichtbaar zijn op jouw CMS pagina. Vervolgens kun je hier nog wijzigingen in aanbrengen en vervolgens publiceren, zonder dat je alles opnieuw hebt hoeven bouwen. <details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.10.png"></details>|
|**11**|We hebben nu vrij eenvoudig een template gebouwd, maar Templates zijn een stuk breder inzetbaar. Wanneer je geheel eigenhandig een pagina of een sectie hebt gebouwd die je graag wilt hergebruiken zijn Templates ook de perfecte oplossing! Via een rechtermuisklik op de Navigator kun je jouw gehele pagina of sectie (21) (in dit geval 'Panel (hero)') opslaan als Template (22).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.11.png"></details>|
|**12**|Vervolgens vul je in het dialoog de naam (23), beschrijving (24) en eventuele categorie (25) in en klik je op 'Opslaan' (26). <details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/6.12.png"></details>|

---

## Geavanceerd

### Thema Configuratie

In dit configuratie scherm stel je de huisstijl kleuren in van je shop, bepaal je welk font er getoond moet worden en kunnen er meerdere opties worden ingesteld om de shop visueel net iets meer aan te laten sluiten aan jouw wensen.

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer via Configuratie (1), Thema, naar Thema Configuratie (2)<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/7.1.png"></details>|
|**2**|Klik vervolgens op het '+'-icoon om te starten met het aanmaken van een nieuw thema (3). Er wordt een dialoog geopend. Vul hier een naam (4) in voor het nieuwe thema. Zorg ervoor dat er GEEN spaties in het thema naam worden gebruikt. Selecteer een template die na het aanmaken direct wordt ingeladen. Wij raden aan om hier het Starterkit thema voor aan te houden voor een visueel fijnere look-and-feel in de shop (5). Maak vervolgens het thema aan (6).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/7.2.png"></details>|
|**3**|Het thema is nu aangemaakt en verschijnt er een grote lijst met informatie. Hier in worden kleuren, fonts, lettergroottes en overige styling opties bepaalt wat invloed heeft op de uiterlijk van jouw shop. 90% van deze instellingen staan al goed ingesteld voor je thema, maar kun je alsnog zelf de lijst doorlopen om bepaalde instellingen aan te passen. Wel kan het helpen om hier enige CSS kennis van te hebben voor sommige (meer geavancerde) opties.<br><br>Na het wijzigen van thema instellingen dien je dit ten alle tijden op te slaan via de opslaan knop (10). Na het aanmaken van het thema is opslaan dus ook het eerste wat je doet voordat je wijzigingen maakt.<br><br>**7 - Voorvertoning**: Via deze knop open je een voorvertoning van je shop. Deze zal de informatie van jouw nieuwe thema tonen zodat je sneller de effecten op je shop kunt zien na een wijziging. De voorvertoning zal wijzigen nadat je het thema opslaat.<br><br>**8 - Recompile**: Met deze functie kun je een check uit laten voeren of alle informatie wel netjes zijn ingevuld. Zodra er foutieve waardes zijn ingevuld zal er een dialoog getoond worden met een omschrijving waar de fout zich bevindt in jouw thema.<br><br>**9 - Log**: Toont een log van wijzigingen die gemaakt zijn in het thema.<br><br>**10 - Opslaan**: Sla gemaakte wijzigingen in het thema op via deze knop om deze zichtbaar te maken in de live-omgeving.<br><br>**11 - Download thema**: Via deze knop download je het geselecteerde thema (15). Er zal een .scss-bestand worden gedownload die je bijvoorbeeld in een ander nieuw thema weer kunt uploaden (13).<br><br>**12 - Laatste foutmelding**: Checkt of er een foutmelding actief is in jouw thema.<br><br>**13 - Thema uploaden**: Zoals aangegeven bij 'Download thema' (11) kun je via deze knop een gedownload thema uploaden. LET OP: door een gedownload thema bestand te uploaden overschrijf je bestaande gegevens in het geselecteerde thema (15).<br><br>**14 - Nieuw thema aanmaken**: Maak een nieuw thema aan.<br><br>**15 - Selecteer thema**: Via deze dropdown kun je het thema kiezen die je graag wilt wijzigen.<br><br>**16 - Geavanceerde instellingen**: Wanneer deze optie wordt aangevinkt zullen er veel meer opties zichtbaar worden in de lijst waardoor je meer in detail aanpassingen in je shop kunt aanbrengen. LET OP: Dit zijn instellingen waarbij kennis van CSS noodzakelijk kan zijn.<br><br>**17 - Zoeken op sectie**: Zoek een optie op sectie niveau. De sectie namen vindt je aan de linker kant in het overzicht. Namen die hier in voor komen zijn: GENERAL, STOCK, LOGIN, ACCOUNT, GALLERY, HEADER, FOOTER, HOME, NAVIGATION en SHOPPING-CART.<br><br>**18 - Zoeken op naam**: Zoek een optie op naam.<br><br>**19 - Refresh**: Herlaadt het thema. Dit kun je uiteraard ook doen door de browser te herladen.<br><br>**20 - Optie terugzetten naar begin waarde**: Deze knop zorgt ervoor dat de waarde van deze optie wordt teruggezet naar de oorspronkelijke staat. De optie wordt ge-reset.<br><br>**21 - Synchroniseer met alle thema's**: De ingestelde en opgeslagen optie kan via deze knop worden doorgevoerd over alle beschikbare thema's. LET OP: Deze actie kan niet ongedaan gemaakt worden.<br><br>**22 - Optie bewerken**: Opent een dialoog waarbij je een wijziging kunt doorvoeren.<br><br>**23 - Primaire kleur**: Dit is de belangrijkste kleur van jouw shop. Wanneer deze kleur wordt gewijzigd zal dit voor een groot deel van je shop zichtbaar worden.<br><br>**14 - Secundaire kleur**: Dit is de op een na belangrijkste kleur van jouw shop. Wanneer deze kleur wordt gewijzigd zal dit voor een groot deel van je shop zichtbaar worden.<br><br>Nadat je de wijzigingen hebt doorgevoerd voor je nieuwe thema klik je op 'Opslaan' (10).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/7.3.png"></details>|
|**4**|Om een Google font in te laden kun je dit doen om via 'Configuratie' (25) naar de webshop instellingen (26) te navigeren. In het overzicht zoek je op GOOGLEFONTSHREF. Klik op deze setting. Vervolgens kom je op de pagina waarbij je deze setting kunt wijzigen (27). Vul de link in die je uit [Google Fonts](https://fonts.google.com/) kunt kopieren zoals *https://fonts.googleapis.com/css2?family=[FONTNAAM]:ital,wght@0,400;0,700;1,400;1,700&display=swap* en plak deze in het dialoog (28). Vervolgens sla je dit op (29). Wanneer je nu in het thema onder de naam *body-font-family* het Google font invult zoals *"[FONTNAAM]", sans-serif* en het thema vervolgens opslaat zal jouw shop nu het gewenste Google font tonen in de shop.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/7.4.png"></details>|

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

## Row/Column

Een CMS-pagina maakt gebruik van rijen en kolommen voor de uitlijning op verschillende apparaten (pc, laptop, smartphone en tablet). In dit hoofdstuk wordt uitgelegd hoe je een rij aanmaakt. Elk CMS-element moet zich in een kolom bevinden, en elke kolom bevindt zich weer in een rij. Dit betekent dat elke pagina in feite bestaat uit een soort raster, vergelijkbaar met een spreadsheetprogramma zoals Microsoft Excel.

*Volg onderstaande stappen:*

|Stap|Uitleg|
|:--|:--|
|**1**|Log in op de webshop met een beheerdersaccount.|
|**2**|Activeer de ‘Management’-omgeving van de webshop door op het gebruikersicoon (1) te klikken. Dit opent een dropdownmenu. Klik vervolgens op de optie Management (2).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.2.png"></details>|
|**3**|Onderin uw scherm kunt u de CMS editor (3) inschakelen. U kunt nu beginnen met bewerken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.3.png"></details>|
|**4**|Klik op het '+'-icoon (4) of rechtermuisklik op het bovenste element van de Navigator (5) om het '*Componenten dialoog*' te openen. Via de Template knop (6) open je ook het dialoog, maar is de Template categorie gelijk voor je geopend.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.4.png"></details>|
|**5**|Gebruik de zoekfunctie (7) om te zoeken naar '*Row*'. Klik op het plusteken (+) onder het item '*Row*' (8).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.5.png"></details>|
|**6**|De Row wordt direct aangemaakt op je pagina en geeft gelijk de optie om 1 of meerdere kolommen toe te voegen. In dit voorbeeld kiezen wij voor een structuur van 3 kolommen naast elkaar (9).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.6.png"></details>|
|**7**|Selecteer een kolom via de Navigator (10). In het scherm met kolominstellingen kun je in het tabblad *Properties* (11) het volgende doen:<br><br>De schuifregelaars bepalen de uitlijning van CMS-elementen op apparaten met verschillende schermgroottes zoals pc’s/laptops, tablets en smartphones.<br><br>De totale breedte van elk scherm bestaat maximaal uit twaalf fictieve kolommen. Dit betekent dat een element minimaal één en maximaal twaalf kolommen breed kan zijn. Dit geldt voor alle apparaten zoals pc’s, laptops, tablets en smartphones.<br><br>De bovenste schuifregelaar geldt voor pc’s en laptops. De middelste is voor tablets en de onderste voor smartphones.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.7.png"></details>|
|**8**|Open het tabblad '*Styling*' (12). De styling is optioneel, maar de volgende instellingen kunnen worden aangepast:<br><br>Kies een achtergrondkleur via het dropdownmenu 'Background' (13). Er verschijnt een kleurenkiezer waarin een kleur geselecteerd kan worden. Klik op ‘SAVE’ in de kleurenkiezer om de gekozen kleur toe te passen.<br><br>Kies bij ‘Height’ (14) voor 'Auto' of een vaste hoogte in Px (pixels), Rem (relatief aan lettergrootte) of percentages. Het wordt aanbevolen om 'Auto' te gebruiken. De kolom wordt dan automatisch zo hoog als nodig is voor de inhoud.<br><br>Bij 'Margin' (15) kan een waarde worden ingevuld voor de marge (witruimte) rondom de kolom. Hier kan een waarde ingevuld worden direct voor alle zijdes, of kan er ook per zijde apart een waarde worden ingevuld.<br><br>Standaard wordt Px (pixels) gebruikt als eenheid. Daarnaast is het ook mogelijk om ‘Rem’ of ‘Percent’ te kiezen en zijn zelfs naast waardes zoals 'auto' of 'unset' ook millimeters (mm) en centimeters (cm) mogelijk.<br><br>Padding (16) bepaalt de ruimte aan de binnenkant van de kolom. Deze instellingen werken volgens hetzelfde principe als ‘Margin’.<br><br>Overflow (17) bepaalt of elementen die buiten de kolom treden wel -of niet zichtbaar zijn. Standaard staat deze ingesteld op 'Visible'.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.8.png"></details>|
|**9**|Open het tabblad '*Advanced*' (18). Het tabblad 'Advanced' geeft je de mogelijkheid om extra classes en ID's mee te geven aan een component. Onder 'Identificatie naam' (19) kun je je bijvoorbeeld een naam meegeven per component, om zo meer structuur aan te brengen in de Navigator (20).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.9.png"></details>|
|**10**|Open het tabblad '*Visibility*' (21).Het tabblad 'Visibility' werkt hetzelfde als bij het aanmaken van pagina’s en categorieën. Zie hoofdstuk drie voor meer informatie over de beschikbare instellingen in het tabblad ‘Visibility’. Klik na het instellen van de juiste instellingen op de knop 'Save' (22) om de kolom in het CMS op te slaan en klik op 'Publiceren' (23) om de wijzigingen live te zetten.<br>**Je kunt later altijd nog aanpassingen doen.**<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.10.png"></details>|

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

## Bullet list/Bullet

| Onderdeel | Beschrijving |
|---|---|
| Bullet list | Deze beschrijving wordt aangevuld |

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