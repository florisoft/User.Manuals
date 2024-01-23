<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft handleiding Server Management API uitlezen met postman

In deze handleiding leest u hoe u de server management API uitleest met een tool genaamd Postman. Postman is een applicatie waarmee API's uitgelezen en getest kunnen worden.

## Download en installeer Postman

Download en installeer de Postman applicatie, de donwload is te vinden op de website van Postman [link](https://dl.pstmn.io/download/latest/win64).

Als je samenwerkt in een team of gebruik wilt maken van wat meer krachtige features is het een optie om een account aan te maken. Voor het simpelweg uitlezen van een API hebben wij dit echter niet nodig.

## Het importeren van een Postman Collectie

Florisoft stelt een collectie van de diversen endpoints beschikbaar die ingelezen kan worden door Postman. Volg de onderstaande stappen om deze collectie van endpoints in te lezen in Postman. 

|Stap|Uitleg|
|:--|:--|
|**1**|Download de API, deze kan u [hier](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/media%20Postman/API-Collectie.json) downloaden.<br>Eventueel kan u het bestand ook [hier](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/media%20Postman/API-Collectie.json) vinden.|
|**2**|Heeft u gebruik gemaakt van de eerste link, open dan het .zip-bestand en plaats het buiten de .zip map.|
|**3**|Open de Postman applicatie en klik op de knop **Import** (links bovenin uw scherm)<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/1.png"></details>|
|**4**|U krijgt nu een pop-up scherm te zien waarin u het collectiebestand kan drag and droppen. Ook kan u op **files** drukken om zo een Windows verkenner venster te openen en zo het bestand te selecteren.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/2.png"></details>|

## Het instellen van de Postman Collectie

Nu u de Postman collectie geïmporteerd heeft, ziet u deze in het linkerkant van uw scherm verschijnen. Echter zijn er nog een aantal stappen die we moeten uitvoeren om een API-request te kunnen versturen.

We moeten namelijk nog de logingegevens en API URL invoeren, dit kan in Postman op 2 manieren:

1. **Collectie niveau**: u kan de authenticatie en URL ook aangeven voor de gehele collectie, waardoor alle API-requests automatisch voorzien worden van deze gegevens.

2. **Endpoint niveau**: ook kan u de authenticatie en URL aangeven per endpoint, als u alleen gebruik maakt van uw eigen Florisoft API is dit af te raden.

*Door de onderstaande stappen te volgen stelt u de authenticatie en URL in op collectie niveau*.

|Stap|Uitleg|
|:--|:--|
|**1**|Hover met uw muis over de zojuist geïmporteerde collectie en klik op de drie puntjes.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/6.png"></details>|
|**2**|Dit opent een context schermpje, klik hierin op de optie **Edit**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/3.png"></details>|
|**3**|Klik op het tabje genaamd **Variables**(#3).<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/4.png"></details>|
|**4**|U ziet in dit tabje een tabel, pas hier voor de rij **URL** de waarden van de kolom **Initial value** en **Current value** aan naar de waarde:<br>\<Uw cloud server URL\>/api/management/|
|**5**|Vervolgens klikt u op de **Save** knop(#3) om uw wijzigingen op te slaan.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/3.png"></details>|
|**6**|Vervolgens klikt u op het tabje **Authorization**(#1).<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/5.png"></details>|
|**7**|Vul in dit tabje de velden **Username** en **Password** (#2) in met de van Florisoft verkregen API logingegevens.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/5.png"></details>|
|**8**|Klik vervolgens op de **Save**(#3) knop om de wijzigingen op te slaan. <details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/5.png"></details>|

## Het versturen van een API-request

*Nu we de URL en authenticatie hebben ingesteld kunnen we API-requests sturen om gegevens op te halen vanuit de API.*

|Stap|Uitleg|
|:--|:--|
|**1**|Open de API collectie in de linkerkant van uw scherm.|
|**2**|Klik op een endpoint in de lijst om het te openen.|
|**3**|U verstuurd de API-request door op de **Send** knop te drukken.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/7.png"></details>|
|**4**|Na het verzenden ziet u binnen enkele seconden het antwoord van de API onderin uw scherm verschijnen.|
|**5**|We halen nu een segment van de data op, u haalt andere segmenten op door het versienummer te wijzigen. Scroll in het API-antwoord naar beneden en kopieer het laatste versienummer.|
|**6**|Ga vervolgens naar het tabje **Body**, hier ziet u een JSON-object dat meegestuurd wordt naar de API bij het maken van een request. Pas hier het getal 0 aan met het gekopieerde versienummer.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/8.png"></details>|
|**7**|Als u nu nogmaals op **Send** drukt ziet u dat een ander data segment te zien krijgt aan de hand van de versienummers in het API-antwoord.|

## Foutcodes en troubleshooting

Mocht het zo zijn dat uw API-request geen antwoord terug geeft, valt dit uit te lezen aan de **Status** code boven het antwoordscherm.

<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src="media Postman/9.png"></details>

Bij een succesvolle aanvraag ziet u hier 200 OK staan, maar bij gefaalde aanvragen staan hier andere codes. In de onderstaande koppen vindt u de foutcodes en stappen die u kan ondernemen om dit op te lossen

### 401 Unauthorized

1. Check in de collectie instellingen of de logingegevens correct zijn ingevuld.
2. Check in het **authorization** tabje van de API endpoint aanvraag zelf, of deze ingesteld op **inherit from parent**.

### 404 Not found

1. Check of u in de endpoint aanvraag u niet perongeluk iets heeft ingetypt in het URL veld.
2. Check of de dropdown naast het URL invoerveld ingesteld staat op de optie **POST**.
3. Ga na of de basis-url in de collectie-instellingen wel correct geconfigureerd is, deze hoort er als volgt uit te zien: \<uw cloud server url\>/api/management/
4. Ook is het handig om na te gaan of de Cloudserver wel aan staat, u kan dit snel zien door de URL van uw cloudserver in te voeren in uw browser. Staat deze aan krijgt u een statusscherm te zien over de status van de cloudserver. Krijgt u hier geen scherm te zien maar ook een 404, dan staat de cloudserver uit.

### 501 Internal server error

Deze error geeft aan dat er iets fout gegaan is in de API zelf op de cloudserver. Meestal heeft dit te maken met te ver uiteenlopende versies van de cloud server en de Florisoft applicatie zelf. 

Het is hierbij te adviseren om de versies van de cloudserver en backoffice zo snel mogelijk gelijk te trekken om problemen te voorkomen die zich ook kunnen voordoen in uw andere cloud applicaties. 
