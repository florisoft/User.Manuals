<img src="../../fslogo.png"/>

# FloriShop handleiding Analyse

# Inhoudsopgave

[1 Inleiding](#inleiding)

[2 Google Analytics instellen](#google-analytics-instellen)

[3 Google Tag Manager instellen](#google-tag-manager-instellen)

[4 Webshop instellingen wijzigen](#webshop-instellingen-wijzigen)

[5 Praktische werking add on Analyse](#praktische-werking-add-on-analyse)

[6 Overige webshop add ons](#overige-webshop-add-ons)

# 1 Inleiding

Welkom bij de handleiding Analsye van FloriShop. De add on Analyse geeft
gebruikers, met name beheerders en commerciële medewerkers, inzicht in
het gedrag van klanten op de webshop.

De add on werkt samen met Google Analytics en Google Tag Manager. Dit
zijn twee gratis te gebruiken diensten van Google om informatie over een
web applicatie inzichtelijk te maken met behulp van grafieken,
lijndiagrammen en andere statistische elementen. Deze elementen worden
gezamenlijk weergegeven op een dashboard, zodat alle relevante
informatie overzichtelijk in één scherm wordt weergegeven.

Het doel van deze handleiding is dat de gebruiker zelf de add on Analyse
kan inrichten en gebruiken.

**Let op: afbeeldingen in deze handleiding kunnen enigszins verschillen
van wat u op uw eigen scherm ziet.**

**Met Google Analytics verzamelt u mogelijk privacy gevoelige informatie
van webshop gebruikers. Dit dient in overeenstemming te zijn met de
geldende AVG wetgeving of opgenomen te zijn in de leveringsvoorwaarden
van de klant. Hiervoor is de klant van Florisoft zelf
verantwoordelijk.**

**Florisoft is op geen enkele manier aansprakelijk voor evt. schade die
voortvloeit uit onrechtmatig gebruik van privacy gevoelige informatie
van klanten.**

# 2 Google Analytics instellen

De eerste stap bij het gebruik van de Analyse add on is het inrichten
van Google Analytics. Hiervoor zijn een aantal stappen vereist. Deze
worden hieronder beschreven.

**Let op: maak alleen een Google Account aan wanneer deze nog niet
bestaat. Mocht er al een Google account beschikbaar zijn, dan kan deze
gebruikt worden. Aangeraden wordt om zakelijke en privé accounts
gescheiden te houden.**


1. Zoek via Google naar ‘Google Analytics’ en login of maak een nieuw Google Account aan. Na de eerste keer inloggen bij Google Analytics verschijnt er een welkomstscherm.
2. Klik op de knop ‘Aanmelden’. (nr. 1) Het venster ‘Nieuw account’ verschijnt. <details><img src=".Handleiding webshop add on Analyse.docx\media\image2.png" style="width:3.4203in;height:1.41346in" /><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary></details>


Nu wordt gevraagd om een nieuw account aan te maken binnen Google
Analytics. De webshop wordt gekoppeld aan dit account. Op deze manier is
Google Analytics in staat om de webshop te monitoren binnen dit account.

> Het is mogelijk om meerdere web applicaties te monitoren binnen één
> Google Analytics omgeving. Iedere applicatie is gekoppeld aan een
> eigen account.

1. Kies bij ‘Wat wilt u graag bijhouden?’ voor website. (nr. 2)
2. Vul bij ‘Accountnaam’ een naam in voor het aan te maken account. (nr. 3) Dit mag iedere naam zijn. Aangeraden wordt om een duidelijke naam te bedenken die gerelateerd is aan de webshop, zodat duidelijk is dat dit account gebruikt in relatie tot de webshop.

<img src=".Handleiding webshop add on Analyse.docx\media\image3.png" style="width:5.78125in;height:5.21472in" />

1.  Vul bij ‘Websitenaam’ de naam van de web applicatie in. (nr. 4) Ook
    deze naam mag de gebruiker zelf bedenken. Aangeraden wordt om een
    duidelijke naam te kiezen die verband houdt met de webshop.

2.  Vul bij ‘URL van website’ het adres van de webshop in, zonder
    /FloriShop. Bijvoorbeeld: <http://www.domeinnaam.nl> (nr. 5) Op de
    plek van domeinnaam komt dan de domeinnaam waarop de webshop gehost
    wordt.

3.  Kies bij ‘Brancheorganisatie’ voor ‘Bedrijven en industrie.’ (nr. 6)

4.  Kies bij ‘Tijdzone voor rapportage’ (nr. 7) het land waar de
    webapplicatie gebruikt wordt. Kies Nederland met tijdzone
    (GMT+02:00) Amsterdam voor een Nederlandse webshop.

5.  Laat alle vinkjes in onderstaande screenshot aan staan.

<img src=".Handleiding webshop add on Analyse.docx\media\image4.png" style="width:5.84375in;height:4.81375in" />

1.  Klik op de knop ‘Tracking-ID ophalen’ (nr. 8) om de unieke ID (code)
    voor dit Google Analytics account op te halen. Lees verder op de
    volgende pagina.

Nu verschijnt er een venster met servicevoorwaarden. Dit ziet er als
volgt uit.

1.  Kies bij nr. 9 het land waarin Google Analytics gebruikt wordt.

2.  Zet een vinkje bij nr. 10 en 11 om de servicevoorwaarde te
    accepteren.

<img src=".Handleiding webshop add on Analyse.docx\media\image5.png" style="width:5.875in;height:5.23582in" />

1.  Klik op de knop ‘Ik ga akkoord’ (nr. 12) om verder te gaan. Lees
    verder op de volgende pagina.

De beheer omgeving van Google Analytics verschijnt. Sluit eventuele
welkomstberichten om in de beheeromgeving te kunnen werken.

In onderstaand screenshot is de Tracking ID paars omcirkeld. Een
tracking ID fungeert als een soort sleutel die gebruikt wordt om de web
applicatie (webshop) te koppelen aan Google Analytics.

**Let op: kopieer en plak de Tracking ID in een tekstbestand (kladblok)
of schrijf deze op. Het is belangrijk om deze Tracking ID te
onthouden.**

<img src=".Handleiding webshop add on Analyse.docx\media\image6.png" style="width:5.81188in;height:2.94374in" />

1.  Klik op het tandwiel (nr. 14) in de linkerbenedenhoek van de
    beheeromgeving om de instellingen voor dit account te openen.

<img src=".Handleiding webshop add on Analyse.docx\media\image7.png" style="width:2.79098in;height:1.86042in" />

1.  Klik in de kolom ‘Weergave’ op ‘Instellingen voor e-commerce’.
    (nr. 15)

<img src=".Handleiding webshop add on Analyse.docx\media\image8.png" style="width:5.78125in;height:2.71601in" />

1.  Zet ‘E-commerce inschakelen’ aan. (nr. 16) en klik op de knop
    ‘Opslaan’. (nr. 17)

<img src=".Handleiding webshop add on Analyse.docx\media\image9.png" style="width:5.77083in;height:3.01646in" />

Bovenin het scherm verschijnt de melding ‘Geslaagd’.

<img src=".Handleiding webshop add on Analyse.docx\media\image10.png" style="width:1.4377in;height:0.82303in" />

De laatste stap binnen Google Analytics bestaat uit het instellen van de
juiste valuta. Volg de stappen zoals hieronder beschreven om de valuta
correct in te stellen.

1.  Klik op het tandwiel (nr. 18) links onderin het scherm van de
    beheeromgeving om de instellingen te openen.

> <img src=".Handleiding webshop add on Analyse.docx\media\image11.png" style="width:1.5523in;height:1.91693in" />

1.  Klik in de kolom ‘Weergave’ op ‘Instellingen voor dataweergave’.
    (nr. 19)

<img src=".Handleiding webshop add on Analyse.docx\media\image12.png" style="width:3.7858in;height:2.16667in" />

1.  Stel de optie ‘Valuta weergeven als’ in op de gewenste valuta.
    (nr. 20)

<img src=".Handleiding webshop add on Analyse.docx\media\image13.png" style="width:1.69815in;height:0.61467in" />

1.  Klik op de knop ‘Opslaan’ onderin het venster ‘Instellingen voor
    dataweergave’.

<img src=".Handleiding webshop add on Analyse.docx\media\image14.png" style="width:1.79192in;height:0.8647in" />

Bovenin het scherm verschijnt de melding ‘Geslaagd’.

# 3 Google Tag Manager instellen 

Naast het instellen van Google Analytics dient ook Google Tagmanager
geconfigureerd te worden. Google Tagmanager is net als Analytics een
gratis te gebruiken software product van Google. Tagmanager wordt
gebruikt om vooraf bepaalde gebeurtenissen binnen de webshop af te
vangen en deze vervolgens door te sturen naar Google Analytics.

<img src=".Handleiding webshop add on Analyse.docx\media\image15.png" style="width:1.4375in;height:0.79028in" /><img src=".Handleiding webshop add on Analyse.docx\media\image16.png" style="width:1.4375in;height:0.79028in" /><img src=".Handleiding webshop add on Analyse.docx\media\image17.png" style="width:1.4375in;height:0.79028in" />

Hieronder worden de stappen beschreven om Google Tagmanager op een
juiste manier in te stellen.

1.  Zoek via Google naar Google Tag Manager.

2.  Log in bij Tag Manager met hetzelfde account wat gebruikt is voor
    Google Analytics. (nr. 1)

<img src=".Handleiding webshop add on Analyse.docx\media\image18.png" style="width:2.91667in;height:0.98974in" />

De startpagina van Tag Manager verschijnt.

1.  Klik op de link ‘Klik hier om een account aan te maken’ in het
    midden van het scherm.

<img src=".Handleiding webshop add on Analyse.docx\media\image19.png" style="width:1.82292in;height:1.32394in" />

Het scherm ‘Account toevoegen’ verschijnt. Zie volgende pagina.

1.  Vul bij ‘Accountnaam’ (nr. 3) een willekeurige naam in voor het aan
    te maken account. Aangeraden wordt om een duidelijke naam te kiezen
    in relatie tot de webshop, zodat deze gemakkelijk te herkennen is.

<img src=".Handleiding webshop add on Analyse.docx\media\image20.png" style="width:3.63486in;height:3.68194in" />

1.  Kies bij ‘ Land’ (nr. 4) voor het land waar de webshop draait. In
    dit voorbeeld is Nederland geselecteerd.

2.  Klik op de knop ‘Doorgaan’. (nr. 5) Stap 2 ‘Container’ instellen
    wordt actief. Zie onderstaand screenshot.

3.  Vul bij ‘Containernaam’ (nr. 6) de URL van de webshop in. (zonder
    /FloriShop) Bijvoorbeeld:
    [www.domeinnaam.nl](http://www.domeinnaam.nl), waarbij de domeinnaam
    vervangen dient te worden door de eigen domeinnaam.

<img src=".Handleiding webshop add on Analyse.docx\media\image21.png" style="width:3.61015in;height:2.1875in" />

1.  Kies bij ‘Waar wordt de container gebruikt’ voor ‘Internet’ (nr. 7).

2.  Klik op de knop ‘MAKEN’. (nr. 8)

3.  Accepteer de Serviceovereenkomst voor Google Tag Manager door het
    vinkje ‘Ik ga ook akkoord met de voorwaarden voor gegevensverwerking
    zoals vereist volgens de AVG.’

<img src=".Handleiding webshop add on Analyse.docx\media\image22.png" style="width:5.80208in;height:0.59927in" />

1.  Klik op de knop ‘JA’ in de rechterbovenhoek van het scherm.

<img src=".Handleiding webshop add on Analyse.docx\media\image23.png" style="width:1.73958in;height:0.63542in" />

Het venster ‘Google Tag Manager installeren’ verschijnt.

<img src=".Handleiding webshop add on Analyse.docx\media\image24.png" style="width:5.61439in;height:4.15in" />

Klik op de knop ‘OK’ om door te gaan. De beheer omgeving van Tag Manager
opent. Zie volgende pagina.

1.  Klik in de beheeromgeving van Tag Manager op ‘EEN NIEUWE TAG
    TOEVOEGEN’. (nr. 9)

<img src=".Handleiding webshop add on Analyse.docx\media\image25.png" style="width:3.08376in;height:1.63565in" />

Het venster om een nieuwe tag aan te maken verschijnt. Zie screenshot
hieronder.

1.  Vul bij nr. 10 de naam in voor de nieuw tag. Pagina weergave is een
    geschikte naam voor deze tag. Een andere naam is ook toegestaan.

<img src=".Handleiding webshop add on Analyse.docx\media\image26.png" style="width:1.73958in;height:1.35112in" />

1.  Klik op de link ‘Kies een type tag om het instellen te starten’.
    (nr. 11)

<img src=".Handleiding webshop add on Analyse.docx\media\image26.png" style="width:5.59569in;height:1.63542in" />

Het venster ‘Type tag kiezen’ verschijnt aan de rechterkant van het
scherm.

1.  Kies hier voor de optie ‘Google Analytics – Universal Analytics’.
    (nr. 12)

<img src=".Handleiding webshop add on Analyse.docx\media\image27.png" style="width:4.46875in;height:1.2359in" />

Het venster ‘Tagconfiguratie’ opent. Zie screenshot hieronder.

1.  Kies bij ‘Trackingtype’ voor de optie ‘Paginaweergave’. (nr. 13)

2.  Kies bij ‘Google Analytics-instellingen’ voor de optie ‘Nieuwe
    variabele’ (nr. 15)

<img src=".Handleiding webshop add on Analyse.docx\media\image28.png" style="width:4.13542in;height:4.16667in" />

Het venster ‘Variabele configuratie verschijnt’

1.  Geef de variabele een willekeurige naam. (nr. 16) Geadviseerd wordt
    om een duidelijke naam te kiezen, zodat de variabele te herleiden is
    tot de webshop van Florisoft.

<img src=".Handleiding webshop add on Analyse.docx\media\image29.png" style="width:3.66667in;height:0.64583in" />

Stel in het venster ‘Variabele configuratie’ de volgende gegevens in.

1.  Vul in het veld ‘Tracking ID’ (nr. 17) de tracking ID van Google
    Analytics in. Dit is de ID uit stap dertien van hoofdstuk twee.

<img src=".Handleiding webshop add on Analyse.docx\media\image30.png" style="width:5.70833in;height:4.96585in" />

1.  Klik op ‘Meer instellingen’ (nr. 18), E-commerce (nr. 19)

2.  Zet vinkjes bij ‘Geoptimaliseerde e-commercefuncties inschakelen’
    (nr. 20) en ‘Gegevenslaag gebruiken’. (nr. 21)

3.  Klik op de knop ‘OPSLAAN’ in de rechterbovenhoek van het scherm.
    (nr. 22)

<img src=".Handleiding webshop add on Analyse.docx\media\image31.png" style="width:2.19792in;height:0.61458in" />

Het veld ‘Google Analytics-instellingen’ in het venster
‘Tagconfiguratie’ ziet er als volgt uit:

<img src=".Handleiding webshop add on Analyse.docx\media\image32.png" style="width:3.98675in;height:0.76042in" />

1.  Klik op ‘Kies een trigger om deze tag te activeren’ (nr. 23) om een
    trigger te koppelen aan deze tag. Het venster een ‘Een trigger
    opent’.

<img src=".Handleiding webshop add on Analyse.docx\media\image33.png" style="width:5.70833in;height:4.31271in" />

1.  Klik op ‘All Pages’ (nr. 24) om alle pagina’s van de webshop te
    koppelen aan deze tag. Onder ‘Triggers’ wordt nu ‘All pages’
    weergegeven.

<img src=".Handleiding webshop add on Analyse.docx\media\image34.png" style="width:2.19792in;height:1.86249in" />

1.  Klik op de knop ‘OPSLAAN’ (nr. 25) in de rechterbovenhoek van het
    scherm.

<img src=".Handleiding webshop add on Analyse.docx\media\image35.png" style="width:2.22948in;height:0.63551in" />

Nu er één tag met een gekoppelde trigger is aangemaakt. Om de Analytics
module goed te laten werken moet er nog een tweede tag met een
gekoppelde trigger aangemaakt worden. Deze tag en trigger hebben iets
andere instellingen dan de eerste tag.

1.  Voer stap 12 uit.

2.  Geef de tag een duidelijke naam, zoals beschreven in stap 13.

3.  Voer de stappen 14 t/m 16 uit. Kies nu bij ‘Trackingtype’ voor de
    optie ‘Gebeurtenis’. (nr. 26) Vul in het venster ‘Tagconfiguratie’
    de volgende gegevens in:

<img src=".Handleiding webshop add on Analyse.docx\media\image36.png" style="width:2.34375in;height:4.66992in" />

1.  Vul in het veld ‘Categorie’ de waarde ‘Ecommerce’ (zonder
    aanhalingstekens) in. (nr. 27)

2.  Vul in het veld ‘Actie’ de waarde {{Event}} (inclusief accolades)
    in. (nr. 28)

3.  Vul in het veld ‘Label’ de waarde {{Page URL}} (inclusief accolades)
    in. (nr. 29)

4.  Kies bij ‘Google Analytics-instellingen’ de naam van de variabele
    die aangemaakt is in stap 18. (nr. 30) Let op dat deze waarde ook
    tussen dubbele accolades staan, zoals in het screenshot op de vorige
    pagina.

Maak nu een trigger aan voor de tweede tag. Dit werkt als volgt:

1.  Voer stap 23 uit. Het venster ‘Een trigger kiezen’ verschijnt.

2.  Klik nu op het plus icoon in de rechterbovenhoek van het scherm.
    (nr. 31)

<img src=".Handleiding webshop add on Analyse.docx\media\image37.png" style="width:1.30226in;height:0.82303in" />

1.  Geef de nieuwe trigger een duidelijke naam. (nr. 32)

<img src=".Handleiding webshop add on Analyse.docx\media\image38.png" style="width:3.16711in;height:0.64592in" />

1.  Klik op ‘Kies een trigger om het instellen te starten…’ (nr. 33) Het
    venster ‘Trigger kiezen’ opent aan de rechterkant van het scherm.

<img src=".Handleiding webshop add on Analyse.docx\media\image39.png" style="width:5.89452in;height:1.70833in" />

1.  Kies voor ‘Aangepaste gebeurtenis’ (nr. 34) onder ‘Overig.’ Deze
    optie bevindt zich onderin het venster ‘Trigger kiezen’.

<img src=".Handleiding webshop add on Analyse.docx\media\image40.png" style="width:5.625in;height:2.36793in" />

Vul in het venster ‘Triggerconfiguratie’ als volgt in.

1.  Vul het veld ‘Naam van gebeurtenis’ (nr. 35) met de volgende waarde:
    addToCart|removeFromCart|transaction

> <img src=".Handleiding webshop add on Analyse.docx\media\image41.png" style="width:5.77083in;height:3.28305in" />

1.  Zet het vinkje ‘Overeenkomende reguliere expressie gebruiken’
    (nr. 36) aan.

2.  Klik op de knop ‘OPSLAAN’ (nr. 37) rechtsboven in het scherm.

<img src=".Handleiding webshop add on Analyse.docx\media\image42.png" style="width:2.23958in;height:0.60417in" />

1.  Klik nogmaals op de knop ‘OPSLAAN’ rechtsboven in het scherm van het
    venster ‘Tagconfiguratie’ om de tweede tag op te slaan.

In de rechterbovenhoek van de beheeromgeving van de Tag Manager is een
tweede ID zichtbaar. Deze ID is nodig om de webshop te koppelen aan de
Tag Manager.

<img src=".Handleiding webshop add on Analyse.docx\media\image43.png" style="width:5.78125in;height:1.03045in" />

> **Let op: onthoud bovenstaande ID. Deze is nodig om de webshop aan de
> Tag Manager te koppelen.**

1.  Klik op de knop ‘VERZENDEN’ om alle wijzigen te bevestigen. Het
    venster ‘Wijzigingen verzenden’ opent.

2.  Kies voor ‘Versie publiceren en maken.’ (nr. 39)

3.  Vul in het veld ‘Versienaam’ (nr. 40) een beschrijvende naam in voor
    deze publicatie.

4.  **Optioneel:** vul in het veld ‘Versiebeschrijving’ (nr. 41) wat
    meer gedetailleerde informatie in met betrekking tot deze
    publicatie.

> <img src=".Handleiding webshop add on Analyse.docx\media\image44.png" style="width:5.75in;height:3.20078in" />

1.  Klik op de knop ‘PUBLICEREN’ in de rechterbovenhoek van het scherm
    ‘Wijzigingen verzenden’. (nr. 42)

<img src=".Handleiding webshop add on Analyse.docx\media\image45.png" style="width:2.14613in;height:0.64592in" />

Er verschijnt een samenvatting van de publicatie. Tag Manager kan nu
afgesloten worden.

# 4 Webshop instellingen wijzigen

Naast de instellingen in Google Analytics en Tag Manager moeten er een
aantal instellingen in de webshop aangepast worden.

1.  Log in op de webshop met een beheer account en activeer de Beheer
    omgeving door het vinkje voor ‘Beheer’ aan te zetten. (nr. 1)

<img src=".Handleiding webshop add on Analyse.docx\media\image46.png" style="width:1.73983in;height:0.46882in" />

1.  Klik op het menu ‘Configuratie’ (nr. 2)

<img src=".Handleiding webshop add on Analyse.docx\media\image47.png" style="width:4.88542in;height:2.5in" />

1.  Klik met de rechtermuisknop op ‘Webshop Instellingen’ (nr. 3) en
    kies voor ‘Link openen in nieuw tabblad.’ (nr. 4)

De webshop settings openen in een nieuwe tabblad.

1.  Zoek in het veld Item op ‘GTMID’ (nr. 5)

<img src=".Handleiding webshop add on Analyse.docx\media\image48.png" style="width:5.64583in;height:2.32069in" />

1.  Klik op item GTMID (nr. 6) Het venster ‘Wijzig instelling’ opent.

<img src=".Handleiding webshop add on Analyse.docx\media\image49.png" style="width:5.80208in;height:3.23041in" />

1.  Vul in het veld ‘Waarde’ de tweede ID uit Tag Manager in. Deze is te
    terug te vinden na stap na stap 41 in hoofdstuk drie.

2.  Vul in het veld ‘Wachtwoord’ het beheerwachtwoord van de webshop in.

3.  Klik op de knop ‘Opslaan’ om de wijzigingen op te slaan.

Dit zijn alle instellingen die benodigd zijn voor het werkend maken van
de add on Analyse.

# 5 Praktische werking add on Analyse

De hoofdstukken twee t/m vier beschrijven een groot aantal instellingen
met betrekking tot Google Analytics, Google Tag Manager en de webshop.
Wanneer deze instellingen correct zijn ingesteld is het mogelijk om via
Google Tag Manager een aantal acties op de webshop af te vangen.
Hieronder worden een aantal voorbeelden beschreven.

Na het inloggen bij Google Analytics verschijnt de home page. De home
page heeft de het uiterlijk van een dashboard wat naar eigen inzicht
aangepast kan worden. Hieronder een aantal voorbeelden.

<img src=".Handleiding webshop add on Analyse.docx\media\image50.png" style="width:6.3in;height:5.24375in" />

Voorbeeld van aantal conversies (transacties) van de afgelopen 7 dagen.
Dit is aan te passen door te klikken op ‘Afgelopen 7 dagen’ en een ander
tijdframe te kiezen.

De grafiek kan aangepast worden door te klikken op tabbladen
‘Gebruikers’, ‘Opbrengst’, ‘Conversiepercentage’ en ‘Sessies’.

Een ander overzicht is de tabel met best verkopende producten. Dit geeft
een overzicht van de best verkopende producten via de webshop. Door te
klikken op ‘E-COMMERCEOVERZICHT’ wordt een meer gedetailleerde weergave
getoond van de verkochte producten.

<img src=".Handleiding webshop add on Analyse.docx\media\image51.png" style="width:4.2255in;height:3.88542in" />

Detailoverzicht van de verkochte producten.

<img src=".Handleiding webshop add on Analyse.docx\media\image52.png" style="width:6.3in;height:3.29861in" />

Aan de linkerkant van het dashboard is het menu te vinden om meer
detailoverzichten te openen. Klik hiervoor op het menu ‘CONVERSIES’ en
klik op ‘E-commerce’ om verschillende e-commerce gerelateerde pagina’s
te openen.

<img src=".Handleiding webshop add on Analyse.docx\media\image53.png" style="width:2.63578in;height:3.55258in" />

Bovenstaande screenshots geven een globale indruk van Google Analytics
in combinatie met de webshop.

Google Analytics kan verder naar eigen wens ingericht worden, zodat de
gewenste informatie getoond wordt. Dit is uiteraard per klant
verschillend.

**Heeft u specifieke vragen met betrekking tot Google Analytics of de
inrichting hiervan, neem dan telefonisch of per e-mail contact op met
Florisoft.**

**Telefoon:** (0)71 40 806 10  
**E-mail:** support@florisoft.nl

# 6 Overige webshop add ons

Enthousiast over de mogelijkheden van de Analyse add on? De webshop
heeft nog meer interessante uitbreidingsmogelijkheden in de vorm van add
ons. Hieronder volgt een korte beschrijving van alle beschikbare add
ons.

**FloriShop WhatsApp aanbiedingen**  
Met de FloriShop add on WhatsApp Aanbiedingen krijgen gebruikers in
FloriShop de mogelijkheid een interessant aanbod met een contact of
groep te delen via WhatsApp.

Er kan zowel een hele voorraad als ook een specifieke partij gedeeld
worden. Na het klikken op de WhatsApp button wordt WhatsApp opgestart en
kan vervolgens het contact of de groep gekozen worden waarmee de
voorraad of het artikel gedeeld wordt.

In WhatsApp wordt een partijkaart getoond in de vorm van een bericht met
daarin de artikelomschrijving, een foto en enkele artikelkenmerken. Als
op het bericht geklikt wordt navigeert de webshop direct naar de
betreffende voorraad of artikel.

**FloriShop CMS**  
Met de lancering van de FloriShop add on CMS, brengt Florisoft uw
website en webshop samen tot één platform. Hiermee kunt u tevens klanten
voorzien van bedrijfsinformatie alsmede de mogelijkheid om direct te
shoppen in de webshop.  
  
Het beheer van deze website is ondergebracht in een uitgebreid CMS
systeem met online beheermogelijkheid.

**FloriShop Credit**  
De Credit add on binnen FloriShop is ontwikkeld om de gebruiker een
makkelijke manier te bieden voor het crediteren van artikelen aan de
hand van een stapsgewijs proces waarbij de meeste informatie al
beschikbaar is en alleen nog aangevuld dient te worden. Naast het feit
dat het makkelijker is voor de gebruiker, is er ook minder
administratieve inspanning vereist, omdat het proces volledig
automatisch verwerkt wordt.

Bij het voltooien van een aanvraag worden er mails verstuurd naar de
adressen die ingesteld zijn binnen Florisoft met behulp van een
professioneel ogende lay-out.

De credit aanvragen zijn na het voltooien van de aanvraag zichtbaar in
het accorderen scherm binnen Florisoft en kunnen hier beoordeeld worden.

**FloriShop Dashboard (CMS add on is verplicht)**  
Met de add on Dashboard kan FloriShop worden gebruikt als een
waardevolle bron van relevante bedrijf kritische informatie. Denk
hierbij aan verkoopcijfers per tijdseenheid, omzet, aantal kopende
klanten op de webshop, geannuleerde kopen, voorraden en vele andere
soorten informatie.

In principe kan alle informatie in de database via verschillende soorten
weergaven beschikbaar worden gemaakt in een dashboard. Denk aan cirkel-
en staafdiagrammen, lijngrafieken, meters en tabellen. De dashboard add
on wordt veel gebruikt op de werkvloer om de prestaties van een bepaald
proces te meten, zoals het aantal gepikte orders of ingepakte dozen.

Deze add-on wordt compleet met bijbehorende hardware geleverd. Het is
een bijzondere manier om inzicht te krijgen in de prestaties van zowel
het bedrijf als het gedrag van de klant.

**FloriShop App**

De FloriShop App add on maakt de webshop beschikbaar als een Android- of
Apple-app die klanten kunnen downloaden uit de bijbehorende app stores
van beide bedrijven. Met deze app staat de webshop nog dichter bij uw
klant: zij kunnen in hun eigen tijd kopen, waar ze zich ook bevinden.

De app is ook een uitstekende manier om nog meer naamsbekendheid te
creëren; de app wordt gepubliceerd in de Google Play Store en de App
Store met de naam en het logo van het bedrijf. Hierdoor kunnen
potentiële klanten de app overal ter wereld downloaden.

Er is ook een mogelijkheid om de app aan te bieden aan klanten als een
shop in shop-principe. Uw voorraad zal zichtbaar zijn in de app, maar de
vormgeving en gegevens binnen de app zullen zichtbaar zijn onder de naam
van uw klant met een eigen logo en inlogscherm.

**FloriShop FloriGrow**    
De add on FloriGrow geeft inzicht in de opbrengt en afschrijving van
een kwekerij binnen een bepaalde periode. Met FloriGrow heeft u altijd
alle informatie die nodig is binnen handbereik.

FloriGrow is een succesvol softwarepakket dat speciaal is ontwikkeld
voor kwekers. Deze professionele en eenvoudig te gebruiken software
geeft het bedrijf meer inzicht geven in de stand van zaken. Eigen
servers en verschillende softwarepakketten zijn verleden tijd. FloriGrow
ontzorgt volledig. Wil je met andere pakketten werken? Geen probleem:
FloriGrow heeft uitstekende exportmogelijkheden. FloriGrow ondersteunt
de volgende functies:

-   Importeren van oogst

-   Voorspellen van oogstopbrengst

-   Sorteren

-   Voorraadbeheer

-   Klant verdelingen & order picken

-   Verkopen en pre-ordes

-   Facturatie, paklijst en consolidatie

-   Elektronische productinformatie met behulp van EKT

-   Beleidsinformatie

-   Omzet- en voordeelberekening

-   Exporteer verbindingen naar externe software zoals accountancy

**FloriShop Mobile Photo**  
De add on Mobile Photo maakt het mogelijk om foto's handmatig te
koppelen aan producten in de webshop, zowel voor voorraad- als
bestelpartijen. Soms worden foto's van externe bronnen niet correct
geladen op de webshop. Deze add on lost dit probleem op. U kunt eigen
foto's maken en koppelen.

Voor voorraad partijen is het ook mogelijk om de foto te verwerken met
de fotostudio in Florisoft. Hiermee zijn de afmetingen aan te passen en
watermerken toe te toevoegen. Met de add on Mobile Photo is het zelfs
mogelijk om een foto rechtstreeks met een smartphone te maken en deze
aan een product te koppelen.

**FloriShop Payment Gateway**    
Om een webshop compleet te maken, kan een betalingsmodule (payment
gateway) worden gekoppeld, zodat klanten openstaande posten kunnen
betalen voordat ze nieuwe aankopen doen. De regels kunnen volledig
worden beheerd vanuit het Florisoft pakket, bijvoorbeeld de maximale
kredietlimiet, hoe oud de oudste open post kan zijn of het maximale
aantal openstaande facturen.

Deze add-on maakt het voor de klant mogelijk om in de webshop een
betaling uit te voeren met behulp van een externe betaalprovider.
Onderstaande providers worden in ieder geval die in elk geval door deze
gateway worden ondersteund:

-   OmniKassa

-   SagePay

-   Multisafepay

-   Buckaroo

Andere aanbieders kunnen in overleg ook worden ondersteund.

**FloriShop Sales**  
De FloriShop add-on Sales biedt accountmanagers de mogelijkheid om in
samenwerking met de klant de webshop optimaal te gebruiken.
Functionaliteit die voorheen alleen in Florisoft beschikbaar was, wordt
nu ook via de webshop beschikbaar gesteld. Dit levert de volgende
voordelen op:

-   De FloriShop-verkoopfunctionaliteit is veel beter toegankelijk via
    de webshop. (thuis, onderweg, op kantoor, apparaat onafhankelijk,
    geen verbinding met een externe desktop vereist)

-   De accountmanager krijgt meer inzicht in de klant en zijn
    koopgedrag.

-   De accountmanager kan eenvoudig aankopen doen voor zijn klanten. De
    klant kan beter worden bediend met aanbiedingen.

Deze add on is nog in ontwikkeling. Debiteurenbeheer, biedingsbeheer,
het delen van aanbiedingen via WhatsApp en het aanpassen van de prijzen
is al geïmplementeerd. In de loop van de tijd zal deze add on veel meer
functionaliteit gaan bevatten. Hieronder een vindt u een overzicht van
de functies die in de add on zijn geïmplementeerd:

-   Debiteurenbeheer (debiteuren raadplegen, aanmaken en wijzigen)

-   Aanbiedingen (met de volgende media: e-mail, WhatsApp, MailChimp,
    push notificatie op de app)

-   Gebeurtenissen opnemen

-   Tijdlijn (met informatie over: klantenbezoek, telefoongesprek,
    e-mail conversatie, login, koop momenten, kredietaanvragen, het
    instellen van aanbiedingen)

-   Kopen voor debiteuren sub debiteuren

-   Aanpassen van prijzen

-   Transportplanning

-   Openingstijden per voorraad regelen

-   Orderverwerking

**FloriShop Shopping List**  
Met de add on Shopping List kunt u gemakkelijk een ‘boodschappenlijst’
maken op basis van recente bestellingen. Met deze functie
vergemakkelijkt het vinden en kopen van producten. Het komt veel voor
dat klanten dezelfde bestelling hebben. Wanneer klanten gewend zijn om
op deze manier te bestellen, heeft deze add on zeker meerwaarde.

Wanneer de gebruiker zich de eerste keer aanmeldt en een voorraad kiest,
wordt een venster met recente bestellingen weergegeven. Deze
bestellingen kunnen worden gecontroleerd en geïmporteerd naar de
shopping list.

Eerdere bestellingen kunnen worden uitgevouwen, zodat de gebruiker kan
zien wat voor soort producten hieraan gekoppeld zitten. De gebruiker kan
precies bepalen welke bestellingen geïmporteerd moeten worden.

**Geïnteresseerd in één of meer van deze add ons? Aarzel niet om
telefonisch of per e-mail contact op te nemen met Florisoft. We staan
open voor advies met betrekking tot bovenstaande add ons en hoe deze in
te passen zijn binnen uw organisatie.**

**Telefoon:** (0)71 40 806 10  
**E-mail:** sales@florisoft.nl
    