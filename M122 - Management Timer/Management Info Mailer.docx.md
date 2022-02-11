<img src=".Management Info Mailer.docx\media\image2.png" />

# Management Info Mailer  
  
**Introductie**

Dit is een module waarmee management informatie automatisch gegenereerd
en verstuurd kan worden op gezette tijden of intervallen.

De management informatie wordt gegenereerd met de queries die in het
reeds bestaande Management scherm onderhouden kunnen worden. De gegevens
uit de query worden in het MANAGEMENT.dbf bestand gezet.

De gegevens kunnen met een layout omgezet worden in een pdf of excel
bestand. Deze worden dan verstuurd naar ingestelde email adressen.

## Constanten Scherm
<img src=".Management Info Mailer.docx\media\image1.png" style="width:6.3in;height:5.14931in" />

##  Naam
De naam wordt ook gebruikt voor de bestandsnamen zoals deze in de email
terecht komen.

### Script
Deze kunnen in het Management scherm onderhouden worden.

### Layout
Een print layout (ook wel “rapport” genoemd), te onderhouden in
constanten &gt; systeem &gt; Print Layouts.

### Alleen Excel export

Exporteert een Excel in plaats van een PDF.

### E-Mails

Dit zijn de email adressen waar het rapport naar verstuurd wordt.

### Planning

Hier kan de planning gemaakt worden. Een bepaalde tijd kan ingevoerd
worden met een “T”, dus als je iedere dag om 12:30 uur een email wilt,
dan voer je hier “T1230” in. Je kunt zo meerdere tijden invoeren. Ook is
het mogelijk het rapport in een bepaalde frequentie te versturen, dit
kan door een “F” en het aantal minuten in te voeren. Bijvoorbeeld “F90”
geeft aan dat iedere 90 minuten een email met een vers rapport gemaakt
zal worden.

### Variabelen

Hier kun je alle variabelen invoeren zoals deze in het script voorkomen.
Begindatum en Einddatum zullen bij het uitvoeren van de query altijd
vertaald worden naar de huidige datum. Dus de Einddatum zal altijd de
huidige datum worden en de Begindatum een zelfde hoeveelheid dagen in
het verleden.
