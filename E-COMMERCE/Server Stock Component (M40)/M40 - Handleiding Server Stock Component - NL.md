<img src="../../fslogo.png">

# Florisoft Handleiding Server Voorraad Component (M40)

Welkom bij de handleiding voor de module Server Voorraad Component.

## Opzetten 

U kan er voor kiezen of u alles over 1 koppeling gaat bij een bestaande debiteur (gekoppeld aan) of dat u een aparte VMP/ETrade debiteur aanmaakt.

*Volg de onderstaande stappen*:

|Stap|Uitleg|
|:-:|:--|
|**1**|Open het constanten scherm en navigeer naar het volgende pad: <br> **Organen**→**Debiteurgegevens**→**Debiteuren**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image10.png"></details>|
|**2**|Maak vervolgens een debiteur (mocht u een aparte debiteur willen hebben) aan door op het plusje te drukken, dit opent het debiteur template keuze scherm. Kies uit een van de templates mocht er geen relevant template bij zitten kan u **[hier](#het-maken-van-een-debiteur-template)** leren hoe u een template debiteur aan maakt.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image14.png"></details>|
|**3**|Navigeer vervolgens in het debiteur scherm naar de map:<br>**Internet**→**Webservice**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image15.png"></details>|
|**4**|Kies vervolgens het type webservice dat u gebruikt, als uw ontvangende klant ook Florisoft klant is kan u gebruik maken van de Florisoft Webservice. Wanneer u van webservice type verandert krijgt u waarschijnlijk een waarschuwingsscherm aangezien er instellingen veranderen, kies **ja** als u zeker bent van uw keuze.|
|**5**|Navigeer naar de map **Internet**→**Webservice**→**Server**.<br><br>In de tab 'Server' kan de optie 'Eindklant opslaan als opmerking en niet koppelen aan debiteur'. Dit betekent dat als de ontvangende klant verschillende klanten laat kopen op de webshop, word de subdebiteur meegenomen als opmerking op de factuur. (De eindklant kan ook op de pickorder labels worden geprint)<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image16.png"></details>|
|**6**|Navigeer dan naar het mapje **Internet**→**Internet toegang**<br><br>Pas in dit scherm de volgende instellingen aan:<br>**- Deze klant heeft toegang via het internet**: zet deze instelling aan(Aanvinken). <br>- **Deze klant mag ophalen via de webservice koppelingen**: Aan- zetten/vinken.|
|**7**|Sla de instellingen op en heropen vervolgens de debiteur om de toegankelijk voorraden aan te passen.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Server voorraad component/media/image18.png"></details>|
|**8**|Klik vervolgens op de knop **Toegankelijke voorraden**, dit opent een nieuw scherm waarin u kan instellen tot welke voorraden de debiteur toegang heeft.|
|**9**|Als laatste moet de link, gebruikersnaam en wachtwoord worden verstuurd naar de ontvangende partij. Dit is de standaard webshop link met '/service.asmx' erachter geplakt. Hiermee kan de ontvangende partij de voorraad in ontvangst nemen.|