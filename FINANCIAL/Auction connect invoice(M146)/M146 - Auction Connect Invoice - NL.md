<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Manual Auction Invoice (M146)

Welkom bij de handleiding voor de module Veilingfactuur. De module Florisoft .NET Veilingfactuur is gecreeërd om veilingfacturen te verwerken in het systeem. Deze handleiding beschrijft de module en legt uit hoe de gebruiker er mee om kan gaan.

*Deze module is voor zowel Veilingfactuur als Veiling connect factuur*

## Factuur in XML formaat


*Als voorbereiding voor het gebruik van de module, moet de veiling benaderd te worden om de facturen ook in XML bestand mee te leveren. <br><Br>Zodra je de factuur in .xml hebt gekregen, sla hem op op een toegankelijke locatie zodat je hem straks makkelijk kan terugvinden.*

|Stap|Uitleg|
|:-:|:--|
|**1**|In de Florisoft Navigator klikt u met de rechtermuisknop op de *Historie* knop.|
|**2**|Dit opent een optie scherm, in dit scherm kan u kiezen voor de volgende opties:<br>**Veilingfactuur verwerken**<br>**Connect factuur inlezen**<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".Veilingfactuur Manual/media/image7.png"></details>|
|**3**|Ongeacht van uw keuze hoort u een Windows bestand selectie dialoog scherm te krijgen. Vind en selecteer een .xml bestand op uw computer om het in te laten lezen in de Florisoft applicatie.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".Veilingfactuur Manual/media/image3.png"></details>|
|**4**|Na een .xml bestand geselecteerd te hebben komt er een inputscherm met de volgende velden:<br>**1. Factuurnummer**: *Factuurnummer (zie bestandsnaam)*<br>**2. Goederenbedrag officiële factuur**<br>**3. Fustbedrag controleren:** *Checkt of het fustbedrag klopt met het onderstaande input veld*<br>**4. Fustbedrag officiële factuur:** *Wat is het fust waard* <details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".Veilingfactuur Manual/media/image6.png"></details> |
|**4.a**|Als je het goederenbedrag niet terug kan vinden in de PDF versie van de factuur kun je het opzoeken in het XML bestand. <br><br>**Gebruik CTRL+F om te zoeken naar \<feram:ActualBillingMonetarySummation\>, het goederenbedrag hoort tussen deze tag en het bijhorende sluitings tag te staan. In dit voorbeeld is het 360.900**<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".Veilingfactuur Manual/media/image4.png"></details>|
|**5**|Als u de informatie eenmaal heeft ingevuld en het is correct krijgt u het onderstaande scherm te zien.<br><br> Als er iets fout gaat met het inlezen van het .xml bestand in Florisoft krijgt u een fout melding met wat er fout gegaan is. Probeer deze problemen op te lossen en nog een keer in te laten lezen.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".Veilingfactuur Manual/media/image5.png"></details>|
|**6**|Als u een tabelrij in detail wilt zien klik tweemaal op de gewenste tabelrij.|
