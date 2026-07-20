<img src="fslogo.png">

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
- [Row/Column](#rowcolumn)
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
- [Formulier](#formulier-1)
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
|**3**|Het thema is nu aangemaakt en verschijnt er een grote lijst met informatie. Hier in worden kleuren, fonts, lettergroottes en overige styling opties bepaalt wat invloed heeft op de uiterlijk van jouw shop. 90% van deze instellingen staan al goed ingesteld voor je thema, maar kun je alsnog zelf de lijst doorlopen om bepaalde instellingen aan te passen. Wel kan het helpen om hier enige CSS kennis van te hebben voor sommige (meer geavancerde) opties.<br><br>Na het wijzigen van thema instellingen dien je dit ten alle tijden op te slaan via de opslaan knop (10). Na het aanmaken van het thema is opslaan dus ook het eerste wat je doet voordat je wijzigingen maakt.<br><br>**7 - Voorvertoning**: Via deze knop open je een voorvertoning van je shop. Deze zal de informatie van jouw nieuwe thema tonen zodat je sneller de effecten op je shop kunt zien na een wijziging. De voorvertoning zal wijzigen nadat je het thema opslaat.<br><br>**8 - Recompile**: Met deze functie kun je een check uit laten voeren of alle informatie wel netjes zijn ingevuld. Zodra er foutieve waardes zijn ingevuld zal er een dialoog getoond worden met een omschrijving waar de fout zich bevindt in jouw thema.<br><br>**9 - Log**: Toont een log van wijzigingen die gemaakt zijn in het thema.<br><br>**10 - Opslaan**: Sla gemaakte wijzigingen in het thema op via deze knop om deze zichtbaar te maken in de live-omgeving.<br><br>**11 - Download thema**: Via deze knop download je het geselecteerde thema (15). Er zal een .scss-bestand worden gedownload die je bijvoorbeeld in een ander nieuw thema weer kunt uploaden (13).<br><br>**12 - Laatste foutmelding**: Checkt of er een foutmelding actief is in jouw thema.<br><br>**13 - Thema uploaden**: Zoals aangegeven bij 'Download thema' (11) kun je via deze knop een gedownload thema uploaden. LET OP: door een gedownload thema bestand te uploaden overschrijf je bestaande gegevens in het geselecteerde thema (15).<br><br>**14 - Nieuw thema aanmaken**: Maak een nieuw thema aan.<br><br>**15 - Selecteer thema**: Via deze dropdown kun je het thema kiezen die je graag wilt wijzigen.<br><br>**16 - Geavanceerde instellingen**: Wanneer deze optie wordt aangevinkt zullen er veel meer opties zichtbaar worden in de lijst waardoor je meer in detail aanpassingen in je shop kunt aanbrengen. LET OP: Dit zijn instellingen waarbij kennis van CSS noodzakelijk kan zijn.<br><br>**17 - Zoeken op sectie**: Zoek een optie op sectie niveau. De sectie namen vindt je aan de linker kant in het overzicht. Namen die hier in voor komen zijn: GENERAL, STOCK, LOGIN, ACCOUNT, GALLERY, HEADER, FOOTER, HOME, NAVIGATION en SHOPPING-CART.<br><br>**18 - Zoeken op naam**: Zoek een optie op naam.<br><br>**19 - Refresh**: Herlaadt het thema. Dit kun je uiteraard ook doen door de browser te herladen.<br><br>**20 - Optie terugzetten naar begin waarde**: Deze knop zorgt ervoor dat de waarde van deze optie wordt teruggezet naar de oorspronkelijke staat. De optie wordt ge-reset.<br><br>**21 - Synchroniseer met alle thema's**: De ingestelde en opgeslagen optie kan via deze knop worden doorgevoerd over alle beschikbare thema's. LET OP: Deze actie kan niet ongedaan gemaakt worden.<br><br>**22 - Optie bewerken**: Opent een dialoog waarbij je een wijziging kunt doorvoeren.<br><br>**23 - Primaire kleur**: Dit is de belangrijkste kleur van jouw shop. Wanneer deze kleur wordt gewijzigd zal dit voor een groot deel van je shop zichtbaar worden.<br><br>**24 - Secundaire kleur**: Dit is de op een na belangrijkste kleur van jouw shop. Wanneer deze kleur wordt gewijzigd zal dit voor een groot deel van je shop zichtbaar worden.<br><br>Nadat je de wijzigingen hebt doorgevoerd voor je nieuwe thema klik je op 'Opslaan' (10).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/7.3.png"></details>|
|**4**|Om een Google font in te laden kun je dit doen om via 'Configuratie' (25) naar de webshop instellingen (26) te navigeren. In het overzicht zoek je op GOOGLEFONTSHREF. Klik op deze setting. Vervolgens kom je op de pagina waarbij je deze setting kunt wijzigen (27). Vul de link in die je uit [Google Fonts](https://fonts.google.com/) kunt kopieren zoals *https://fonts.googleapis.com/css2?family=[FONTNAAM]:ital,wght@0,400;0,700;1,400;1,700&display=swap* en plak deze in het dialoog (28). Vervolgens sla je dit op (29). Wanneer je nu in het thema onder de naam *body-font-family* het Google font invult zoals *"[FONTNAAM]", sans-serif* en het thema vervolgens opslaat zal jouw shop nu het gewenste Google font tonen in de shop.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/7.4.png"></details>|

---

### Backups

Werken in het CMS kan natuurlijk weleens mis gaan. Misschien heb je onbedoeld iets verwijderd wat niet terug te draaien is. Geen paniek, door middel van een backup is jouw CMS snel weer up and running!

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer via Content Management (CMS) (1) naar Backups (2).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/8.1.png"></details>|
|**2**|Wat je nu ziet is het overzichtspagina van alle backups. Elke dag wordt er automatisch een backup uitgevoerd, maar kun je ook zelf een backup opslaan via het '+'-icoon (3). Er wordt nu een dialoog geopend. Vul een beschrijving in voor je backup (4) en sla deze op (5). Het dialoog zal uit zichzelf verbergen nadat de backup voltooid is. Het maken van een backup kan soms ook even duren.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/8.2.png"></details>|
|**3**|Nu zien we dat de backup is aangemaakt en zal bovenin het overzicht zichtbaar worden (6). Mocht het nodig zijn om een backup terug te zetten kan er op de terugdraai-knop worden geklikt (7). De versie zal dan worden teruggezet naar deze backup. Backups kunnen ook worden verwijderd (8).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/8.3.png"></details>|

---

### Redirects

Wanneer je een bestaande link hebt waarvan je de url wilt aanpassen kan nadelig werken voor jouw SEO score op Google. Met behulp van redirects vertel jij aan Google dat de url gewijzigd is en gaat dit niet ten koste van jouw opgebouwde SEO score.

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer via Content Management (CMS) (1) naar Redirects (2).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/9.1.png"></details>|
|**2**|Je belandt nu op het redirect overzichtspagina. Via het '+'-icoon (3) kun je een nieuwe redirect aanmaken. Er wordt nu een dialoog geopend.<br><br>**4 - Redirect naam**: Vul een naam in voor je redirect.<br><br>**5 - Inkomende url**: Hier zet je het complete webadres in van je 'oude' url zoals *https://www.[jouwdomein].nl/oude-pagina*.<br><br>**6 - Uitgaande url**: Hier zet je het complete webadres in van je 'nieuwe' url zoals *https://www.[jouwdomein].nl/nieuwe-pagina*.<br><br>**7 - Redirect type**: Via deze dropdown om welk type redirect het gaat. **302** is tijdelijk (**Deze optie raden wij sterk aan**) en **301** is permanent en is dus moeilijk ongedaan te maken. LET OP: Hiervoor vergt voldoende kennis van het werken met redirects om ongewenst gedrag te voorkomen.<br><br>Sla vervolgens de redirect op (8).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/9.2.png"></details>|

---

### Niet opgeslagen wijzigingen

Nadat je wijziging maakt in jouw CMS pagina dien je dit vervolgens te publiceren. Dit scherm houdt bij wanneer er een wijzigingen worden gedaan op meerdere pagina's.

|Stap|Uitleg|
|:--|:--|
|**1**|In het voorbeeld hebben wij een Text component bewerkt op de Homepagina. Onderin beeld kleurt er nu een icoon oranje. Via dit icoon navigeer je de 'Niet opgeslagen wijzigingen'-pagina (1).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/10.1.png"></details>|
|**2**|Je bevindt je nu in het 'Niet opgeslagen wijzigingen'-pagina (2) waarin jouw wijzigingen per pagina (3) worden bijgehouden. Vervolgens kun je alle niet opgeslagen wijzigingen voor deze pagina ongedaan maken (4) of juist publiceren (5). Als je meerdere  pagina's hebt bewerkt worden die pagina's ook op dit scherm zichtbaar. Je kunt vervolgens voor alle pagina's alles in een keer ongedaan maken (6) of juist publiceren (7).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/10.2.png"></details>|

---

### Form tracking

Pagina's die een formulier bevatten kunnen worden bijgehouden in het Form Tracking scherm. In dit scherm kun je precies zien welke formulieren succesvol zijn verstuurd per debiteur. Ook formulieren die niet verstuurd zijn of fout zijn gegaan zijn gemakkelijk op deze pagina terug te vinden en is het tevens mogelijk om Excelbestanden op te slaan zodat de ingevulde data van meerdere debiteuren voor meerdere doeleinden kunnen worden gebruikt. Wel is het aan te raden om dit duidelijk te communiceren in jouw formulier door middel van een [checkbox](#checkbox) met de tekst: *Ik ga ermee akkoord dat mijn gegevens gebruikt mogen worden voor de verwerking van mijn verzoek.* i.v.m. privacy wetgeving.

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer via Content Management (CMS) (1) naar Form tracking (2).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/11.1.png"></details>|
|**2**|Je belandt nu op het Form tracking overzichtspagina.<br><br>**3 - Form subject or user**: Zoek naar een Formulier onderwerp (wat je kunt instellen in het [Formulier-component](#formulier)) of zoek naar een debiteur nummer.<br><br>**4 - Selecteer Formulier**: Via deze dropdown kies je welke data je per Formulier in wilt zien.<br><br>**5 - Status**: Via deze dropdown kun je inzien welke formulieren succesvol verstuurd zijn, geannuleerd of juist niet verstuurd zijn.<br><br>**6 - Download Excel**: Hiermee download je een Excel-bestand op basis van de geselecteerde data.<br><br>**7 - Refresh overzicht**: Via deze knop haalt het overzicht opnieuw alle data op.<br><br>**8 - Gegevens tabel**: Opent een dialoog waarin ingevulde data zichtbaar wordt.<br><br>**9 - Gebeurtenissen**: Hierin worden alle gebeurtenissen bijgehouden tijdens het invullen van een formulier.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/11.2.png"></details>|

---

### Component styles

Door gebruik te maken van componenten in het CMS kun je al mooie pagina's bouwen, maar wil je misschien soms net even je eigen CSS-draai eraan geven wat (nog) niet kan met onze huidige CMS opties. Dat kan met Component Styles. **LET OP: Deze vergt voldoende CSS kennis. Foutieve code kan negatief effect hebben op de prestaties van je shop.**

|Stap|Uitleg|
|:--|:--|
|**1**|In het voorbeeld hebben wij een [Panel](#panel) (1) component geselecteerd die wij graag een kleur verloop willen geven zodat de tekst beter leesbaar wordt, iets wat met de huidige CMS settings (nog) niet mogelijk is.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/12.1.png"></details>|
|**2**|Via Content Management (CMS) (2) navigeer je naar Component Styles (3). Het beheerscherm zal worden geopend. <details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/12.2.png"></details>|
|**3**|Maak een nieuw Component Style aan door op het '+'-icoon (4) te klikken. In het dialoog dat verschijnt vul je de naam (5) in van jouw Component Style. LET OP: Gebruik geen spaties voor deze naam. Klik vervolgens op de Bevestig knop (6).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/12.3.png"></details>|
|**4**|Nu wordt er een CSS-editor geopend waarin jij je eigen CSS styling kunt doorvoeren (7). In het voorbeeld hebben wij het kleurverloop toegepast. Vervolgens sla je de component Style op (8).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/12.4.png"></details>|
|**5**|Er komt nu een bevestigingsdialoog tevoorschijn. Klik op 'OK' (9) en navigeer vervolgens terug naar de Component Styles (10).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/12.5.png"></details>|
|**6**|We zien nu dat de Component Style die wij zojuist hebben aangemaakt zichtbaar is geworden in het overzicht. Tijd om de Component Style te activeren op een component!<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/12.6.png"></details>|
|**7**|Klik op het gewenste component in de editor of via de Navigator (13). Via de algemene settings tab van het component (14) open je de dropdown 'Component style' (15) en selecteer je vervolgens het zojuist aangemaakte Component Style (16).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/12.7.png"></details>|
|**8**|Vervolgens zie je direct het effect op het geselecteerde [Panel](#panel) component (17)<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/12.8.png"></details>|

---

### Kleurgroepen (Dashboards)

Dit onderdeel is nog in ontwikkeling

---

## Overig

### Media

| Onderdeel | Beschrijving |
|---|---|
| Media | Deze beschrijving wordt aangevuld |

---

### Documenten

| Onderdeel | Beschrijving |
|---|---|
| Documenten | Deze beschrijving wordt aangevuld |

---

### Links

| Onderdeel | Beschrijving |
|---|---|
| Links | Deze beschrijving wordt aangevuld |

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

## Vertalingen

| Onderdeel | Beschrijving |
|---|---|
| Vertalingen | Deze beschrijving wordt aangevuld |

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
|**10**|Open het tabblad '*Visibility*' (21).Het tabblad 'Visibility' werkt hetzelfde als bij het aanmaken van pagina’s en categorieën. Zie hoofdstuk [Zichtbaarheid](#zichtbaarheid) voor meer informatie over de beschikbare instellingen in het tabblad ‘Visibility’. Klik na het instellen van de juiste instellingen op de knop 'Save' (22) om de kolom in het CMS op te slaan en klik op 'Publiceren' (23) om de wijzigingen live te zetten.<br>**Je kunt later altijd nog aanpassingen doen.**<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="../.Quickstart manual webshop add on CMS 2.0/media/6.10.png"></details>|

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

Stel een dynamisch formulier samen dat flexibel kan worden ingericht op basis van de gewenste invoervelden.

Verstuur de ingevulde gegevens naar één of meerdere e-mailadressen en stel een automatische bevestigingsmail in voor de afzender. Voorkom spam door gebruik te maken van reCAPTCHA. Daarnaast is er een optie beschikbaar genaamd **Botpreventiemodus**, waarbij een verborgen invoerveld wordt toegevoegd om bots te detecteren en tegen te houden.

De gegevens van een nieuwe klant kunnen optioneel als Excel-bestand worden meegestuurd, zodat deze eenvoudig in de backoffice kunnen worden geïmporteerd.

In een Formulier kunnen bijvoorbeeld ook componenten als [Rows/Columns](#rowcolumn) worden geplaatst, zodat je het formulier overzichterlijk kunt inrichten.

*Volg onderstaande stappen:*

|Stap|Uitleg|
|:--|:--|
|**1**|In dit voorbeeld werken we op een contact-[pagina](#pagina) en willen we een formulier toevoegen. Klik in de [Navigator](#navigator) op het '+'-icoon achter het [Panel](#panel)-component (1). Het [Componenten dialoog](#componenten-dialoog) wordt nu geopend.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/52.1.png"></details>|
|**2**|Navigeer in het dialoog naar de categorie **Formulier** (2) en voeg via het '+'-icoon het **Formulier**-component toe aan de pagina (3).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/52.2.png"></details>|
|**3**|Het **Formulier**-component is nu zichtbaar (4) in de Navigator en kan direct worden ingesteld via het tabblad **Algemene instellingen** (5). Via **Vertalingen bewerken** (6) kunnen teksten voor meerdere talen worden ingevoerd. Meer informatie hierover vind je bij [Vertalingen](#vertalingen).<br><br>Vul vervolgens het **E-mailonderwerp** (7) van het formulier in. Dit is de onderwerpregel van de e-mail die wordt verzonden naar de adressen die je invult onder **Ontvangers** (8). Via de toevoegknop (9) kun je meerdere e-mailadressen toevoegen.<br><br>Om spam zoveel mogelijk te voorkomen kun je **Botpreventiemodus** (10) inschakelen. Hiervoor zijn de volgende opties beschikbaar:<br><br>**Geheim invoerveld**: Voegt een verborgen invoerveld toe dat voor bezoekers niet zichtbaar is. Wanneer dit veld toch wordt ingevuld (meestal door een bot), wordt het formulier niet verzonden.<br><br>**Tijd gebaseerd**: Bots versturen formulieren vaak binnen enkele milliseconden. Wanneer een formulier sneller dan de ingestelde tijd (standaard 3 seconden) wordt verzonden, wordt de verzending geblokkeerd.<br><br>Heb je een eigen Google-account? Dan kun je ook **Google reCAPTCHA** (11) inschakelen. Volg hiervoor onderstaande stappen:<br><br>**Google reCAPTCHA configureren**<br><br>1. Log in op je Google-account.<br>2. Heeft het Google-account nog geen project? Maak er dan één aan via: https://console.cloud.google.com/projectcreate.<br>3. Maak een nieuwe reCAPTCHA-instantie aan via: https://www.google.com/recaptcha/admin/create.<br>3a. Vul bij **Label** een herkenbare naam in, bijvoorbeeld: *[Bedrijfsnaam] ReCAPTCHA*.<br>3b. Laat het type staan op **Score based (v3) - Verify requests with a score**. Dit type wordt ondersteund door de webshop.<br>3c. Voeg bij **Domains** jouw domeinnaam toe, bijvoorbeeld: *jouwdomein.nl*.<br>3d. Selecteer het zojuist aangemaakte of een bestaand Google Cloud Project.<br>3e. Klik op **Submit**.<br>4. Op de volgende pagina worden de **Site Key** en **Secret Key** getoond. Bewaar deze goed.<br>5. *(Optioneel)* Klik op **View in Cloud Console** om de beheeromgeving van de reCAPTCHA-instantie te openen.<br>6. Configureer vervolgens de volgende webshopinstellingen:<br>6a. **RECAPTCHAACTIEF** → inschakelen.<br>6b. **RECAPTCHASITEKEY** → vul hier de Site Key in.<br>6c. **RECAPTCHASECRETKEY** → vul hier de Secret Key in.<br>7. Herstart de webshop nadat de instellingen zijn opgeslagen.<br>8. Schakel in de CMS-editmodus bij ieder formulier waarvoor je reCAPTCHA wilt gebruiken de optie **Gebruik ReCAPTCHA** in.<br>9. Sla het CMS op, publiceer de wijzigingen en vernieuw de pagina.<br>10. Google reCAPTCHA is nu actief. Tijdens het verzenden van formulieren analyseert Google onder andere het gedrag van de gebruiker, de browser en technische gegevens om een score te berekenen. Is deze score te laag, dan wordt het formulier niet verzonden en ontvangt de gebruiker een foutmelding.<br><br>**NB1:** Deze variant van reCAPTCHA gebruikt géén checkbox, maar bepaalt volledig op de achtergrond een score.<br>**NB2:** Op pagina's met formulieren verschijnt rechtsonder automatisch de melding **'Beveiligd met reCAPTCHA'**.<br><br>Formulieren kunnen ook met behulp van een XSL-template naar één of meerdere e-mailadressen worden verzonden. Zorg er in dat geval voor dat de SMTP-instellingen van de webshop correct zijn geconfigureerd en dat er een XSL-template (12) beschikbaar is voor het actieve thema. Hetzelfde geldt voor de **Autoreply XSL** (13). Lees [hier](#component-styles) (14) meer over het gebruik van Component Styles.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/52.3.png"></details>|
|**4**|Ook de bevestigingsopties (15) kunnen eenvoudig worden ingesteld. Via **Bevestigingsfeedback** (16) bepaal je of na het verzenden van het formulier een bedankbericht wordt getoond via **ShowDialog**, of dat de bezoeker wordt doorgestuurd naar een [CMS-pagina](#pagina). Wanneer **CMSPage** is geselecteerd, kies je via **CMS Page** (17) de gewenste pagina. Kies je voor **ShowDialog**, dan kun je een titel (18) en bericht (19) invullen die na een succesvolle verzending worden weergegeven.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/52.4.png"></details>|
|**5**|De instellingen onder **Mail naar afzender** (20) zijn van toepassing wanneer in het [Email input component](#email-input) de optie **Stuur bevestigingsmail** is ingeschakeld. Na het verzenden van het formulier ontvangt de afzender automatisch een bevestigingsmail. Vul hiervoor een titel (21) en bericht (22) in. In het bericht kunnen placeholders worden gebruikt, zoals **{{first_name}}** of **{{company_name}}**, zodat de e-mail persoonlijker wordt. Zorg er wel voor dat de gebruikte placeholders overeenkomen met de namen van de betreffende [invoervelden](#tekst-input). Vanuit privacyoogpunt wordt aanbevolen om een [checkbox](#checkbox) toe te voegen met de tekst: *Ik ga ermee akkoord dat mijn gegevens gebruikt mogen worden voor de verwerking van mijn verzoek.* Stel tot slot ook het onderwerp van de bevestigingsmail in (23).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/52.5.png"></details>|
|**6**|Via het tabblad [Styling](#styling) kun je kleuren en andere visuele instellingen van het formulier aanpassen.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/52.6.png"></details>|
|**7**|Via het tabblad [Geavanceerd](#5-geavanceerd) (25) zijn aanvullende technische instellingen beschikbaar. Zo kan het formulier via **ExcelAsMailAttachment** (26) als Excel-bijlage worden meegestuurd. De opties **Database** en **ExcelFile** slaan de gegevens op aan de serverzijde van de webshop. Ook kan hier de tijd (27) van de eerder beschreven **Tijd gebaseerd**-botpreventie worden ingesteld (in seconden). Optioneel kun je het formulier een naam geven (28), zodat deze overzichtelijk wordt weergegeven in het [Form Tracking-scherm](#form-tracking). Daarnaast kan, net als bij de algemene instellingen, een URL (29) worden ingesteld waarnaar de gebruiker na verzending wordt doorgestuurd. Wij raden aan om slechts één van deze twee doorstuurmogelijkheden te gebruiken. Tot slot kun je instellen dat alle invoervelden na verzending worden leeggemaakt (30) of het formulier in **Dummy**-modus (31) zetten voor testdoeleinden. De overige instellingen worden beschreven bij [Geavanceerd](#5-geavanceerd).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/52.7.png"></details>|
|**8**|Via het tabblad [Zichtbaarheid](#zichtbaarheid) bepaal je voor welke gebruikers het formulier zichtbaar is.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/52.8.png"></details>|

---

## Tekst input

Gebruik dit component om tekstuele gegevens in te voeren binnen een formulier.

*Volg onderstaande stappen (dit is een vervolg op de uitleg van [Formulier](#formulier-1)):*

|Stap|Uitleg|
|:--|:--|
|**1**|Nadat het [Formulier](#formulier-1) is aangemaakt en geconfigureerd, kunnen de invoervelden worden toegevoegd. In dit voorbeeld willen we een **Voornaam**- en **Achternaam**-veld naast elkaar plaatsen. Voeg hiervoor eerst een [Row en Column](#rowcolumn) toe aan het formulier. Klik vervolgens op het '+'-icoon achter de **Column** (1). Het **Componenten dialoog** wordt nu geopend.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/53.1.png"></details>|
|**2**|Navigeer via de categorie **Formulier** (2) naar het **Tekst input**-component (3) en voeg dit toe aan de **Column** (4).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/53.2.png"></details>|
|**3**|Het **Tekst input**-component (5) is nu toegevoegd aan de **Column** en direct zichtbaar in de editor (6). Open het tabblad **Algemene instellingen** (7) om het component te configureren.<br><br>**8 - Vertalingen bewerken:** Voeg vertalingen toe voor meerdere talen. Lees hier meer over bij [Vertalingen](#vertalingen).<br><br>**9 - InputName:** Dit veld wordt automatisch gevuld met een unieke waarde. **LET OP:** Zorg ervoor dat ieder invoerveld een unieke **InputName** heeft. Dubbele namen veroorzaken fouten bij het verzenden van het formulier. De **InputName** kan bovendien worden gebruikt voor placeholders in de bevestigingsmail of het bedankbericht van het [Formulier](#formulier-1).<br><br>**10 - Mandatory:** Geef aan of dit een verplicht invoerveld is.<br><br>**11 - RegexErrorText:** Vul hier de foutmelding in die wordt weergegeven wanneer de ingevoerde waarde niet aan de validatie voldoet.<br><br>**12 - GeneralRegex:** Selecteer een standaardvalidatie, bijvoorbeeld voor een e-mailadres of telefoonnummer.<br><br>**13 - Multiline:** Schakel deze optie in om een groter tekstveld (textarea) te tonen waarin bezoekers langere berichten kunnen invoeren.<br><br>**14 - Label:** De tekst die boven het invoerveld wordt weergegeven.<br><br>**15 - CharacterRange:** Stel het minimale en/of maximale aantal toegestane tekens in.<br><br>**16 - Placeholder:** De tekst die in het invoerveld wordt weergegeven totdat de gebruiker begint met typen.<br><br>**17 - Component Styles:** Lees hier meer over bij [Component Styles](#component-styles).<br><br>Meer informatie over de tabbladen [Styling](#4-styling) (18), [Geavanceerd](#5-geavanceerd) (19) en [Zichtbaarheid](#6-zichtbaarheid) (20) vind je in de desbetreffende hoofdstukken.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/53.3.png"></details>|
|**4**|Nu de structuur **Row → Column → Tekst input** is aangemaakt, kun je eenvoudig extra invoervelden toevoegen door met de rechtermuisknop op de **Column** (21) te klikken en **Dupliceren** (22) te kiezen.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/53.4.png"></details>|
|**5**|Er wordt direct een tweede **Column** toegevoegd met dezelfde inhoud (23). Selecteer vervolgens het nieuwe **Tekst input**-component via de editor (23) of de Navigator (24). Geef de **InputName** een nieuwe, unieke waarde (25) en pas de **Placeholder** (26) en eventueel het **Label** aan.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/53.5.png"></details>|

---

## Email input

Dit invoerveld accepteert alleen geldige e-mailadressen. Daarnaast kan worden ingesteld dat automatisch een bevestigingsmail wordt verzonden naar het ingevulde e-mailadres. De inhoud van deze e-mail kan worden ingesteld in het [Formulier](#formulier-1)-component.

*Volg onderstaande stappen (dit is een vervolg op de uitleg van [Tekst Input](#tekst-input)):*

|Stap|Uitleg|
|:--|:--|
|**1**|Bij het [Tekst Input](#tekst-input)-component hebben we ervoor gezorgd dat een voor- en achternaam kan worden ingevuld. In deze stap voegen we een e-mailveld toe aan het [Formulier](#formulier-1). Klik hiervoor op het '+'-icoon achter het formulier (1).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/54.1.png"></details>|
|**2**|Navigeer via de categorie **Formulier** (2) naar het **Email input**-component (3) en voeg dit toe aan het **Formulier** (4).<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/54.2.png"></details>|
|**3**|Het **Email input**-component (5) is nu toegevoegd aan het **Formulier** en direct zichtbaar in de editor (6). Open het tabblad **Algemene instellingen** (7) om het component te configureren.<br><br>Zorg er ook bij dit component voor dat de **InputName** (8) een unieke waarde heeft, zoals beschreven bij [Tekst Input](#tekst-input).<br><br>Het **Email input**-component bevat grotendeels dezelfde instellingen als het **Tekst input**-component, maar heeft één aanvullende belangrijke optie: **Stuur bevestigingsmail** (9). Wanneer deze optie wordt ingeschakeld, wordt het ingestelde bevestigingsbericht uit de instellingen van het [Formulier](#formulier-1) automatisch verzonden naar het ingevulde e-mailadres.<br><br>**LET OP:** Wanneer het bevestigingsbericht niet is ingevuld, maar de optie **Stuur bevestigingsmail** wel is ingeschakeld, wordt er een lege e-mail naar de afzender verzonden.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/54.3.png"></details>|

---

## Nummer input

Gebruik dit component binnen een formulier wanneer er uitsluitend numerieke waarden mogen worden ingevoerd.

De werking en beschikbare instellingen van dit component komen grotendeels overeen met het [Tekst input](#tekst-input)-component.

---

## Bestand input

Met dit component kan de gebruiker bestanden uploaden die worden meegestuurd met het formulier.

Ondersteunde bestandsformaten:
*.jpg; *.png; *.jpeg; *.doc; *.docx; *.pdf; *.mkv; *.mp4; *.wmv; *.txt; *.avi; *.svg; *.wav; *.xls; *.rtf

De werking en beschikbare instellingen van dit component komen grotendeels overeen met het [Tekst input](#tekst-input)-component.

---

## Checkbox

Met dit component voeg je een selectievakje toe aan een formulier. Dit kan bijvoorbeeld worden gebruikt om bezoekers akkoord te laten gaan met de algemene voorwaarden, het privacybeleid of om toestemming te geven voor de verwerking van persoonsgegevens.

De werking en beschikbare instellingen van dit component komen grotendeels overeen met het [Tekst input](#tekst-input)-component.

> **Tip:** Voor een overzichtelijkere weergave in de verzonden e-mail raden wij aan om het [Multiple choice](#multiple-choice)-component te gebruiken. Dit component toont de geselecteerde optie netter en biedt daarnaast meer functionaliteit.

|Stap|Uitleg|
|:--|:--|
|**1**|Het **Checkbox**-component bevat grotendeels dezelfde instellingen als het **Tekst input**-component, maar beschikt over één aanvullende optie: **Checked on start** (1). Wanneer deze optie is ingeschakeld, is de checkbox standaard aangevinkt zodra het formulier wordt geladen.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/57.1.png"></details>|

---

## Radio button

Gebruik dit component binnen een formulier om bezoekers één keuze te laten maken uit meerdere beschikbare opties. Elke optie wordt als een afzonderlijke radio button toegevoegd, waarbij slechts één optie tegelijk kan worden geselecteerd.

De werking en beschikbare instellingen van dit component komen grotendeels overeen met de [Tekst input](#tekst-input)- en [Checkbox](#checkbox)-componenten.

> **Tip:** Voor een overzichtelijkere weergave in de verzonden e-mail raden wij aan om het [Multiple choice](#multiple-choice)-component te gebruiken. Dit component toont de geselecteerde optie netter en biedt daarnaast meer functionaliteit.

---

## Multiple choice

Gebruik dit component om bezoekers één of meerdere keuzes uit een lijst met opties te laten maken.

Afhankelijk van de gekozen modus worden de opties weergegeven als:

- **Checkboxes** – wanneer meerdere opties geselecteerd mogen worden.
- **Radio buttons** – wanneer slechts één optie geselecteerd mag worden.

Bij het verzenden van het formulier worden alleen de geselecteerde opties opgenomen in de bevestigingsmail.

De werking en beschikbare instellingen van dit component komen grotendeels overeen met het [Tekst input](#tekst-input)-component.

|Stap|Uitleg|
|:--|:--|
|**1**|Het **Multiple choice**-component bevat grotendeels dezelfde instellingen als het **Tekst input**-component, maar beschikt over twee aanvullende opties.<br><br>**1 - Options:** Voeg hier de beschikbare keuzes toe. Nieuwe opties kunnen eenvoudig worden toegevoegd via de knop **Toevoegen** (2).<br><br>**3 - Mode:** Bepaal hoe de opties worden weergegeven. Kies **Checkboxes** wanneer meerdere antwoorden mogelijk zijn, of **Radio buttons** wanneer slechts één antwoord geselecteerd mag worden.<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src="media/59.1.png"></details>|

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
