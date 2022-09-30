<img src="../../fslogo.png">

# Florisoft manual Open Posts (M20)

## Table of contents

[Required setting per debtor](#required-setting-per-debtor)  
[Overview open posts](#overview-open-posts) 


## Required setting per debtor

A debtor can only have open posts if they have the required settings. Remember that changing this setting does **not** automatically retroactively make the previous posts open posts. You **can** however change the older posts to be open posts afterwards.

You can inspect or change this setting by following the staps below:

|# Stap|Uitleg|
|:--|:--|
|**1.**|From the navigator open the constants screen.|
|**2.**|Within the filestructure on the leftside of the screen you'll need to navigate to: <br> *Community*(#1) → *Debtor data*(#2) → *Debtors*(#3).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media/image1.png" width = 400></details>|
|**3.**|Left click twice on a debtor's row in the table(#4) this should open a new screen.|
|**4.**|In the new window prompt navigate to *Invoice*(#1) → *Invoice*(#2) in the file structure.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image2.png" width = 400></details>|
|**5**|In this tab there should be a option checkbox called *Book as open posts*(#3).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image2.png" width = 400></details>|



## Algemene proces doorloop

Before we begin it is import that we know how to create an open post.The diagram below shows a simplified version of the steps that need to be taken to create an open post. The chapters after the diagram will describe the steps in more detail.

<img src="media/image3.png">

|Stap|Uitleg|
|:--|:--|
|**1. Make divisions**|The first step is to create a division on a stock. This is done by customers using the webshop or us by using the backoffice's stock screen.|
|**2. Carry divisions out into invoice**|After making a stock division you can carry out the division to invoices.|
|**3. Print the invoice**|When an invoices is finished it is possible to print it. During the printing process a unique invoicenumber is assigned to the invoice and afterwards it can't be changed anymore.|
|**4. Carry invoice out to invoice history**| The last step is carrying out printed invoices to the invoice history. Only invoices which are in the invoice history are visisble in the open posts section. Florisoft sees carried out invoices always as open posts unless one ore more payments are made on those invoices. Possibly made payments can be seen in the Open Posts screen..|

:warning: **Because Florisoft is updated regularly the application may seem different on your screen since this manual's version might be out dated. Do however note that the general process flow won't change.**:warning:

## Overview open posts

In this chapter the functionalities and layout of the Open Post screen are explained.

|#|Uitleg|
|:--|:--|
|**1**|Open the Florisoft navigator and click on the '*Debtors*' button(#1).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image1.png" width = 400></details>|
|**2**|You should now see the debtor screen, below you'll find a short description of the screens layout. <br> **1**.: *The left column of the Open Posts screen is used for selecting the right debtors to then show them in sections 2 & 3.*<br>**2.**: *The main section of the open posts screen shows every open post for the selected debtor. Here you'll find important information pertaining to the invoice such as invoice numbers, dates, original and open payment amounts.*<br>**3.**: *The lower section of the screen shows the received payments.* <details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image2.png" width = 600px></details>|

## De debiteuren sectie

To show all open posts on a single screen we'll need to change some settings on the left side of the screen. To learn which setting does what read the table below.

|# + Instelling|Uitleg|
|:--|:--|
|**1. Zoekveld voor filteren op deb.**|Enter the debtor you want to filter on.|
|**2. Knop zoekopdracht uitvoeren**|Click here to exectute the filter based search based on the input of the textfield 1.|
|**3. Alle debiteuren laten zien**|This checkbox is an alternative to option 1 & 2, this option just shows the open posts for every debtor. **Important**: *Enabling this may lag the system in cases where the data is of a substantial size.|
|**4. Subklanten tonen**|If this checkbox is enabled you'll see the debtors sub-customers that are dependant on the filtered debtor.|
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
|**Image**|<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="media NL/image10.png" width = 600px></details>|
|**1.**|Type the e-mail header here.|
|**2.**|Enter the e-mail receipients here|
|**3.**|Enter any CC .|
|**4.**|Vul hier het tekstbericht in voor het te verzenden e-mail bericht.|
|**5.**|Mocht u HTML elementen hebben gebruikt in uw berichtlichaam is het van belang dat dit u deze optie aanvinkt.|
|**6.**|Klik op OK als u het bericht wil verzenden, er is geen manier om de mail terug te draaien na het verzenden.|