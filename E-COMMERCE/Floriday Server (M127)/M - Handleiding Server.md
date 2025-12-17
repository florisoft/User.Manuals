<img src="../../fslogo.png">

# Handleiding Floriday Server

In deze handleiding leest u wat er benodigd is om een koppeling met Floriday in te richten voor de kwekeromgeving. Vervolgens wordt er stapsgewijs uitgelegd welke instellingen er benodigd zijn en waar deze te vinden zijn. Vervolgens zal er uitgelegd worden hoe deze synchronisatie met Floriday werkt.

## Inhoudsopgave

[Aanmaken van een bestellijst](#aanmaken-van-een-bestellijst)  
[Aanmaken van een voorraad](#aanmaken-van-een-voorraad)  
[Aanmaken van een debiteur](#aanmaken-van-een-debiteur)  
[Instellen van een debiteur](#instellen-van-een-debiteur)  
[Aanmaken van een back-up voorraad](#aanmaken-van-een-back-up-voorraad)  
[Koppelen van veilingkopers aan debiteuren](#kopelen-van-veilingkopers-aan-debiteuren)  
[Verplichte waarde voor bestelpartijen](#verplichte-waarde-voor-bestelpartijen)  
[Aanvragen API key](#aanvragen-api-key)  
[Partijen nogmaals uploaden naar Floriday nadat je ze daar hebt verwijderd](#partijen-nogmaals-uploaden-naar-floriday-nadat-je-ze-daar-hebt-verwijderd)  


## Aanmaken van een bestellijst

De bestellijst wordt gebruikt voor het vullen van de Catalogus op Floriday. Hiervoor kan een bestaande bestellijst gebruikt worden of een nieuwe voor worden aangemaakt. Deze bestellijst zal uiteindelijk gebruikt worden om bestellingen over te hevelen naar de voorraad. Het is belangrijk dat artikelen voorzien zijn van de leverancierscode die aangemaakt is om te synchroniseren, of binnen de ingestelde aanbod leveranciers aanwezig is.

*Volg de onderstaande stappen om een bestellijst om een bestellijst in te stellen:*

|Stap|Uitleg|
|:--|:--|
|**1**|Open uw constantenscherm en navigeer naar het volgende pad:<br>**Locaties→Bestellijsten→Bestellijsten**<Br>Open vervolgens een bestellijst of maak er indien nodig een aan met de + knop.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/1.png"></details>|
|**2**|In de bestellijstkaart navigeert u naar het volgende pad:<br>**Internet toegang**.|
|**3**|Zet hier de instelling "**Deze bestellijst staat open op de webshop**" aan door een vinkje te plaatsen.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/1.png"></details>|
|**4**|Zorg er voor dat de instelling **Openingstijden webshop** een passende openingstijd heeft zoals *Altijd open 99*.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/2.png"></details>|

## Aanmaken van een voorraad

De voorraad wordt gebruikt om het aanbod te publiceren op Floriday voor de kopers. Ook hier is het belangrijk dat de artikelen die gepubliceerd worden, gekoppeld zijn aan de gebruikte leverancier om te synchroniseren of in de aanbod leveranciers aanwezig is. Omdat Floriday werkt op basis van de Catalogus die vanuit Florisoft als bestellijst gebruiken, is het belangrijk dat de artikelen in de voorraad een match hebben met de gepubliceerde bestellijst. Het bestelpartijnummer van de voorraad moet een match hebben met de artikelen in de bestellijst. Is deze relatie er niet dan worden de artikelen uit de voorraad niet gepubliceerd op Floriday.

|Stap|Uitleg|
|:--|:--|
|**1**|Open uw constantenscherm nen navigeer naar het volgende pad:<br>**Locaties→Voorraden→Voorraden**<br>U kan er hier voor kiezen om een aparte voorraad aan te maken dmv. de + knop of een voorraadkaart te openen.|
|**2**|In de voorraadkaart navigeert u naar het volgende pad:<Br>**Webwinkel→(In het tabje) Algemeen**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/3.png"></details>|
|**3**|Zet een vinkje bij de instelling **Deze voorraad staat open op de webshop**.|
|**4**|Zorg dat er bij de instelling **Openingstijden** een passende tijd staat, bijvoorbeeld *"altijd open 99"*.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/4.png"></details>|

Op basis van de bestellijst dienen voorraadpartijen aangemaakt te worden ( door bijv. overhevelen ). Alle verplichte velden zijn nodig voor de catalogus. Voorraad aanbod heeft minimale informatie nodig ( prijs, totaal aantal stelen, periode van aanbieden )

## Aanmaken van een debiteur

*Waarvoor dient er een aparte debiteur aangemaakt te worden voor Floriday?*

Aangezien Florisoft gebruik maakt van een interne bestellijst- en voorraadkoppeling, is het verstandig om hiervoor een aparte debiteur aan te maken. Bij deze debiteur wordt er ingesteld welke bestellijst(en) en welke voor(r)a(a)d(en) er gebruikt worden om aanbod van aan te maken op Floriday

|:bulb:|Gebruik een debiteurnummer of debiteurnaam waarin Floriday verwerkt is, zodat deze debiteur snel gevonden kan worden indien er iets gewijzigd dient te worden. Bijv. als debiteurnummer: FLDAY|
|:--|:--|

### Instellen van een debiteur

*Volg de onderstaande stappen om een debiteur in te stellen*:

|Stap|Uitleg|
|:--|:--|
|**1**|Open uw constantenscherm en navigeer naar het volgende pad:<Br>**Organen→Debiteurgegevens→Debiteuren**<br>*Open een debiteur of maak deze aan dmv. de + knop.*<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/5.png"></details>|
|**2**|In de debiteurkaart navigeert u naar het volgende pad:<br>**Internet→Internet toegang**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/6.png"></details>|
|**3**|Klik op de knop **Toegankelijke bestellijsten** en zorg er voor dat deze debiteur rechten heeft op de eerder ingestelde bestellijst.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/6.png"></details>|
|**4**|Klik op de knop **Toegankelijke voorraden**, zorg er voor dat de ze debiteur rechten heeft op de eerder ingestelde voorraad.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/6.png"></details>|
|**5**|Vul vervolgens een wachtwoord in het veld **Password voor klant**.|
|**6**|Zorg ervoor dat deze debiteur mag ophalen via de webservice koppeling, dit doen door een vinkje te plaatsen bij de instelling: **Deze klant mag ophalen via de webservice koppelingen**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/6.png"></details>|
|**7**|Zet tenslotte ook nog een vinkje bij de instelling: **Deze klant mag inloggen in Florishop**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/6.png"></details>|

|:bulb:| Het aanbod wat op Floriday komt kan gecontroleerd worden door in te loggen op de eigen webshop. De partijen in de bestellijsten en voorraden die beschikbaar zijn worden met Floriday gesynchroniseerd.|
|:--|:--|

## Aanmaken van een leverancier

Bij de leverancier wordt de koppeling met Floriday vast gelegd. Hiervoor kan worden gekozen om een nieuwe leverancier voor aan te maken, of een bestaande te hergebruiken.

|:bulb:| Normaliter bevatten de bestelpartijen als de voorraadpartijen de eigen leverancierscode van de kweker, enkel partijen met een overeenkomende leverancierscode worden gesynchroniseerd*|
|:--|:--|

|:bulb:| *Er kan per leverancier opgegeven worden om ook bestelpartijen en voorraadpartijen van andere leverancierscodes te synchroniseren via Aanbod leveranciers. De huidige leverancier is dan het hoofdaccount.|
|:--|:--|

*Volg de onderstaande stappen om een leverancier in te stellen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Open uw constantenscherm en navigeer naar het volgende pad:<br>**Organen→Leveranciergegevens→Leveranciers**<br>Open een leverancier of maak er een aan dmv. de + knop.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/8.png"></details>|
|**2**|Navigeer in de leverancierkaart naar het volgende pad:<Br>**Webservice**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/9.png"></details>|
|**3**|Kies in de dropdown optie **Type webservice** voor de waarde **Floriday Kweker Api_v2**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/10.png"></details>|
|**4**|Vul in het invoerveld **URL**, uw florishop url + de waarde */floriday.asmx* (aan elkaar geschreven) in.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/10.png"></details>|
|**5**|In het veld **Userid** het debiteurnummer in die u zojuist heeft ingesteld.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/10.png"></details>|
|**6**|In het veld **Wachtwoord** vult u het wachtwoord in dat u eerder heeft ingesteld voor de Floriday gerelateerde debiteur.|
|**7**|In de dropdown **Binnenkomende voorraad** stelt u de back-up voorraad in. <br><br>:warning: : *Het kan voorkomen dat er een order binnenkomt waarvan de voorraad partij is verwijderd, dan zal deze in de ingevulde voorraad terecht komen.*<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/10.png"></details>|
|**8**|Het invoerveld **API key** voert de API sleutel in die door Floriday gegenereerd is.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/10.png"></details>|
|**9**|Via **Select warehouse** kan de voorraad gekozen worden waarin het aanbod in geplaatst wordt, deze is nodig om de sales-orders te synchroniseren<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/10.png"></details>|

:gear: **Daarnaast kan u de volgende optionele waarden instellen**:

|Stap|Uitleg|
|:--|:--|
|**1**|**Prefix ordernummer:** Hier kan een voorletter/cijfer geven aan de orders die binnenkomen vanaf floriday.<br><br>:bulb: *Aangeraden wordt om deze te vullen indien er nog apart connect transacties worden gedaan vanuit Florisoft, zo loopt de handel niet door elkaar.*|
|**2**|**Aanbod leveranciers:** Hier is het mogelijk om leverancierscodes in te vullen waarvan de bestelpartijen en voorraadpartijen ook van gesynchroniseerd moeten worden richting Floriday.|

## Aanmaken van een back-up voorraad

De back-up voorraad is een voorraad die wordt gebruikt op het moment dat er een koop gedaan wordt op floriday maar er geen match gemaakt kan worden met een partij in de voorraad die aangeboden wordt. Indien deze situatie zich voor doet, dan wordt er een nieuwe partijregel aangemaakt in de back-up voorraad met daarop de verdeling van de koop. De partij wordt voorzien van de opmerking: Missing: Partij onbekend.

*Volg de onderstaande stappen om de back-up voorraden aan te maken mocht deze nog niet bestaan uw systeem:*

|Stap|Uitleg|
|:--|:--|
|**1**|In het constantenscherm navigeert u naar het pad:<br>**Locaties→Voorraden→Voorraden**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/3.png"></details>|
|**2**|Maak hier een voorraad aan door op de + knop te drukken, in principe is dit gewoon en standaard voorraad en hoeft er niets speciaals ingesteld te worden.|
|**3**|Mocht u deze voorraad nog niet aangegeven hebben als binnenkomende voorraad ga dan terug naar [de bijhorende stap (#7)](#aanmaken-van-een-leverancier).| 

## Koppelen van veilingkopers aan debiteuren

Indien er een koop ontvangen wordt van een debiteur die nog niet bekend is in het systeem van Florisoft dan zal de koop binnen komen het debiteurnummer wat gevuld is bij de Leverancier met als ordernummer het Veiling koper nummer. Dit veilingkopernummer kan opgezocht worden in de constanten en koppelen aan een bestaande debiteur. Bestaat de debiteur helemaal nog niet in Florisoft dan moet er eerst een nieuwe debiteur aanmaken die daarna gekoppeld kan worden.

Voor Floriday kan ook de logica van het verwerken van sales order van Floramondo worden gebruikt. Hiervoor moet de GLN code van de koper met veilcode 01 bestaan in de KOPERS tabel ( dus de veilkopers). Hiervoor moet bij de leverancier wel de setting **FloridayPrefixOrdernummer** gevuld zijn. Ook moet hiervoor bij de floriday debiteur een veilingcode gevuld zijn.

*U stelt dit dit in door de volgende stappen uit te voeren:*

**Instellen veilingkoper**

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer in het constantenscherm naar het onderstaande pad:<br>**Organen→Veilingkopers**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/12.png"></details>|
|**2**|Mocht de betreffende koper nog niet bestaan voeg deze dan toe dmv. de + knop. Vul hier de basisgegevens met **veiling** 01 en de bijhorende **GLN code**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/13.png"></details>|
|**3**|Vul ook het **Debnr** veld in, dit is de eindklant. Dit debiteurnummer wordt gebruikt om de verdeling op aan te maken.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/13.png"></details>|
|:bulb:|Florisoft vult de veilingkoper tabel ook middels de VBNImport via de timer.|

**Instellen debiteur**

|Stap|Uitleg|
|:-:|:--|
|**1**|Navigeer in het constantenscherm naar het pad:<br>**Organen→Debiteurgegevens→Debiteuren**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/5.png"></details>|
|**2**|Open de Floriday debiteur en navigeer in deze debiteur kaart naar de map **Veilen**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/14.png"></details>|
|**3**|Zet hier de **veiling** dropdown op **01**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Server NL/14.png"></details>|

## Verplichte waarde voor bestelpartijen

Voor het publiceren van een bestelpartij op Floriday moet een bestelpartij aan een bepaald aantal voorwaardes voldoen.

**Deze waardes dienen ingevuld te zijn:**

|Artikel|
|:--|
|Veiling artikelnummer (wordt artikelnummer van de partij indien leeg bij artikel, dan is het artikelnummer al reeds het veiling artikelnummer)|

|Bestelpartij|
|:--|
|Omschrijving|
|Fustcode|
|Inhoud Kar|
|Inhoud Plaat|
|Inhoud Bos|
|Inhoud Fust|
|Foto|
|Verplichte sorteringskenmerken (volgens Floricode)|
|Leverancier|
|Zorg ook dat de kwaliteitscode (SRT Kolom bestellijst. Bijvoorbeeld met A1.)|gevuld is!|

:warning: **Let op: de bunchesperpackage van Floriday wordt bepaald op basis van inhkolli / inhbos (en de waarde ervan moet liggen tussen 1 en 9999). Mocht je dus de volgende melding krijgen: The field BunchesPerPackage must be between 1 and 9999, dan kloppen de waardes van inhkolli en inhbos dus niet.**

## Aanvragen API-key

De API key kan opgevraagd worden via de portal van Floriday. Deze is nodig om de connectie op te zetten tussen de Florisoft en Floriday.

*Volg hiervoor de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Log in op het platform van floriday|
|**2**|Via het menu rechts bovenin, navigeer naar “Instellingen”|
|**3**|Navigeer naar Apps & koppelingen|
|**4**|Zoek hier naar Florisoft|
|**5**|Selecteer Florisoft|
|**6**|Selecteer Applicatie toevoegen?|
|**7**|Er zal nu een API key getoond worden|

Deze API key dient gevuld te worden in Florisoft bij de leverancier die de synchronisatie zal uitvoeren.

## Verdere werking

Als alles goed ingericht staat kun je naar de Floriday leverancier toe en de voorraad ophalen. Om te zien of alles dan goed gaat kun je het beste Fiddler gebruiken. https://www.telerik.com/fiddler

Hiermee kun je de communicatie zien tussen Florisoft en Floriday. (wel even bij opties zorgen dat je https traffic mag inzien zie screen:)



Eerst zie je de communicatie tussen FS en de webservice:



Daarna is er comminucatie tussen FS en Floriday met het ophalen van de trade-items:



Vervolgens zie je dat Florisoft items wil aanmaken die er nog niet zijn.



Als er wat mis gaat zie je deze regels ook in het rood in Fiddler en kun je dit ook nog terug zien in het log van de leverancier.



## Partijen nogmaals uploaden naar Floriday (nadat je ze daar hebt verwijderd)

Het is mogelijk om dezelfde partijen nogmaals te uploaden naar Floriday (nadat je ze daar hebt verwijderd). Wel moet je hiervoor wat doen in Florisoft, omdat je anders de melding krijgt dat: A trade item with this id already excists. In de bestellijst moet je het volgende doen:
