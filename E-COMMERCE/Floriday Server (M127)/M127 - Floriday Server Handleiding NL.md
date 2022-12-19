<img src="../../fslogo.png" alt="Florisoft bedrijfslogo">

# Florisoft Handleiding Floriday Server (M127)

Dit document beschrijft wat er benodigd is om een koppeling met Floriday in te richten voor de kweker omgeving. Er wordt stapsgewijs uitgelegd welke instellingen er benodigd zijn, daarbij zal er uitgelegd worden hoe de synchronisatie met Floriday werkt.

Eerst zullen de benodigdheden in volgorde worden beschreven en daarna wordt stapsgewijs uitgelegd hoe deze in te richten componenten in elkaar vallen om een Floriday connectie aan te maken.

## Inhoudsopgave

[Aanmaken van een bestellijst](#aanmaken-van-een-bestellijst)  
[Aanmaken van een voorraad](#aanmaken-van-een-voorraad)  
[Aanmaken van een debiteur](#aanmaken-van-een-debiteur)  
[Aanmaken van een leverancier](#aanmaken-van-een-leverancier)  
[Koppelen van veilingkopers aan debiteuren](#koppelen-van-veilingkopers-aan-debiteuren)  
[Fust en volume instellingen](#fust-en-volume-instellingen)  
[Verplichte waardes voor bestelpartijen](#verplichte-waardes-voor-bestelpartijen)  
[Aanvragen API key](#aanvragen-api-key)
[Verdere werking](#verdere-werking)  
[Partijen nogmaals uploaden naar Floriday nadat je ze daar hebt verwijderd](#partijen-nogmaals-uploaden-naar-floriday-nadat-je-ze-daar-hebt-verwijderd)    


## Aanmaken van een bestellijst

De bestellijst wordt gebruikt voor het vullen van de Catalogus op Floriday. Hiervoor kan een bestaande bestellijst gebruikt worden of een nieuwe voor worden aangemaakt. Deze bestellijst zal uiteindelijk gebruikt worden om bestellingen over te hevelen naar de voorraad. Het is belangrijk dat artikelen voorzien zijn van de leverancierscode die aangemaakt is om te synchroniseren, of binnen de ingestelde aanbod leveranciers aanwezig is.

*Volg de onderstaande stappen om een bestellijst aan te maken of in te stellen (Indien u werkt met een bestaande bestellijst start dan op stap **4**)*:

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constanten scherm(#1) en navigeer naar het volgende pad:<br>**Locaties**(#1)→**Bestellijsten**(#2)→**Bestellijsten**<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".Floriday Server NL/.media/image1.png"></details>|
|**2**|Klik vervolgens op het plus icoontje om een nieuwe bestellijst aan te maken. Dit opent een nieuw bestellijst creatie/instelling scherm.|
|**3**|Vul de volgende velden in:<br>- **Lijstcode**: unieke lijst identificatie code.<br> - **Omschrijving** in het systeem zichtbare beschrijving van de bestellijst.<br><br>Sla de bestellijst op om door te gaan met de volgende stappen.|
|**4**|Open de zojuist aangemaakte of desbetreffende bestellijst.|
|**5**|Navigeer naar de volgende map:<Br>**Internet toegang**|
|**6**|Zet in dit instellingen scherm de checkbox "*Deze bestellijst staat open op de webshop*" aan.|
|**7**|Stel vervolgens een openingstijd in voor de bestellijst op de webshop doormiddel van de "*Openingstijden webshop*" dropdown. <br>**Optioneel**: *Mocht u andere openingstijden aan willen maken kunt u dat ook doen in de constanten in het pad:*<br>**Systeem**→**Dagen en tijden**→**Tijden**|

## Aanmaken van een voorraad

De voorraad wordt gebruikt om het aanbod te publiceren op Floriday voor de kopers. Ook hier is het belangrijk dat de artikelen die gepubliceerd worden, gekoppeld zijn aan de gebruikte leverancier om te synchroniseren of in het aanbod leveranciers aanwezig is. Omdat Floriday werkt op basis van de Catalogus die vanuit Florisoft als bestellijst gebruiken, is het belangrijk dat de artikelen in de voorraad een match hebben met de gepubliceerde bestellijst. Het bestelpartijnummer van de voorraad moet een match hebben met de artikelen in de bestellijst. Is deze relatie er niet dan worden de artikelen uit de voorraad niet gepubliceerd op Floriday.

*Volg de onderstaande stappen om een voorraad aan te maken of in te stellen (Indien u werkt met een bestaande voorraad start dan op stap **4**)*

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constanten scherm indien u deze nog niet open had staan en navigeer naar het volgende pad:<br>**Locaties**→**Voorraden**→**Voorraden**|
|**2**|Klik vervolgens op het plus icoontje om een nieuwe voorraad aan te maken. Dit opent een template keuze scherm voor het aanmaken van een voorraad voor onze doeleinden kiezen we voor het template '*Template Cel voorraad*' en klikken we vervolgens op "**Ok**". |
|**3**|We zijn zojuist in het voorraad creatie/instelling scherm terecht gekomen. *Pas hier de volgende instellingen aan:*<br>- **Voorraadcode**: unieke identificatie code voor de voorraad.<br>- **Omschrijving**: de in het systeem zichtbare beschrijving van de voorraad.|
|**4**|Sla de nieuwe voorraad vervolgens op door op de **Ok** knop te drukken. En de aanpassingen te bevestigen.|
|**5**|Open de zojuist aangemaakte of desbetreffende voorraad door tweemaal op een voorraad rij te klikken met de linker muisknop.|
|**6**|Navigeer nu naar het mapje *Webwinkel* → (*Algemeen*). Pas hier de volgende instellingen aan:<br>- **Deze voorraad staat open op de webshop**: staat aangevinkt.<br>- **Openingstijden**: kies hier de juiste openingstijd.<br><br>*Mocht u andere openingstijden aan willen maken kan u dat ook doen in de constanten in het pad:*<br>**Systeem**→**Dagen en tijden**→**Tijden**|

*Op basis van de bestellijst dienen voorraadpartijen aangemaakt te worden ( door bijv. overhevelen ). Alle verplichte velden zijn nodig voor de catalogus. Voorraad aanbod heeft minimale informatie nodig ( prijs, totaal aantal stelen, periode van aanbieden )*

## Aanmaken van een debiteur

Waarvoor dient er een aparte debiteur aangemaakt te worden voor Floriday?

Aangezien Florisoft gebruik maakt van een interne bestellijst- en voorraadkoppeling, is het verstandig om hiervoor een aparte debiteur aan te maken. Bij deze debiteur wordt er ingesteld welke bestellijst(en) en welke voor(r)a(a)d(en) er gebruikt worden om aanbod van aan te maken op Floriday.

**Tip:** *Gebruik een debiteurnummer of debiteurnaam waarin Floriday verwerkt is, zodat deze debiteur snel gevonden kan worden indien er iets gewijzigd dient te worden. Bijv. als debiteurnummer: FLDAY*

Volg de onderstaande stappen voor het aanmaken of instellen van een debiteur, indien u verder wilt werken met een bestaande debiteur kan u starten op stap **4**.:

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constantenscherm indien u deze nog niet open had staan, navigeer vervolgens naar het volgende pad: <br>**Organen**→**Debiteurgegevens**→**Debiteuren**|
|**2**|Klik op het plus icoontje om een nieuwe debiteur aan te maken. Dit opent het debiteur create/instellingen scherm. Pas in dit scherm de volgende instellingen aan: <br> - **Deb.nummer**: unieke identificatie code van de debiteur, het wordt aangeraden om hier Floriday in te vewerken bijv.: *FLDAY*<br> - **Zoek**: de zoek code waarmee de debiteur snel teruggevonden kan worden in het Florisoft systeem.<br> - **Bedrijfsnaam**: de bedrijfsnaam hier kan u ook Floriday in verwerken zodat het herkenbaar is en blijft.|
|**3**|Sla vervolgens de debiteur op door op de **Ok** knop te drukken en vervolgens de aanpassingen te bevestigen.|
|**4**|(Her)open de zojuist aangemaakte of desbetreffende debiteur door tweemaal met linker muisknop op de bijhorende tabelrij te klikken.|
|**5**|Navigeer in debiteurinstellingen scherm naar het volgende pad:<br> **Internet**→**Internet toegang**|
|**6**|Maak een bestellijst toegankelijk voor de webshop, deze word gebruikt om de catalogus van Floridya te vullen. <br>*Doe dit door op de knop 'Toegankelijke bestellijsten' te drukken.*|
|**7**|In het nieuw te voorschijn gekomen scherm vinkt u in de tabel de '**A**' en '**T**' bij de Floriday bestellijst. Druk vervolgens op '**Ok**' om te bevestigen.|
|**8**|Maak een voorraad toegankelijk voor de webshop, deze word gebruikt om de catalogus van Floridya te vullen. <br>*Doe dit door op de knop 'Toegankelijke voorraden' te drukken.*|
|**9**|In het nieuw te voorschijn gekomen scherm vinkt u in de tabel de '**A**' en '**T**' bij de Floriday voorraad. Druk vervolgens op '**Ok**' om te bevestigen.|
|**10**|Vul een webshop wachtwoord in voor de debiteur in het veld '**Password voor klant**|
|**11**|Vink de optie '*Deze klant heeft toegang tot internet*' aan om de debiteur toegang te geven tot de webshop.|
|**12**|Vink de optie '*Deze klant mag ophalen via de webservice koppelingen*' **aan**.|
|**13**|Vink de optie '*Deze klant mag inloggen in Florishop*' **aan**.|

**Tip:** *Het aanbod wat op Floriday komt kan gecontroleerd worden door in te loggen op de eigen webshop. De partijen in de bestellijsten en voorraden die beschikbaar zijn worden met Floriday gesynchroniseerd.*

## Aanmaken van een leverancier

Bij de leverancier wordt de koppeling met Floriday vast gelegd. Hiervoor kan worden gekozen om een nieuwe leverancier voor aan te maken, of een bestaande te hergebruiken.

> Normaliter bevatten de bestelpartijen als de voorraadpartijen de eigen leverancierscode van de kweker, enkel partijen met een overeenkomende leverancierscode worden gesynchroniseerd*

> *Er kan per leverancier opgegeven worden om ook bestelpartijen en voorraadpartijen van andere leverancierscodes te synchroniseren via Aanbod leveranciers. De huidige leverancier is dan het hoofdaccount.

*Volg de onderstaande stappen om een leverancier aan te maken en of in te stellen, mocht u al een leverancier aangemaakt hebben binnen Florisoft start dan bij stap **5**.*

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constanten scherm indien u deze nog niet open had en navigeer naar het pad:<br>**Organen**→**Leveranciersgegevens**→**Leveranciers**|
|**2**|Maak een nieuwe leverancier aan door op het + icoon te drukken, dit opent het leverancier creatie/instelling scherm.|
|**3**|Vul de volgende velden in:<br>- **Lev.code**: vul hier FLRDY in om het herkenbaar te maken als Floriday leverancier.<br>- **Zoek**: vul hier de zoekcode, hier nogmaals iets Floriday gerelateerd invullen zoals: **FLRDY**.<br>- **Bedrijfsnaam**: vul bij de bedrijfsnaam Floriday om het herkenbaar te maken.|
|**4**|Sla de nieuwe leverancier op door op **Ok** te drukken en het opslaan te bevestigen.|
|**5**|(Her)open de (zojuist aangemaakte) leverancier door tweemaal met de linkermuisknop op de leverancier's regel te klikken.|
|**6**|Navigeer naar het mapje *Webservice* in het leverancierinstelling scherm. *Pas hier de volgende instellingen aan*:<Br>- **Activeren voor voorraadkoppeling**: *vink deze optie aan*.<br>- **Type webservice**: *zet de dropdown op de optie "Floriday Kweker Api_v2"*<br>- **URL**: *Vul hier de Floriday webservice URL in (URL + /floriday.asmx)*<br>- **Userid**:*Vul hier het debiteurnummer die zojuist is aangemaakt voor Floriday*<br>- **Wachtwoord**: *Vul hier het wachtwoord in wat ingevuld is bij de debiteur*<br>- **Binnenkomende voorraad**: *Dit wordt de back-up voorraad*<br>- **API key**: *Vul hier de API key in die gegenereerd is door Floriday* <br>- **Default warehouse:** *Via "Select warehouse" kan de voorraad gekozen worden waarin het aanbod in geplaatst wordt, deze is nodig om de sales-orders te synchroniseren*|
|**6.a**|De volgende instellingen zijn optioneel:<br>- **Prefix ordernummer**: *Hier kan een voorletter/cijfer geven aan de orders die binnenkomen vanaf Floriday*<br>- **Aanbod leveranciers**: *Hier is het mogelijk om leverancierscodes in te vullen waarvan de bestelpartijen en voorraadpartijen ook van gesynchroniseerd moeten worden richting Floriday.*|

## Aanmaken van een back-up voorraad

De back-up voorraad is een voorraad die wordt gebruikt op het moment dat er een koop gedaan wordt op Floriday maar er geen match gemaakt kan worden met een partij in de voorraad die aangeboden wordt. Indien deze situatie zich voor doet, dan wordt er een nieuwe partijregel aangemaakt in de back-up voorraad met daarop de verdeling van de koop. De partij wordt voorzien van de opmerking: Missing: Partij onbekend.

Qua het instellen van de backup voorraad verschilt niks met een reguliere voorraad in Florisoft. Het is dus een standaard voorraad waar niks speciaals voor ingesteld moet worden.

Dit is alleen een voorraad die gevuld wordt bij de Leverancier als binnenkomende voorraad. U heeft dus enkel alleen een voorraad aan te maken met de verplichte velden, om vervolgens deze voorraad aan te geven in de leverancier instelling '*Binnenkomende voorraad*'.

## Koppelen van veilingkopers aan debiteuren

Indien er een koop ontvangen wordt van een debiteur die nog niet bekend is in het systeem van Florisoft dan zal de koop binnen komen het debiteurnummer wat gevuld is bij de Leverancier met als ordernummer het Veiling koper nummer. Dit veilingkopernummer kan opgezocht worden in de constanten en koppelen aan een bestaande debiteur. Bestaat de debiteur helemaal nog niet in Florisoft dan moet er eerst een nieuwe debiteur aanmaken die daarna gekoppeld kan worden.

Instellen van de veilingkoper

* Vul de GLN code bij de koper in, deze wordt gebruik om een match te maken met een sales-order die ontvangen wordt vanuit Floriday.

* Vul daarbij de Debnr, dit is de eindklant. Dit debiteurnummer wordt gebruikt om de verdeling op aan te maken.

>Tip!: Florisoft vult de veilingkoper tabel ook middels de VBNImport via de timer.

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constanten scherm indien deze nog open stond, en navigeer naar:<br>**Organen**→**Veiling kopers**|
|**2**|Open vervolgens een veiling koper waarvan u een debiteur nummer wil invullen door tweemaal met de linkermuisknop op de debiteurregel te klikken.|
|**3**|Vul hier het veld **Debnr** waarmee de veilingkoper aangelinkt is.|
|**4**|Sluit vervolgens de veilingkoper af door op de '*Ok*' knop te drukken.|
|**5**|Navigeer vervolgens naar het pad:<br>**Organen**→**Debiteurgegevens**→**Debiteuren**|
|**6**|Open vervolgens de debiteur die bij de veiling koper hoort. Vul in het zojuist geopende scherm het veld **GLN code** in wat ook te vinden was in de veiling koper.|

## Fust en volume instellingen

Floriday heeft het volume van het fust nodig om een berekening te kunnen maken van de gekochte handel. Aan de hand hiervan kan dan een kar ingedeeld worden.

### Volume van het fust instellen

Floriday heeft voor het berekenen van de belading het volume nodig van het type fust die gevuld staan bij de partijen. Het is daarom belangrijk dat dit in de constanten ingevuld staat bij elk type fust dat gebruik gaat worden op Floriday.

*Om dit te checken volgt u de onderstaande stappen:*

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constanten scherm indien u deze nog niet geopend had en navigeer naar het pad:<br>**Artikelen**→**Fust gegevens**→**Fustsoorten** |
|**2**|Zoek hier doormiddel van de zoek functie (Of met het blote oog) naar het juiste fusttype dat gebruikt gaat worden.|
|**3**|Open vervolgens het juiste fusttype door tweemaal op de bijhorende tabelregel te klikken met de linkermuisknop.|
|**4**|Navigeer in het zojuist geopende scherm naar het mapje '*Volume*' en check of de volgende gegevens (correct) zijn ingevuld:<br>- Lengte (in cm)<br>- Breedte (in cm)<br>- Hoogte (in cm)|

Het volume wordt vervolgens automatisch berekend in m3.

## Verplichte waardes voor bestelpartijen

Voor het publiceren van een bestelpartij op Floriday moet een bestelpartij aan een bepaald aantal voorwaarden voldoen.

De volgende waardes moeten gevuld worden:

|Artikel|
|:--|
|Veiling artikelnummer  (wordt artikelnummer van de partij indien leeg bij artikel, dan is het artikelnummer al reeds het veiling artikelnummer)|

|Bestelpartij|
|:--|
|Omschrijving|
|Fustcode|
|Inhoud Kar|
|Inhoud Plaat|
|Inhoud Bos|
|Inhoud Fust|
|Foto|
|Verplichte sorteringskenmerken volgens Floricode|
|Leverancier|
|Zorg ook dat de kwaliteitscode (SRT kolom bestellijst. bijvoorbeeld met A1)gevuld is!|

**Let op:** *de bunchesperpackage van Floriday wordt bepaald op basis van inhkolli / inhbos (en de waarde ervan moet liggen tussen 1 en 9999). Mocht je dus de volgende melding krijgen: The field BunchesPerPackage must be between 1 and 9999, dan kloppen de waardes van inhkolli en inhbos dus niet.*


## Aanvragen API key

De API key kan opgevraagd worden via de portal van Floriday. Deze is nodig om de connectie op te zetten tussen de Florisoft en Floriday.

*Volg de onderstaande stappen*

|Stap|Uitleg|
|:--|:--|
|**1**|Log in op het Floriday platform.|
|**2**|Via het menu rechts bovenin, navigeer naar “Instellingen”|
|**3**|Navigeer naar Apps & koppelingen|
|**4**|Zoek hier naar Florisoft|
|**5**|Selecteer Florisoft|
|**6**|Selecteer Applicatie toevoegen?|
|**7**|Er zal nu een API key getoond worden.|

Deze API key dient gevuld te worden in Florisoft bij de leverancier die de synchronisatie zal uitvoeren.

## Partijen nogmaals uploaden naar Floriday (nadat je ze daar hebt verwijderd)

Het is mogelijk om dezelfde partijen nogmaals te uploaden naar Floriday (nadat ze verwijderd zijn). Eerst moeten er wat acties verricht worden in Florisoft zodat je niet de melding '*A trade item with this item ID already exists*' krijgt.

*Volg de onderstaande stappen:*

|Stap|Uitleg|
|:--|:--|
|**1**|Open de Florisoft navigator en klik op de knop '*Bestellijsten*' om het bestellijstenscherm te openen.|
|**2**|Klik ik de bovenste balk en klik op de optie **Opties**, dit opent een klein dialoog scherm.|
|**3**|Klik vervolgens op de optie/knop "**Reset Floriday Guids**|

<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Floriday Server NL/.media/image2.png"></details>

