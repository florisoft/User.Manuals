<img src="../../fslogo.png" alt="Florisoft Logo">

# Florisoft Handleiding Setup Floricode API

Vanaf 1 april 2025 heeft de stichting Floricode de FTP-server offline gehaald.
Dit betekent dat de Floricode standaarden enkel op te halen zijn via hun API.
Florisoft kan middels de Floricode modules met deze API werken waardoor uw standaarden synchroon blijven lopen met dat van Floricode.

In deze handleiding leest u hoe u de werking met de Floricode API configureert in uw backoffice.

## Benodigdheden

Om te kunnen werken met de Floricode API dient u te beschikken over de volgende benodigdheden :

- Floricode API Abonnement
- Floricode API login (clientId en clientSecret)

De onderstaande tabel geeft weer welke Floricode producten en Florisoft modules nodig zijn voor welke functionaliteiten. 

|Functionaliteit|Florisoft Module|Floricode Product(en)|
|:--|:--|:--|
|Artikelen, artikelgroepen en sorteringskenmerken|Product and feature type codes|Product- en kenmerktype codes|
|Kwekers en veilingkopers|Company codes|Bedrijfs- en locatiecodes|
|Afleverlocaties, kwekers en veilingkopers|Company and location codes|Bedrijfs- en locatiecodes|
|Fustcodes|Logistic means codes|Logistiek middelen codes|
|Botanische namen en Client Export-kenmerken|e-CertNL codes|e-CertNL codes|
|Uitsplitsingscodes|Goods codes|Goederen codes|
|Kwekercertificaten|Sustainability certificicates|Certificaten duurzaamheid|

## Checken van huidige configuratie

Om de configuratie van de nieuwe modules zo eenvoudig mogelijk te maken zijn de nieuwe policies grotendeels hetzelfde gebleven als de FTP timer instellingen.
In het geval dat u al gebruik maakte van de uitgefaseerde Floricode FTP-server modules is het verstandig om deze instellingen te kopiëren naar de API policies.

De onderstaande stappen geven aan waar u deze instellingen kan vinden zodat u deze kan screenshotten.

|Stap|Uitleg|
|:-:|:--|
|**1**|Login op uw Florisoft Timer client.|
|**2**|Controleer eerst of de timer niet bezig is met gevoelige processen zoals voorraad inlezen, zo nee, pauzeer dan de timer.|
|**3**|Klik met de rechtermuisknop op het timer icoon, en klik vervolgens op **timer settings**.|
|**4**|Gebruik de zoek functie om te zoeken naar **IMPORTVBN**, open dit timer process.|
|**5**|Klik op het timer process en navigeer vervolgens naar het tabje **Instellingen**, hier ziet u de actieve timer processen.|
|**6**|Maak een screenshot van deze instellingen en bewaar het screenshot op een makkelijk te onthouden locatie.|
|**7**|Sluit vervolgens de Timer backoffice applicatie.|
|**8**|Vanuit het bureaublad herstart je vervolgens de Florisoft Timer gebruiker.|

## Configuratie

Met de onderstaande stappen configureert u het nieuwe Floricode API timer proces in Florisoft, zorg ervoor dat u uw Floricode clientId en clientSecret bij de hand hebt.

De onderste tabel geeft referenties naar welke Policy gelijk staat aan welke timerproces instelling.

|Stap|Uitleg|
|:-:|:--|
|**1**|Vanuit de navigator opent u het constanten scherm en navigeert u naar het pad :<br>**Systeem→Users→Policy Beheer**|
|**2**|Dit opent het policy scherm, maak hierin een nieuwe policy aan. Weet u niet hoe policies werken leest u in [deze handleiding](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md) hoe u policies aanmaakt en beheert|
|**3**|Ken onder het tabje **Toepassen** de policy toe aan de gebruiker **Timer** (of een andere gebruiker waar een timer gedraait wordt).|
|**4**|Ga vervolgens naar het tabje **Instellingen**.|
|**5**|In het tabje **Instellingen** navigeert u naar het volgende pad :<br>**Backoffice→Administration→Constants→Floricode**|
|**6**|Heeft u de stappen uit het vorige hoofdstuk kunnen volgen en heeft u een screenshot bij de hand, gebruik dit screenshot dan in combinatie met de tabel in het volgende hoofdstuk om de juiste policies aan te zetten.|
|**6.a**|Indien u de stappen uit het vorige hoofdstuk niet kon volgen kan u nog steeds gebruiken van de tabel in het volgende hoofdstuk. Bepaal dan vanuit welke Florisoft modules u afneemt welke policies geconfigureerd moeten worden.<br><br>Ben je niet zeker over hoe dit werkt kan dit geconfigureerd worden door uw consultant of een van onze support medewerker. |
|**8**|Heeft u de policies geconfigureerd, sla dan de wijzigingen in de nieuwe policies op.|
|**9**|Log vervolgens in op de Timer gebruiker (in de omgeving waar deze draait) en pauzeer de timer.|
|**10**|Vervolgens klikt u met de rechtermuisknop op het timer icoon en klikt u op de optie **Timer instellingen**.|
|**11**|Gebruik de zoekfunctie om te zoeken naar de timer functie **IMPORTVBNAPI**, activeer het vinkje "*Dit script activeren bij het starten van de timer*"|
|**12**|Configureer vervolgens een passend tijdsschema, dit proces kan vrij intensief zijn (afhankelijk van de ingestelde policies) advies daarom is om het timerproces `s nachts te draaien.|
|**13**|Herstart de client waar de timer op draait.|

<!--
Policies die nog benoemd moeten worden aangezien deze geheel nieuw zijn, doe dit in de bovenstaande tabel.
 -->


### Timer setting → Policy

|Timer setting|Policy|Policy Functie omschrijving|
|:--|:--|:--|
|VBN/VBNPlantionVeilingKopers|**Companies_ImportPlantionCompanies**||
|VBN/VBNOverschrVeilingkopers|**Companies_OverwriteAuctionBuyerDescriptions**||
|VBN/VBNHuidigeOverschrijven|**Companies_OverwriteAuctionBuyers**||
|ImportKewkersVeilingen|**Companies_GrowerAuctionsToImport**|Standaard veiling codes "01", "02", "03"|
|VBN/VBNHuidigeOverschrijven|**ECert_OverwriteEisKenmerkTypes**||
|VBN/VBNHuidigeOverschrijven|**ECert_OverwriteEisKenmerkWaardes**||
||**ECert_OverwriteVerklaringen**||
||**ECert_OverwriteNVWACertificateFeature**||
|Factuur uitsplitsingen aanmaken/Huidige factuur uitsplitsingen omschrijving overschrijven|**GoodsCodes_OverwriteCnGoods**||
|Factuur uitsplitsingen aanmaken/Factuur uitsplitsingen overschrijven van artikelgroepen|**GoodsCodes_OverwriteProductGroupToCnGoods**||
|Setup/VBNArtikelenAanmaken|**Product_AppendNewArticles**||
|Artikelen/Botanische namen overschrijven|**Products_OverwriteBotanicalNames**||
|VBN/Huidige overschrijven|**Products_OverwriteExistingArticles**||
|VBN/Huidige overschrijven|**Products_OverwriteExistingFeatures**||
|Setup/VBNArtikelenAanmaken|**Products_Append_NewArticleGroups**||
|VBN/Huidige overschrijven|**Products_OverwriteExistingArticleGroups**||
|Setup/ArticleGroupCountrySpecDefault|**Products_ArticleGroupCountrySpecDefault**|| <!- New!- -->
|Setup/VBNARtikelGroepNieuwEMails|**Products_NewArticleGroupEmails**||<!- New!- -->
|Fusten/HuidigeFustenOverschrijven|**Products_OverwriteExistingPackages**||
|Fusten/Huidige fusten overschrijven/Fusttype behouden|**Products_Products_KeepPackageType**||
|Setup/VBNARtikelGroepNieuwEMails|**Products_NewPackageEmails**||<!- New!- -->
|Huidige vertalingen overschrijven/Artikelen|**Products_OverwriteTranslations**||
|Huidige vertalingen overschrijven/Artikelgroepen|**Products_OverwriteArticleGroupTranslations**||
|Huidige vertalingen overschrijven/Sorteringskenmerken|**Products_OverwriteFeatureTranslations**||
|Vertalingen (Artnr/Artgrp/SortKenm)/Nederlands|**Products_ImportDutchTranslations**||
|Vertalingen (Artnr/Artgrp/SortKenm)/Engels|**Products_ImportEnglishTranslations**||
|Vertalingen (Artnr/Artgrp/SortKenm)/Duits|**Products_ImportGermanTranslations**||
|Vertalingen (Artnr/Artgrp/SortKenm)/Frans|**Products_ImportFrenchTranslations**||

