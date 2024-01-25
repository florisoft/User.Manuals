<img src=".Dashboard Handleiding\media\fslogo.png"/>

# Florisoft Handleiding Dashboard - M130
Welkom bij de Florisoft handleiding over het aanpassen van het Dashboard.<br>
Voor deze handleiding is de Dashboard module nodig.

Het eerste hoofdstuk beschrijft CMS zones en hun rol binnen dashboarding.

Vervolgens beschrijft het tweede hoofdstuk de verschillende instellingen beschikbaar per dashboard gebruiker.

Het instellen van de pagina's om zo alleen zichtbaar te zijn voor de juiste gebruikers wordt in hoofdstuk 3 besproken.

Hoofdstuk 4 tot en met 9 beschrijven de verschillende functies die het dashboard biedt.

Bij vragen of problemen, bel onze support afdeling.

**Let op: afbeeldingen in deze handleiding kunnen enigszins verschillen van wat u op uw eigen scherm ziet.**

## Inhoudsopgave
[1. Instellen van CMS Zones](#instellen-van-cms-zones) \
[2. Instellen van dashboard gebruikers](#instellen-van-dashboard-gebruikers)\
[3. Instellen van pagina's](#instellen-van-paginas)\
[4. Instellen van grafieken](#instellen-van-grafieken)\
[5. Instellen van tabellen](#instellen-van-tabellen)\
[6. Instellen van cirkeldiagrammen](#instellen-van-cirkeldiagrammen)\
[7. Instellen van een teller](#instellen-van-een-teller)\
[8. Instellen van een progressiemeter](#instellen-van-een-progressiemeter)\
[9. Instellen van filters](#instellen-van-filters)

## Instellen van CMS Zones
CMS zones zijn zogehete 'labels' welke toegewezen worden aan debiteuren en webshop pagina's, om zo te managen welke debiteuren welke pagina's zien. Een debiteur met een label/CMS zone toegewezen, ziet alle pagina's welk ook dit label/CMS zone heeft. Pagina's zonder CMS zone/label zijn zichtbaar voor iedereen, tenzij anders aangegeven in de zichtbaarheid van de pagina. Een visualisatie hiervan is hieronder te vinden:

<details open>
    <summary><b> Klik hier voor uw afbeelding</b></summary>
    <img src=".Dashboard Handleiding\media\image1.png"/>
</details>

Dit hoofdstuk gaat over het aanmaken van CMS zones en deze instellen op de webshop pagina's. Door het instellen van een CMS zone op een pagina, kan je hem verbergen voor alle gebruikers behalve de debiteuren waar je dezelfde CMS zone hebt ingesteld. Het instellen van dashboard gebruikers wordt besproken in het volgende hoofdstuk.

|Stap#|Uitleg|
|:--|:--|
|**1**|Start Florisoft op en log in met uw gebruiker.|
|**2**|In de Florisoft Navigator, open de constanten. <br><details ><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image2.png"/></details>|
|**3**| In de constanten, navigeer naar de volgende instellingen: <br>*Systeem(#1) --> Internet(#2) --> CMS zones(#3)* <br> <details ><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image3.png"/></details>| |
|**4**|Gebruik het plusje (#4) om een nieuwe CMS zone toe te voegen, vul hierbij een code (#5) en een omschrijving (#6) in. <br><br> :bulb: 'Email' blijft leeg|
|**5**|Sla de CMS zone op.|


## Instellen van dashboard gebruikers
Blijf in de constanten en volg de onderstaande stappen.

|Stap#|Uitleg|
|:--|:--|
|**1**|Navigeer vanuit de constanten naar de debiteur instellingen: <br>*Organen(#1) --> Debiteurgegevens (#2) --> Debiteuren(#3)*<br><details ><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image11.png"/></details>|
|**2**|Maak een nieuwe dashboard debiteur aan of gebruik een bestaande debiteur (#4)|
|**3**|In de debiteurinstellingen, navigeer naar: <br> *Internet (#1) --> CMS (#2)*<details ><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image12.png"/></details>|
|**4**|Klik op de knop 'CMS Zones'(#3) en type de code van de zojuist aangemaakte CMS zone in de kolom 'zone'(#4) en druk enter. De volledige naam van de CMS zone staat nu in het grid.|
|**5**| Sla op. <br><br>:warning: Zorg ervoor dat uw standaard dashboard gebruiker geen admin rechten heeft op de webshop. Maak zo nodig meerdere gebruikers aan. |

## Instellen van pagina's
Log vervolgens in op de webshop, doe dit met een debiteur die admin rechten heeft. 

:memo: Als u dit doet met een gebruiker zonder het betreffende CMS zone, zal u de aangemaakte pagina niet zien.

Volg de stappen hieronder:
|Stap#|Uitleg|
|:--|:--|
|**1**|Zodra er ingelogd is, open de gebruiker opties (1#), selecteer 'Beheer' (2#) en navigeer naar 'CMS' (3#).<br><details ><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image4.png"/></details>|
|**2**|Binnen 'CMS', klik op het plusje naast 'Categorieen'.<br><details ><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image5.png"/></details>|
|**3**|Een nieuw scherm opent, vul hierbij de aangegeven velden in: <br> 1# **Categorie URL** : Dit is wat achter je URL komt, in dit geval = *www.webshop.nl/testdashboard/* <br> 2# **Categorie weergave naam** : Dit is hoe de gebruiker het zal zien in de navigatie van de webshop. <br>3# **Is zichtbaar in navigatie**: Dit zorgt ervoor dat de categorie te zien valt in de webshop (mits je daar rechten voor hebt). <br> 4# Navigeer vervolgens naar het tabblad 'Zichtbaarheid'<br><br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image6.png"/></details>|
|**4**|In het tabblad 'Zichtbaarheid', selecteer de zojuist aangemaakte CMS zone (5#), en sla op. <br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image7.png"/></details>|
|**5**|Na opslaan van de categorie, ga terug naar de zwarte balk bovenaan en selecteer wederom CMS en klik op het plusje naast 'Pagina's'. <br><details> <summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image8.png"/></details>|
|**6**|Een nieuw scherm opent, vul de onderstaande velden in: <br>1# **Url** : dit is wat achteraan de URL sluit. Bij het selecteren van 3# komt deze er zo uit te zien: *www.webshop.nl/testdashboard/testdashboardpagina* <br> 2# **Weergave pagina naam** : Dit is de naam die de gebruiker ziet in de navigatie van de webshop. <br> 3# **Selecteer een categorie** : selecteer de categorie die zojuist is aangemaakt. <br> 4# **Is zichtbaar in de navigatie** : Dit zorgt ervoor dat de pagina zichtbaar is voor gebruikers (mits zij hiervoor rechten hebben). <br> 5# **Zichtbaar in andere CMS componenten** : Dit zorgt ervoor dat de pagina zichtbaar wordt binnen andere componenten in de webshop (mits de gebruiker hiervoor rechten heeft). <br> 6# Navigeer vervolgens naar het tabblad 'Zichtbaarheid'. <br><br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image9.png"/></details>|
|**7**|Binnen het tabblad 'Zichtbaarheid' voeg de CMS zone die is aangemaakt en sla op. <br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image10.png"/></details>|

In de navigatie van de webshop wordt de nieuwe pagina zichtbaar voor debiteuren die dezelfde CMS zone hebben ingesteld. <br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image13.png"/></details>



:warning: Als u de gebruikte CMS zone niet gekoppeld heeft aan uw administrator gebruiker, zal de pagina niet zichtbaar zijn. Log in met een gebruiker die wel de CMS zone heeft om de pagina in te zien.

## Instellen van grafieken
Navigeer naar een bestaande dashboard pagina en log in met een gebruiker die admin rechten heeft.

:warning: Dit dashboard component maakt gebruik van SQL (of Sequel). SQL is de taal die gevoerd wordt met de database om data op te halen. Let op bij het maken en uitvoeren van zelf ontworpen SQL queries. Het maken van slechte of niet geoptimaliseerde queries kan problemen veroorzaken met de performance van uw webshop. **Het maken en uitvoeren van zelf ontworpen SQL queries is toegestaan onder eigen risico.**

:bulb: SQL kan worden geschreven in twee dialecten: ADS SQL & PostgreSQL. Bij het gebruik van PostgreSQL moet dit worden aangeven in de SQL editor doormiddel van een '--pg'. Voor ADS SQL hoeft dit niet.

Volg de onderstaande stappen om een grafiek in te stellen.

|Stap#|Uitleg|
|:--|:--|
|**1**|Start de editor modus door beheer (1#) aan te zetten en vervolgens de editor (#2) te starten.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image14.png"/></details>|
|**2**|Voeg de grafiek toe onder een column, de locatie hiervan is irrelevant. Maak gebruik van het plusje in de column.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image15.png"/></details> <br> :memo: Zorg ervoor dat er genoeg ruimte overblijft voor de grafiek om goed zichtbaar te zijn.|
|**3**| Selecteer het tabblad 'Dashboard' (1#) en voeg vervolgens het 'Chart' component toe aan de hand van het groene plusje(2#).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image16.png"/></details>|
|**4**|Na toevoegen van het component, geef de grafiek een titel(1#) en geef aan wat voor type grafiek dit is(2#).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image17.png"/></details>|
|**5**|Navigeer naar het tab 'Datasets' (3#) en voeg een nieuw item(4#) toe. Geef dit item vervolgens een naam (5#) en eventueel een kleur (6#). Voeg daarna uw query toe aan de query editor door op het witte vlak of groene knop te klikken.(7#).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image18.png"/></details><br>:memo: U kunt meerdere items (#4) toevoegen om meerdere lijnen/staven naast elkaar te tonen|
|**6**|Voordat u uw query opslaat, moet u hem valideren. Doe dit door op de groene knop met het vinkje (#1) te drukken. Als hij de query kan uitvoeren, geeft hij een melding (#2). Als de query niet kan worden uitgevoerd, krijgt u een error op het scherm. Alleen als de query werkt kunt u hem opslaan.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image19.png"/></details>  <br>:warning: Zorg ervoor dat uw queries niet langer dan **1500ms** duren! |

Bij het schrijven van een goede query komt de grafiek naar voren. 
<br><details><summary><b>Klik hier voor een voorbeeld grafiek</b></summary><img src=".Dashboard Handleiding\media\image20.png"/></details>

## Instellen van tabellen
Navigeer naar een bestaande dashboard pagina en log in met een gebruiker die admin rechten heeft.

:warning: Dit dashboard component maakt gebruik van SQL (of Sequel). SQL is de taal die gevoerd wordt met de database om data op te halen. Let op bij het maken en uitvoeren van zelf ontworpen SQL queries. Het maken van slechte of niet geoptimaliseerde queries kan problemen veroorzaken met de performance van uw webshop. **Het maken en uitvoeren van zelf ontworpen SQL queries is toegestaan onder eigen risico.**

:bulb: SQL kan worden geschreven in twee dialecten: ADS SQL & PostgreSQL. Bij het gebruik van PostgreSQL moet dit worden aangeven in de SQL editor doormiddel van een '--pg'. Voor ADS SQL hoeft dit niet.

Volg de onderstaande stappen om een tabel in te stellen.

|Stap#|Uitleg|
|:--|:--|
|**1**|Start de editor modus door beheer (1#) aan te zetten en vervolgens de editor (#2) te starten.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image14.png"/></details>|
|**2**|Voeg de tabel toe onder een column, de locatie hiervan is irrelevant. Maak gebruik van het plusje in de column.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image15.png"/></details> <br> :memo: Zorg ervoor dat er genoeg ruimte overblijft voor de tabel om goed zichtbaar te zijn.|
|**3**| Selecteer het tabblad 'Dashboard' (1#) en voeg vervolgens het 'TableView' component toe aan de hand van het groene plusje(2#).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image21.png"/></details>|
|**4**|Na toevoegen van het component, geef de tabel een titel(1#).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image22.png"/></details>|
|**5**|Voeg daarna uw query toe aan de query editor door op het witte vlak of groene knop te klikken(2#).|
|**6**|Voordat u uw query opslaat, moet u hem valideren. Doe dit door op de groene knop met het vinkje (#1) te drukken. Als hij de query kan uitvoeren, geeft hij een melding (#2). Als de query niet kan worden uitgevoerd, krijgt u een error op het scherm. Alleen als de query werkt kunt u hem opslaan.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image19.png"/></details>  <br>:warning: Zorg ervoor dat uw queries niet langer dan **1500ms** duren! |

Bij het schrijven van een goede query komt de tabel naar voren. 
<br><details><summary><b>Klik hier voor een voorbeeld tabel</b></summary><img src=".Dashboard Handleiding\media\image23.png"/></details>

## Instellen van cirkeldiagrammen
Navigeer naar een bestaande dashboard pagina en log in met een gebruiker die admin rechten heeft.

:warning: Dit dashboard component maakt gebruik van SQL (of Sequel). SQL is de taal die gevoerd wordt met de database om data op te halen. Let op bij het maken en uitvoeren van zelf ontworpen SQL queries. Het maken van slechte of niet geoptimaliseerde queries kan problemen veroorzaken met de performance van uw webshop. **Het maken en uitvoeren van zelf ontworpen SQL queries is toegestaan onder eigen risico.**

:bulb: SQL kan worden geschreven in twee dialecten: ADS SQL & PostgreSQL. Bij het gebruik van PostgreSQL moet dit worden aangeven in de SQL editor doormiddel van een '--pg'. Voor ADS SQL hoeft dit niet.

Volg de onderstaande stappen om een cirkeldiagram in te stellen.

|Stap#|Uitleg|
|:--|:--|
|**1**|Start de editor modus door beheer (1#) aan te zetten en vervolgens de editor (#2) te starten.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image14.png"/></details>|
|**2**|Voeg de cirkeldiagram toe onder een column, de locatie hiervan is irrelevant. Maak gebruik van het plusje in de column.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image15.png"/></details> <br> :bulb: Zorg ervoor dat er genoeg ruimte overblijft voor de cirkeldiagram om goed zichtbaar te zijn.|
|**3**| Selecteer het tabblad 'Dashboard' (1#) en voeg vervolgens het 'PieChart' component toe aan de hand van het groene plusje(2#).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image24.png"/></details>|
|**4**|Na toevoegen van het component, geef de PieChart een titel(1#), geef aan wat voor PieChart het is (2#), of het om getallen of percentages gaat (3#) en het aantal decimalen (#4).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image25.png"/></details>|
|**5**|Voeg daarna uw query toe aan de query editor door op het witte vlak of groene knop te klikken(5#).|
|**6**|Voordat u uw query opslaat, moet u hem valideren. Doe dit door op de groene knop met het vinkje (#1) te drukken. Als hij de query kan uitvoeren, geeft hij een melding (#2). Als de query niet kan worden uitgevoerd, krijgt u een error op het scherm. Alleen als de query werkt kunt u hem opslaan.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image19.png"/></details>  <br>:warning: Zorg ervoor dat uw queries niet langer dan **1500ms** duren! |

Bij het schrijven van een goede query komt de cirkeldiagram naar voren. 
<br><details><summary><b>Klik hier voor een voorbeeld cirkeldiagram</b></summary><img src=".Dashboard Handleiding\media\image26.png"/></details>

## Instellen van een teller
Navigeer naar een bestaande dashboard pagina en log in met een gebruiker die admin rechten heeft.

:warning: Dit dashboard component maakt gebruik van SQL (of Sequel). SQL is de taal die gevoerd wordt met de database om data op te halen. Let op bij het maken en uitvoeren van zelf ontworpen SQL queries. Het maken van slechte of niet geoptimaliseerde queries kan problemen veroorzaken met de performance van uw webshop. **Het maken en uitvoeren van zelf ontworpen SQL queries is toegestaan onder eigen risico.**

:bulb: SQL kan worden geschreven in twee dialecten: ADS SQL & PostgreSQL. Bij het gebruik van PostgreSQL moet dit worden aangeven in de SQL editor doormiddel van een '--pg'. Voor ADS SQL hoeft dit niet.

Volg de onderstaande stappen om een teller in te stellen.

|Stap#|Uitleg|
|:--|:--|
|**1**|Start de editor modus door beheer (1#) aan te zetten en vervolgens de editor (#2) te starten.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image14.png"/></details>|
|**2**|Voeg de teller toe onder een column, de locatie hiervan is irrelevant. Maak gebruik van het plusje in de column.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image15.png"/></details> <br> :memo: Zorg ervoor dat er genoeg ruimte overblijft voor de teller om goed zichtbaar te zijn.|
|**3**| Selecteer het tabblad 'Dashboard' (1#) en voeg vervolgens het 'Gauge' component toe aan de hand van het groene plusje(2#).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image46.png"/></details>|
|**4**|Na toevoegen van het component, geef de Gauge een titel(1#), de maximale (en/of minimale) waarde(2#), het eventuele bereik van de kleur groen/rood (3#), het aantal segmenten in de teller (#4) en het aantal decimalen (#5).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image27.png"/></details>|
|**5**|Voeg daarna uw query toe aan de query editor door op het witte vlak of groene knop te klikken(6#).|
|**6**|Voordat u uw query opslaat, moet u hem valideren. Doe dit door op de groene knop met het vinkje (#1) te drukken. Als hij de query kan uitvoeren, geeft hij een melding (#2). Als de query niet kan worden uitgevoerd, krijgt u een error op het scherm. Alleen als de query werkt kunt u hem opslaan.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image19.png"/></details>  <br>:warning: Zorg ervoor dat uw queries niet langer dan **1500ms** duren! |

Bij het schrijven van een goede query komt de gauge naar voren. 
<br><details><summary><b>Klik hier voor een voorbeeld gauge</b></summary><img src=".Dashboard Handleiding\media\image28.png"/></details>

## Instellen van een progressiemeter
Navigeer naar een bestaande dashboard pagina en log in met een gebruiker die admin rechten heeft.

:warning: Dit dashboard component maakt gebruik van SQL (of Sequel). SQL is de taal die gevoerd wordt met de database om data op te halen. Let op bij het maken en uitvoeren van zelf ontworpen SQL queries. Het maken van slechte of niet geoptimaliseerde queries kan problemen veroorzaken met de performance van uw webshop. **Het maken en uitvoeren van zelf ontworpen SQL queries is toegestaan onder eigen risico.**

:bulb: SQL kan worden geschreven in twee dialecten: ADS SQL & PostgreSQL. Bij het gebruik van PostgreSQL moet dit worden aangeven in de SQL editor doormiddel van een '--pg'. Voor ADS SQL hoeft dit niet.

Volg de onderstaande stappen om een progressiemeter in te stellen.

|Stap#|Uitleg|
|:--|:--|
|**1**|Start de editor modus door beheer (1#) aan te zetten en vervolgens de editor (#2) te starten.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image14.png"/></details>|
|**2**|Voeg de teller toe onder een column, de locatie hiervan is irrelevant. Maak gebruik van het plusje in de column.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image15.png"/></details> <br> :memo: Zorg ervoor dat er genoeg ruimte overblijft voor de progressiemeter om goed zichtbaar te zijn.|
|**3**| Selecteer het tabblad 'Dashboard' (1#) en voeg vervolgens het 'Progressbar' component toe aan de hand van het groene plusje(2#).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image29.png"/></details>|
|**4**|Na toevoegen van het component, geef de Progressbar een titel(1#), een balkkleur(2#) en het aantal decimalen (#3).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image30.png"/></details>|
|**5**|Voeg vervolgens twee queries toe, 1 die de totale waarde meet (#5)(BV: totaal aantal stelen), en 1 die een deel van die waarde meet (#4)(BV:Totaal aantal stelen online verkocht). <br><br><details><summary><b>:bulb: Zie visualisatie afbeelding</b></summary><img src=".Dashboard Handleiding\media\image31.png"/></details> |
|**6**|Voordat u uw query opslaat, moet u hem valideren. Doe dit door op de groene knop met het vinkje (#1) te drukken. Als hij de query kan uitvoeren, geeft hij een melding (#2). Als de query niet kan worden uitgevoerd, krijgt u een error op het scherm. Alleen als de query werkt kunt u hem opslaan.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image19.png"/></details>  <br>:warning: Zorg ervoor dat uw queries niet langer dan **1500ms** duren! |

Bij het schrijven van een goede query komt de Progressbar naar voren. 
<br><details><summary><b>Klik hier voor een voorbeeld Progressbar</b></summary><img src=".Dashboard Handleiding\media\image32.png"/></details>

## Instellen van filters
Filters kunnen gebruikt worden om selectie uit de beschikbare data te halen. Er zijn een aantal verschillende soorten filters, welke hieronder beschreven worden.

Navigeer naar een bestaande dashboard pagina en log in met een gebruiker die admin rechten heeft.

:warning: Dit dashboard component kan gebruik maken van SQL (of Sequel). SQL is de taal die gevoerd wordt met de database om data op te halen. Let op bij het maken en uitvoeren van zelf ontworpen SQL queries. Het maken van slechte of niet geoptimaliseerde queries kan problemen veroorzaken met de performance van uw webshop. **Het maken en uitvoeren van zelf ontworpen SQL queries is toegestaan onder eigen risico.**

:bulb: SQL kan worden geschreven in twee dialecten: ADS SQL & PostgreSQL. Bij het gebruik van PostgreSQL moet dit worden aangeven in de SQL editor doormiddel van een '--pg'. Voor ADS SQL hoeft dit niet.

Volg de onderstaande stappen om een filter in te stellen.

|Stap#|Uitleg|
|:--|:--|
|**1**|Start de editor modus door beheer (1#) aan te zetten en vervolgens de editor (#2) te starten.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image14.png"/></details>|
|**2**|Voeg de filter toe onder een column, de locatie hiervan is irrelevant. Maak gebruik van het plusje in de column.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image15.png"/></details> <br> :memo: Zorg ervoor dat er genoeg ruimte overblijft voor de filter om goed zichtbaar te zijn.|
|**3**| Selecteer het tabblad 'Dashboard' (1#) en voeg vervolgens het 'FilterToolbar' component toe aan de hand van het groene plusje(2#).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image33.png"/></details>|
|**4**| Deze kan direct opgeslagen worden, hier hoeft niks aan gedaan te worden.|
|**5**| Klik op het plusje binnen de FilterToolbar om alle soorten filters te zien.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image34.png"/></details>|

U kunt kiezen uit de volgende filters:
- [QueryFilter](#queryfilter)
    - Aan de hand van een SQL query kan er een selectie worden gemaakt uit data om te kunnen filteren op andere data.
- [PresetValueFilter](#presetvaluefilter)
    - Aan de hand van voorbepaalde waardes kan er gefilterd worden op de data.
- [QueryFilterDate](#queryfilterdate)
    - Een uitklapbare kalender welke gebruikt kan worden voor datum variabelen.

Zie [hier](#gebruik-van-filters) hoe je filters moet gebruiken.

:memo: Er kunnen meerdere filters toegevoegd worden aan dezelfde FilterToolBar.

### QueryFilter
|Stap#|Uitleg|
|:--|:--|
|**1**| Voeg de QueryFilter toe aan de FilterToolbar doormiddel van het groene plusje.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image35.png"/></details>|
|**2**|Voeg een Keyword naam en label aan (1#), zorg ervoor dat deze beschrijvend zijn en overeenkomen. Geef eventueel een default waarde(2#), dit is wat wordt ingevuld als er geen keuze is gemaakt. Geef eventueel aan of de gebruiker meerdere waarden mag selecteren(#3).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image38.png"/></details>|
|**3**|Voeg een query toe aan de SQL query editor, klik hiervoor op het witte vlak of de groene knop (#4). Voor de filter, zorg ervoor dat de query maar 1 kolom teruggeeft!|
|**4**|Voordat u uw query opslaat, moet u hem valideren. Doe dit door op de groene knop met het vinkje (#1) te drukken. Als hij de query kan uitvoeren, geeft hij een melding (#2). Als de query niet kan worden uitgevoerd, krijgt u een error op het scherm. Alleen als de query werkt kunt u hem opslaan.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image19.png"/></details>  <br>:warning: Zorg ervoor dat uw queries niet langer dan **1500ms** duren! |

Als de QueryFilter goed is ingesteld, kan de dropdown worden gebruikt om een selectie te maken. Onderstaand voorbeeld gaat over debiteurnummers:
<br><details><summary><b>Klik hier voor een voorbeeld</b></summary><img src=".Dashboard Handleiding\media\image39.png"/></details>

### PresetValueFilter
|Stap#|Uitleg|
|:--|:--|
|**1**| Voeg de PresetValueFilter toe aan de FilterToolbar doormiddel van het groene plusje.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image36.png"/></details>|
|**2**|Voeg een Keyword naam en label aan (1#), zorg ervoor dat deze beschrijvend zijn en overeenkomen. Geef eventueel een default waarde(2#), dit is wat wordt ingevuld als er geen keuze is gemaakt. Geef eventueel aan of de gebruiker meerdere waarden mag selecteren(#3).<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image40.png"/></details>|
|**4**|Navigeer vervolgens naar het tabblad 'Waardes' (4#).|
|**5**|In het tabblad 'Waardes' voeg je al je PresetValues (vooringestelde waardes) toe. Voeg een item toe (#1) en vul in de naam (2#) en waarde (3#) <br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image41.png"/></details><br><br> :bulb: De naam is de visuele weergave van de waarde. Hier kan je een omschrijvende naam geven aan een anders cryptische code.<br><details><summary><b>Klik hier voor een voorbeeld</b></summary><img src=".Dashboard Handleiding\media\image42.png"/></details>|

Als de PresetValueFilter goed is ingesteld, kan de dropdown worden gebruikt om een selectie te maken, onderstaand voorbeeld laat in combinatie met de vorige foto zien hoe het werkt.
<br><details><summary><b>Klik hier voor een voorbeeld</b></summary><img src=".Dashboard Handleiding\media\image43.png"/></details>


### QueryFilterDate
|Stap#|Uitleg|
|:--|:--|
|**1**| Voeg de QueryFilterDate toe aan de FilterToolbar doormiddel van het groene plusje.<br><details><summary><b>Klik hier voor uw afbeelding</b></summary><img src=".Dashboard Handleiding\media\image37.png"/></details>|
|**2**| Geef de QueryFilterDate een naam en label (1#) en stel eventueel een default waarde (2#) in. De Default waarde kan een reguliere datum zijn (YYYYMMDD), of '=today'. Dit geeft aan de filter door dat de standaard datum altijd vandaag is. Hier kan je ook dagen af heln of bij tellen door hier +X of -X achter te zetten.<br><details><summary><b>Klik hier voor uw afbeelding<b></summary><img src=".Dashboard Handleiding\media\image44.png"/></details>|

Als de QueryFilterDate goed is ingesteld, kan de dropdown worden gebruikt om een selectie te maken uit een kalender.
<br><details><summary><b>Klik hier voor een voorbeeld</b></summary><img src=".Dashboard Handleiding\media\image45.png"/></details>

### Gebruik van Filters
Na het instellen van een filter moeten deze meegenomen worden in de SQL van uw dashboard componenten. Dit wordt gedaan in het 'Where' gedeelte van de SQL. De filters vallen naar te referen via het gegeven Keyword naam, welke binnen ## staan.

Als voorbeeld wordt een grafiek genomen. Als wij het datum bereik willen veranderen aan de hand van filters, maken we gebruik van 2 QueryFilterDate filters. Deze geven wij de Keyword naam DatumVan en DatumTot. De SQL ziet er dan zo uit.

```sql
where datum_variable >= '#DatumVan#'
    and datum_vaiabele <= '#DatumTot#'
```
:bulb: '#Keywordnaam#' wordt vervangen met de waarde van de selectie, BV: '2023-01-11'

Voor een PresetValueFilter kan het voorkomen dat er meerdere waarden staan onder 1 naam. Hier kan zo mee omgegaan worden.

```sql
where variable in ('#MeerdereArtnr#')
```

Als een keuze wordt gemaakt met meerdere waarden, worden deze onderscheiden van elkaar doormiddels van comma's. BV: 'artnr1','artnr2', 'artnr3'.

:bulb: Aanhalingtekens ('') zijn alleen nodig als het gaat om tekst (datatype string) of datums. Bij alleen getallen zijn deze niet nodig.


