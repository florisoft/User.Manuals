<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Handleiding FloriShop Addon Pop-up Chat & Notification (M161)

Dit document beschrijft de werking van de chatfunctie in FloriShop. Het idee achter deze functie is dat ingelogde klanten op de webshop rechtstreeks kunnen communiceren met hun accountmanager (verkoper). De verkoper heeft uiteraard de mogelijkheid om 'terug' te chatten naar de klant. In de praktijk komt het vaak voor dat klanten wat meer informatie over een product willen voordat ze tot aanschaf over gaan. De chatfunctie binnen de webshop speelt hierin een belangrijke rol.

Florisoft medewerkers horen de Florisoft systeeminstellingen al doorlopen te hebben voor dat u begint met deze handleiding. Hetzelfde geldt voor de Florishop instellingen omtrent het gebruik van de chatfunctie.

## Table of contents

[Debiteurgroepen aanmaken](#debiteurgroepen-aanmaken)  
[Verkoper aanmaken](#verkoper-aanmaken)  
[Verkoper koppelen als accountmanager](#verkoper-koppelen-als-accountmanager-aan-de-debiteuren)  
[Testen](#testen)  
[Verkoper koppelen aan systeemgebruiker](#verkoper-koppelen-aan-de-systeemgebruiker)  
[Pop-up notification center inrichten](#pop-up--notification-center-inrichten)  
[Notificatiebeheer in de webshop](#notificatiebeheer-in-de-webshop) 

## Debiteurgroep(en) aanmaken

*Omdat de chatfunctie gebouwd is op de Sales add on is het noodzakelijk om de debiteuren die gebruik gaan maken van de chatfunctie ingedeeld worden in debiteurgroepen. De gedachte hierachter is dat iedere verkoper verantwoordelijk is voor het contact met een x aantal klanten. Alle klanten die horen bij een verkoper dienen gegroepeerd te worden in een debiteurgroep.<br><br>Doorloop de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Navigeer in de constanten naar het volgende pad:<br>**Organen→Debiteurgegevens→Debiteurgroepen**|
|**2**|Maak hier een nieuwe debiteurgroep aan door op het plusje te drukken. Vul hier vervolgens een passende omschrijving in. |
|**3**|Selecteer vervolgens in de onderstaande tabel alle debiteuren die in deze groep vallen.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image1.png"></details>|
|**4**|Sla de nieuwe groep op.|

## Opzetten van verkopers voor de chatfunctie

Voor het gebruik van de chatfunctie is het van belang dat de verkopers goed zijn ingesteld en toegang hebben tot de webshop. Hier moeten een aantal onderlinge koppelingen tussen debiteuren en systeemgebruikers voor worden opgezet. Hieronder een simpele representatie over hoe dit in elkaar zit.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/picasso.png"></details>

## Webshop Sales debiteur aanmaken

*Omdat vanuit technisch oogpunt in de webshop alleen maar debiteuren in kunnen loggen is er een aparte debiteur nodig die in de volgende stap aan de verkoper gekoppeld wordt. De verkoper zal later op zijn beurt weer gekoppeld worden aan de systeemgebruiker van de verkoper. Hieronder een globaal stappenplan voor het aanmaken van een sales debiteur.<br><br>Een sales debiteur is technisch gezien niets meer dan een 'normale' Florisoft debiteur. Andere benamingen voor een webshop sales debiteur zijn: webshop verkoopdebiteur, verkoopdebiteur of salesdebiteur.*

:warning: **Let op:** iedere verkoper moet gekoppeld zijn aan een eigen sales debiteur. Eén verkoper betekent dus ook één sales debiteur. Twee verkopers betekent ook dat er twee sales debiteuren in het systeem aanwezig zijn. Oftewel: het aantal sales debiteuren moet gelijk zijn aan het aantal verkoper.

**Volg de onderstaande stappen:**

|Stap|Uitleg|
|:-:|:--|
|**1**|Navigeer in de constanten naar het pad:<br>**Organen→Debiteurgegevens→Debiteuren**|
|**2**|Maak een nieuwe debiteur aan door op het plus icoontje te drukken.|
|**3**|Indien er een sales debiteur template bestaat gebruikt u deze zo niet kan u er een aanmaken. Hoe u dit doet leest u [hier](#aanmaken-debiteur-template).|
|**4**|Vul de volgende  in:<br>- **Deb.nummer**: vul dit in met een herkenbare waarde door SALES hierin te verwerken<br>- **Zoek:** doe hier hetzelfde<br>- **Bedrijfsnaam**: Maak hier weer duidelijk dat het gaat om een sales debiteur door hier bijvoorbeeld "*Florishop Sales Debiteur*" neer te zetten.<br>- **Land**: land waarin de verkoper actief is.<br>- **E-mail adres**: vul hier het e-mailadres van de verkoper (waarmee hij/zij communiceeert naar de klanten).<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image2.png"></details>|
|**5**|Navigeer naar het mapje "**ident**"|
|**6**|Vul bij het veld Gekoppeld aan gebruiker de systeemgebruiker van de verkoper in. (nr. 8)<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image3.png"></details>|
|**7**|Navigeer naar het mapje **Internet→Internet Toegang**|
|**8**|Zet de volgende instellingen aan:<Br>- **Deze klant heeft toegang via het internet**<br>- **Deze klant mag inloggen in FloriShop**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image4.png"></details>
|**9**|Klik op de "**Toegankelijke voorraden**" geef deze debiteur vervolgens toegang tot de gewenste voorraden. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image5.png"></details>|
|**10**|Vul vervolgens een wachtwoord in voor de webshop login van de verkoper.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image4.png"></details>|
|**11**|Bevestig het aanmaken van de debiteur door het te sluiten.|

### Aanmaken debiteur template

*Volg de onderstaande stappen voor het aanmaken van een template debiteur:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Maak een debiteur aan in het volgende pad:<br>**Organen→Debiteurgegevens→Debiteur**|
|**2**|Maak een nieuwe debiteur aan.|
|**3**|Vul de vereiste velden in:<br>- **Deb.nr**: zet hier een makkelijk te herkennen nummer in zoals **Sales**.<br>- **Zoek**: doe hier hetzelfde<br>- **Omschrijving**: vul hier een passende maar beknopte beschrijving in, dit is zichtbaar in het systeem.<br>- **Bedrijfsnaam**<br>- **Deze Debiteur is een Template voor nieuwe Debiteuren**: zet hier een vinkje neer.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image20.png"></details>|
|**4**|Stel vervolgens de instellingen in die u nodig heeft voor dit template, voor deze handleiding vindt u deze [hier](#webshop-sales-debiteur-aanmaken).|
|**5**|Sla de "debiteur" op. Als u nu een nieuwe debiteur wilt aanmaken ziet u het zojuist aangemaakte template staan in het keuze menu.|

## Verkoper aanmaken

*Volg de onderstaande voor het aanmaken van een verkoper, in dit hoofdstuk koppelen we de eerder aangemaakte debiteur aan de verkoper.*

|Stap|Uitleg|
|:-:|:--|
|**1**|Navigeer naar het pad:<br>**Organen→Verkopergegevens→Verkopers**|
|**2**|Druk op het plus icoontje om een verkoper aan te maken.|
|**3**|Vul de volgende verplichten velden in:<br>- **Code verkoper**:<br>- **Naam Verkoper**:<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image6.png"></details>|
|**4**|Navigeer naar het tablad **Webshop**|
|**5**|Pas hier de volgende instellingen aan:<br>- **Accountmanager login**: zet dit aan<br>- **Op basis van debiteur**: selecteer hier de eerder aangemaakte debiteur waaraan de verkoper gelinkt dient te worden.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image7.png"></details>|
|**6**|Sla de verkoper op door het te sluiten.|

## Verkoper koppelen als accountmanager aan de debiteur(en)

De verkoper, zoals aangemaakt in de vorige stap, moet gekoppeld worden aan alle debiteuren (klanten) die horen bij deze verkoper. Deze koppeling wordt gemaakt op de debiteur:

|Stap|Uitleg|
|:-:|:--|
|**1**|Navigeer in de constanten naar:<br>**Organen→Debiteurgegevens→Debiteuren**|
|**2**|Open de debiteur die je wilt koppelen|
|**3**|Ga naar het tablad:<Br>**Internet→Internet toegang**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image8.png"></details>|
|**4**|Kies in het veld Account Manager de verkoper die contact heeft met deze debiteur.|
|**5**|Sla de debiteur op door het te sluiten.|
|**6**|Herhaal de stappen van de afgelopen paar hoofdstukken voor elke verkoper.|

## Verkoper koppelen aan de systeemgebruiker

*Volg de onderstaande stappen om een verkoper te koppelen aan een systeemgebruiker:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Navigeer in de constanten naar het volgende pad:<br>**Systeem→Users→Systeemgebruikers**|
|**2**|Open vervolgens een systeemgebruiker|
|**3**|Selecteer in het veld **verkoper** de verkoper die gekoppeld moet worden aan de systeemgebruiker. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image9.png"></details>|
|**4**|Sla de wijzigingen op.|

## Testen

Deze stap laat zien hoe de chatfunctie werkt op zowel de webshop als in Florisoft. Dit gedeelte zal ook plaats vinden in een reële situatie.

*Volg de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Herstart de webshop:<br>**1**. Open IIS<br>**2.** Open het application pools scherm<br>**3.** Klik op de **Florishop** applicatie<Br>**4.** Klik vervolgens in het actions scherm op de *Recycle* knop.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image10.png"></details>|
|**2**|Open de Florisoft navigator en klik in de bovenste balk op de knop "*Fidgets*", activeer vervolgens de instelling "*Intercommunicatie chat*".<br><br>Dit opent een fidget chatfunctie aan de rechterkant van het scherm.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image11.png"></details>|
|**3**|Log in op de webshop met een verkoper (gekoppelde debiteur).|
|**4**|Klik vervolgens op het spreekwolk icoon om de chat functie te openen.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image13.png"></details>|
|**5**|Typ een bericht voor de verkoper in het daarvoor bestemde veld. Klik vervolgens op send of op de Enter toets om het bericht te verzenden.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image14.png"></details>|
|**6**|Zodra een debiteur een bericht verzend vanuit de webshop opent er in de fidgets een nieuw tabblad met de debiteurcode (nr. 1) en het verzonden bericht. (nr. 2)<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image15.png"></details>|
|**7**|Typ een antwoord in het tekst vak aan de onderkant van het fidgets scherm (nr. 3) en druk op Enter.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image16.png"></details>|
|**8**|Het antwoord komt binnen in het chatscherm van de webshop.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image17.png"></details>|
|**9**|Bovenstaande stappen herhalen zich om het gesprek voort te zetten.|

## Pop-up & Notification Center Inrichten

*Volg de onderstaande stapppen om een notificatie aan te maken:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Navigeer in de constanten naar:<br>**Systeem→Notificatieberichten**|
|**2**|Maak een nieuwe notificatie aan door op het + icoontje drukken.|
|**3**|Vul de volgende velden in:<Br>**ID**: geef de notificatie een id<br>**Default titel**: geef de notificatie een titel<br>**Default bericht**: geef de notificatie een berichtlichaam<br>**Aantal keer tonen**: staat uit indien oneindig vaak tonen aan staat, als het aan staat vult u hier in hoe vaak de notificatie getoond wordt.<br>**Oneindig vaak tonen**: het vinkje uit. En geef je in het Aantal keer tonen-veld op hoe vaak het moet worden getoond.|<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image12.png"></details>
|**4**|Als je een notificatie qua tijdsbestek altijd wilt tonen, dan zet je een vinkje bij **Bericht vervalt nooit**. Je hebt dan geen einddatum.<Br><br>Bij **Datum geldig van / Datum geldig** tot geef je op binnen welke periode de notificatie getoond moet worden. Buiten deze periode wordt de notificatie niet getoond.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image12.png"></details>|
|**5**|Bij **webpagina type** geef je op waar de notificatie getoond moet worden. Voor nu werkt enkel type **Home.**|
|**6**|U kunt daarnaast in de onderstaande tabellen vertalingen opgeven van de titel en berichtlichamen.|
|**7**|Om debiteuren te autoriseren klikt u op de knop **Gekoppelde debiteuren**, hier geef je aan welke debiteuren de notificatie mogen zien door een vinkje te zetten in de "*Is Gekoppeld*" kolom.<br><br>U kan dit ook doen vanuit de debiteurkaart.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image12.png"></details>|

### Weergave op de Webshop

Als je het juist hebt ingesteld, dan zou je een pop up moeten zien op de Webshop.

U kan notificaties ook terug vinden in het notificatiescherm op de webshop, klick op het "bel icoontje"

## Notificatiebeheer in de webshop

*Naast het beheren van notificatieberichten in de backoffice kan dit nu ook in de Florishop worden gedaan.*

|Stap|Uitleg|
|:-:|:--|
|**1**|Check de autorisatie: <br>Systeemgebruikers zijn standaard geautoriseerd. Maar verkopers hebben de juiste autorisatie nodig:<br>**Constanten→Verkopers→Webshop→Autorisaties→Toegang tot notificatie beheerscherm → Alle handelingen toestaan** <br><details><summary><b>Klik hier voor uw voorbeeld!</b></summary>![Gebruiker_Autorisatie](https://github.com/user-attachments/assets/0a89b8e7-491d-4b56-aea6-b2a88b35b530)|
|**2a**|Verkopers zien de link naar notificatiebeheerpagina in het menu van de webshop<br><details><summary><b>Klik hier voor uw voorbeeld!</b></summary>![Navigatie_Verkoper](https://github.com/user-attachments/assets/e0f86b16-ebbe-4c59-a17f-713a013a9b9c)|
|**2b**|Systeemgebruikers zien de link naar notificatiebeheerpagina in de algemene beheeromgeving van de webshop<br><details><summary><b>Klik hier voor uw voorbeeld!</b></summary>![navigatie_systeemgebruiker](https://github.com/user-attachments/assets/628de582-0578-49a8-9f06-8a90ac4fcb15)| 
|**3**|Op de overzichtspagina worden alle notificatieberichten getoond. Zowel de berichten die zijn aangemaakt in de backoffice als de berichten aangemaakt in de webshop.<br><details><summary><b>Klik hier voor uw voorbeeld!</b></summary>| 
|**4**|Vul de volgende velden in:<Br>**ID**: geef de notificatie een id<br>**Default titel**: geef de notificatie een titel<br>**Default bericht**: geef de notificatie een berichtlichaam<br>**Aantal keer tonen**: staat uit indien oneindig vaak tonen aan staat, als het aan staat vult u hier in hoe vaak de notificatie getoond wordt.<br>**Oneindig vaak tonen**: het vinkje uit. En geef je in het Aantal keer tonen-veld op hoe vaak het moet worden getoond.|<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image12.png"></details>
|**5**|Als je een notificatie qua tijdsbestek altijd wilt tonen, dan zet je een vinkje bij **Bericht vervalt nooit**. Je hebt dan geen einddatum.<Br><br>Bij **Datum geldig van / Datum geldig** tot geef je op binnen welke periode de notificatie getoond moet worden. Buiten deze periode wordt de notificatie niet getoond.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image12.png"></details>|
|**6**|Bij **webpagina type** geef je op waar de notificatie getoond moet worden. Voor nu werkt enkel type **Home.**|
|**7**|De taal kan worden ingesteld door middel van het vlag-icoontje|
|**8**|Om debiteuren te autoriseren klikt u op de knop **Gekoppelde debiteuren**, hier geef je aan welke debiteuren de notificatie mogen zien door een vinkje te zetten in de "*Is Gekoppeld*" kolom.<br><br>U kan dit ook doen vanuit de debiteurkaart.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Pop-up Chat & Notification Centre NL/image12.png"></details>|
|**9**|Men kan per notificatie instellen bij welke URL (of het laatste deel van de URL) moet worden getoond:<br><details><summary><b>Klik hier voor uw voorbeeld!</b></summary>![urlOfLaatsteDeel](https://github.com/user-attachments/assets/6a5dd61e-1bab-4bbd-bfb8-323a9730c1f5)|
