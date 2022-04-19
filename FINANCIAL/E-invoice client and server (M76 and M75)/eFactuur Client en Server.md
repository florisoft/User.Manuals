<img src="../../fslogo.png"/>

*Algemeen*

De module eFactuur Client en eFactuur Server zijn gemaakt om het
controleren van de inkoopfactuur makkelijker te maken. Dit was voor de
komst van deze module een handmatig proces wat veel tijd kostte en
daarnaast foutgevoelig was. De 2 modules werken samen, al betekent dat
niet dat de klant ze allebei nodig heeft. Zo kan de ene klant alleen de
Client hebben en de andere kant alleen de Server. Dit werkt zowel voor
kopen die gedaan worden via een voorraadkoppeling als voor EKT berichten.

*eFactuur Server*

Met de module eFactuur Server wordt het mogelijk om informatie naar de
klant te sturen zodat de klant makkelijker de inkoopfactuur kan
controleren. De eFactuur Server bestaat uit de volgende aspecten:  

-Tijdens het verzenden van de originele factuur naar de klant wordt er
een eFactuur meegestuurd in de vorm van een xml bestand. Deze eFactuur
bevat dezelfde factuurregels als die op de originele factuur. Om er
zeker van te zijn dat de data op de eFactuur exact overeenkomt met de
data op de originele factuur wordt deze op hetzelfde moment en met dezelfde data gemaakt.
Dit zelfde bestand wordt ook gebruikt om de print te
produceren waardoor de kans op verschillen kleiner wordt. Op de
originele factuur mogen dus ook geen filters in de lay-out van de factuur
gebruikt worden, aangezien dan de eFactuur dan niet meer overeenkomt met de
originele factuur. 

-Tijdens het verzenden van een EKT bericht wordt er per factuurregel een
unieke identificatie in de EKT verzonden(de zogenaamde eFactuur barcode)
in het veld FS+EFACTBARC:  

-Indien de klant een koop doet via de Florisoft Voorraadkoppeling dat
wordt in het antwoord op die koop (de koopresponse) er een unieke
identificatie meegezonden (de zogenaamde eFactuur barcode). Veld
EFactuurBarcode  

-Op de originele factuur kan ook de eFactuur barcode worden geprint
(veld efactbarc in de factuur.dbf). Het wordt aangeraden om bij de
klanten waarbij ook een eFactuur naar gestuurd wordt deze eFactuur
barcode op de factuur te printen. Dit maakt nl. het controleren een stuk
makkelijker, zeker als bijv. een factuurregel wordt afgekeurd aan de
Client kant.

*Instellingen:  
*-Bij de debiteuren waarna je eFacturen wilt zenden moet de vink
aanstaan “Klant ondersteunt Florisoft eFactuur”. Dit triggert alle
verschillende aspecten van de eFactuur.  
-Bij de debiteur moet een code ingevuld worden bij: “Optioneel afwijkende
veilingcode in EKT”. Het is van groot belang dat dit nummer uniek is
voor die klant. Dat wil zeggen dat als jij bij klant A een afwijkende
veilingcode aangeeft van 23 dat jij de enige bent die naar die debiteur 23
stuurt, andere leveranciers dienen dus een andere code te gebruiken. 

*eFactuur Client*

Met de module eFactuur Client wordt het mogelijk om de inkoophistorie
automatisch af te boeken. Dit was voorheen een handmatig proces waarbij
de gebruiker zelf voor elke factuurregel de inkoopregel opzocht en deze
afboekte als deze correct was. Dit proces kost veel tijd en is
foutgevoelig. Zeker met de voorraadkoppeling waarbij de leverancier 8
factuurregels kan sturen terwijl het in de inkoop maar 1 regel is of de
leverancier stuurt 8 factuurregel (ligt er maar net aan wanneer de
leverancier zijn factuur maakte en stuurde) terwijl het in de
inkoophistorie 2 regels zijn was dit een langdurig proces. De werking
van de eFactuur Client is als volgt:

-In de e-mail gekregen van de leverancier zit de originele factuur (als
bijv. pdf) een daarbij een eFactuur (te herkennen aan de .xml extensie).
In Florisoft klik je met de rechtermuisknop op de knop Historie en kies
je voor Florisoft eFactuur inlezen:  
![](.eFactuur%20Client%20en%20Server/media/image1.png)

Daarna zal een scherm geopend worden waarin je het xml bestand kan
kiezen:  
![](.eFactuur%20Client%20en%20Server/media/image2.png)

Na het kiezen van de xml wordt er gevraagd om het factuurnummer en het
goederenbedrag van de originele factuur (pdf) . Dit is ter controle of
de eFactuur wel overeenkomt met de originele factuur. Indien het
goederenbedrag van de pdf en de xml overeenkomen dan weet je zeker dat
er geen krat bier op de originele factuur staat die niet in de eFactuur
staat. Na het intikken van deze gegevens worden de inkoopregels
opgezocht en afgeboekt (net als de knop Afboeken in de inkoophistorie of
de knop Afboeken in het subscherm Inkoop ophogingen).

![](.eFactuur%20Client%20en%20Server/media/image3.png)

Daarna opent het resultaat scherm waarin je per factuurregel (van de
eFactuur) kan zien of deze afgeboekt kon worden of niet. Zo kan het
bijv. zijn dat de gehele inkoopregel niet gevonden kon worden van de
factuurregel of dat de inkoopregel al afgeboekt was. Of dat het bedrag
of aantal niet overeenkomt. De handelingen die hier nu genomen moeten
worden zijn dezelfde handelingen als die voorheen genomen werden door de
inkoopcontrole. Indien bijv. de inkoopregel niet gevonden kan worden,
maar je hebt wel een factuurregel dan kan het dus zijn dat de
factuurregel niet correct is en dat de leverancier gebeld moet worden
voor een credit.

![](.eFactuur%20Client%20en%20Server/media/image4.png)

Ook bevat het eFactuur inleesresultaat scherm de eFactuur barcode die
ook weer terugkomt op de originele factuur (pdf) zodat, indien nodig er
meer informatie nodig is van de specifieke factuurregel, deze makkelijk
opgezocht kan worden op de originele factuur.

![](.eFactuur%20Client%20en%20Server/media/image5.png)

Voorbeeld van nog een resultaatscherm. 2<sup>e</sup> x dezelfde factuur
inlezen, zie ook de tooltip waar nog meer informatie in staat over de
specifieke status. :

![](.eFactuur%20Client%20en%20Server/media/image6.png)

Verder:  
-De eFactuur heeft een door Florisoft zelf ontwikkeld bestandsopbouw.
Deze staat los van de ‘veilingfactuur’. Dit is gekozen omdat de
Florisoft eFactuur minder aanpassingen krijgt. Tenslotte zijn het
allemaal Florisoft gebruikers die dit systeem gebruiken. Daarnaast kan
hierdoor het bestand backwardscompatible zijn waardoor je met een 1 jaar
oud systeem toch nog eFacturen kan inlezen van iemand die zijn systeem
net heeft geupdate en andersom. De eFactuur is makkelijker leesbaar,
omdat deze minder velden bevat. De e-Factuur bestandsgrootte is hierdoor
ook direct 10x kleiner als die van de veilingfactuur. En over de inhoud
van de e-Factuur kunnen geen misverstanden bestaan, dit is nl. Florisoft
zijn eigen standaard. Daarnaast kan er, indien nodig, veel sneller
geschakeld worden qua het toevoegen van nieuwe velden.  
-De pdf factuur en de bijbehorenden eFactuur en de edi berichten staan
in dezelfde map als deze uitleg.  
-Zonder de eFactuur Server module kan de eFactuur niet worden verstuurd,
zijn de efactuurbarcodes altijd leeg, en kan je de vink bij de debiteur
niet aanzetten.  
-Zonder de eFactuur Client module kan je de inleesfunctie niet gebruiken

*FAQ:*

Kan er een automatische inleestimer voor worden gemaakt?  
Zou eventueel wel kunnen, maar dan ben je wel een verificatie slag kwijt
Als je nl. de xml automatisch inleest dan heb je geen verificatie met de
pdf en de PDF wordt betaald door de boekhouder. Het zou dus kunnen zijn
dat de XML helemaal klopt, terwijl er op de PDF veel meer bloemen staan
die je nooit hebt gehad. Iemand moet dus controleren of de XML en de PDF
overeenkomen en daarvoor is dus de totaalbedrag invoer nodig.  
Eventueel zou je er vanuit kunnen gaan dat de XML en PDF altijd
overeenkomt (en die wellicht steeksproefgewijs te controleren) en zo dus
echt puur kunnen kijken of de aantallen en credits die eventueel zijn
doorgeven wel kloppen.
