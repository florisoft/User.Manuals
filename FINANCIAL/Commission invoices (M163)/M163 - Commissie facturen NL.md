<img src="../../fslogo.png">

# Florisoft Handleiding Commissie Facturen - M163

Commissie facturen worden gegenereerd tijdens het origineel printen van de factuur en worden in de factuurbak geplaatst. De commissie facturen worden gemaakt op basis van een template factuur, waar alle regels voor de commissie factuur al in staan.

*Volg hier voor de onderstaande stappen*:

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constantenschem en navigeer naar het pad:<br>**Organen**→**Debiteurgegevens**→**Debiteuren**|
|**2**|Open de desbetreffende debiteur . Navigeer binnen de zojuist geopende debiteur kaart naar het volgende pad:<br>**Factuur**→**Printen**|
|**3**|Zet de instelling: '*Commissie factuur aanmaken*' aan (aanvinken).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Commissie facturen/media/image1.png"></details>|
|**4**|Vervolgens kan bij de debiteur een debnr en ordnr voor de template commissie factuur ingevoerd worden, indien leeg worden deze uit systeeminstellingen ‘CommissieFactuurTemplateDebNr’ en ‘CommissieFactuurTemplateOrdNr’ gehaald. Om dit te doen navigeert u als eerst naar de map **Factuur** → **Factuur**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Commissie facturen/media/image2.png"></details>|
|**5**|Vervolgens kan u nu onder het kopje *Commissie facturen* nu afwijkende debiteur en order commissienummers invullen.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Commissie facturen/media/image2.png"></details>|
|**6**|Er worden een nieuwe orderkop aangemaakt waarbij het debiteurnummer wordt overgenomen van de factuur die geprint wordt en het ordernummer wordt het factuurnummer van de factuur die geprint wordt.<br>Hierna worden van de template factuur de factuur regels overgenomen op de aangemaakte commissie factuur.|

## Voorwaarden om een commissie factuur aan te maken

|#|Voorwaarde|
|:--|:--|
|**1**|Bij de debiteur moet aanstaan dat er een commissie factuur aangemaakt moet worden|
|**2**|De template orderkop met orderregels moet bestaan|
|**3**|De bronfactuur mag geen credit factuur zijn (CORRECTIE vink orderkop)|
|**4**|De bronfactuur mag geen fust factuur zijn (via debiteur fustverwerking)|
|**5**|Ordernummer van de bronfactuur mag niet met FS2000 – OrderNummerInnameUitgifte beginnen|
|**6**|Bronfactuur moet een factuurnummer hebben (dit wordt namelijk het ordernummer)|