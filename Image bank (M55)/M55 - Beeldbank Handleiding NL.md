# Florisoft Beeldbank Handleiding NL

<img src=".Beeldbank_Handleiding_NL/media/image1.jpeg" />

Welkom bij de handleiding voor de module Beeldbank voor de desktop. Deze handleiding is ontworpen om de gebruikers de Beeldbank module aan te leren. Na het lezen van de handleiding, kan de gebruiker succesvol omgaan met de module.

Wanneer je op de KLOK koopt, ontvang je een PHOTOID nummer.
Met de module beeldbank heb je de mogelijkheid om verschillende foto's te downloaden door de PHOTOID te gebruiken. Wanneer je foto's download, zal Florisoft ze omzetten in 4 formatten.

## Opzet
Voordat er gebruik kan worden gemaakt van de Beeldbank module, moeten een paar instellingen worden aangepast.

Start Florisoft op en ga naar de constanten.

<img src=".Beeldbank_Handleiding_NL/media/image2.png" />

Vervolgens volg je het pad Organen > Beeldbank. Dubbelklik vervolgens op de desbetreffende Beeldbank, in het voorbeeld hebben we FloraHolland Aalsmeer gekozen.

Voer de Login-naam en Login-Wachtwoord in, deze zou verstrekt moeten zijn via (in dit geval) FloraHolland. Om zeker te maken dat de informatie klopt, kan je de URL gegeven volgen.

Een voorbeeld van zo een URL is: http://services.aalsmeer.com/ccvcbb/commercialcustomerwebservice.asmx

<img src=".Beeldbank_Handleiding_NL/media/image3.png"/>

Na het inloggen via de URL, een soortgelijk scherm word zichtbaar.

<img src=".Beeldbank_Handleiding_NL/media/image4.png"/>

Ga terug naar Florisoft, en voer de gegevens in en sla ze op.

Sluit de constanten en ga terug naar de Navigator (het thuis scherm).

Klik met de rechter muisknop op de Timer knop en selecteer "Timer settings".

<img src=".Beeldbank_Handleiding_NL/media/image5.png"/>

In de Timer settings, vind de instelling "Foto Download X fotos" (of "Image Download X Images").

Klik op het vinkje links van de naam om hem te activeren(Als dit niet werkt, selecter de checkbox aan de rechterkant van het scherm).

<img src=".Beeldbank_Handleiding_NL/media/image6.png"/>

Navigeer nu naar de rechterkant van het scherm. Ga naar de tab "Instellingen". Daar zijn enkele instellingen die aangepast moeten worden. **!! Als de juiste instellingen niet weergeven als normale gebruiker, log in als de Timer gebruiker!!**

Allereerst, zorg er voor dat de volgende instelling op "True" staat.

<img src=".Beeldbank_Handleiding_NL/media/image7.png"/>

Tweede, zorg ervoor dat de afbeeldingen een bestemming hebben. Kies een locatie, hier worden de foto's geplaatst.

<img src=".Beeldbank_Handleiding_NL/media/image8.png"/>

Zodra deze aangepast zijn, minimaliseer Florisoft tijdelijk. Open nu de Florisoft Data Architect en ga opzoek naar de FOTODOWN tabel.

### **!! Je gaat nu de Florisoft Database in, dat betekend dat alle data van Florisoft hierin staat. Express of perongeluk aanpassen van data kan het systeem serieus beschadigen, pas dan ook alleen aan wat hier beschreven staat! Het niet zeker weten/niet zeker zijn van het aanpassen is het altijd handig om de Florisoft Support afdeling te contacten!!**

Zodra je in de FOTODOWN tabel zit, moet je eerst een backup maken. Dit doe je door met je rechtermuisknop te klikken en te navigeren naar Export > Export To New Free Table... Hier moet je een locatie kiezen om de backup in op te slaan, wij gebruikten C:\Shared\Florisoft\BuTabellen.

<img src=".Beeldbank_Handleiding_NL/media/image9.png"/>

Probeer zeker te maken dat de backup goed verloopt, aangezien je nu alle data uit de tabel gaat verwijderen. Dit doe je door in de tabel met je rechtermuistknop te klikken, het selecteren van #/17 (de # ligt aan de regel waar je klikt) -> selecteer Inverse. Klik nu op de delete knop (links onder).

<img src=".Beeldbank_Handleiding_NL/media/image10.png"/>

Zodra alles verwijdert is, ga terug naar Florisoft en terug naar de Constanten.

Selecteer locaties > Veilingen en selecteer een veiling. Dubbel klik op de beiling, en vervolgens naar Overige in het nieuwe scherm. Kijk nu of de uitgelichte instellingen kloppen met de afbeelding.

<img src=".Beeldbank_Handleiding_NL/media/image11.png"/>

Sla de aanpassingen op (als die gemaakt zijn) en ga terug naar de Navigator.

Nu moet de Timer aangezet worden, klik op de stopwatch om deze te openen.

<img src=".Beeldbank_Handleiding_NL/media/image12.png"/>

Een lijst van alle actieve Timers wordt weergeven, klik hier op annuleren om de timer te stoppen. Nadat hij succesvol gestopt is, klik nogmaals op de stopwatch om hem opnieuw op te starten.

<img src=".Beeldbank_Handleiding_NL/media/image13.png"/>