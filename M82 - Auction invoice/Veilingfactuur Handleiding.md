# Florisoft Handleiding Veilingfactuur

<img src=".Veilingfactuur Manual/media/image1.jpeg" />

Welkom bij de handleiding voor de module Veilingfactuur. De module Florisoft .NET Veilingfactuur is gecreeërd om veilingfacturen te verwerken in het systeem. Deze handleiding beschrijft de module en legt uit hoe de gebruiker er mee om kan gaan.

*Deze module is voor zowel Veilingfactuur als Veiling connect factuur*

## XML van de factuur
Als voorbereiding voor het gebruik van de module, moet de veiling benaderd te worden om de facturen ook in XML bestand mee te leveren.

Zodra je de factuur in .xml hebt gekregen, sla hem op op een toegankelijke locatie zodat je hem straks makkelijk kan terugvinden.

<img src=".Veilingfactuur Manual/media/image2.png" />

Selecteer "Veilingfactuur verwerken" of "Connect factuur inlezen" (gebaseerd op welke van de twee je wilt doen).
Als je een van de opties hebt gekozen, moet je het .xml-bestand die je zojuist hebt ontvangen selecteren.

*Voor Veilingfactuur en Veiling connect factuur zijn de onderstaande stappen gelijk*

<img src=".Veilingfactuur Manual/media/image3.png" />

Nu moet je 2 velden invullen, namelijk de factuurnr. en het goederen bedrag. Vaak zal je een kopie bij de hand hebben, zo niet, is de bestandsnaam van de .xml ook het factuurnr.

Als je de factuur bij de hand hebt, op papier of .pdf, kan je het goederenbedrag makkelijk daarop vinden. Als je dat niet hebt, kan je ook het .xml-bestand openen. Daarin moet je 2 stukjes code vinden, namelijk 2 keer </feram:ActualBillingMonetarySummation>. Tussen deze stukken code kan je het goederenbedrag vinden. In dit geval is het bedrag 360.900.

<img src=".Veilingfactuur Manual/media/image4.png" />

Zodra je de informatie hebt ingevuld, en dit klopt, krijg je het volgende scherm.

<img src=".Veilingfactuur Manual/media/image5.png" />

Aan de linker kant vind je de status van de verschillende rijen. Hier kan je erachter komen wat Florisoft gedaan heeft met de factuur. Florisoft geeft ook foutmeldingen als er iets niet klopt, vaak is dit zelf op te lossen. Probeer het dan opnieuw.

Als je een bepaalde rij in meer detail wilt zien, kan je op de rij dubbel klikken.

Sommige problemen kunnen niet zo 123 opgelost worden, benader dan de support afdeling van Florisoft zodat we je verder kunnen helpen.