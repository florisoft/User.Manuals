## **Commissie facturen**

Commissie facturen worden gegenereerd tijdens het origineel printen van
de factuur en worden in de factuurbak geplaatst. De commissie facturen
worden gemaakt op basis van een template factuur, waar alle regels voor
de commissie factuur al in staan.

Om een commissie factuur te laten genereren moet dit bij de debiteur
aangezet worden.  
<img src=".Commissie facturen.docx\media\image1.png" style="width:6.26806in;height:5.44236in" />

Vervolgens kan bij de debiteur een debnr en ordnr voor de template
commissie factuur ingevoerd worden, indien leeg worden deze uit
systeeminstellingen ‘CommissieFactuurTemplateDebNr’ en
‘CommissieFactuurTemplateOrdNr’ gehaald.

<img src=".Commissie facturen.docx\media\image2.png" style="width:6.26806in;height:5.44236in" />

Er worden een nieuwe orderkop aangemaakt waarbij het debiteurnummer
wordt overgenomen van de factuur die geprint wordt en het ordernummer
wordt het factuurnummer van de factuur die geprint wordt.

Hierna worden van de template factuur de factuur regels overgenomen op
de aangemaakte commissie factuur.

# Voorwaarden om een commissie factuur aan te maken

1.  Bij de debiteur moet aanstaan dat er een commissie factuur
    aangemaakt moet worden

2.  De template orderkop met orderregels moet bestaan

3.  De bronfactuur mag geen credit factuur zijn (CORRECTIE vink
    orderkop)

4.  De bronfactuur mag geen fust factuur zijn (via debiteur
    fustverwerking)

5.  Ordernummer van de bronfactuur mag niet met FS2000 –
    OrderNummerInnameUitgifte beginnen

6.  Bronfactuur moet een factuurnummer hebben (dit wordt namelijk het
    ordernummer)
