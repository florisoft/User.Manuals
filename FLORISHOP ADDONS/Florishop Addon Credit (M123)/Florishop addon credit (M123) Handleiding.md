<img src = "../../fslogo.png" alt = "Florisoft logo">

# M123 Florishop Credit Handleiding

## Inhoudsopgave

[Inhoudsopgave](#inhoudsopgave)  
[Inleiding](#inleiding)  
[Het activeren van de benodigde modules](#het-activeren-van-de-benodigde-modules)  
[Aanmaken redes voor credit](#aanmaken-redes-voor-credit)  
[Credit aanvragen via de webshop](#credit-aanvragen-via-de-webshop)  
[Goedkeuren van credit verzoeken](#goedkeuren-van-credit-verzoeken)  

## Inleiding

De credit webshop add-on maakt het voor gebruikers mogelijk om krediet aan te vragen via de webshop. Credit aanvragen kunnen ook voorzien worden van extra informatie indien nodig. Het voordeel hier van is dat de meest relevante informatie automatisch beschikbaar word.

:warning:**Screenshots in deze handleiding kunnen verschillen van de schermen die u in uw systeem ziet. Dit omdat de Florisoft applicaties continue geupdate worden, weet wel dat het hoofdproces hetzelfde blijft.**

## Het activeren van de benodigde modules

De eerste stap is het aanzetten van de vereiste modules voor de debiteur die een credit aanvraag kan maken. Om de juiste modules aan te zetten volg de onderstaande stappen:

|Stap#|Uitleg|
|:--|:--|
|**0**|Open de Florisoft applicatie en log in met uw gebruikerslogin.|
|**1**|Klik op de constanten knop in het navigatie scherm dat zojuist geopend is (#1).<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image1.png"></details>|
|**2**|Binnen het constanten scherm bestandsstructuur tabje navigeer naar:<br>*Organen*(#1) **→** *Debiteurgegevens*(#2) **→** *Debiteuren*(#3)<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image1.png"></details>|
|**3**|Klik tweemaal met de linkermuisknop op een debiteurrij, dit opent het debiteurdetailscherm.<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image3.png"></details>|
|**4**|Binnen dit zojuist geopende scherm navigeer in de bestandsstructuur naar:<br>*Internet* **→** *Modules*.<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image3.png"></details>|
|**5**|Binnen het modules scherm dat u zojuist geopend heeft activeer de volgende modules (vinkje = geactiveerd):<br> - Factuur historie(#3)<br> - Credit aanvraag (#4) |
|:memo:|*The checkbox 'Factuur historie (hoofd)'(#5) mag aangezet worden als dit toepasbaar is voor deze debiteur.*|

**Optioneel:**  

Door de vorige stappen te doorlopen maak je het mogelijk voor een debiteur om krediet aan te vragen. Om dit proces te doorlopen voor 1 debiteur is goed te doen, voor meerdere debiteuren kost dit al gauw te veel tijd. Gelukkig kun je binnen Florisoft meerdere debiteuren wijzigen tegelijkertijd, om dit te doen volg de onderstaande stappen:

|Stap#|Uitleg|
|:--|:--|
|**1**|Als het goed is heeft u nog het scherm open van stap 5 van het vorige uitleg. Indien de modules nog niet geactiveerd zijn activeer ze door de checkboxes aan te vinken.<br>Klik alleen nog niet op Ok maar klik op de '*wijzigen naar*' knop(#1) dit opent een nieuw dialoogscherm.<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image18.png"></details> |
|**2**|In dit scherm klik simpelweg op de '**Ok**'knop(#1).<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image4.png"></details>|
|**3**|Door op de Ok knop te drukken hoort er een nieuw scherm te openen. In dit scherm zijn er twee mogelijkheden: het veranderen van debiteuren doormiddel van groepen(3.a) of het veranderen van meerdere losse debiteuren(3.b). |
|**3.a**|Klik op de 'debiteurgroepen toevoegen' knop(#1), dit hoort een nieuw scherm te openen genaamd 'Index Debiteurgroepen'. In dit scherm hoort u een tabel te zien met debiteurgroepen. In deze tabel dient u een selectie te maken, dit kan u door op een regel te klikken. Door op de spatiebalk te gebruiken kan u meerdere groepen selecteren.<br><br>Iets meer geavanceerd is het maken van omgekeerde selectie dit is erg handig wanneer u alles behalve een paar items wil selecteren. Dit kan u doen door met uw rechtermuisknop te klikken op uw huidige selectie. Dit opent een klein schermpje(#2), klik hier op met de linkermuisknop. Dit opent weer een klein optiescherm, in dit scherm klikt u op '*select inverse*' om een omgedraaide selectie te maken.<br><br>Waneer er veel regels zijn in de tabel kan er ook gezocht worden om sneller de juiste items te vinden. Het is aan te raden om de '*snel zoeken*'(#4) functie gebruiken omdat dit flink wat sneller is. Mocht het zo zijn dat de tabel niet automatisch update bij het zoeken kan u op de '*Refresh*' knop(#5) drukken. <br><br>Na het maken van de juiste selectie van debiteuren kan u op de '**Ok**' knop(#6) drukken.<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image5.png"></details> |
|**3.b**|Klik op de '*Selecteren*' knop (#1 van stap #3), dit hoort een nieuw scherm te openen genaamd '*Index debiteuren*'. In deze tabel kan u een selectie maken door een regel aan te klikken of door de spatiebalk in te drukken om de selectie uit te breiden.<br>Iets meer geavanceerd is het maken van omgekeerde selectie dit is erg handig wanneer u alles behalve een paar items wil selecteren. Dit kan u doen door met uw rechtermuisknop te klikken op uw huidige selectie. Dit opent een klein schermpje(#2), klik hier op met de linkermuisknop. Dit opent weer een klein optiescherm, in dit scherm klikt u op '*select inverse*' om een omgedraaide selectie te maken.<br><br>Waneer er veel regels zijn in de tabel kan er ook gezocht worden om sneller de juiste items te vinden. Het is aan te raden om de '*snel zoeken*'(#4) functie gebruiken omdat dit flink wat sneller is. Mocht het zo zijn dat de tabel niet automatisch update bij het zoeken kan u op de '*Refresh*' knop(#5) drukken. <br><br>Binnen de debiteurentabel kan er ook gefilterd worden op debiteurgroepen. Dit doet u door het klikken op de '*Groep*' dropdown en hier in de juiste groep te selecteren. <br>Na het maken van de juiste selectie van debiteuren kan u op '**Ok**' knop(#6) drukken.<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image6.png"></details>|
|**4**| Na de juiste selectie gemaakt te hebben in stap 3.a of 3.b hoort de tabel uw selectie aan debiteuren te bevatten. Voor de doeleinden van deze handleiding klikt u simpelweg op de '**Ok**' knop. <br>Na op Ok gedrukt te hebben krijgt een dialoogje te zien met hoeveel veranderingen gemaakt zijn. |

## Aanmaken redes voor credit

Als een leverancier is het mogelijk om credit redenen aan te maken in Florisoft. Credit redenen geven aan waarom een klant een credit aanvraag ingedient heeft. Deze credit redenen zullen zichtbaar zijn wanneer er credit aanvraag gemaakt word vanaf de webshop. Voorbeelden van credit redenen zijn breuk en verkeerde aangeleverde hoeveelheid. 

Om een credit rede aan te maken in Florisoft volg de onderstaande stappen:

|Stap#|Uitleg|
|:--|:--|
|**0**|Open de Florisoft applicatie en log in met uw gebruikersgegevens. Dit opent het hoofdscherm oftewel de navigator.|
|**1**|In de navigator gaat u naar het constanten scherm, dit doet u door op de constanten knop te drukken(#1).<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image1.png"></details>|
|**2**|In  het linker deel van het constanten scherm ziet u een bestandsstructuur, hier binnen navigeert u naar:<br>*Financieel*(#1) **→** *Credit reden*(#2)<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image8.png"></details>|
|**3**|Dit herlaad de tabel in het rechter deel van het scherm zodat het de credit redenen laat zien. Om een nieuwe credit reden toe te voegen klikt u op het '+' plus knopje(#3). Dit hoort het credit rede scherm te openen.<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image8.png"></details>|
|**4**| In het credit rede creatie scherm zijn er vele velden en opties die ingevuld moeten worden hieronder een korte beschrijving van de meest belangrijke velden:<br>**1.** Type omschrijving: zet dit op '*Credit Reden*' <br>**2.** Keuze nr.: Het opvolgnummer voor de keueze lijst credit redenen in de webshop <br>**3.** Omschrijving: Naam van de credit reden. <br>**4.** Duits: Duitse vertaling van het omschrijving veld <br>**5.** Engels: Engelse vertaling van het omschrijving veld<br>**6.** Frans: Franse vertaling van het omschrijving veld<br>**7.** Voor gebruik op de Webshop:  deze moet aan staan wanneer u deze credit rede beschikbaar wil maken op de webshop.<br>**8.** Er moet een foto toegevoegd worden: als dit aan staat worden foto's verplicht als bijlage bij een credit aanvraag. <br>**9.** Producten moeten retour: bepaald of de producten terug gestuurd moeten worden bij credit aanvraag.<br>**10.** Gecrediteerd tegen terugbetaling: bepaald of de leverancier het volledige bedrag terug betaald aan de debiteur.<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image9.png"></details>|
|**5**|Na het invullen van de juiste gegevens voor de credit rede kan u op de 'Ok' knop(#10) drukken.|

## Credit aanvragen via de webshop

Nu we een debiteur de mogelijkheid gegeven te hebben om credit aan te vragen in de Florisoft applicatie, willen we nu ook checken of het ook werkt in de webshop. 

|Stap#|Uitleg|
|:--|:--|
|**1**|Ga naar uw webshop en log in met een debiteuraccount.|
|**2**|Open de '*uw account*' pagina en ga naar de '*Vraag credit aan*' sectie.|
|**3**|Als het goed is ziet u nu de facturen van uw debiteur in een tabel. Als u boven dit tabel kijkt ziet u vier verbonden rondjes, als het goed word stap 1 nu gehighlight. Dit is de stappen indicator voor het aanvragen van credit.|
|**4**|Om naar de volgende stap te gaan klik op de regel waarvoor u een credit aanvraag wil doen.|
|**5**|De regel hoort nu wat verandert te zien met wat extra informatie over de factuur waar u een credit aanvraag voor wilt doen. Om er naar de derde stap te gaan klikt |
|**6**|Het scherm van de derde stap heeft wat velden dat ingevuld moet worden, hieronder een korte uitleg voor elk veld.<br>**1.** Aantal te crediteren: hoeveelheid items dat gecrediteerd moet worden.<br>**2.** Nieuwe prijs: Nieuwe prijs voor de credit factuur <br>**3.** Kies een reden: Selecteer in deze dropdown een rede voor de credit aanvraag,<br>**4.** Retour: Vink deze checkbox aan als de producten geretourneerd worden. <br>**5.** Upload een foto: een klant kan hier maximaal vijf foto's uploaden om toe te voegen aan een credit aanvraag. Afhankelijk van de geselecteerde credit rede is dit verplicht.|
|**7**|Wanneer de velden zijn in gevuld kan een debiteur op de '*verstuur*' knop drukken. U hoort nu naar een succes scherm gestuurd te worden waar u de optie krijgt om nog een credit verzoek aan te maken. <br><br> Daarnaast krijgt u ook een bevestigingsmail voor uw credit aanvraag. |
## Goedkeuren van credit verzoeken

Credit aanvragen die gemaakt zijn in de webshop kunnen goedgekeurd of geweigerd worden in de Florisoft applicatie. Hieronder vind u de stappen voor het beoordelen van een credit aanvraag:

|Stap# |Uitleg|
|:--|:--|
|**0**|Open de Florisoft applicatie en log in met uw gebruikersgegevens. |
|**1**|In de navigator klikt u op de knop '*Overzichten*'(#1), dit opent een klein optie venster. Binnen dit venster klikt u op '*accorderen*' dit opent een nieuw scherm. <br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image13.png"></details>||
|**2**|Binnen dit nieuwe scherm klikt u op '*Overzichten*'(#1) en binnen de opvolgende optie dialoog op '*Factuur credits*'(#2). Dit update het onderstaande scherm waar het nu de factuur credits laat zien.<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image14.png"></details>|
|**3**| De tabel laat elke credit aanvraag zien op een aparte regel. Om met een aanvraag akkoord(#1) te gaan of om het af te wijzen(#2) plaats u simpelweg een vinkje in de bijhorende checkbox in de rij van een aanvraag.<br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image15.png"></details>|
|**4**|Na het goedkeuren of afwijzen van een aanvraag klikt u op de Accorderen knop(#1). Dit opent weer een klein schermpje. <br> <details><summary>**Klik hier voor de voorbeeld afbeelding**</summary><img src="Media NL/image16.png"></details>| |
|**5**| In het nieuwe scherm kan u nog veranderingen maken in de credit aanvraag. De volgende veranderingen kunnen gemaakt worden:<br>- Veranderen van debiteur: **dit betekent wel dat de krediet naar een andere debiteur gaat**.<br>- Ander factuur: hiermee kun je een andere factuur selecteren van dezelfde debiteur.<br>- Order: in dit tekstveld kan u een order nummer invullen voor de creditfactuur. Dit veld kan u negeren indien uw bedrijf dit niet gebruikt voor uw factuurbeleid.<br>- Keep order number: deze checkbox kan u negeren als u geen ordernummers gebruikt. <br> **Als u geen veranderingen hoeft te maken kan u dit scherm overslaan door direct op 'Ok' te drukken**.|
|**6**|Na het in drukken van de 'Ok' knop word er een confirmatie mail verstuurd met de resulterende beslissing. Als de aanvraag geweigerd is krijgt de debiteur alleen een confirmatie mail maar als het goedgekeurd is krijgt hij/zij ook nog een creditfactuur.<br><br>Bovendien wordt een negatieve deling gemaakt in het pick order scherm. Van hieruit kunnen de gecrediteerde regels worden gedebiteerd of afgelost in de voorraad. |