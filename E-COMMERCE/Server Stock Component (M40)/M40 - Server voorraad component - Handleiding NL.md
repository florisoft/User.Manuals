<img src="../../fslogo.png">

# Florisoft Handleiding Server Voorraad Component (M40)

Welkom bij de handleiding voor de module Server Voorraad Component. SVC wordt gebruikt om je voorraad aan te bieden aan andere organisaties zodat zij in realtime uit de voorraad kunnen kopen. Deze module synchroniseert je voorraad tussen organisaties binnen je eigen backoffice systeem.

## Opzetten 

De eerste stap bij het installeren van de SVC, is het bepalen van de voorraad verdeling.
Zo kan je per voorraad een aparte debiteur aanmaken om de voorraad te splitsen bij de ontvangende partij.
Je kan ook de keuze maken om groeperingen te maken, dus bijvoorbeeld een debiteur voor alle Bloemen, Planten en Deco (oid).

*Volg de onderstaande stappen*:

|Stap|Uitleg|
|:-:|:--|
|**1**|Open het constanten scherm en navigeer naar het volgende pad: <br> **Organen**→**Debiteurgegevens**→**Debiteuren**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image10.png"></details>|
|**2**|Maak vervolgens een of meerdere debiteuren aan door op het plusje te drukken, dit opent het debiteur template keuze scherm. Kies uit een van de templates mocht er geen relevant template bij zitten kan u **[hier](#het-maken-van-een-debiteur-template)** leren hoe u een template debiteur aan maakt. Dit is ook aan te raden als u meerdere debiteuren aan wilt maken.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image14.png"></details>|
|**3**|Vul vervolgens de basis gegevens van de debiteur in:<br>- **Deb.nummer**: Unieke identificatie code van de debiteur.<br>- **Zoek** zoek code voor het snel zoeken van de debiteur.<br>- **Bedrijfsnaam** de volledige debiteurnaam (bedrijfsnaam).<br>- **Postcode**: debiteur postcode.|
|**4**|Navigeer vervolgens in het debiteur scherm naar de map:<br>**Internet**→**Webservice**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image15.png"></details>|
|**5**|Kies vervolgens het type webservice dat u gebruikt, als uw ontvangende klant ook Florisoft klant is kan u gebruik maken van de Florisoft Webservice. Wanneer u van webservice type verandert krijgt u waarschijnlijk een waarschuwingsscherm aangezien er instellingen veranderen, kies **ja** als u zeker bent van uw keuze.|
|**6**|Navigeer naar de map **Internet**→**Webservice**→**Server**.|
|**7**|In de tab 'Server' kan de optie 'Eindklant opslaan als opmerking en niet koppelen aan debiteur'. Dit betekent dat als de ontvangende klant verschillende klanten laat kopen op de webshop, word de subdebiteur meegenomen als opmerking op de factuur.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image16.png"></details>|
|**8**|Navigeer dan naar het mapje **Internet**→**Internet toegang**|
|**9**|Pas in dit scherm de volgende instellingen aan:<br>**- Deze klant heeft toegang via het internet**: zet deze instelling aan(Aanvinken). <br>- **Deze klant mag ophalen via de webservice koppelingen**: Aan- zetten/vinken.|
|**10**|Indien u niet gebruik maakt van een template dient u de debiteur op te slaan en te heropenen. <Br><br>Als u wel gebruik maakt van een template kan u uitgaan van de instellingen die u gemaakt in de template. Mocht u wel dingen willen veranderen aan de toegankelijke voorraden moet u de debiteur sluiten en heropenen.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image18.png"></details>|
|**11**|Klik vervolgens op de knop **Toegankelijke voorraden**, dit opent een nieuw scherm waarin u kan instellen tot welke voorraden de debiteur toegang heeft. Zet bij de voorraden waar tot de debiteur toegang moet hebben de '**A**' en '**T**' de '**R**' is optioneel. <br><br>**Let op**: *de R  betekent dat deze voorraad read only is en dat er dus niet opgehandelt kan worden door de klant*.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image17.png"></details>|
|**12**|Als laatste moet de link worden verstuurd naar de ontvangende partij. Dit is de standaard webshop link met '/service.asmx' erachter geplakt. Hiermee kan de ontvangende partij de voorraad in ontvangst nemen.|

### Het maken van een debiteur template

|Stap|Uitleg|
|:-:|:--|
|**1**|Open het constanten scherm en navigeer naar het volgende pad: <br> **Organen**→**Debiteurgegevens**→**Debiteuren**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image10.png"></details>|
|**2**|Selecteer een basis template voor ons nieuwe template klik vervolgens op de '**ok**' knop.|
|**3**|Dit opent het debiteur creatiescherm, pas in dit scherm de volgende instellingen aan:<br>- **Deb.nummer**: Het beste is om dit "**TEMP** + 3 (getal van laatste template + 1 te doen).<br>- **Zoek**: het beste is om hier "**Template** + 3 (getal van laatste template + 1" te doen.<br>**- Bedrijfsnaam**: Zet hier een goed omvattende tekst neer voor waar het template voor bedoelt is. Bijv. "*Template Nederland met BTW*"<br>**- Postcode**: Vul hier "**Template + getal**" in.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image12.png"></details>|
|**4**|Zet vervolgens een vinkje neer bij de checkbox '*Deze Debiteur is een Template voor nieuwe Debiteuren*' om de debiteur een template te maken.|
|**5**|U kan nu de aanpassingen doen die u voor uw usecase nodig heeft. Zie het vorige hoofdstuk voor de aanpassingen die u hiervoor moet maken.|
|**6**|Als u eenmaal klaar bent kan u het template op slaan zoals u zou doen met aanmaken van een normale debiteur. Het template staat vervolgens wel in de debiteurtabel, u kan het template dus nog altijd aanpassen.|
|**7**|Bij het aanmaken van een nieuwe debiteur ziet u nu het zojuist aangemaakte template er bij staan in de templatelijst.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image13.png"></details>|
