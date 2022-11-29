![Florisoft Corporate Logo Transparant](../../fslogo.png)

# Florisoft Klok Voor Verkoop handleiding

## Inhoudsopgave

[Table of contents](#inhoudsopgave)  
[Inleiding](#1-inleiding)  
[Creëren van inkomende voorraad](#2-creëren-van-inkomende-voorraad)  
[Creëren van leveranciers](#3-creëren-van-leveranciers)
[De juiste floramondo webservice selecteren](#31-de-juiste-floramondo-webservice-selecteren)

## 1. Inleiding

Welkom tot de Florisoft handleiding voor de Klokvoorverkoop module. In deze handleiding worden de stappen beschreven voor het implementeren van de Klokvoorverkoop module. 

Nederlandse veilingen bieden een service aan genaamd Klok voor verkoop, deze service is een voorraad connectie dat de producten laat zijn die klaar zijn om onder de hamer te gaan. De unieke draai hier aan is dat deze producten al gekocht kunnen worden voor dat ze door het veiling proces heen gaan. 

Het doel van deze module is het uitleggen en het technisch implementeren van de Klok Voor Verkoop module in Florisoft.  Dit zodat gebruikers een basis level begrip hebben van het systeem en hoe gewerkt wordt met deze module. De stappen voor het opzetten van een connectie voor deze module worden beschreven in deze handleiding zodat een gebruiker de module zelf kan opzetten en gebruiken. 

Om de Klokvoorverkoopmodule werkend te krijgen zijn verschillende onderdelen nodig in de Florisoft applicatie, deze onderdelen zijn beschreven in de volgende hoofdstukken. 

Na deze inleiding word de creatie van inkomende voorraad beschreven in hoofdstuk twee. De producten uit de Klokvoorverkoop connectie worden in gelezen naar een specifieke plaats in de Florisoft applicatie oftewel Voorraad. 

Hoofdstuk drie behandelt het creëren van een leverancier, dit is het belangrijkste gedeelte van deze handleiding aangezien een veiling gezien wordt als een leverancier in Florisoft.

Het doel van deze handleiding dat je na het lezen zelf de Klokvoorverkoop handleiding op kan zetten. 

Mocht u deze handleiding lezen om te zien welke webservice u nodig heeft voor uw leverancier zie [hoofdstuk 3.1](#31-de-juiste-floramondo-webservice-selecteren).

**Belangrijk om te onthouden**: *Afbeeldingen in deze handleiding kunnen verschillen met wat u op uw scherm ziet. De Florisoft applicatie word continu geüpdatet waardoor sommige schermen kunnen veranderen. We proberen de handleidingen zo up to date  mogelijk te houden. Weet wel dat de kern van het proces niet verandert.*

## 2. Creëren van inkomende voorraad 

To get the Clock Pre-Sale option to work in the Florisoft application it is necessary to create incoming stocks. This is because incoming stocks is where the Florisoft system reads in all the available products in the Clock Pre Sale connection. 

The Dutch Auction has three physical locations: Aalsmeer, Naaldwijk, and Rijnsburg. Each location must have its own incoming stocks. This results in you having three incoming stocks for the Clock Pre Sale module by default; one stock per physical location. 

The steps below describe the process of creating an incoming stock.

|#Stap | Uitleg|
|:--|:--|
|**1**| Start de Florisoft applicatie op en log in met uw Gebruikersnaam en wachtwoord.|
|**2**| Navigeer naar het constantenscherm in de Florisoft navigator (nummer 1 in de onderstaande afbeelding)| 

<img src = "Pre Sales Clock NL Media/image1.png" alt="Getting to the constants screen."><br>
*This should open the constants screen, put it on full screen if necessary. Having opened the constants screen follow the following steps*  

|3|In het constantenscherm ziet u een bestandsstructuur navigeer hier binnen naar:  *Locatie*(#2) **→** *Voorraden* (#3) **→** *Voorraden* (#4)|
|:--|:--|
|**4**|Klik op het icoon voor het toevoegen  (*plus teken* (**+**), #5) voor het creëren van een nieuwe vooraad. |
  
<img src="Pre Sales Clock NL Media/image2.png" alt="Creating a new stock">

|5 | Zorg ervoor dat je zeker weet dat het *Voorraden* mapje geselecteerd is in de bestandsstructuur aan de linkerkant (#6)|
|:--|:--|
|**6**| Vul de voorraadcode met een willekeurige code. Deze code bestaat uit maximaal zes letters of nummers(#7)|
|**7**| Geef de te aan te maken voorraad een passende omschrijving in het bijhorende ‘*omschrijving*’ veld(#8).|
|**8**| Klik op de ‘*Ok*’ knop en klik vervolgens op ‘*yes*’ om de nieuw aangemaakte record op te slaan.|

<img src="Pre Sales Clock NL Media/image3.png">

|9| Open nu de nieuw aangemaakte voorraad, dit kan u doen door tweemaal met linkermuisknop op de bijhorende rij te klikken in de tabel.|
|:--|:--|
|**10**| Klik vervolgens op het ‘*Autorisatie*’ mapje in de bestandsstructuur aan de linkerkant van het pop-up scherm. |
|**11**| Binnen het autorisatie scherm vind u een lijst met gebruikers die geautoriseerd kunnen worden. U kan deze gebruikers autoriseren door het ‘*geautoriseerd*’ vakje aan te vinken (#10). <br><br> **De volgende gebruikers moeten verplicht geautoriseerd worden om het systeem te laten werken:** *ADMINC*, *ADMINF*, *ADMINK*, *DEFAULT*, *SUPER*, *TIMER*, en uw eigen gebruikers die autorisatie nodig hebben.|
|**12**| Klik op het ‘*doorboeken*’ mapje aan de linkerkant(#11).|

<img src="Pre Sales Clock NL Media/image3.png">

|13|Activeer (vink aan) de checkbox (vakje) ‘*Nul-voorraad automatisch verwijderen*’(#12).|
|:--|:--|
|**14**| Vul het tekstvakje ‘*Minimale ouderdom partij voor te verwijderen*’ met de waarde **1** (#13).|
|**15**| Klik op het '*Webwinkel*' mapje (#14).|

<img src="Pre Sales Clock NL Media/image7.png" alt = "Carry out tab">

|16| Activeer (vink aan) de volgende checkbox: ‘*Deze voorraad staat open op de webshop*’(#15)|
|:--|:--|
|**17**| Zet de ‘*Openingstijden*’ optie op ‘*Altijd open (99)*’ (#16)|
|**18**|Klik op de ‘*Ok*’ om de instellingen op te slaan en een nieuwe voorraad te creëren.  |
| :bulb: | **Belangrijk om te onthouden**: *herhaal de vorige stappen (4-18) om voorraden aan te maken voor de andere veilinglocaties indien toepasbaar.*|

<img src="Pre Sales Clock NL Media/image8.png" alt = "WebShopTAB">

<img src="Pre Sales Clock NL Media/image9.png">

|**19**| De nieuw aangemaakte voorraad hoort nu zichtbaar te zijn in het voorraad scherm. Klik op de ‘*voorraad*’ knop in de navigator (#17).|
|:--|:--|

<img src="Pre Sales Clock NL Media/image10.png">

|20| Click the Clock Pre Sale \<LOCATION name\> (#18) in the left pane of the Stocks screen.|
|:--|:--|

*Normaal gesproken zou elke nieuwe voorraad leeg horen te zijn tenzij partijen handmatig of automatisch toegevoegd zijn. Verder in deze handleiding worden deze voorraden gevuld doormiddel van de Klokvoorverkoopconnectie voor elke specifieke locatie.*

## 3. Creating suppliers


Een ander verplicht deel van de Klokvoorverkoopmodule is het bestaan van een leverancier. Dit is in dit geval de veiling aangezien ze producten leveren is het als een leverancier gedefinieerd in Florisoft. Net zoals de zojuist gecreëerde voorraad moet elke leverancier (voor de respectievelijke locaties) apart gemaakt worden. 

*Om een leverancier aan te maken volg de volgende stappen:*

|#Stap| Uitleg|
|:--|:--|
|**1**| Open de Florisoft navigator en klik op het Constanten icoon, het constanten scherm wordt nu geopend.|

<img src="Pre Sales Clock NL Media/image11.png">

|**2**| Navigeer nu naar het volgende pad binnen de bestandsstructuur (in de linkerkant van het scherm): *Organen* (#2) **→** *Leveranciergegevens* (#3) **→** *Leveranciers* (#4)|
|:--|:--|

<img src="Pre Sales Clock NL Media/image12.png">

|**3**|Klik op de new item toevoegen icoon (#5) om een nieuwe leverancier aan te maken, dit hoort een leverancier scherm te openen.|
|:--|:--|
|**4**|Vul de leverancierscode in het veld ‘*Lev.Code*’(#6)|
|:bulb:|<font color="RoyalBlue">**Note:** *De leverancierscode is een uniek veld in Florisoft voor elke leverancier in de applicatie. Het bestaat uit 6 karakters wat kan bestaan uit letters en getallen.* </font>|
|**5**|Vul het veld ‘*Zoek*’ met een zoekcode voor de leverancier die je aan het aanmaken bent. Dit is geen verplicht veld maar is ten zeerste aan te raden om het zoeken naar leveranciers makkelijker te maken in de Florisoft applicatie. |
|**6**|Vul het veld ‘*Bedrijfsnaam*’(#8) voor het invullen van de naam van het betreffende bedrijf.|
|**7**|Klik op het mapje '*Webservice*' (#9)|

<img src="Pre Sales Clock NL Media/image13.png">

### 3.1 De juiste Floramondo webservice selecteren

Binnen uw Floramondo account heeft u eventueel meerdere webservices dat gebruik maken van diverse filters voor verschillende scenario’s bijvoorbeeld: direct sales of klokvoorverkoop. Om te zien welke web service u nodig heeft voor uw nieuwe leverancier volg de onderstaande stappen.

|#Stap|Uitleg|
|:-:|:--|
|**1**|Log in bij uw Floramondo account met uw bedrijfslogingegevens.[Login pagina](https://identity.royalfloraholland.com/)|
|**2**|Als u bent ingelogd hoort u uw bedrijfsnaam rechtsboven in het scherm te zien. Klik vervolgens op de naam u krijgt dan een dropdown te zien klik vervolgens op ‘*Accounts*’. <br><details><summary>Click here to reveal the image</summary> <img src="Pre Sales Clock EN Media/FloraMondoUserMenu.png" alt="webservice name"> </details> |
|**3**| Scroll naar beneden tot uw een sectie ziet genaamd ‘*Webservice*’. In deze sectie kunnen we webservices in zien en eventueel wijzigen. Het kiezen van de juiste webservice is van het hoogste belang aangezien het bepaald welke voorraad we te zien krijgen en omdat sommige webservices met andere protocollen werken.<br><details><summary>Click here to reveal the image</summary> <img src="Pre Sales Clock EN Media/FloraMondoWebservicesListed.png" alt="webservice name"> </details>|
|**4**| Om te zien welke filters een webservice heet klik op de instellingen knop naast de webservice rij. Hier zien we de filters van die de voorraden filteren op de voorraad wat we niet willen zien.<br><details><summary>Click here to reveal the image</summary> <img src="Pre Sales Clock EN Media/Filters.png" alt="webservice name"> </details> |
|:memo:|**Hieronder een korte uitleg over de voorraadfilters:**<br>&nbsp;&nbsp; - **Hoofd groep**: Filter gebaseerd op groepen op bijvoorbeeld Bloemen of Tuinplanten.<br>&nbsp;&nbsp; - **Verkoopkanaal**: Directe verkoop of Klokvoorverkoop, voor de doeleinden van de &nbsp;&nbsp;&nbsp;handleiding behandelen we alleen klokvoorverkoop.<br>&nbsp;&nbsp; - **Aflever locatie**: Welke veilinglocatievoorraad staan we toe in de webservice voorraad.|
|**5**|Na het bekijken van de beschikbare webservices voor uw Floramondo acount selecteer de juiste service voor de leverancier die u aan het maken bent. Bent u bijvoorbeeld een leverancier aan het maken voor FloraHolland Aalsmeer in Florisoft, selecteer dan de webservice voor klokvoorverkoop met afleverlocatie Aalsmeer.|
|**6**|Het is belangrijk om de logingegevens beschikbaar voor u zijn van de webservice van uw leverancier.  <br>Als het userID en wachtwoord niet beschikbaar zijn kan u FloraHolland contacten om de gebruikersgegevens op te halen<details><summary>Click here to reveal the image</summary> <img src="Pre Sales Clock EN Media/WebserviceNameUserID.png" alt="webservice name"> </details> |


|**8**| Activeer (aanvinken) de checkbox ‘*activeren voor voorraadkoppeling*’ instelling. (#10).|
|:--|:--|
|**9**| Selecteer de instelling ‘*KlokVoorverkoop 0p7 - Floramondo*’ in de dropdown ‘*Type webservice*’ (#11).|
|**10**| Kopieer en plak de URL voor de webservice (als geleverd door FloraHolland) in het URL veld (#12).|
|**11**| In het userID veld dient u het webserviceID in te vullen (geleverd door FloraHolland). (#13)|
|**12**| In het wachtwoordveld hoort u het wachtwoord voor de webservice in te vullen (geleverd door Floraholland)(#14).|
|**13**| Selecteer de voor u juiste voorraad in het veld ‘*Binnenkomende voorraad*’ (#15). <br><br> Bij deze stap is het van belang om de juiste voorraad checken. Zoals al eerder vermeld moet elke locatie zijn eigen binnenkomende voorraad hebben. <br><br>Voor de leverancier *Clock Pre Sale Aalsmeer*, kiezen wij de inkomende Aalsmeer voorraad en voor leverancier Aalsmeer wordt voorraad Aalsmeer gekozen. |
|**14**| Klik op het mapje ‘*Partijen ophalen*’ wat onder de webservice map staat. (#16)|

<img src="Pre Sales Clock NL Media/image14.png">

|**15**| Vink de checkbox ‘*Altijd volledig aanbod ophalen ipv. Wijzigingen’ aan. (#17)|
|:--|:--|
|**16**| Geef het veld '*GLN code (Agent party)*' de volgende waarde: 8713783248188 (#18))|
|**17**| Klik op het mapje '*Partijen ontvangen*'(#19).|
|**18**| Zet het veld '*Default Artikelgroep*' op '*Nieuw Artikel 00000001*'(#20)|
|**19**| Vink de checkboxes aan voor de opties '*Geen externe foto's overnemen*' en '*- wel partij invullen met partij foto gegevens*'|
|**20**| Klik op de '*Afleverlocaties voorraden*' knop(#22), dit hoort een nieuw scherm te openen.|

<img src="Pre Sales Clock EN Media/SupplierParcelResponse.png">

|**21**| Vul de eerste kolom met het de Aflever EAN wat aangeleverd is door de veiling zelf.|
|:--|:--|

<img src="Pre Sales Clock EN Media/LeverancierFustInstellingWithSVC.png">

|22| Vul de voorraad kolom (nummer 25) met de corresponderende inkomende voorraadcode van de toepasbare veiling locatie.|
|:--|:--|
|**23**| Vul bij het marketcode veld (nummer 26) op de eerste regel de waarde '002' in|
|**24**| Herhaal de stappen 21 tot en met 23 met als uitzondering dat de Marktcode op de tweede regel als waarde 003 heeft, voor verdere regels is dit incrementeel..|
|**25**| Klik op de Ok knop (nummer 27) om de instellingen te bevestigen.|
|**26**| Click the Buy request tab (no. 23) in the Supplier screen.|

<img src="Pre Sales Clock EN Media/SelectBuyRequest.png">

|27| Vul het veld '*Afleverlocatie EAN*' (#28) met de zelfde code die gebruikt is in stap 21.|
|:--|:--|
|**28**|Vink de checkbox '*De 'echte' klantcode meesturen*'(#29) aan.|
|**29**|Vul het veld 'Customer Party EAN-code'(nummer met #30) met de GLN code van het ontvangend bedrijf..<br>Deze code kan gevonden worden op de Floricode website: <a href="https://www.floricode.com/en-us/distribution/finding-codes/company-code-search">Floricode > Floricode > Distribueren > Codes zoeken > Bedrijfscode zoeken</a>.<br> Zoek vervolgens op bedrijfsnaam, de juist code kunt u vinden in de kolom 'GLN bedrijfscode'.|

<img src="Pre Sales Clock EN Media/SuppliersBuyRequest.png">

|30| Klik op de OK knop(#31) om de veranderingen op te slaan. |
|:--|:--|

<img src="Pre Sales Clock EN Media/OkButton.png">

|31| Open  de zojuist aangemaakte leverancier opnieuw door twee keer op de naam te klikken in de constanten tabel.(#32)|
|:--|:--|

<img src="Pre Sales Clock NL Media/image18.png">

|32|Navigeer naar het '*Web Service*' tabje (#33) en klik op '*Partijen ontvangen*' button (#34).<br><br>*Het lijkt er misschien op dat de applicatie vastloopt maar in de achtergrond is het de webservice aan het bevragen voor de producten die verkocht worden in de KlokVoorVerkoopWebservice geregistreerd staan.*<br><br>*Daarnaast opent er een kleiner scherm (de Event Logger) wat het gedrag weergeeft tijdens het communiceren met klok voor verkoop webservice.*<br><br>*Wanneer alle producten ingelezen zijn komt er een klein venster tevoorschijn, dit scherm vertelt u hoeveel partijen ingelezen zijn naar de inkomende voorraad.*|
|:--|:--|

<img src="Pre Sales Clock NL Media/image20.png">

|33| Klik op de OK knop in het Windows dialoog venster om de boodschap te bevestigen. |
|:--|:--|
|**34**| Klik op de Ok knop (#31) in het leveranciersscherm om het scherm te sluiten.|

<img src="Pre Sales Clock EN Media/RetrievedMessage.png">

|**35**| 🔁 Herhaal stap 31 voor elke geautoriseerde leverancier.|
|:--|:--|

<img src="Pre Sales Clock NL Media/image20.png">

|36|Navigeer naar het *Web Service* **→** *Partijen ophalen* tabje (no. 33) in het leveranciereigenschappenscherm.|
|:--|:--|
|**37**|**Deactiveer** de checkbox 'Altijd volledig aanbod ophalen ipv wijzigingen'(nummer 34)|
|**38**|Klik op de OK knop in het leveranciers scherm om instellingen te bevestigen|

<img src="Pre Sales Clock NL Media/image19.png">

**Belangrijk om  te onthouden!**: *herhaal alle stappen in in dit hoofdstuk (het aanmaken van leveranciers) om unieke leveranciers aan te maken voor elke klok voor verkoop webservice. Dit geldt niet alleen voor webservices per locatie maar ook voor webservices met bepaalde productgroepen zijn er aparte leveranciers nodig.*

**E-mail:** support@florisoft.nl  
**Telefoonnummer:** +31 (0)71 40 806 10
