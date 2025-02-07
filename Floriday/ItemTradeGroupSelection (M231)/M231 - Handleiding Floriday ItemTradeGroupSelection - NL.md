<img src="../../fslogo.png">

# Florisoft Handleiding Floriday ItemTradeGroupSelection (M231)

Deze handleiding behandelt de module ItemTradeGroupSelection waarmee u Floriday aanbodselecties kan importeren als aparte voorraden in Florisoft.
U maakt deze selecties in het Floriday portal op basis van productsoorten, inkopers, speciale selecties of per land.
Het maken van aanbodselecties in Floriday wordt verder niet behandeld in deze handleiding aangezien dit buiten Florisoft om is, wel houdt Floriday hier zelf documentatie op na ([zie hier](https://helpcenter-customers.floriday.com/nl/articles/8856186-explorer-aanbodselecties)).

In deze handleiding leest u wel hoe u aangeeft in welke voorraad de geselecteerde partijen moeten wordne ingelezen, **let op :** een partij kan hierbij wel in meerdere aanbodselecties en dus meerdere voorraden worden ingelezen. 

## Benodigdheden 

Voor het gebruik van deze module beschikt u over een Floriday account en de nodige Florisoft module.
Zorg er daarnaast ook voor dat er minstens één aanbodselectie is aangemaakt in Floriday.

## Stappen

Om het importeren van aanbodselecties te realiseren volgt u de onderstaande stappen :

### Aanmaken floriday leverancier

*Deze stappen doorloopt u <u>alleen</u> in het geval dat er nog geen Floriday leverancier bestaat.*

|Stap|Uitleg|
|:-:|:--|
|**1**|Open vanuit de Florisoft navigator de constanten (#1).|
|**2**|In de constanten navigeert u naar het pad :<br>**organen→leveranciergegevens→leveranciers**|
|**3**|Hier vult u de standaard leverancier gegevens in :<br><br>**Lev.code** : vul hier "FLRDY" in<br>**Zoek**: vul hier "FLRDY" in<br>**Bedrijfsnaam** : vul hier "Floriday" in.|
|**4**|Sluit (opslaan) en heropen de zojuist aangemaakte leveranicer.|
|**5**|Navigeer naar het tabje **webservice** in de leverancierskaart.|
|**6**|Zet hier het vinkje **Activeren voor voorraadkoppeling** aan.|
|**7**|Vul onder de heading **Floriday settings** de volgende velden in :<br><br>**API key** : hier uw Floriday API key<br>**Region GLN** : de regio GLN van uw bedrijf<br>**Aflever GLN** : de GLN aflever locatie code van uw bedrijf.|
|**8**|Druk op **Ok** om op te slaan.|

### Aanbodselectie instellingen

*Zorg ervoor dat er minstes één aanbodselectie bestaat in Floriday.*

|Stap|Uitleg|
|:-:|:--|
|**1**|Open uw Floriday leverancier in de constanten :<br>**Organen→Leveranciergegevens→Leveranciers**|
|**2**|Navigeer in de Floriday leverancier kaart naar het pad: **Webservice→Webservice specifiek**|
|**3**|Klik op de knop **Aanbodselecties Voorcod's ingeven**, dit opent een scherm waarin je elke Floriday aanbodselectie terug ziet. U geeft dan per aanbodselectie aan bij welke voorraadcode dit hoort.|
|**4**|Druk vervolgens op **Ok**|
|**5**|En sluit dan de Leverancierskaart en sla de wijzigingen op.|

*Nadat u de aanbodselecties heeft aangemaakt kunnen deze worden ingelezen met de knop **partijen inlezen**.*