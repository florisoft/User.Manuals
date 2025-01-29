<img src="../../fslogo.png">

# Handleiding FloriShop addon Favourites (M214)

De FloriShop addon favourites geeft uw klant een manier om artikels te favorieten zodat ze de later makkelijk terug kunnen vinden. 

Deze module werkt alleen voor partijen met een commercieel artikelnummer (CARTNR). Hier voor moeten partijen beschikken over een commerciële kenmerkgroep die u per artikel of artikelgroep kan instellen.

**Waarom commercieële kenmerk groepen?** *met deze functionaliteit kan een klant per kweker en of lengte (S1) zijn favorieten bijhouden om makkelijker onderscheid te maken. De webshop onthoudt de favorieten per klant ook bij nieuwe sessies.*

**Let op:** *bij het toevoegen van een commerciële kenmerkgroep aan een artikel of artikelgroep worden de CARTNRs niet met terugwerkende kracht berekend. Dit betekent dat alleen bij nieuwe partijen in uw systeem dit berekent zal worden.*

Belangrijke informatie voor het inrichten van de module; Voordat de module wordt ingericht moet er door een medewerker van Florisoft nagekeken worden of de manier van hashen via de nieuwe manier gaat. Neem hiervoor contact op met de support afdeling.
Het omzetten kan via de debug optie 'Commerciele partijen hash omzetten'. Standaard staat dit aan op systemen welke ongeveer na 2020 zijn geimplementeerd. Systemen welke al live waren voor dat jaartal zullen moeten worden omgezet naar de nieuwe manier van hashen. Mocht dat nog niet gedaan zijn kunt u contact opnemen met de supportafdeling.

## Inhoudsopgave

[Aanmaken van een commerciele kenmerkgroep](#aanmaken-van-een-commerciele-kenmerkgroep)  
[Commerciele kenmerkgroep koppelen aan artikelgroep](#commerciele-kenmerkgroep-koppelen-aan-artikelgroep)  
[Commerciele kenmerkgroep koppelen aan artikel](#commerciele-kenmerkgroep-koppelen-aan-artikel)  
[Wijzigingen overzetten naar andere artikelgroepen](#wijzigingen-overzetten-naar-andere-een-andere-artikelgroep)  
[Partij markeren als favoriet op de Florishop](#partij-als-favoriet-markeren-op-uw-florishop)  

## Aanmaken van een commerciele kenmerkgroep

|Stap|Uitleg|
|:--|:--|
|**1**|Open uw constanten scherm en navigeer naar het onderstaande pad:<Br>**Artikelen→Kenmerkgroepen commerciele partijen**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image1.png"></details>|
|**2**|Klik op het plusje om een kenmerkgroep aan te maken?|
|**3**|Vul de volgende waarden in:<br>- **Code**: numerieke identificatie code voor de kenmerkgroep<br>- **Omschrijving**: de in het systeem kenbare omschrijving zet hier een goed omvattende omschrijving neer. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image2.png"></details>|
|**4**|Onder het kopje "**Uniekheid commercieel artnr**" kan u waardes aanvinken om mee te nemen in de hash. In kort betekent dit dat hoe meer waardes u hier aanvinkt hoe specifieker de kenmerkgroep is.<br><br>**Bijvoorbeeld**: Red naomi rozen, stel ik neem alleen de S1 (steellengte) mee in een kenmerkgroep dan heeft elke Red naomi met dezelfde steellengte hetzelfde commerciele artikelnummer(CARTNR). <br><br>Maar bij het aanvinken van kweker en S1 in de kenmerkgroep hebben alleen artikelen met identieke artikelnummer, steellengte en kweker hetzelfde CARTNR. Dit betekent dus dat bij het favorieten van een artikel op de webshop zullen alle artikelen met hetzelfde CARTNR automatisch ook gefavoriet worden. |
|**5**|Vink de waardes aan die u mee wilt nemen in de kenmerkgroep. Wij raden aan om te beginnen met S01 en de kweker. <br>**Let op:** *het artikelnummer staat al standaard aan.* <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image2.png"></details>|
|**6**|Onder het kopje **Uniekheid comerciële partij** kan u de kenmerkgroep verder specificeren.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image2.png"></details>|
|**7**|Sla de kenmerkgroep op door op de Ok knop te drukken.|

## Commerciele kenmerkgroep koppelen aan artikelgroep

Volg de onderstaande stappen om een artikelgroep een featuregroup te geven. 

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer in het constantenscherm naar het pad:<br>**Artikelen→Artikel gegevens→Artikelgroepen**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image3.png"></details>|
|**2**|Open de betreffende artikelgroep en navigeer naar het mapje:<br>**Commerciele partij**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image3.png"></details>|
|**3**|Vul in het dropdown veld **Kenmerkgroep** de bijhorende kenmerkgroep in.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image3.png"></details>|
|**4**|Dit betekent niet dat alle artikelen onder deze artikelgroep nu een commercieël artikelnummer hebben. Deze worden alleen aangemaakt bij het nieuw inlezen van de voorraad.|

**Het is mogelijk om deze instelling over te zetten naar andere artikelgroepen, hoe u dat doet leest u [hier](#wijzigingen-overzetten-naar-andere-een-andere-artikelgroep)!**

## Commerciele kenmerkgroep koppelen aan artikel

**Let op:** *Bij het instellen van een commerciële kenmerkgroep overschrijft u de ingestelde kenmermerkgroep van de bijhorende artikelgroep voor dit artikel.*

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer in het constanten scherm naar het pad:<BR>**Artikelen→Artikel gegevens→Artikelnummers**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image7.png"></details>|
|**2**|Open een artikelnummer waarde, en navigeer in dit scherm naar het tabje **Commerciele partij**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image7.png"></details>|
|**3**|Vul in het dropdown veld **Kenmerkgroep** de bijhorende kenmerkgroep in. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image7.png"></details>|
|**4**|Dit betekent niet dat alle artikelen die onder deze kenmerkgroep vallen automatisch een CARTNR krijgen. Dit is alleen bij het opnieuw inladen van de artikelen in de voorraad.|

**Het is niet mogelijk om wijzigingen over te zetten naar andere artikelnummers.**

## Wijzigingen overzetten naar andere een andere artikelgroep

|Stap|Uitleg|
|:--|:--|
|**1**|Bij het wijzigen van een kenmerkgroep in een artikelgroep kan u hierna gebruik maken van de knop **wijzigen naar**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image4.png"></details>|
|**2**|U krijgt nu een lijst van artikelgroepen te zien, maak hier een selectie van artikelgroepen die dezelfde kenmerkgroep hebben.|
|**3**|Bevestig uw selectie door op de **OK** knop te drukken en uw wijzigingen te bevestigen.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image5.png"></details>|
|**4**|Als alles goed gegaan is ziet u nu een bevestiging te zien.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image6.png"></details>|


## Favorieten aanzetten op de Florishop

|Stap|Uitleg|
|:--|:--|
|**1**|Om gebruik te maken van de favorieten module op uw webshop moet u deze ook aanzetten op de webshop. Log in met een webshop beheer account.|
|**2**|Zet de beheermodus aan door op het gebruikers icoontje klikken en in de dropdown te klikken op de **Beheer** optie.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image8.png"></details>|
|**3**|Klik vervolgens op de **configuration** dropdown in de zwarte balk bovenaan in het scherm. Klik vervolgens op de optie **Webshop settings**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image9.png"></details>||
|**4**|U bevindt zich nu in het webshop instellingen scherm en zoek naar de instelling **FAVORIETCARTNR**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image10.png"></details>|
|**5**|Zet deze instelling aan.|

## Partij als favoriet markeren op uw Florishop

|Stap|Uitleg|
|:--|:--|
|**1**|Indien de vorige stappen goed zijn doorlopen ziet u niet hartjes onder de artikelen op uw webshop.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image11.png"></details>|
|**2**|Bij het aanklikken van een hartje favoriet u een artikel op de webshop. Artikelen met hetzelfde CARTNR krijgen automatisch een ingevuld hartje. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image12.png"></details>|
|**3**|Als u op het hartje klikt of op de favorieten productgroep ziet u uw favorieten artikelen. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Favourites Handleiding\image13.png"></details>|
