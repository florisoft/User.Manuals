<img src="../fslogo.png" alt="Florisoft Logo">

# Hoe kan men een nieuwe taal toevoegen op de Florishop?

Tegenwoordig zijn er veel klanten die gebruik willen maken van een andere taal op de Florishop. In deze handleiding gaan we uitleggen hoe je een nieuwe vlag en taal kunt toevoegen op de Florishop. In dit voorbeeld gaan we de Griekse taal en vlag toevoegen op de Florishop. De landcode van Griekenland is GR.

*Volg de onderstaande stappen:*

|Stap|Uitleg|
|:--|:--|
|**1**|De taalcode van Griekenland(Grieks) is "**el**", de officiële taalcode voor uw taal kan u hier vinden: https://nl.wikipedia.org/wiki/Lijst_van_ISO_639-codes <details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Taal Toevoegen/image1.png"></details>|   
|**2**|Open het constantenscherm en navigeer naar **Systeem→Talen**, voeg hier een nieuwe taal toe. In dit voorbeeld gebruiken we Taalcode G en daar vullen we de omschrijving Grieks in. Zoek in de kolom het land Griekenland, selecteer deze en dan wordt de landcode el gevuld.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Taal Toevoegen/image2.png"></details>|
|**3**|Navigeer nu in het constanten scherm naar de map **Locaties→Regio→Landen**. Zoek het land Griekenland op, open deze en ga naar het tablad Webshop.|
|**4**|**Vul hier de volgende velden in:**<br>**Resource**: vul hier 'el' in.<br>*Het is belangrijk dat de taalcode is gevuld op dit tabblad. Wanneer de taalcode niet gekozen wordt dan krijg je namelijk geen vertalingen van bijvoorbeeld de sorteringen te zien op de webshop.*<br><br>**Omschrijving van het veld resource:** *Dit is voor de webshop. Tik hier het resourcebestand dat de webshop moet gebruiken. Dit kan zijn nl of ru of en, maar ook geldig is bijv. en-gb;en;nl. Indien een tekst niet gevonden kan worden in de "en-gb" zal de "en" worden gebruikt en indien daar ook niet gevonden kan worden dan wordt de "nl" gebruikt.*<br><br>**Taal omschrijving**: 'Ελληνικά'<br>*De klant ziet deze tekst op de login pagina en kiest dan deze taal. Dit kan bijv. Nederlands zijn, maar ook Français enz. In dit geval willen we voor Griekse klanten dit zien: Ελληνικά*<br><br>**Taalcode**: *Grieks*<br>*Dit is de Florisoft taal die hoort bij deze taal. Kies hier bijv. Grieks en de klant die inlogt op de webshop ziet de Griekse omschrijving van de artikelen en de voorraad en de productgroepen.*<br><br>**Volgorde:** 11 <br>*Dit is voor de webshop. Dit is de plek voor het vlaggetje en de taal voor op de inlogpagina. Daarnaast is dit ook de trigger of de taal gekozen kan worden op de inlogpagina. Indien hier iets staat wordt deze taal beschikbaar op de webshop login pagina.* <details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Taal Toevoegen/image3.png"></details>|
|**5**|Bevestig de veranderingen door op '**Ok**' te drukken.|
|**6**|*De Florishop moet (nadat bovenstaande stappen zijn ingesteld) herstart worden om de toegevoegde taal te kunnen tonen.*|
|**7**|Als we nu op de Florishop kijken, zien we dat de Griekse vlag en taal is toegevoegd. Deze staat op de 11e positie.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Taal Toevoegen/image4.png"></details>|

## Vertaling toevoegen

*Volg de onderstaande stappen*:

|Stap|Uitleg|
|:--|:--|
|**1**|Login op uw Florishop met een beheer debiteur. Klik op de '**Configuratie**' knop, dit opent een dropdown klik hier op **Vertalingen**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="Taal Toevoegen/image6.png"></details>|
|**2**|Zoek de vertaling op en selecteer deze in het dropdown menu.|
|**3**|Zoek de text op die je wilt vertalen. Vul deze in en sla het op. Zie afbeeldingen hieronder.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="Taal Toevoegen/image5.png"></details>|
|**4**|In de AppGlobalResources folder worden de vertalingen van de Florishop opgeslagen. De Griekse vertalingen worden opgeslagen in de Global.el.resx De Franse vertaling bijvoorbeeld in Global.fr.resx In dit voorbeeld worden ze opgeslagen op deze locatie: "*C:\inetpub\wwwroot\Florishop\AppGlobalResources"*<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="Taal Toevoegen/image7.png"></details>|
