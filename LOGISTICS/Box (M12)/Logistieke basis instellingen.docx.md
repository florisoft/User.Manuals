<img src="../../fslogo.png"/>

[Inleiding](#inleiding)

[Voorraadinstellingen](#_Toc29294780)

[Debiteurinstellingen](#_Toc29294781)

[Werking](#werking)

# Inleiding

Het doel van dit document is om aan te geven welke instellingen gezet
moeten worden voor de basis inrichting van de logistiek m.b.t.
Voorraden, Box en pickorders. Hier zijn natuurlijk veel afsplitsingen
op.  
Daarbij zijn dit de instellingen die je het beste kunt gebruiken voor
klanten die eigenlijk via de zogenaamde “Pickorderverdeel” werkwijze
willen werken. Dit houd in dat alles wat onderweg is in de box moet
komen, en alles wat binnen is in de pickorders moeten komen. Met de
inrichting in dit systeem kun je dit grotendeels zo inrichten. Enige
verschil is dat de pickorders gelijk netjes ook in de box geprint kunnen
worden waardoor je eigenlijk gelijk de voorverdelingen er al uit
haalt.  
In de pickorders zie je ook alles, alleen kun je hier een filter zetten
in de pickorder zodat je alleen de partijen ziet die binnen zijn.

<span id="_Toc29294780"
class="anchor"></span>**<u>Voorraadinstellingen</u>**  
We richten eigenlijk altijd een inkoop voorraad in (waar de aankopen
middels EKT op binnen komen). En een Cel voorraad (waar we partijen heen
verdelen die bijv. op de shop moeten komen of niet gelijk doorverdeeld
kunnen worden vanuit de inkoop)  
  
**Inkoopvoorraad:**  
  
**Tabblad voorraad**. De voorraadcode en omschrijving.

<img src=".Logistieke basis instellingen.docx\media\image3.png" style="width:3.99444in;height:3.64167in" /><img src=".Logistieke basis instellingen.docx\media\image4.png" style="width:4.6791in;height:4.26339in" />  
  
**Tabblad autorisatie**. De gebruikers die in de voorraad mogen. Sowieso
de timer.

**Tabblad Boxen**. De Box waar de partijen in moeten komen voor het
binnenmelden.  
  
<img src=".Logistieke basis instellingen.docx\media\image5.png" style="width:5.18946in;height:4.70896in" />

**Tabblad doorboeken**. De Box Actief vink en box waarheen de
verdelingen geboekt moeten worden.  
Nul voorraad verwijderen na minimaal 1 dag.  
  
<img src=".Logistieke basis instellingen.docx\media\image6.png" style="width:3.6791in;height:3.34737in" />

Daarbij stellen we ook een Celvoorraad in. We boeken partijen uit de
inkoop door naar de celvoorraad als we deze niet gelijk door naar de
eindklant kunnen boeken. Zodat we een echte eigen voorraad hebben. Deze
voorraad staat bijv. ook open voor de webshop.  
  
**Celvoorraad:  
Tabblad voorraad.** De voorraadcode en omschrijving. En een
Debiteurnummer\*  
\*Debiteurnummer gebruiken om er voor te zorgen dat als je verdeeld naar
deze debiteur, Florisoft de partij dus naar deze voorraad boekt. Verder
op in dit bestand staat ook nog een hoofdstuk voor instellingen
aangaande de voorraad debiteur.  
  
**  
**<img src=".Logistieke basis instellingen.docx\media\image7.png" style="width:4.74273in;height:4.29104in" />**  
  
Tabblad autorisatie**. De gebruikers die in de voorraad mogen. Sowieso
de timer.**  
**  
<img src=".Logistieke basis instellingen.docx\media\image3.png" style="width:3.99444in;height:3.64167in" />

**Tabblad Boxen**. De Box waar de partijen in moeten komen voor het
binnenmelden.  
  
<img src=".Logistieke basis instellingen.docx\media\image5.png" style="width:5.18946in;height:4.70896in" />

<img src=".Logistieke basis instellingen.docx\media\image8.png" style="width:5.09653in;height:4.62778in" />  
**Tabblad doorboeken.** Vinkje Onderverdeelde partijen niet naar de box
doorboeken aanzetten( we willen immers alleen verdelingen hebben)  
Plus het vinkje Maar wel partijen met nog te pakken pickorders.  
Aantallen doorboeken: Altijd alleen het verdeelde aantal  
Nul voorraad verwijderen na minimaal 1 dag.

*LET OP*
Box actief moet je aanzetten om er voor te zorgen dat de pickorders zichtbaar zijn in de box monitor bij webshop verdelingen uit deze voorraad.
(16-03-2021 er ingezet nav probleem Marco bij Enigma) 


#      

**Tabblad Doorboeken 2** ALTIJD pickorders aanmaken voor deze voorraad
aanzetten.

<img src=".Logistieke basis instellingen.docx\media\image9.png" style="width:6.3in;height:5.73611in" />

**Live voorraad:**

**Tabblad Boxen**  
<img src=".Logistieke basis instellingen.docx\media\image10.png" style="width:6.3in;height:5.74097in" />**  
**

**Tabblad Doorboeken**

<img src=".Logistieke basis instellingen.docx\media\image11.png" style="width:6.3in;height:5.79306in" />

Bij de leverancier van de koppeling moet uiteraard wel aanstaan dat de
ingelezen partijen onderweg zijn:  
<img src=".Logistieke basis instellingen.docx\media\image12.png" style="width:4.75373in;height:3.16496in" />

<span id="_Toc29294781" class="anchor"></span>**<u>Debiteur
instellingen</u>**  
Bij alle NIET voorraad debiteuren zet je de volgende vink aan: Altijd
Pickorder aanmaken.  
<img src=".Logistieke basis instellingen.docx\media\image13.png" style="width:6.3in;height:5.45417in" />  
  
Bij de voorraad debiteuren, de debiteuren die gekoppeld staan aan je
voorraad zoals bijv. de cel voorraad, zet je de volgende instellingen
aan:  
<img src=".Logistieke basis instellingen.docx\media\image14.png" style="width:6.3in;height:3.02986in" />

<img src=".Logistieke basis instellingen.docx\media\image15.png" style="width:6.3in;height:5.49028in" />  
  
Deze prijsinstellingen zorgen ervoor dat je inkprijs1 de prijs blijft
hoe deze in je inkoopvoorraad stond en niet gelijk gezet wordt aan de
verkoopprijs zoals normaal.

# Werking  

Partijen die onderweg zijn komen in de Box terecht. Zie bijv. de
partijen uit de inkoop voorraad

<img src=".Logistieke basis instellingen.docx\media\image16.png" style="width:6.3in;height:4.17431in" />

Partijen zonder verdeling krijgen een CEL sticker. Oftewel je weet dat
je deze partijen in de cel gezet moeten worden.  
Als je vanuit de inkoopvoorraad gelijk verdeeld dan zie je deze onderaan
de boxpartij bij de boxverdelingen en krijg je bij binnen melden gelijk
de juiste sticker er uit:  
  
<img src=".Logistieke basis instellingen.docx\media\image17.png" style="width:6.3in;height:1.69306in" />

Partijen die binnen gemeld zijn en verdelingen krijgen komen in de
pickorders terecht:  
  
<img src=".Logistieke basis instellingen.docx\media\image18.png" style="width:7.46691in;height:2.45522in" />  
  
<img src=".Logistieke basis instellingen.docx\media\image19.png" style="width:7.21915in;height:1.83582in" />

**<u>Herverdelingen</u>**  
  
Als je wat verdeeld hebt naar een debiteur en dat moet naar een andere
debiteur dan kun je dit herverdelen in de factuurbak.  
<img src=".Logistieke basis instellingen.docx\media\image20.png" style="width:6.3in;height:2.43819in" />

Als de pickorder van de oorspronkelijke klant nog helemaal niet gelopen
is en dus nog geprint is. Zal de bestaande pickorder omgezet worden naar
de nieuwe debiteur.  
Dit geld zowel voor als de hele partij herverdeeld wordt als een
gedeelte van de partij.  
  
Je kunt op de sticker ook mee laten printen met de volgende
variabelen:  
HerverdelingDebNr (debnr van wie de verdeling was)  
HerverdelingOrdNr (ordnr van wie de verdeling was)  
BronXOrderBarcode (barcode van wie de verdeling was)  
FysiekHerverdeeld (aantal al gepickt van wie de verdeling was)  
Voorbeeld sticker (oorspronkelijk 2\*60 verdeeld naar GERT. 1\*60
daarvan herverdeeld naar TEST)  
  
<img src=".Logistieke basis instellingen.docx\media\image21.png" style="width:5.52239in;height:3.27557in" />  
  
Als de oorspronkelijke pickorder al volledig gelopen is (geprint) kun je
als volgt zien dat er een herverdeling op zit:  
<img src=".Logistieke basis instellingen.docx\media\image22.png" style="width:6.3in;height:2.58194in" />

Zoals te zien op bovenstaande knop, knippert de herverdelingen knop
rood. Dit houd in dat er herverdelingen zijn.

Als je nu de pickorder van deze debiteuren print krijg je gelijk de
herverdeling sticker er achteraan.
