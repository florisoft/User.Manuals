<img src="../../fslogo.png">

# Florisoft Handleiding Unpaid Invoices (M20)

## Inhoudsopgave

[Verplichtte inselling per debiteur](#verplichtte-instelling-per-debiteur)  
[Algemene proces doorloop](#algemene-proces-doorloop)  
[Overzicht open posten](#overzicht-open-posten)  
[Debiteuren sectie](#de-debiteuren-sectie)  
[Aanmaken nieuwe open post debiteur](#aanmaken-nieuwe-open-post-debiteur)  
[Hoofdtabel uitleg](#hoofd-tabel-uitleg)  
[Instellen tabel layout](#instellen-tabel-layout)  
[Ontvangen betalingen sectie](#ontvangen-betalingen-sectie)
[Extra instellingen](#extra-instellingen)    
[Printen en of mailen van samenvattingen](#printen-en-of-mailen-van-samenvattingen)


## Verplichtte instelling per debiteur

Een debiteur kan alleen open posten hebben als dit daadwerkelijk is ingesteld. Onthoud ook dat Open posten **niet** automatisch (met terugwerkende kracht) worden aangemaakt maar dat het **wel** mogelijk is om deze nader hand aan te maken.

U kan deze bestelling in zien of wijzigen door de volgende stappen te volgen:

|# Stap|Uitleg|
|:--|:--|
|**1.**|Open vanuit de navigator het constanten scherm.|
|**2.**|In de bestandsstructuur navigeert u naar:<br>*Organen*(#1) → *Debiteurgegevens*(#2) → *Debiteuren*(#3).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image1.png" width = 400></details>|
|**3.**|Klik vervolgens tweemaal op een debiteurrij(#4) in de tabel. Dit opent een nieuw scherm.|
|**4.**|In het nieuwe scherm navigeert u in de bestandsstructuur naar:<br>*Factuur*(#1) →*Factuur*(#2)..<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image12.png" width = 400></details>|
|**5**|U ziet nu de optie staan '*Boeken als Open Post*'(#3).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image12.png" width = 400></details>|



## Algemene proces doorloop

Voordat we beginnen is het belangrijk dat we weten hoe een open post gecreëerd wordt. Hieronder staat een versimpelt diagram waarin de stappen voor het maken van een open post beschreven staan. De stappen worden vervolgens nader beschreven in de uitleg tabel onder het diagram.

<img src="media NL/AlgemeneProcesFlow.png">

|Stap|Uitleg|
|:--|:--|
|**1. Verdeling maken**|De eerste stap is het maken van een verdeling op een voorraadpartij. Dit wordt gedaan door de klanten via de webshop of door u doormiddel van een verdeling op het voorraadscherm.|
|**2. Verdeling doorboeken naar factuur**|Na het maken van een verdeling moet deze worden doorgeboekt|
|**3. Print de factuur**|Wanneer een factuur compleet is kan deze worden geprint. Bij het printen krijgt de factuur een uniek factuurnummer deze kunnen hier na dus ook niet meer verandert worden. Deze facturen zijn dus onveranderlijk en gesloten.  |
|**4. Factuur naar de factuurhistorie**| De laatste stap is het doorboeken van uitgeprinte facturen naar de factuurhistorie. Florisoft ziet doorgeboekte facturen altijd als open posten behalve wanneer een of meerdere betalingen zijn verricht van een factuur. Mogelijk gemaakte betalingen zijn te zien in het open posten scherm.|

:warning: **Aangezien de Florisoft applicatie regelmatig geüpdate wordt kan het zo zijn dat sommige schermen er net iets anders uit zien. We proberen de handleidingen zo goed mogelijk te onderhouden maar het kan zijn dat het iets achterloopt. Weet wel dat in de meeste gevallen het algemene proces niet drastisch zal veranderen.**:warning:

## Overzicht Open posten

In dit hoofdstuk behandelen we het Open Posten scherm in Florisoft. In de onderstaande tabel wordt beschreven hoe u in dit scherm komt en hoe het Open Posten scherm in elkaar zit. 

|#|Uitleg|
|:--|:--|
|**1**|Open de Florisoft navigator en klik op de knop '*Debiteuren*'.(#1)<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image1.png" width = 400></details>|
|**2**|U ziet nu het debiteuren scherm voor u, hieronder een korte beschrijving van de layout van het scherm: <br> **1**.: *De linker kolom van het Open Posten scherm is te gebruiken voor het selecteren van juiste debiteuren om deze vervolgens weer te laten zien in vakjes 2 & 3.*<br>**2.**: *De hoofdsectie van het Open Posten scherm laat alle individuele open posten zien voor de geselecteerde debiteuren. Hier in is ook belangrijk informatie zoals: betreffende factuurnummers, datum, originele-, openstaande- en betaalde bedragen hier zichtbaar.*<br>**3.**: *Het onderste gedeelte van het scherm laat de ontvangen betalingen zien. Deze betalingen zijn per factuur (een open post).* <details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image2.png" width = 600px></details>|

## De debiteuren sectie

Om alle open posten op een scherm te laten zien moeten er wat instellingen ingesteld worden in de kolom aan de linkerkant van het scherm. Welke instellingen wat doen wordt behandeld in deze sectie.

|# + Instelling|Uitleg|
|:--|:--|
|**1. Zoekveld voor filteren op deb.**|Vul hier het debiteur waar op u wilt filteren|
|**2. Knop zoekopdracht uitvoeren**|Klik hier om de filter opdracht uit te voeren|
|**3. Alle debiteuren laten zien**|Deze checkbox is een alternatief tot optie 1 & 2 en door deze optie aan te zetten krijgt u alle debiteuren te zien. Belangrijk: bij grootte databases kan het lang duren om een complete lijst te genereren|
|**4. Subklanten tonen**|Als deze checkbox aangevinkt staat ziet u ook de sub-klanten die aan de opgefilterde debiteuren vast hangen.|
|**5. Alleen open posten**|Deze checkbox kan gebruikt worden om alleen open posten te laten zien. Als deze instelling uit staat zie je ook deels en helemaal betaalde facturen, zodra u het aan zet ziet u alleen compleet onbetaalde facturen.|
|**6. Alleen verlopen open posten**|Bij het aanvinken van deze checkbox krijgt u alleen facturen te zien die de bijhorende verloopdatum voorbij zijn. De verloop van open posten kan ingesteld worden per debiteur.|
|**7. Historie tonen**|Bij het aanvinken van deze checkbox krijgt u een datumselectievenster te zien. Binnen dit venster vult u een start- en einddatum in en vervolgens klikt u op OK. U heeft zojuist een datum filter ingesteld hierdoor krijgt u alleen open posten te zien die in uw gestelde tijdsvak passen.|
|**8. Alleen zichtbaar tonen**|Deze checkbox maakt het zo dat alleen de zichtbare open posten te zien zijn. Dit betekent dus dat de 'zichtbaar' checkbox van een post niet aangevinkt moet zijn in de bijhorende kolom.|
|**9. Factuurdatum**|Bij het activeren van deze checkbox krijgt u een datumselectievenster te zien waar u een start- en einddatum selecteert. Door het instellen van dit datum filter krijgt u alleen facturen te zien die binnen deze tijdsperiode vallen.|
|**10. Nieuwe open posten**|De knop 'nieuw' geeft u de optie om handmatig een nieuwe open post te maken wat gelinkt is aan een factuurnummer. Wanneer u op deze knop drukt opent er een nieuw venster, hoe en wat u moet doen binnen dit venster staat onder deze tabel beschreven.|
|**11. Standaard valuta**|Dit veld laat de debiteurs standaard valuta zien.|
|**12. Saldo selectie**|Het totaal openstaande/onbetaalde bedrag van alle posten die geselecteerd zijn in de hoofd sectie van het scherm|
|**13. Bedrag selectie**|Het totaal bedrag (dus betaald en onbetaald) van alle in hoofd sectie geselecteerde posten.|
|**14. Cijfer**|Dit veld bevat een scoringssysteem voor betalingsbereidheid van een klant. Indien alle posten betaald zijn binnen het gezette termijn is de score een 10. Als de geselecteerde facturen openstaan voor 90 dagen of langer zal het nummer 0 zijn. De score calculatie vind dynamisch plaats op basis van de hoeveelheid facturen op het scherm zichtbaarzijn en hoeveel er verlopen zijn.|
|**15. Betaling selectie**|Het totaal bedrag van alle al betaalde geselecteerde posten.|
|**16. Betalingen - Nieuw**|Selecteer een post in de hoofd sectie van het scherm en klik op de 'new' knop. Het verschil tussen beide velden is beschreven onder de tabel in 10.9 - 10.13|
|**17. Alle betalingen**|Deze schakelaar knop kan gebruikt worden om de laatste of alle historische betalingen die geregristreerd staan aan debiteur te laten zien.|
|**18. Bet. historie**|Gebruik deze checkbox om alle historische (al doorgeboekte) facturen te zien in de factuur geschiedenis.|

<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image3.png" width = 600px></details>

### Aanmaken Nieuwe Open Post Debiteur

|# + Instelling|Uitleg|
|:--|:--|
|**Afbeelding**|<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image4.png" width = 600px></details>|
|**1. Debiteurnummer**|Het veld 'Debiteurnummer' heeft een onwijzigbare waarde wat de debiteur naam en nummer bevat.|
|**2. Factuurnummer**|Het factuurnummer is een verplicht veld dat een al bestaand factuurnummer moet bevatten om de open post aan te koppelen.Door op de F2 toets te drukken vul je automatisch het volgende beschikbare factuurnummer in.|
|**3. Factuurdatum**|In het factuurdatum vult u de datum in waar aan de factuur geregristreerd word.|
|**4. Vervaldatum**|De verloopdatum van de factuur. Nomaal word dit veld gevuld met de standaard verloopdatum van een debiteur zodat nieuwe open posten de standaard financiële regel volgen van de betreffende debiteur.|
|**5. Factuurbedrag**|Het Factuurbedrag word gevuld met het te betalen bedrag voor deze factuur. <br>Belangrijk: Houd rekening met de hoeveelheid decimalen dat gehanteerd wordt binnen uw systeem. Gebruikt uw systeem over het gehele systeem bijvoorbeeld 2 decimale waarden gebruik dan een getal met 2 cijfers achter de komma (bijv.: 0.01).|
|**6. Valuta**|Kies in dit veld de te gebruiken munteenheid voor deze nieuwe open post.|
|**7. Opmerking**|	Het 'opmerking' veld is optioneel en kan gebruikt worden om opmerkingen achter te laten voor de nieuwe open post.|
|**8. Niet incasseren**|Vink deze checkbox aan als deze nieuwe post niet geïncasseerd hoeft te worden.|
|**9. Betaald bedrag**|Vul hier in hoeveel de klant eventueel al betaald heeft dit word dan later afgetrokken van het totaalbedrag voor een nog te betalen bedrag.|
|**10. Saldo**|	Onwijzigbare waarde van het totaal bedrag van de open post.|
|**11. Betaaldatum**|De betaaldatum is waar de betaling aan geregistreerd wordt.|
|**12. Betaalwijze**|Gebruik dit veld voor het invullen van een letter wat samenhangt aan een betaalwijze. Deze letters hangen vast aan letters en betaalwijzen die gedefinieerd zijn in de constanten. Het pad hier voor is:<br>**Constanten** → **Financieel** → **Betaalwijze**, hier in staan de beschikbare betaalwijzes.|
|**13. Gehanteerde koers**|In dit veld staat de standaard koerswaarde die gehanteerd wordt voor de debiteur.|

## Hoofd tabel uitleg

De hoofd sectie behandelt de hoofd tabel in het Debiteuren scherm wat gerelateerd is aan facturen. Deze rijen zijn alleen zichtbaar als ze doorgeboekt zijn van de factuur sectie naar de factuurgeschiedenis.

De uitleg is aan de hand van de onderstaande afbeelding gevolgd door een tekst uitleg van elke kolom.

|# + Instellling|Uitleg|
|:--|:--|
|**Afbeelding**|<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image5.png" width = 600px></details>|
|**1. Debnr.**| het debiteurnummer waaraan de open post gekoppeld is.|
|**2. Naam**|de debiteurnaam waaran de open post gekoppeld is.|
|**3. Factuurnr**|het factuurnummer waaraan de open post gekoppeld is.|
|**4. Factuurdatum**|de factuurdatum waaran de open post gekoppeld is.|
|**5. Vervaldatum**|de vervaldatum van de open post|
|**6. Bedrag** |het totaalbedrag van de open post|
|**7. Betaald**|het totaal al betaalde bedrag van open post.|
|**8. Saldo**|de resterende hoeveelheid van de open post oftewel: bedrag - betaald = balans|
|**9. Historisch**|checkbox dat aangevinkt word of de open post een historische post is.  De historische posten zijn alleen zichtbaar wanneer de schakelaar vna nummer 17 van het vorige hoofdstuk aan staat.|
|**10. Ordernr**|het order/bestelling -snummer waaraan de open post gekoppeld is.|
|**10. Niet Zichtbaar**|met deze checkbox kan u bij activeren de bijhorende post onzichtbaar maken. Deze post is dan alleen zichtbaar wanneer optie 8 van de vorige stap uit staat.|

### Instellen tabel layout

Naast de hiervoor benoemde kolommen kan u nog meer velden aan zetten voor de hoofdtabel. Dit u door de volgende stappen te volgen:

|Stap|Uitleg|
|:--|:--|
|**1.**|Open de gridinstellingen (tabel layout) door met de rechtermuisknop te klikken in de te tabel. Dit opent een nieuw scherm.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image6.png" width = 600px></details>|
|**2.**|In dit scherm kan u kolommen aan te zetten door in de kolom '*Aan*'(#1) een vinkje te zetten.|
|**3.**|Wilt u kolom op een andere plaats hebben in de tabel, dan past u dat aan in de '*Volgorde*'(#2) kolom.|
|**4.**|Ook kan u alvast de breedte instellen van een kolom in de '*breedte*'(#3) kolom.|

## Ontvangen betalingen sectie

De ontvangen betalingen tabel vind u onder de eerder besproken hoofdtabel. In dit scherm ziet u alle ontvangen betalingen van de geselecteerde open post zoals te zien in de onderstaande afbeelding. Volgens de standaard instellingen is alleen de meest recente betaling zichtbaar. Dit is echter aan te passen middels knop 17 van hoofdstuk 1.

Hieronder een uitleg over de tabel kolommen onder de '*Ontvangen betalingen*' sectie.

|# + Kolom|Uitleg|
|:--|:--|
|**1. Debnr**|Het debiteurnummer waaraan de betaling gekoppeld is.|
|**2. Naam**|De debiteurnaam waaraan de betaling gekoppeld is|
|**3. Factuunr**|Het factuurnummer waaraan de betaling gekoppeld is.|
|**4. Betaaldatum**|De datum waarop de geselecteerde betaling verricht is.|
|**5. Valuta**|De munteenheid gebruikt in de geselecteerde betaling.|
|**6. Bedrag**|De betaal hoeveelheid van de open post.|
|**7. Betaalwijze**|De betaalmethode gebruikt voor deze betaling.|

## Extra instellingen

Naast de hoofd funties van het Debiteur Open Posten Scherm zijn er extra functionaliteiten beschikbaar die vaak gebruikt worden door klanten.

### Printen en of mailen van samenvattingen

De belangrijkste extra functionaliteit is het printen van e-mail informatie (samenvatting) van open posten. Om dit in te stellen volg de volgende stappen:

|Stap #|Uitleg|
|:--|:--|
|**1.**|Klik op de '*Menu*' knop(#1) linksboven in het scherm. Klik binnen de lijst die verschijnt op '*overzichten*'(#2). Er verschijnt nu een nieuw scherm waarin de volgende stappen plaats vinden.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image8.png" width = 600px></details> |
|**2.**|Kies binnen deze lijst(#1) het type samenvatting wat u wilt zien. Let op de instelling onder het veld. |
|**3.**|Zoals eerder benoemd zijn de opties die hier beschikbaar zijn afhankelijk van het geselecteerde type samenvatting.<br>U kan hiermee een selectie maken voor uw specifieke scenario. Een aantal voorbeelden hiervan zijn: *debiteur*(#2), *factuur reeksen*(#3), *tourcode* en of een *datum periode*(#3).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image9.png" width = 600px></details> |
|**4**|	Met deze checkboxes kunt u instellen of u de Florisoft applicatie zelf wil laten bepalen waar het begin en eind datum van een samenvatting.|
|**5.**|Met deze knop kun je een samenvatting genereren en laten zien in de onderstaande tot nu toe lege tabel (Samenvatting scherm)|
|**6.**|Opent de print/e-mail scherm om de gegenereerde samenvatting te printen of verzenden, hierover hieronder meer.|
|**7.**|De layoutstandaarden voor het printen van de samenvatting de standaardkeuze is Aanmaning NL|
|**8.**|Met de uitvoer opties kiest u hoe u de samenvatting wil exporteren. Hierin zijn een aantal keuze's: printer (fysiek op papier printen), scherm (op uw computerscherm), E-mail (de samenvatting versturen via e-mail) en bestand (het opslaan van de samenvatting als een bestand op uw computer).|
|**9.**| Bij het kiezen van '*bestand*' als uitvoeroptie heeft u een aantal bestandsformaten voor uitvoer dit vind u in het uitgegrijsde keuzebox '*type bestand*'.|
|**10.**|Als u op de '*OK*' knop drukt bevestigd u de instellingen in de samenvatting en vervolgens print/mailt u de samenvatting.|

**Wanneer u de e-mail optie geselecteerd heeft krijgt u nog een aantal opties te zien die u moet invullen. De uitleg hiervan staat hieronder:**

|Stap|Uitleg|
|:--|:--|
|**Afbeelding**|<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image10.png" width = 600px></details>|
|**1.**|Typ hier uw e-mail onderwerp.|
|**2.**|Typ hier het e-mailadres van de ontvanger.
|**3.**|Vul hier eventule CC e-mailadressen.|
|**4.**|Vul hier het tekstbericht in voor het te verzenden e-mail bericht.|
|**5.**|Mocht u HTML elementen hebben gebruikt in uw berichtlichaam is het van belang dat dit u deze optie aanvinkt.|
|**6.**|Klik op OK als u het bericht wil verzenden, er is geen manier om de mail terug te draaien na het verzenden.|