<img src="../../fslogo.png"/>

# Handleiding eCustoms

# Inhoudsopgave

[eCustoms Proxy instellingen 3](#ecustoms-proxy-instellingen)

[eCustoms Transporteur instellen 5](#ecustoms-transporteur-instellen)

[eCustoms Transportroute instellen
7](#ecustoms-transportroute-instellen)

[eCustoms Debiteur instellingen 9](#ecustoms-debiteur-instellingen)

[eCustoms Financiële Administratie instellen
11](#ecustoms-financiële-administratie-instellen)

[eCustoms Incoterms aanmaken en instellingen
13](#ecustoms-incoterms-aanmaken-en-instellingen)

[eCustoms Artikelgroep splitscodes instellingen
15](#ecustoms-artikelgroep-splitscodes-instellingen)

[eCustoms Fust Instellingen 17](#ecustoms-fust-instellingen)

[Fust splistcodes Instellingen 19](#fust-splistcodes-instellingen)

[eCustoms Valuta Instellingen 21](#ecustoms-valuta-instellingen)

[eCustoms Land instellingen 23](#ecustoms-land-instellingen)

[eCustoms Timers (Optineel) 25](#ecustoms-timers-optineel)

# 

# eCustoms Proxy instellingen

Per proxy type kan 1 set instellingen opgeslagen worden in de
constanten. Als je dus met meerdere partijen werkt dan moet je deze
proxy meerdere keren vullen! Hier kan je de proxy gegevens vullen

Navigator Constanten Systeem Artikel gegevens eCustoms Proxy Instellen
codes Instelling openen

Vul hierin de gegevens in behorende bij de gekozen proxy type. Niet alle
velden zijn voor elke proxy benodigd. Afhankelijk van de keuze worden de
benodigde velden actief.

-   **Base Url:** basis url van de proxy

    -   LBP: ftp adres van de proxy

-   **Gebruikersnaam:** Gebruikersnaam van de proxy

-   **Wachtwoord:** wachtwoord behorende bij de gebruikersnaam

-   **ClientID:** client code zodat in het externe pakket herkent kan
    worden van wie de aanvraag komt

    -   CSI Fresh: ownerCode zoals verstrekt door CSI

    -   Vd Luyt: Klantnummer zoals verstrekt door Vd Luyt

-   **Profiel code**: Profielcode welke diensten worden afgenomen

-   **Base Url vervolg proxy:** Na de export aangifte kan er direct een
    import aangifte in de UK gedaan worden (CSI Fresh only)

-   **Gebruikersnaam vervolg proxy:** Na de export aangifte kan er
    direct een import aangifte in de UK gedaan worden (CSI Fresh only)

-   **Wachtwoord vervolg proxy:** Na de export aangifte kan er direct
    een import aangifte in de UK gedaan worden (CSI Fresh only)

-   **Emailadres bijlage:** Email adres waarnaar de bijlagen voor een
    aanvraag gemaild kunnen worden (momenteel alleen voor CSI Fresh.
    Mail adres moet door CSI Fresh verstrekt worden)

<img src=".Handleiding eCustoms\media\image2.png" style="width:8.8375in;height:3.60972in" />

# eCustoms Transporteur instellen

Per transporteur kan aangegeven worden van welke eCustoms provider
gebruik gemaakt moet worden voor het exporteren van de douane aangifte.
Indien er geen keuze is gemaakt bij de transporteur, wordt teruggevallen
naar de default

Navigator Constanten Organen Transporteurs Transporteur aanmaken tabblad
“*eCustoms”*

Hier dient de gewenste eCustoms provider ingevoerd te worden.

<img src=".Handleiding eCustoms\media\image3.png" style="width:7.7093in;height:5.1886in" />

# eCustoms Transportroute instellen

Per transportroute kunnen een aantal gegevens opgegeven worden die
gehanteerd moeten worden wanneer de betreffende transportroute aan de
factuur is gekoppeld.

Navigator Constanten Statistiek Transportroute Transportroute aanmaken
tabblad *“eCustoms”*

-   **Office of Exit:** *Codering van het Douane kantoor waar de
    goederen de EU verlaten. Indien gevuld gaat deze voor op de waarde
    in de systeeminstellingen.*

-   **Office of Destination:** *Codering van het Douane kantoor waar de
    goederen heen gaan buiten de EU. Indien gevuld gaat deze voor op de
    waarde in de systeeminstellingen.*

-   **Country of Dispatch:** *Land van waaruit vertrokken wordt.*

-   **Versturende debiteur:** *Indien je niet zelf verstuurt, maar
    bijvoorbeeld een LTD in Engeland, die dan ook als debiteur in de
    constanten bestaat.*

-   **Place of Loading:** *Plaats waar de geladen wordt.*

-   **Agreed Location of Goods:**

    -   *LBP: Postcode en huisnummer waar de goederen vertrekken.*

    -   *CSI Fresh: locationCode zoals verstrekt door CSI.*

-   **Retouren debiteur:** *Debiteurnummer waarop de retouren van deze
    route worden verwerkt.*

-   **(Vinkje) Deze transportroute kan worden gekozen bij het indelen
    van douane facturen:**  
    *Indien aangevinkt kan deze route gekozen worden in het douane
    indelen scherm. Indien er geen enkele is aangevinkt kan uit alle
    routes gekozen worden.*

-   **Loadingport:** *UNLO code waar de goederen geladen worden, UNLO
    codes worden door de UNECE beheerd.  
    (alleen van toepassing voor LBP)*

-   **Destinationport:** *UNLO code waar de goederen gelost worden, UNLO
    codes worden door de UNECE beheerd.  
    (alleen van toepassing voor LBP)*

<img src=".Handleiding eCustoms\media\image4.png" style="width:7.83235in;height:5.42641in" />

# eCustoms Debiteur instellingen

Er zijn twee type debiteuren die we moeten instellen. De “Verzamel”
debiteur en de “Eindklanten”. De verzamel debiteur is de debiteur waarop
de totaalfactuur gemaakt wordt (LTD Debiteur). De eindklanten worden
gekoppeld aan deze verzamel debiteur zodat er 1 factuur ontstaat. De
type debiteur kan je instellen op de volgende plek

Navigator Constanten Organen Debiteurgegevens Debiteuren Debiteur openen
tabblad Factuur Douane

**Is het een verzameldebiteur dan stel je het volgende in:**

-   **EORI nummer:** *Het EORI nummer van de debiteur, dit is nodig voor
    de douane aangifte*.

-   **Debiteur is douane verzamel debiteur:** *Indien aangevinkt kan
    deze debiteur gekozen worden als de Douane verzamel debiteur. Voor
    deze debiteur kan uiteindelijk een voertuig factuur gemaakt worden
    en de douane aangifte ingediend worden.*

**Is het een eindklant dan stel je het volgende in:**

-   **Douane verzamel debiteur:** *Debiteur nummer waarop de voertuig
    facturen voor de aangifte gemaakt worden. Indien voor elke debiteur
    apart aangifte gedaan wordt dient deze leeg te blijven.*

<img src=".Handleiding eCustoms\media\image5.png" style="width:8.475in;height:6.3in" />

# eCustoms Financiële Administratie instellen

Er moet voor beide debiteuren (**Verzamel** en **Eindklant**) een aparte
Financiële Administratie komen. De Eindklanten gaan factureren aan de
LTD en dat zal gaan via de Engelse (LTD) Administratie. De Verzamel
debiteur zal gaan factureren aan de Nederlandse Administratie. Let er
wel op dat de financiële administratie goed staat ingesteld bij de
verschillende type klanten. Het aanmaken van een Financiële
Administratie kan hier:

Navigator Constanten Financieel Financiële administratie aanmaken niet
Administratie

Het koppelen van de debiteur aan de de verschillende Adminisitratie kan
hier gedaan worden:

Navigator Constanten Organen Debiteurgegevens Debiteuren Debiteur openen
tabblad Financieel Administratie

<img src=".Handleiding eCustoms\media\image6.png" style="width:8.8375in;height:6.19306in" />

# eCustoms Incoterms aanmaken en instellingen

Voor de **verzamel** debiteur moet je ook aangeven welke incoterms
gekoppeld zijn aan de debiteur. De codering van de incoterms moeten
voldoen aan deze
[lijst](https://www.belastingdienst.nl/codeboek_sagitta/huidig/html/tabel-codeboek%20sagitta%2C%20onderdeel%20algemeen-a14.html)
en kunnen hier worden aangemaakt:

Navigator Constanten Statistiek Incoterms Incoterm aanmaken

Hier kan je dan vervolgens de incoterm koppelen aan de verzamel debiteur

Navigator Constanten Organen Debiteurgegevens Debiteuren Debiteur openen
tabblad Transport Incoterms

<img src=".Handleiding eCustoms\media\image7.png" style="width:8.27986in;height:6.3in" />

# eCustoms Artikelgroep splitscodes instellingen

Per artikelgroep moeten de splitscodes ingevoerd worden voor de landen
waarnaar geëxporteerd wordt. Hier kan je de splits codes per land
invoeren op Artikel niveau.

Navigator Constanten Artikelen Artikel gegevens Artikelgroepen
Artikelgroep openen tabblad Algemeen Landspec openen

<img src=".Handleiding eCustoms\media\image8.png" style="width:8.64475in;height:6.07216in" />

# eCustoms Fust Instellingen

Per Fustcode moet er een Douane fust code ingevoerd worden. Codering van
de fustcode moeten voldoen zoals door de douane gehanteerd. Als deze
niet gevuld is dan vindt de douane aanvraag niet plaats. Hier een lijst
met de coderingen voor de douane fustcodes die je kan gebruiken [Douane
fustcodes](https://www.belastingdienst.nl/codeboek_sagitta/huidig/html/tabel-codeboek%2C%20onderdeel%20aangiftebehandeling-a25.html).
Hier kan je dan de codering koppelen aan de verschillende fustcodes

Navigator Constanten Artikelen Fust gegevens Fustsoorten Fustcode openen
tabblad eCustoms Douane fustcode invoeren

<img src=".Handleiding eCustoms\media\image9.png" style="width:7.8636in;height:5.78053in" />

# Fust splistcodes Instellingen

Bij de fusten moet de splits-code voor het fust ingevoerd worden voor
het land waarnaar geëxporteerd wordt. Dat kan gedaan worden op de
volgende plek

Navigator Constanten Artikelen Fust gegevens Fustsoorten Fustcode openen
tabblad Fust Landspec openen

Hier kan de Splits-code ingevoerd worden per land per fusttype

<img src=".Handleiding eCustoms\media\image10.png" style="width:6.42778in;height:6.3in" />

#  eCustoms Valuta Instellingen

Bij de valuta die je gaat gebruiken moet de statische conversie gevuld
worden. Hier dient de juiste valuta gekozen worden. De statische
conversie valuta bevat de ISO valuta code die nodig is voor de export en
de douane aangifte. De statische conversie kan hier worden ingevuld

Navigator Constanten Financieel Artikel gegevens Valuta codes Valuta
openen tabblad Valuta Stat.conversie invullen

<img src=".Handleiding eCustoms\media\image11.png" style="width:7.14494in;height:4.98896in" />

# eCustoms Land instellingen

Bij de gebruikte landen moet de statische conversie gevuld worden. De
statische conversie land bevat de ISO land code die nodig is voor de
export en de aangifte bij de douane. Hier kan de waarde ingevuld worden
per land

Navigator Constanten Locaties Regio’s Landen Land openen tabblad
Algemeen Stat. Conversie invullen

<img src=".Handleiding eCustoms\media\image12.png" style="width:7.60764in;height:6.3in" />

# eCustoms Timers (Optineel)

Voor eCustoms zijn de volgende timer processen beschikbaar

**eCustoms Fust Facturen Aanmaken**

Hiermee kunnen fust facturen aangemaakt worden voor de retour rit. Een
csv met fustinformatie wordt uit een mail gehaald, hier wordt een
factuur voor gemaakt voor de douane en per debiteur worden er credit
facturen gemaakt. De douane factuur wordt definitief gemaakt en er wordt
een douane aanvraag ingediend bij de gespecificeerde eCustoms proxy.

**eCustoms resultaat ophalen**

Hiermee wordt gecontroleerd of de ingediende aanvraag al klaar is en of
er een NRM nummer beschikbaar is. Afhankelijk van de proxy wordt er
informatie opgehaald en verwerkt in Florisoft. Dit timer proces loopt
automatisch over alle proxies die in de constanten zijn ingevoerd.

<u>Hieronder gaan we de stappen van de beide Timers uitschrijven</u>

Voor de eerste Timerfunctie **‘’*eCustoms Fust Facturen Aanmaken’’***
moeten we een Excel sjabloon aanmaken.

Het sjabloon soort moet ‘’*Douane fust factuur’’* zijn en alle 4 de
velden zijn verplicht om te gebruiken, anders is er onvoldoende
informatie voor het douane document. Hier kunnen we het sjabloon
aanmaken in de constanten

Navigator Constanten Systeem Excel Sjabloon Excel Sjabloon openen of
aanmaken

<img src=".Handleiding eCustoms\media\image13.png" style="width:8.2698in;height:5.65554in" />

# eCustoms Timers

De waarde van ***‘’ transport route nr***’’ moet een bestaande transport
route in de constanten zijn. Dit moet een aparte transport route zijn
met de juiste gegevens (*een route die de UK verlaat*). Hier kan je de
route aanmaken

Navigator Constanten Statistiek Transportroute Transportroute aanmaken
tabblad *“eCustoms”*

Hier een korte beschrijving van wat er bij welk veld verwacht wordt

-   **Office of exit**: Douane kantoor nummer bij verlaten UK

-   **Office of destination:** Douane kantoor bij binnenkomst EU

-   **Country of dispatch**: VK

-   **Versturende debiteur**: Vaak een LTD in het VK

-   **Place of loading:** locatie waar het fust zich bevind op moment
    van douane aanvraag

-   **Retouren debiteur:** Bedrijf zelf, waar de fusten heen moeten in
    Nederland

<img src=".Handleiding eCustoms\media\image14.png" style="width:7.83235in;height:5.42641in" />

# eCustoms Timers

Dan moeten we nog een timer setting aanzetten die de actie gaat
uitvoeren. Dat kan gedaan worden op de volgende locatie

Navigator Timer Settings *(Rechter muisknop op Timer icoon)* Timer
settings Kies setting “*eCustoms Fust Facturen Aanmaken*”  
Instellingen invoeren

Hier wat uitleg van de dingen die je moet invullen

-   **Sjabloon voor het inlezen van fust gegevens:** Bovenstaand
    aangemaakt excel sjabloon

-   **Pop server adres:** mail server adres waar de mail met
    fustgegevens van gehaald kan worden

-   **Pop server userid:** userid van de mailserver

-   **Pop server password:** password van de mailserver

-   **SSL:** Moet er SSL worden gebruikt om de mail op te halen

-   **Fouten email adres:** Naar welk email adres moet er een mail
    worden gestuurd als er fouten optreden. De gevonden fouten zijn
    dikgedrukt in de mail. Als het timer proces handmatig wordt
    uitgevoerd, dan wordt er, ongeacht of er fouten optreden in het
    proces, altijd een mail gestuurd met de status informatie van het
    proces.

-   **Verstuur de fust facturen naar de ecustoms proxies**: Als het niet
    gewenst is om de fust facturen te versturen naar de douane proxy,
    dan kan deze instelling uit worden gezet. Standaard staat deze aan.
    Alle overige stappen zoals het aanmaken van de klant en douane
    facturen worden wel gewoon uitgevoerd.

<img src=".Handleiding eCustoms\media\image15.png" style="width:8.8375in;height:5.67083in" />

# eCustoms Timers

Voor de tweede Timerfunctie **‘’eCustoms resultaat ophalen’’** hoeven we
verder niets aparts in te stellen behalve de Timer setting. Hiermee
wordt gecontroleerd of de ingediende aanvraag al klaar is en of er een
NRM nummer beschikbaar is. Afhankelijk van de proxy wordt er informatie
opgehaald en verwerkt in Florisoft. Dit timer proces loopt automatisch
over alle proxies die in de constanten zijn ingevoerd. Voor elke proxy
waarbij de mogelijkheid bestaat om resultaten op te halen, wordt er
gecontroleerd of er resultaten zijn. Dit wordt geüpdatet in het Douane
Facturen overzicht. Hierover straks meer uitleg. Hier kan je de Timer
setting aanzetten

Navigator Timer Settings *(Rechter muisknop op Timer icoon)* Timer
settings Kies setting “*eCustoms resultaat ophalen*”  
Instellingen invoeren

<img src=".Handleiding eCustoms\media\image16.png" style="width:8.8375in;height:5.67083in" />
