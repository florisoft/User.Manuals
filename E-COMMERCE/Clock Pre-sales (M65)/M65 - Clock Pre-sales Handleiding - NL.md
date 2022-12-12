<img src="../../fslogo.png">

# Florisoft Handleiding Floramondo Pre-sales clock

Welkom tot de Florisoft handleiding voor de Klokvoorverkoop module. In deze handleiding worden de stappen beschreven voor het implementeren van de Klokvoorverkoop module.

Nederlandse veilingen bieden een service aan genaamd Klok voor verkoop, deze service is een voorraad connectie dat de producten laat zijn die klaar zijn om onder de hamer te gaan. De unieke draai hier aan is dat deze producten al gekocht kunnen worden voor dat ze door het veiling proces heen gaan.

Het doel van deze module is het uitleggen en het technisch implementeren van de Klok Voor Verkoop module in Florisoft. Dit zodat gebruikers een basis level begrip hebben van het systeem en hoe gewerkt wordt met deze module. De stappen voor het opzetten van een connectie voor deze module worden beschreven in deze handleiding zodat een gebruiker de module zelf kan opzetten en gebruiken.

## Inhoudsopgave

[Vooraf te regelen door u](#vooraf-te-regelen-door-u)  
[Instellingen in uw FloraHolland account](#instellingen-in-floraholland-account)  
[Inrichten van Florisoft](#inrichten-van-florisoft)  
[Voorraad aanmaken](#voorraad-aanmaken)  
[Leveranciers aanmaken](#leveranciers-aanmaken)

## Vooraf te regelen door u

#### FloraMondo webservice account(s)  

* Indien men zowel bloemen als planten op wil halen via de koppeling, zijn er twee webservice accounts benodigd. Één account voor de bloemen en één account voor de planten. Dit zodat we in Florisoft de bloemen en planten in verschillende voorraden in kunnen lezen.

* Wil de klant alleen bloemen of alleen planten ophalen, dan is één webservice account voldoende.

#### FloraHolland beeldbank download account

* Voor het downloaden van de foto's in Florisoft.

## Instellingen in FloraHolland account

#### Webservice account instellingen

*Volg de onderstaande stappen:*

|Stap|Uitleg|
|:--|:--|
|**1**|Log in op het FloraHolland doormiddel van de onderstaande link:<br>https://floramondo.royalfloraholland.com/settings/accounts.|
|**2**|Klik bij het webservice account op de knop 'Instellingen'.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="tmp/image1.png"></details>|
|**3**|Vervolgens wordt er een pagina geopend waar filters in kunnen worden gesteld voor dit webservice account. Stel hier de volgende dingen in:<br>- **Standaard afleverlocatie** <br>- **Filter** voeg via filter een filter toe op het verkoopkanaal.|
|**4**|Met het filterkan filteren op basis van:<br>- **Verkoopkanaal**: *altijd klokvoorverkoop*.<br>- **Afleverlocaties**: *Hier kunnen meerdere afleverlocaties toegevoegd worden.* <br>- **Hoofdgroep**: *Kies hier óf bloemen of (tuin-/kamer-)planten.<details><summary><b>Klik hier voor uw voorbeeld afbeelding*</b></summary><img src="tmp/image2.png"></details>|
|**5**|Wilt u zowel bloemen als planten inlezen? Maak hier dan een tweede webservice account voor aan.|

### Dienstcontracten

Om ervoor te zorgen dat na het kopen de juiste EKT-berichten worden verstuurd, moeten bij dienstcontracten een aantal abonnementen geactiveerd worden. Dit kan via https://portal.royalfloraholland.com/nl-NL/diensten/mijn-dienstcontracten.

*Volg de onderstaande stappen*:

|Stap|Uitleg|
|:--|:--|
|**1**|Ga naar de onderstaande link en log indien nodig in met uw FloraHolland account.https://portal.royalfloraholland.com/nl-NL/diensten/mijn-dienstcontracten.|
|**2**|Activeer de onderstaande opties (afhankelijk vna afleverlocatie's):<br> - **EKT bestelling webshop v3.7**<br> - **EKT bestelling website v3.7**<br>- **Voorlopige EKT Aalsmeer v3.7**<br><br>*Zie ook de onderstaande afbeelding*.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="tmp/image3.png"></details>|
|**3**|Nadata u de wijzigingen heeft opgeslagen krijgt u mogelijk de onderstaande melding:<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="tmp/image4.png"></details>|
|**4**|*Voeg bij 'Adressen voor dienstberichten' uw EKT e-mailadres in voor het ontvangen van de voorlopige en de definitieve EKT's.*|

## Inrichten van Florisoft

### Voorraad aanmaken

*Maak per hoofdgroep en afleverlocatie een Florisoft voorraad aan. Haalt u zowel bloemen als planten op van de afleverlocaties: Aalsmeer, Naaldwijk en Rijnsburg? Maak dan 6 voorraden aan:*

1. KVV Aalsmeer Bloemen
2. KVV Aalsmeer Planten
3. KVV Naaldwijk Bloemen
4. KVV Naaldwijk Planten
5. KVV Rijnsburg Bloemen
6. KVV Rijnsburg Planten

*Dit doet u door de volgende stappen uit te voeren:*

|Stap|Uitleg|
|:--|:--|
|**1**|Open uw constanten scherm en navigeer naar het volgende pad:<br>**Locaties**→**Voorraden**→**Voorraden**<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="tmp/image5.png"></details>|
|**2**|Klik vervolgens op het plus icoon (+) om een nieuwe voorraad aan te maken.|
|**3**|Vul de standaard vereiste informatie in op aanmaak start scherm en sla de nieuwe voorraad op door op '**Ok**' te drukken en de aanmaak te bevestigen.|

*Als u de voorraden eenmaal heeft aangemaakt voert u de onderstaande stappen uit*:

|Stap|Uitleg|
|:--|:--|
|**1**|Open een voorraad en navigeer naar het mapje **Autorisatie**<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="tmp/image6.png"></details>|
|**2**|Zorg er in dit scherm voor dat de timer gebruiker geautoriseerd is om de voorraden te zien.|
|**3**|Navigeer nu naar het mapje **Box(en)**.|
|**4**|Zet onder de "*Binnen te mleden in de Boxen*" de eerste dropdown op "*Ingangscontrole Bloemen INBL*". Zet daarnaast de checkbox "*Alleen partijen doorboeken naar de box niet eerder zijn gescand*" aan. Deze instellingen zijn van belang voor het binnenmeldingsproces.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="tmp/image7.png"></details>|
|**5**|Navigeer nu naar het mapje **Doorboeken**|
|**6**|Pas de volgende instellingen aan:<br>- **Box actief**: zet dit aan. - **Dropdown**: zet de dropdown op: *Ingangscontrole Bloemen*<br>- **Onverdeelde partijen niet naar de box doorboeken**: zet dit aan.<br>- **maar wel partijen met nog te pakken pickorders**: zet dit aan<br>- **Aantallen doorboeken**: zet dropdown op *Volledig aantal. behalve voor ext. partijen.*<br>- **Nul-voorraad automatisch verwijderen**: zet dit aan<br>- **Minimale ouderdom partij voor te verwijderen**: zet op 1<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="tmp/image8.png"></details>|
|**7**|Navigeer nu naar het mapje **Webwinkel→Algemeen**|
|**8**|Voor het aanbieden van de voorraad op de webshop moet de instelling '*Deze voorraad staat open op de webshop*' geactiveerd worden.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="tmp/image9.png"></details>|

### Leverancier(s) aanmaken

*Maak voor beide hoofdgroepen (bloemen of planten) een leverancier aan. Volg hiervoor de onderstaande stappen:*

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constantenscherm en navigeer naar het pad:<br>**Organen→Leveranciergegevens→Leveranciers**<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="tmp/image10.png"></details>|
|**2**|Klik vervolgens op het plus (+) icoon.|
|**3**|Vul de basisgegevens in en sluit de leverancier om het op te slaan.|

*Open vervolgens een leverancier en voer de volgende stappen uit:*

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer naar het mapje **Webservice→Algemeen**|
|**2**|Klik op de knop *Import*, dit opent een klein keuze scherm.|
|**3**|Kies voor de optie *Importeer default koppeling* en klik op **ok**<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="tmp/image11.png"></details>|
|**4**|Dit opent weer een keuze scherm klik hier op '*FloraMondo Klokvoorverkoop (0p7)* en klik op *ok*.<details><summary><b>Klik hier voor uw voorbeeld afbeeldingen</b></summary><img src="tmp/image12.png"></details>|
|**5**|U heeft zojuist instellingen geïmporteerd voor het gebruik van een FloraMondo koppeling. U moet alleen nog de volgende instellingen invullen:<br>- **Userid**: gebruikersId van het webservice account <br>- **Wachtwoord**: wachtwoord van het webservice account <br>- **Binnenkomende voorraad**: voorraad waarin de partijen worden ingelezen.<details><summary><b>Klik hier voor uw voorbeeld afbeeldingen</b></summary><img src="tmp/image13.png"></details>|
|**6**|Navigeer nu naar de map: **Webservice→Partijen Ontvangen**|
|**7**|Klik hier op de knop **Afleverlocaties voorraden** dit opent een nieuw scherm. U kan in dit scherm instellen waar de hoofdgroep partijen (bloemen of planten) naar toe gaan op basis van de EAN afleverlocatiecode.<details><summary><b>Klik hier voor uw voorbeeld afbeeldingen</b></summary><img src="tmp/image14.png"></details>|
|**8**|Navigeer nu naar de map **Webservice→Koop aanvraag**|
|**9**|Vul in het veld **Customer party EAN-Code** uw eigen EAN code in.<details><summary><b>Klik hier voor uw voorbeeld afbeeldingen</b></summary><img src="tmp/image15.png"></details>|
|**10**|Wanneer u deze gegevens heeft ingevuld, kan de koppeling ingelezen worden. Let erop dat het klokvoorverkoop aanbod pas vanaf 12:00 uur online komt. Voor deze tijd zullen er dus nog geen partijen ingelezen worden.|
|**11**|Navigeer naar de map **Webservice→Partijen ophalen**|
|**12**|Bij de eerste keer inlezen van de koppeling dient u de instelling **Altijd volledig aanbod ophalen ipv wijzigingen** aan te zetten.<details><summary><b>Klik hier voor uw voorbeeld afbeeldingen</b></summary><img src="tmp/image16.png"></details>|
|**13**|Navigeer weer terug naar de map **Webservice→Algemeen**.|
|**14**|Indien u alles heeft ingesteld kan u nu op de knop '*Partijen inlezen*' in drukken. *Dit kan even duren, raak tijdens het ophalen Florisoft niet aan!*<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="tmp/image17.png"></details>|
|**15**|Als alles goed is ingesteld, verschijnt na de eerste keer inlezen de onderstaande melding.|
|**16**|**BELANGRIJK:** *Zet hierna de instelling 'Altijd volledig aanbod ophalen ipv wijzigingen' weer uit. Het klokvoorverkoop aanbod is namelijk te groot om in 1x op te halen. Door in te stellen dat er alleen wijzigingen worden opgehaald, weet Florisoft waar het is gebleven en zal het de volgende batch partijen op gaan halen. Als deze instelling aan blijft staan zal Florisoft steeds proberen dezelfde batch partijen in te lezen en zal dus nooit het complete aanbod ingelezen worden.*<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="tmp/image18.png"></details>|
|**17**|Om ervoor te zorgen dat de koppeling verder door de timer zal worden ingelezen, dient de timer opnieuw opgestart te worden. Daarna zal de koppeling automatisch bijgewerkt worden via de timer.|