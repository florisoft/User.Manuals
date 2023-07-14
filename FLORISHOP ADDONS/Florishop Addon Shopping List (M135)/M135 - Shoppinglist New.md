<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft handleiding Florishop Addon Shopping List (M135)

Welkom bij de handleiding Florishop Shopping List Addon. In deze handleiding leest u wat er ingesteld moet worden en hoe je het kan gebruiken.

**Disclaimer #1:** Deze module is op dit moment alleen geschikt voor voorraden en werkt niet in combinatie met bestel- of hybridelijsten.

**Disclaimer #2:** De shopping list is op dit moment alleen beschikbaar voor de desktopweergave en niet voor de app of mobiele weergave.


## Instellingen back-office

*Debiteuren moeten gemachtigd zijn om partijen aan het orderoverzicht toe te voegen. Als dit niet het geval is dan worden de partijen niet weergegeven in de shopping list.*

*Volg de onderstaande stappen om dit in te stellen:*

| Stap | Uitleg |
|:----:|:-------|
|  **1**  | Open de debiteurkaart:<br>**Organen→Debiteurgegevens→Debiteuren** |
|  **2**  | Ga in de debiteurkaart naar:<br>**Internet→Modulen** |
|  **3**  | Schakel de optie **Order overzicht** in.<details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image1.png"></details> |

## Instellingen Florishop

*Volg de onderstaande stappen om de shopping list op Florishop te activeren*:

| Stap | Uitleg |
|:----:|:-------|
|  **1**  | Log in op uw Florishop met een beheeraccount en schakel de beheermodus in. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image2.png"></details> |
|  **2**  | Open het scherm webshop instellingen:<br>**Configuratie→Webshop instellingen**<br>Of voeg **/settings** toe aan de URL van uw webshop. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image3.png"></details> |
|  **3**  | Zoek in het instellingenscherm naar de instelling **SHOPPINGLISTACTIVE** en zorg ervoor dat deze is ingeschakeld. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image4.png"></details> |
|  **4**  | Zoek nu naar de instelling **MATCHWEIGHTINGS**, waarmee u bepaalt hoe de matchscore wordt berekend op basis van gewichten. <br><br>Met deze matchscore krijgt u inzicht in hoe goed een partij uit de shoppinglist overeenkomt met een eventueel alternatief in de voorraad. |
|  **5**  | Vul nu de gewichten in om aan te geven hoeveel elke waarde bijdraagt aan het berekenen van een matchscore. De absolute grootte van de getallen maakt niet uit, het kan variëren van 1-10 of 1-100.<br><br>Voor de "S"-waarden wordt het gewicht op een andere manier berekend. Hier wordt gekeken of het verschil 5%, 10% of 20% is. Op basis hiervan wordt bepaald of de gehele waarde, 2/3, 1/3 of helemaal niet wordt meegenomen. "S"-waarden die nul zijn, worden niet meegenomen.<br><br>Bij het toevoegen van een partij aan een shoppinglist wordt het partijnummer opgeslagen. Partijen met hetzelfde partijnummer zullen een matchscore hebben, ongeacht de gewichten. <br><br>**De onderstaande afbeelding geeft een goed voorbeeld van gewichten weer.**<details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image5.png"></details> |
|  **6**  | **Handige informatie om te weten:**<br><br>**Wanneer is iets een duplicaat?**: Als artnr, S1, S2 en S3 overeenkomen, worden ze niet weergegeven.<br><br>**CELCOD**: Een partij moet altijd aan een CELCOD (productgroep) zijn gekoppeld, anders kan deze niet worden gevonden. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image5.png"></details> |


## Shopping list aanmaken

*In de Shopping list module zijn er verschillende manieren om een shopping list aan te maken. Hieronder worden ze beschreven:*

### Shopping list aanmaken vanuit een partij

| Stap | Uitleg |
|:----:|:-------|
|  **1**  | In de voorraad ziet u bij elke voorraadpartij een shoppinglist-icoon. Klik op dit icoontje om het pop-upscherm te openen. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image7.png"></details> |
|  **2**  | In dit pop-up scherm kunt u ervoor kiezen om een bestaande shopping list te gebruiken of er zelf een aan te maken. |
|  **2.a**  | Wilt u gebruikmaken van een bestaande lijst? Kies dan een shopping list uit de lijst met bestaande shopping lists en klik op **Ok**. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image8.png"></details> |
|  **2.b**  | Wilt u een nieuwe lijst aanmaken? Klik dan op **Nieuwe shopping list toevoegen**, voer een naam in en klik op Ok. De partij waarvoor u de nieuwe shopping list heeft aangemaakt, wordt automatisch toegevoegd. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image9.png"></details> |


### Shopping list aanmaken via menu links van het scherm

| Stap | Uitleg |
|:----:|:-------|
|  **1**  | Aan de zijkant van uw voorraadscherm klikt u op het shopping list-icoon. Als dit scherm is ingeklapt, wordt het nu geopend in een verkleinde weergave.<br>Als u dit scherm aan de zijkant van uw scherm wilt vastzetten, klikt u op het **>**-teken. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image10.png"></details> |
|  **2**  | In dit scherm kunt u de bestaande shopping lists bekijken of er zelf een maken. |
|  **2.a**  | Klik op de geselecteerde lijst in dit zijscherm om de lijstweergave te openen. (#1) |
|  **2.b**  | Klik op de optie **Nieuwe shopping list toevoegen** (#2) om het pop-up scherm voor het maken van een shopping list te openen. Voer hier de naam in voor uw nieuwe shopping list en klik op **Ok**. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image10.png"></details>|

### Orders toevoegen aan shopping list

| Stap | Uitleg |
|:----:|:-------|
|  **1**  | Aan de zijkant van uw voorraadscherm klikt u op het shopping list icoon. Als dit scherm is ingeklapt, wordt het nu geopend in een verkleinde weergave. Als u dit scherm aan de zijkant van uw scherm wilt vastzetten, klikt u op het **>**-teken. |
|  **2**  | Klik op de optie **Order overzicht** om uw orders te bekijken. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image11.png"></details> |
|  **3**  | In het ordersoverzichtsscherm ziet u de orders van uw account met de bestelde partijen per order. U kunt in dit scherm op het shoppinglist-icoon naast het ordernummer (#1) klikken om een volledige order toe te voegen, of individuele partijen (#2) uit de order handmatig toe te voegen. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image12.png"></details> |
|  **4**  | Door op het shopping list-icoon te klikken, verschijnt er een pop-up waarin u wordt gevraagd om een bestaande of nieuwe shopping list te gebruiken. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image10.png"></details> |
|  **5**  | *Ziet u orders niet op uw scherm staan?* Controleer of de datumfilter goed is ingesteld om uw gewenste order te vinden. <details><summary><b>Klik hier voor een voorbeeld!</b></summary><img src="Shopping List Media NL/image13.png"></details> |

## Shopping list managementscherm

*Wilt u shopping lists inzien, aanmaken, wijzigen of verwijderen kan dat in het shopping list managementscherm. Volg de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Klik op het shopping list icoon aan de zijkant van uw scherm.|
|**2**|Klik in dit scherm vervolgens op de optie **Shopping lists beheren**, dit brengt u naar het shopping list managementscherm.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Shopping List Media NL/image14.png"></details>|
|**3**|Kan u uw shopping list niet vinden? Maak dan gebruik van de zoekfunctie.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Shopping List Media NL/image15.png"></details>|
|**4**|Wilt u een shopping list verwijderen? Klik dan op het prullenbak icoon en bevestig uw actie.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Shopping List Media NL/image16.png"></details>|
|**5**|Om een shopping list aan te maken klikt u op de knop naast de zoekbalk, voer een naam in en bevestig het aanmaken.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Shopping List Media NL/image17.png"></details>|
|**6**|Bij het aanmaken van een shopping list via het managementscherm wordt u gebracht naar het partijen toevoegen scherm. <br><br>In dit scherm kan u partijen toevoegen door op het vinkje naast de partij te drukken. U ziet uw huidige selectie automatisch geüpdatet worden aan de linkerkant van uw scherm. Uiteraard kan u er ook voor kiezen om vinkjes weg te halen om partijen uit de shopping list te verwijderen.<br><Br>Bent u klaar met het toevoegen van partijen **vergeet dan niet** te drukken op de **selectie opslaan** knop! Doet u dit niet worden de wijzigingen niet opgeslagen.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Shopping List Media NL/image18.png"></details>|
|**7**|Wilt u shopping lists wijzigen? Klik dan op het pen icoontje in de rij van de shopping list. U wordt nu naar de beheer pagina gebracht van de betreffende shopping list. <br><br> Verwijder partijen uit de shopping list door op het prullenbak icoontje te drukken en het verwijderen te bevestigen.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Shopping List Media NL/image19.png"></details>|


## Shopping list openen in voorraad

*Zodra u een of meerdere shopping lists heeft aangemaakt, kunt u nu zien welke items uit uw lijst aanwezig zijn in de voorraad of mogelijke alternatieven.*

|Stap|Uitleg|
|:-:|:--|
|**1**|Open het shopping list managementscherm.|
|**2**|Klik vervolgens op het pen/edit icoontje naast een shopping list.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Shopping List Media NL/image19.png"></details>|
|**3**|Klik op in het edit scherm op de knop **openen in voorraad**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Shopping List Media NL/image20.png"></details>|
|**4**|U ziet nu dat de shopping list inzichtbaar is links onderin het scherm. Klik vervolgens nu op een van de artikel in de shopping list.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Shopping List Media NL/image21.png"></details>|
|**5**|U ziet nu dat de voorraad nu gefilterd wordt op basis van het shopping list artikel. In de resulterende partijkaartafbeeldingen ziet u een percentage staan wat betekent in hoeverre de partijen matchen.<br><br>Deze matchscore wordt berekent op basis van de **MATCHWEIGHTINGS** florishop instelling.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Shopping List Media NL/image22.png"></details>|
