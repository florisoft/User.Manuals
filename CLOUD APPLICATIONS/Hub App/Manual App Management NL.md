<img src="../../fslogo.png">

# Florisoft Handleiding App-versie management

Met de Florisoft Hub-App beheert u uw Florisoft apps. Dit houdt in dat apps worden gestart, gedownload, geüpdatet en verwijderd vanuit de Hub-app. In deze handleiding leert u hoe u de apps bijhoudt en test.

Om de in deze handleiding beschreven functionaliteiten te kunnen testen, dient u in het bezit te zijn van een Terminal met een geïnstalleerde hub-app. Heeft u wel een terminal maar is de hub-app nog niet geïnstalleerd, leest u [hier](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Hub%20App/Hub-App%20Installatie%20NL.md#installeren-van-de-android-app) hoe u deze installeert.

## Versionering

In de Hub-app catalogus ziet u het versienummer verticaal naast de apps staan. Florisoft brengt regelmatig nieuwe versies uit voor de apps met nieuwe functionaliteiten en kleine verbeteringen. Met dit versienummer kunt u eenvoudig bijhouden over welke versie u beschikt.

*Bij het contact opnemen met Florisoft Support over eventuele problemen met de apps, is het verstandig om deze versienummers bij de hand te hebben.*

## Downloaden van app-updates

De apps worden gedownload met het downloaden van een cloudserverupdate. Bij het updaten van de cloudserver ziet u dan ook de instelling "*Download frontend apps met de Cloud.Server*" ingeschakeld staan. Deze instelling zorgt ervoor dat na het updaten van de cloudserver nieuwe appversies beschikbaar zijn in de Hub-app catalogus.

|Stap|Uitleg|
|:-:|:--|
|**1**|Florisoft Update cloudserver.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/2.png"></details>|
|**2**|Downloaden van front-end apps.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/1.png"></details>|

Wanneer de Hub-app ontdekt dat er een nieuwere appversie beschikbaar is, zal het bij de eerstvolgende keer de app automatisch updaten. Nadat de app is geüpdatet, ziet u dat het versienummer links naast de app ook is gewijzigd naar de nieuwere versie.

## Release channels (testen van nieuwe versies)

Om nieuwe appversies veilig te kunnen testen, maakt u gebruik van de verschillende release channels in de Hub-app. Standaard zijn er twee release channels: latest (de versie van de backoffice (bin-versie)) en update (de versie van uw update client).

Apps worden automatisch gedownload met het downloaden van de cloudserver-instelling "*Download frontend apps met de Cloud.Server*". U hoeft de cloudserver dus niet te updaten, maar alleen te downloaden.
<!-- Ik weet nu niet meer zeker of dit geheel automatisch gebeurde. Dit wil ik eigenlijk even nagaan.-->
De release channels van deze apps zijn te vinden in de map 'Shared/Florisoft/DataPGS/Binapps/'. Hierin vindt u de mappen *latest* en *update*. Om de apps van de *update* channel uit te rollen naar het *latest* channel, dient u de apps in deze mappen handmatig te verplaatsen.

Het kunnen uitrollen van nieuwere appversies zal binnenkort worden vereenvoudigd, maar voor nu doet u dit handmatig. Wilt u de appversies van de update client uitrollen naar de latest (productie), verplaats dan de inhoud van de '*update*' map naar de '*latest*' map.

**Om fouten eenvoudig terug te kunnen draaien, is het verstandig om de hele inhoud van de latest map eerst te verplaatsen naar een tijdelijke back-upmap. Zorg er dan ook gelijk voor dat de latest map leeg is voordat u de 'update' apps hierin plaatst.**

### Release channels instellen in de apps

*Het release channel stelt u in op de Hub-app. Volg de onderstaande stappen om dit in te stellen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|In de Hub-app klik op het hamburgermenu rechtsbovenin uw scherm.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/3.png" height=350px></details>|
|**2**|Klik vervolgens op het tandwielicoon om naar de instellingen te gaan.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/4.png" height=350px></details>|
|**3**|Vul vervolgens het veld *Release Channel* in met '**update**' of '**latest**'.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/5.png" height=350px></details>|
|**4**|Druk op save. U wordt nu gevraagd om de app opnieuw op te starten. Druk op yes.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/App Management/6.png" height=350px></details>|
