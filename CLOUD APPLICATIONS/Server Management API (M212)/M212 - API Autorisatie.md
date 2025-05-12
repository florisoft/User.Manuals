<img src="../../fslogo.png">

# Florisoft handleiding Autorisatie voor server management api

Om de Florisoft server management API aan te roepen heeft u een systeemgebruiker nodig met de hiervoor vereiste autorisaties.
In deze handleiding leest u hoe een gebruiker aan maakt en deze vervolgens autoriseert in het nieuwe Florisoft Policy scherm.

## Aanmaken gebruiker

*U kunt deze stappen overslaan als u al een API gebruiker heeft in uw systeem.*

|Stap|Uitleg|
|:--|:--|
|**1**|Open vanuit de navigator het constanten scherm en navigeer hierbinnen naar het volgende pad:<br>**Systeem→Users→Systeemgebruikers**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/5.png"></details>|
|**2**|Klik op het **+** icoon om een nieuwe gebruiker aan te maken.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/5.png"></details>|
|**3**|Vul vervolgens de volgende velden in:<br>**1. UserID**: dit is de username die straks gebruikt word voor API login.<br>**2. Password**: het wachtwoord voor uw API-gebruiker, zorg dat deze enige complexiteit heeft.<br>**3. Naam**: deze is niet vereist voor de API maar is handig om deze makkelijk kenbaar te maken in uw Florisoft systeem.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/6.png"></details>|
|**4**|Klik vervolgens op **Ok** om de gebruiker op te slaan in uw systeem.|

 ## Autoriseren van de gebruiker door middel van het Policy scherm

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer in het constantenscherm nu naar het volgende pad:<br>**Systeem→Users→Policy beheer**<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/7.png"></details>|
|**2**|Wanneer u op de Policy beheer map klikt ziet u een nieuw scherm in de voorgrond verschijnen, dit is het policy scherm.|
|**3**|In dit scherm klikt u op de **Toevoegen** deze vindt u linksonderin het scherm.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/8.png"></details>|
|**4**|Het scherm heeft nu geüpdatet en nu kan u de instellingen maken van de nieuwe policy. Best practice is om deze nieuwe policy een naam te geven zodat het doel van deze policy gelijk kenbaar is.<br><br>U doet dit door met uw muis om de tekst **Nieuwe policy** te klikken en hier een nieuwe naam in te typen. Aangezien wij autorisaties aanmaken voor de server management API is de naam "API-autorisatie" passend.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/9.png"></details>|
|**5**|Klik vervolgens op het tabje genaamd **Instellingen** en klik op dit tabje op de optie **Apps**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/10.png"></details>|
|**6**|Klik nu vervolgens op **Management**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/11.png"></details>|
|**7**|Vervolgens zet u de slider (aan/uit knop) aan van de instelling **Apps_Managment_Access**, deze staat aan wanneer de slider groen kleurt.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/12.png"></details>|
|**8**|Vervolgens klik u op het tabje genaamd **Toepassen**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/13.png"></details>|
|**9**|Hier klikt u op de **bewerken** knop in de balk van **Systeemgebruikers**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/14.png"></details>|
|**10**|U ziet nu een lijst van alle systeemgebruikers. Door het vinkje aan te zetten naast de gebruiker zorgt u ervoor dat deze gebruikt kunnen worden om in te loggen op de API.<br>Beperk deze API gebruikers tot een beperkt aantal, voor onze doeleinden autoriseren wij enkel de gebruiker die eerder in deze handleiding is aangemaakt.<Br><br>Sla vervolgens uw wijziging op door op de **opslaan** knop te drukken.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/15.png"></details>|
|**11**|Vervolgens ziet u de geselecteerde gebruikers nu ook verschijnen in het policy scherm.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/16.png"></details>|
|**12**|Vervolgens klikt u op de **opslaan** rechtsbovenin uw scherm om de nieuwe policy op te slaan in uw systeem.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media NL/17.png"></details>|

**Nu heeft u een systeem gebruiker geautoriseerd, deze gebruiker kan nu gebruikt worden om mee in te loggen op de API.**
