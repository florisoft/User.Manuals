<img src="../../fslogo.png"/>

## E-factuur client


Met de module e-Factuur Client wordt het mogelijk om de inkoophistorie
automatisch af te boeken. 
Dit was voorheen een handmatig proces waarbij de gebruiker zelf voor elke factuurregel de inkoopregel opzocht en deze
afboekte als deze correct was. Dit proces kost veel tijd en is foutgevoelig. 

De werking van de e-Factuur Client is als volgt:

|Stap|Uitleg|
|:--|:--|
|**1**|In de e-mail gekregen van de leverancier zit de originele factuur (alsbijv. pdf) een daarbij een eFactuur (te herkennen aan de .xml extensie). In Florisoft klik je met de rechtermuisknop op de knop Historie en kies je voor Florisoft eFactuur inlezen: <details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary>![](.eFactuur%20Client%20en%20Server/media/image1.png)</details>|
|**2**|Daarna zal een scherm geopend worden waarin je het xml bestand kan kiezen:<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary>![](.eFactuur%20Client%20en%20Server/media/image2.png)</details>|
|**3**|Na het kiezen van de xml wordt er gevraagd om het factuurnummer en het goederenbedrag van de originele factuur (pdf). Dit is ter controle of de e-Factuur wel overeenkomt met de originele factuur. Indien het goederenbedrag van de pdf en de xml overeenkomen dan weet je zeker dat er geen goederen op de originele factuur staan die niet in de e-Factuur staan. Na het intikken van deze gegevens worden de inkoopregels opgezocht en afgeboekt (net als de knop 'Afboeken' in de inkoophistorie ofde knop 'Afboeken' in het subscherm Inkoop ophogingen).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary>![](.eFactuur%20Client%20en%20Server/media/image3.png)</details>|
|**4**|Daarna opent het resultaat scherm waarin je per factuurregel (van de eFactuur) kan zien of deze afgeboekt kon worden of niet. Zo kan hetbijv. zijn dat de gehele inkoopregel niet gevonden kon worden van de factuurregel of dat de inkoopregel al afgeboekt was. Ook kan het zijn dat het bedrag.<br><br>Daarna opent het resultaat scherm waarin je per factuurregel (van deeFactuur) kan zien of deze afgeboekt kon worden of niet. Zo kan hetbijv. zijn dat de gehele inkoopregel niet gevonden kon worden van defactuurregel of dat de inkoopregel al afgeboekt was. Ook kan het zijn dat het bedrag of aantal niet overeenkomt.<Br><Br>De handelingen die hier nu genomen moeten worden, zijn dezelfde handelingen als die voorheen genomen werden door de inkoopcontrole. Indien bijv. de inkoopregel niet gevonden kan worden, maar je hebt wel een factuurregel, dan kan het dus zijn dat de factuurregel niet correct is en dat de leverancier gebeld moet worden voor een credit.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary>![](.eFactuur%20Client%20en%20Server/media/image4.png)</details>|
|**5**|Ook bevat het e-Factuur inleesresultaat scherm de e-Factuur barcode die ook weer terugkomt op de originele factuur (pdf) zodat, indien nodig er meer informatie is van de specifieke factuurregel, deze makkelijk opgezocht kan worden op de originele factuur.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary>![](.eFactuur%20Client%20en%20Server/media/image5.png)</details>|
|**6**|Voorbeeld van nog een resultaatscherm. 2<sup>e</sup> x dezelfde factuur inlezen, zie ook de tooltip waar nog meer informatie in staat over de specifieke status.:<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary>![](.eFactuur%20Client%20en%20Server/media/image6.png)</details>|

## Verder:

- De e-Factuur heeft een door Florisoft zelf ontwikkeld bestandsopbouw.
Deze staat los van de ‘veilingfactuur’. Dit is gekozen omdat de
Florisoft e-Factuur minder aanpassingen heeft. Ook is
hierdoor het bestand backwardscompatible, waardoor je met een 1 jaar
oud systeem toch nog e-Facturen kan inlezen van iemand die zijn systeem
net heeft geupdate en andersom. De e-Factuur is makkelijker leesbaar,
omdat deze minder velden bevat. De e-Factuur bestandsgrootte is hierdoor
ook direct 10x kleiner als die van de veilingfactuur. Over de inhoud
van de e-Factuur kunnen geen misverstanden bestaan, dit is Florisoft
zijn eigen standaard. Daarnaast kan er, indien nodig, veel sneller
geschakeld worden met het toevoegen van nieuwe velden.  

- De pdf factuur en de bijbehorenden e-Factuur en de EDI berichten staan
in dezelfde map als deze uitleg.  

- Zonder de e-Factuur Server module kan de e-Factuur niet worden verstuurd,
zijn de efactuurbarcodes altijd leeg en kan je de vink bij de debiteur
niet aanzetten.

- Zonder de e-Factuur Client module kan je de inleesfunctie niet gebruiken.

