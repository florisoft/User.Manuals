<img src="../../fslogo.png">

# Florisoft Handleiding App-versie management

Met de Florisoft Hub-App beheert u uw Florisoft apps. Dit houdt in dat apps worden gestart, gedownload, geüpdatet en verwijderd vanuit de Hub-app. In deze handleiding leert u hoe u de apps bijhoudt en test.

Om de in deze handleiding beschreven functionaliteiten te kunnen testen, dient u in het bezit te zijn van een Terminal met een geïnstalleerde hub-app. Heeft u wel een terminal maar is de hub-app nog niet geïnstalleerd, leest u [hier](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Hub%20App/Hub-App%20Installatie%20NL.md#installeren-van-de-android-app) hoe u deze installeert.

## Versionering

In de Hub-app catalogus ziet u het versienummer verticaal naast de apps staan. Florisoft brengt regelmatig nieuwe versies uit voor de apps met nieuwe functionaliteiten en kleine verbeteringen. Met dit versienummer kunt u eenvoudig bijhouden over welke versie u beschikt.

*Bij het contact opnemen met Florisoft Support over eventuele problemen met de apps, is het verstandig om deze versienummers bij de hand te hebben.*

## Downloaden van app-updates

Tijdens het uitvoeren van een Florisoft-update worden ook de nieuwste versies van de apps gedownload. Bij het updaten van de cloudserver staat hiervoor de instelling "*Download frontend apps met de Cloud.Server*" ingeschakeld. In de updateomgeving worden deze appversies automatisch beschikbaar gesteld in het release channel *update*.

|Stap|Uitleg|
|:-:|:--|
|**1**|Florisoft Update cloudserver.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/2.png"></details>|
|**2**|Downloaden van front-end apps.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/1.png"></details>|

Wanneer de Hub-app ontdekt dat er binnen het ingestelde release channel een nieuwere appversie beschikbaar is, wordt de app bij de eerstvolgende keer opstarten automatisch bijgewerkt. Na het bijwerken ziet u dat het versienummer links naast de app is gewijzigd naar de nieuwere versie.

## Release channels (testen van nieuwe versies)

Om nieuwe appversies veilig te kunnen testen, maakt u gebruik van de verschillende release channels in de Hub-app. Standaard zijn er twee release channels:

- *latest*: de huidige productieversie van de apps, passend bij de productieomgeving;
- *update*: de nieuwe appversies die horen bij de Florisoft Update-omgeving en nog getest moeten worden.

Om een nieuwe appversie te testen voordat deze naar alle gebruikers wordt uitgerold, heeft u naast de productie-cloudserver een afzonderlijke update-cloudserver nodig. Zo kunnen key users de nieuwe apps in combinatie met de bijgewerkte cloudserver testen zonder dat dit gevolgen heeft voor de overige gebruikers.

### Nieuwe appversies testen

1. Voer de Florisoft-update uit op de updateomgeving. De nieuwe appversies worden hierbij automatisch beschikbaar gesteld in het release channel *update*.
2. Update vervolgens de cloudserver van de updateomgeving. Laat daarbij de instelling "*Download frontend apps met de Cloud.Server*" ingeschakeld.
3. Stel de apparaten van de key users zo in dat zij verbinding maken met de update-cloudserver.
4. Stel op deze apparaten in de Hub-app het veld *Release Channel* in op **update**.
5. Start de Hub-app opnieuw. De apps uit het release channel *update* worden vervolgens automatisch bijgewerkt.
6. Laat de key users de nieuwe appversies testen.

### Nieuwe appversies uitrollen naar productie

Zijn de nieuwe appversies getest en akkoord bevonden? Volg dan deze stappen:

1. Update de productie-cloudserver.
2. Start de Florisoft Update-client.
3. Klik met de rechtermuisknop op het Florisoft Leaves-icoon in de Navigator.
4. Kies **Versie uitrollen Apps** om de geteste appversies van *update* naar *latest* uit te rollen.
5. Bevestig de uitrol.

De inhoud van de mappen *update* en *latest* hoeft niet handmatig te worden verplaatst. Na de uitrol worden apparaten die gebruikmaken van het release channel *latest* automatisch bijgewerkt wanneer de betreffende app opnieuw wordt gestart.

> **Let op:** zolang **Versie uitrollen Apps** nog niet is uitgevoerd, blijft het release channel *latest* op de bestaande productieversie staan. Het bijwerken van de updateomgeving wijzigt alleen de versies binnen het release channel *update*.

### Release channels instellen in de apps

*Het release channel stelt u in op de Hub-app. Volg de onderstaande stappen om dit in te stellen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Klik in de Hub-app op het hamburgermenu rechtsboven in uw scherm.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/3.png" height=350px></details>|
|**2**|Klik vervolgens op het tandwielicoon om naar de instellingen te gaan.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/4.png" height=350px></details>|
|**3**|Vul vervolgens het veld *Release Channel* in met **update** of **latest**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/5.png" height=350px></details>|
|**4**|Druk op *Save*. U wordt nu gevraagd om de app opnieuw op te starten. Druk op *Yes*.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/6.png" height=350px></details>|

Gebruik *update* uitsluitend op de testapparaten die verbinding maken met de update-cloudserver. Voor reguliere productieapparaten gebruikt u *latest*.
