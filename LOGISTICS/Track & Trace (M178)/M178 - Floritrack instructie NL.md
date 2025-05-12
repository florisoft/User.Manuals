<img src="../../fslogo.png" alt="Florisoft Corporate logo">

# Florisoft Manual Track and Trace (M178)

Dit document beschrijft de werking van Track and Trace via Floritrack en de instelling die daarvoor nodig zijn:

**Het globale proces is als volgt:**

* Kar wordt opgebouwd via doos vullen of karopbouw modules
* Bij 'print bon' of 'kar klaar' wordt bepaald of kar via Track & Trace gevolgd moet worden
    * _Bepaling vindt plaats o.b.v. Transporteur van de debiteur of hub_
* In het Track & Trace scherm verschijnt een regel per kar (bovenste grid).
    * _Het onderste grid toont alle deelleveringen op die kar - per debnr en ordnr_
* Kar wordt ingediend bij Floritrack 
    * _d.w.z. de API wordt aangesproken en stuurt informatie terug - shipment nr & document nr_
* O.b.v. deze info kan de begeleidende transportbrief geprint worden, met QR code
    * _1 brief per deellevering_
* Brieven gaan op de kar, transporteur scant de QR bij het ophalen
* Klant kan status van deelleveringen volgen via Floritrack portal 
    * _in de toekomst ook in Florisoft_

## Inhoudsopgave

[Constanten instellingen](#constanten-instellingen)  
[Transporteur instellingen](#transporteur-instellingen)  
[Doos vullen karopbouw](#doos-vullen--karopbouw)  
[Track and trace scherm](#track-and-trace-scherm)  
[Transportbrief printen](#printen-transportbrief)  
[Floritrack portal](#floritrack-portal)  


## Constanten instellingen

### Transporteur instellingen

|Stap|Uitleg|
|:-:|:--|
|**1**|Navigeer naar het volgende pad in de constanten:<br>**Organen→Transporteurs**|
|**2**|Open vervolgens de destreffende het tab **TrackTrace**, vul de volgende gegevens in:<br>- Zet de dropdown '**Maak gebruik van floritrack**' op '*Floritrack*'<br>- Vul het veld '**GLNCode**' met de GLN code van de transporteur. <br><br>*In het onderstaande voorbeeld maken we gebruik van de GLN code van Wematrans = 8713782645704*<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="images/tracktrace.png"><img src="images/transporteur_floritrack.png"></details>|
|**2.a**|De GLN van de transporteur kan gevonden worden in de portal van Floritrack of via Floricode.|

### Debiteur instellingen

*Hier zijn een aantal velden van belang, voornamelijk het afleveradres en de GLN codes, omdat hierop gevalideerd wordt bij Floritrack. Zonder juiste GLN codes lukt het indienen niet.*

*Volg de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Navigeer naar het volgende pad in de constanten:<br>**Organen→Debiteur gegevens→Debiteuren**|
|**2**|Vul het GLN code in met de: bedrijfscode oftewel het **GLNADRES**|
|**3**|Open de desbetreffende debiteur en navigeer naar het tabje:<br>**Adressen→Afleveradres**<Br><br>*Dit is meestal een box locatie op een veiling - wanneer een klant meerdere locaties heeft moeten er dus meerdere debiteuren aangemaakt worden, elk met een eigen locatie GLN (bv H. Star Rijnsburg & H. Star Naaldwijk).*|
|**4**|Vul in dit scherm ook de GLN code in, doe dit met **GLN locatie code.**|
|**5**|Vul daarnaast de volgende velden in indien deze nog leeg zijn:<br>- **Bedrijfsnaam:** uw bedrijfsnaam<br>- **Straat/huisnr**: vul hier adres in in<br>- **Postcode**<br>- **Plaats**<br>- **Land**<br>- **Transport adres**: VBA voor veiling Aalsmeer, NLD voor Naaldwijk, RBG voor Rijnsburg<br>- **Hub**: (indien nodig, bv om verschillende klanten bij elkaar op de kar te kunnen zetten) - Transport > Locaties > Hub<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="images/debiteur.png"></details>|
|**5.a**|De GLN codes die gebruikt worden bij de debiteur kunnen ook gevonden worden in de Floritrack portal.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="images/debiteur_floritrack.png"></details>|

### Hub instellingen

#### Indien bij de debiteur een hub ingesteld is, dan wordt de transporteur van die hub gebruikt i.p.v. die van de debiteur.

Bij het indienen krijgt de gebruiker de keuze om de kar bij de Hub te laten bezorgen.<br> *Dit is nuttig als er op bepaalde tijdstippen gebruikt gemaakt wordt van een andere afleverlocatie, bv de logistieke afhandeling van de veiling zelf.*

*Hiervoor dient het adres en de locatie GLN van de Hub ingevuld te worden.*

|Stap|Uitleg|
|:-:|:--|
|**1**|Navigeer naar het volgende pad in de constanten:<br>**Locaties→Hub**<br>Open vervolgens de desbetreffende hub of maak een nieuwe aan.|
|**2**|Zorg ervoor dat de volgende gegevens zijn ingevuld:<br>1. **Code**<br>2. **Zoeksleutel**<br>3. **Omschrijving**<br>4. **Transporteur**<br>5. **Postcode**<br>6. **Plaats**<br>7. **Land**<br>8. **GLN code:** vul dit in met de GLN locatie code.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="images/hub.png"></details>|
|**3**|Daarbij kan ook de 'Route indicatie' opgegeven worden. Deze wordt klaargezet als printvariabele.<br><br>**Optioneel**: Navigeer naar het tab: **Transport**|
|**4**|**Optioneel**: Vul vervolgens het Route indicatie veld in.|

## Doos vullen / karopbouw

Als dit alles goed ingesteld is, en de gebruiker een kar heeft opgebouwd via doos vullen of karopbouw en op 'Print bon' of 'Kar klaar' klikt, wordt het Track & Trace scherm gevuld
<a name="tracktrace"/>

## Track and Trace Scherm

Per gebruiker kan in de navigator de knop Track and Trace toegevoegd worden. Hieronder een korte beschrijving over hoe u dit doet:

|Stap|Uitleg|
|:-:|:--|
|**1**|Ga naar de Florisoft Navigator en klik op de F12 knop om de ontwerpmodus te openen.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="images/navigator.png"></details>|
|**2**|Sleep vervolgens de '*Track and Trace*' knop in de linkerkant van het scherm naar een plek in de Florisoft navigator.|
|**3**|Sla uw verandering op en verlaat de ontwerpmodus door op de F5 toets te klikken.|

In dit scherm kan u het volgende doen, volg de onderstaande stappen:

|Stap|Uitleg|
|:-:|:--|
|**1**|Open het track and trace scherm door op de zojuist geplaatste '*Track and Trace*' knop te drukkken.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="images/tracktrace.png"></details>|
|**2**|Hieronder vind u een korte uitleg over dit scherm:<br>**1. Menu:** Hier kan de gebruiker functies starten die betrekking hebben op de rest van het scherm. O.a. filteren en detailscherm openen.<br><br>**2. Hoofdgrid:** In dit overzicht zijn alle geregistreerde Track and Trace records (lees: karren) zichtbaar die vanuit karopbouw of doos vullen geregistreerd zijn. TRACKTRACE en FLORITRACK tabellen.<br><br>**3. Detailgrid:** In dit overzicht zijn de regels te zien die ingediend worden als shipments (lees: deelleveringen per kar). Hier kunnen meerdere regels van verschillende debiteuren/orders zichtbaar zijn. Dit is dus de totale inhoud van de kar.<br><br>**4. Rechtermuis menu:** Via dit menu kan de gebruiker de zendingen indienen en/of printen. Een reeds ingediende zending kan niet nogmaals ingediend worden. Een printopdracht kan pas gestart worden nadat alle gegevens beschikbaar zijn na het indienen. Er wordt altijd een transportbrief geprint per deellevering, want elke deellevering krijgt een unieke QR code.<br><br>**5. Statusbar:** Hierin wordt weergegeven of een filter in het scherm actief is en hoeveel geselecteerde regels de gebruiker momenteel actief heeft. Door te dubbel klikken op de filter text, zal het filter scherm geopend worden.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="images/tracktrace.png"></details>|
|**3**|Bij het indienen moet de ophaal- en aflevertijd gekozen worden. Deze staan standaard resp 1 en 2 uur in de toekomst maar kunnen aangepast worden. Kies hier ook of de shipments bij de debiteur(en) afgeleverd moeten worden of bij de hublocatie.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="images/indienen.png"></details>|


## Printen transportbrief

Via rechtsklikken op een ingediende kar in het bovenste grid kan er geprint worden.

<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="images/print.png"></details>

## Floritrack portal

Via de url: https://app.floritrack.nl kan de portal benaderd worden. Hier kan de gebruiker inloggen met het verkregen account van Floritrack en zijn zendingen inzien. 
Voor de test omgeving moet de url: https://app.staging.floritrack.nl gebruikt worden. Bisit kan per klant een login regelen.