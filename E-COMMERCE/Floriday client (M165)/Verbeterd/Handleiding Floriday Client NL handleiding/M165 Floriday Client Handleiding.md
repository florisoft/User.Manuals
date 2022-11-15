<img src = "fslogo.png">

# Handleiding Floriday Client (M165)

Dit document beschrijft wat nodig is voor het opzetten van een koppeling met Floriday voor de koper. Dit word stapgewijs gedaan waarbij per instelling uitgelegd zal worden hoe de synchronisatie met Floriday werkt.


## Inhoudsopgave 

[Inhoudsopgave](#inhoudsopgave)  
[Aanvragen API key](#aanvragen-api-key)  
[Inrichten van een voorraad](#inrichten-van-een-voorraad)  
[Inrichten van een leverancier](#inrichten-van-leverancier)  
[Andere locaties](#andere-locaties)  
[Werking](#werking)  
  [Connecties](#connecties)  
  [Verwerkingsvolgorde](#verwerkingsvolgorde)   
  [Proces aanbod](#proces-aanbod)   
  [Aanbod](#aanbod)    

## Aanvragen API key

De API key kan worden opgevraagd via de Floriday portal. De API key is van cruciaal belang voor het opzetten van een conectie tusse Florisoft en Floriday. Volg de onderstaande stappen om de API key op te halen.

|Stap|Uitleg|
|:--|:--|
|**1**| Log in op het Floriday portaal: <a href="https://idm.floriday.io/">Floriday portal login pagina</a>|
|**2**|U ziet rechts bovenin een menu dropdown, klik hier op en navigeer vervolgens naar '*Instellingen*'.|
|**3**|In de instellingen navigeer naar '*Apps & Koppelingen*'|
|**4**|In het zoekveld zoekt u naar Florisoft.|
|**5**|Klik vervolgens op Florisoft|
|**6**|Klik vervolgens op '*Applicatie toevoegen*', er hoort nu een API key te verschijnen.|

## Inrichten van een voorraad

In dit hoofdstuk behandelen we het opzetten van een voorraad waarin de Floriday voorraad partijen komen te staan. Volg hiervoor de onderstaande stappen:

|Stap|Uitleg|
|:--|:--|
|**1**|Binnen de Florisoft navigator gaat u naar het constanten scherm(#1)<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image1.png" width=600px></details>|
|**2**|Binnen de bestandsstructuur aan de linkerkant van u scherm navigeert u naar:<br>*Locatie*(#1) → *Voorraad*(#2) → *Voorraad*(#3).<br>Klik vervolgens op het plus icoontje(#4) om een nieuwe voorraad toe te voegen.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image3.png" width=600px></details>|
|**3**|U krijgt nu een klein popup scherm te zien, hier kan u kiezen welk voorraad template gebruikt word. Aangezien Floriday een virtuele voorraad is kiezen we voor '*Template VMP koppeling*'(#1). Dit bevestigen we door vervolgens op '*Ok*' te drukken.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image4.png" width=600px></details> |
|**4**|Dit opent een voorraad instellingen scherm, in dit scherm vult u de volgende gegevens in:<br> - **Voorraadcode**(#1): *dit is een <u>unieke</u> code maak het iets kenbaars zoals: '**FLRDY**'*<br>- **Omschrijving**(#2): Zet hier een beknopte beschrijving neer, het beste is om er ook LIVE bij te zetten om aan te geven dat dit een voorraadconnectie is, bijvoorbeeld '*Floriday Aanbod LIVE*'.<br>Klik vervolgens op '*Ok*'(#3)<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image5.png" width=600px></details>|
|**5**|U heeft zojuist de voorraad aangemaakt, heropen het zojuist gesloten scherm weer door de voorraad dubbel aan te klikken in de tabel.|
|**6**|In het voorraad instelling scherm navigeert u naar het '*Autorisatie*' tabje. In dit scherm dient u de volgende gebruikers te autoriseren:<br>- ADMINC<br>- ADMINF<br>- ADMINK<br>- DEFAULT <br>- SUPER <br>- TIMER<br>- Uw eigen gebruikers<br><br>U kunt gebruikers autoriseren door het vierkantje naast hun naam aan te vinken. Klik vervolgens op '*Ok*'(#1).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image6.png" width=600px></details>|

|:bulb:|Mocht u filters hebben voor aparte voorraden van Floriday kan u er voor kiezen om aparte Live voorraden te maken. Dit leidt dan ook tot aparte leveranciers voor de Floriday filters. |
|:--|:--|


## Inrichten van leverancier

In dit hoofdstuk stellen we de leverancier in die de voorraad binnen gaat halen vanuit Floriday. 

|Stap|Uitleg|
|:--|:--|
|**1**|Binnen de Florisoft navigator gaat u naar het constanten scherm(#1)<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image1.png" width=600px></details>|
|**2**|Binnen de bestandsstructuur aan de linkerkant van het scherm navigeert u naar:<br>*Organen*(#1) → *Leveranciergegevens*(#2) → *Leveranciers*(#2). <br>Klik vervolgens op het plus icoontje(#4) om een nieuwe leverancier toe te voegen.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image7.png" width=600px></details>|
|**3**|Dit opent het Leverancier creatie/instelling scherm, vul hier voor nu de volgende instellingen in en klik verolgens op '*Ok*' en bevestigen. <br>- **Lev.code**(#1): *Unieke leveranciers code, vul hier wat kenmerkelijks in*<br> - **Zoek**(#2): hiermee kan de leverancier terug gevonden worden in het systeem, meestal gebruik je hier ook de lev. code.<br>- **Bedrijfsnaam**(#3): Vul hier de bedrijfsnaam in met evt. er achter waarop gefilterd word bijv. bloemen of planten indien nodig. <details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image8.png" width=600px></details>|
|**4**|Na het sluiten van het leveranciersscherm open het scherm opnieuw door er dubbel op te klikken in de tabel.|
|**5**|Nu het scherm open is navigeert u naar '*Webservice*' in de bestandsstructuur aan de linkerkant. In dit scherm past u de volgende instellingen aan:<br><br>- **Activeren voor voorraadkoppeling**: aanvinken. <br>- **Type webservice**: zet dit op '*Floriday koper Api*'.<br>- **Binnenkomende voorraad**: Selecteer hier de voorraad die u eerder heeft aangemaakt.<br>- **API key**: deze is eerder verkregen via Floriday in [hoofdstuk 1](#aanvragen-api-key).<br> - **Region GLN**: Dit is de GLN code van de regio (veiling)<br> - **Aflever GLN**: Dit is de GLN code van de exacte afleverlocatie, mocht u dit niet weten zoek dit dan op via [Floricode](https://www.floricode.com/en-us/distribution/finding-codes/company-code-search). :warning: **LET OP PAK DE LOCATION CODE EN NIET DE COMPANY CODE!**|

## Alternatieve locaties

Het kan voorkomen dat een kweker (connectie) niet levert in een bepaalde regio waar uw bedrijfslocatie in valt. Indien uw bedrijf andere locaties heeft bijv. Rijnsburg en Aalsmeer waar de kweker wel levert dienen deze locaties onder 'Alternatieve locaties' te staan. Dit zorgt er voor dat wanneer u een order plaatst deze locaties meegestuurd worden zodat er altijd een locatie is waar wel bezorgd kan worden.

Om dit in te stellen volgt u de onderstaande stappen:

|Stap|Uitleg|
|:--|:--|
|**1**|Open de betreffende leverancier in uw constanten scherm.|
|**2**|Navigeer weer naar het '*Webservice*' tab(#1), vervolgens klikt u op de knop '*Alternatieve locaties*'(#2). Dit opent een nieuw scherm.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image9.png" width=600px></details>|
|**3**|In het zojuist geopende scherm vult u een aantal velden in per afleverlocatie:<br>- **Region GLN** (#1): de regio GLN code <br>- **Aflever GLN** (#2): de precieze locatie code voor de specifieke locatie.<br>- **Opmerking**(#3): U kan hier een kleine opmerking erbij vermeldden in dit geval staat er bij om welke locatie het gaat.<br>- **Prioriteit**(#4): de eerstvolgende locatie van de alternatieve locatie lijst die wordt nagelopen indien locaties niet beschikbaar zijn. Dit is een oplopende prioriteit dus 1 = is het hoogst, daarna 2 etc.<br> Klik vervolgens op de 'Ok' knop (#5) om de alternatieve locaties op te slaan. <details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image10.png" width=600px></details|


## Werking

Na het correct instellen van het Floriday aanbod kan het ingelezen worden. Dit kan gedaan worden door middel van de knop '*Partijen inlezen*' of automatisch via de timer. Om de partijen handmatig op te halen volg de onderstaande stappen:

:warning: **Het eerste keer ophalen en inlezen van een koppeling kan erg lang duren!** **Zet daarom deze koppeling op een ander timer schema, anders kan de timer deze koppeling ook op gaan halen wat er tot leid dat het voor een uur of langer vast komt te staan** :warning: 

*Vergeet het timer schema daarna ook niet terug te zetten op het standaard schema waarmee je koppelingen ophaalt ( in de meeste gevallen 'default'*

|Stap|Uitleg|
|:--|:--|
|**1**|Open de betreffende leverancier en ga naar het tabje *Webservice*|
|**2**|Klik op de knop '*Partijen inlezen*'(#1)<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Media NL/image11.png" width=600px></details>|
|**3**|Dit kan even duren, vervolgens krijgt u een melding prompt met hoeveel partijen zijn opgehaald.|

### Connecties

De eerste keer synchroniseren zal als eerste stap de gemaakte connecties met de verschillende kwekers op Floriday ophalen. Deze kwekers worden dan opgeslagen in Florisoft, zodat de volgende synchronisatie dit niet nog eens hoeft te doen. Bij nieuwe connecties of ontkoppelde connecties zal dit wel weer opnieuw uitgevoerd worden, maar enkel voor de wijzigingen.

### Verwerkingsvolgorde

De eerste synchronisatie zal het aanbod ophalen per kweker en direct verwerken binnen Florisoft per kweker. De volgende synchronisatie zal van het bestaande aanbod enkel nog de updates van het aanbod ophalen en verwerken. Partijen worden enkel binnen Florisoft aangemaakt indien een kweker ook daadwerkelijk levert op de ingestelde regio's.

### Aanbod

Binnen de Floriday online omgeving moet assortiment op regelniveau gemarkeerd worden als ‘favoriet’. Je kunt op het platform ook de connectie met de kweker beëindigen op deze kweker niet meer op te halen. Pas dan wordt het ook meegenomen in het aanbod dat Florisoft ophaalt.