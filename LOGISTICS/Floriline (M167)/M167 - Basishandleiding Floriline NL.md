> <img src=".Basishandleiding Floriline NL\media\image1.png" style="width:3.45972in;height:1.26389in" />

# **<u>Inhoudsopgave</u>**

[Inleiding 3](#inleiding)

[1 Workflow Floriline 4](#workflow-floriline)

[1.1 Worklfow Floriline onderdelen op macroniveau
4](#worklfow-floriline-onderdelen-op-macroniveau)

[1.2 Workflow software onderdelen Floriline
5](#workflow-software-onderdelen-floriline)

[2 Acties binnen Florishop 7](#acties-binnen-florishop)

[3 Acties binnen de backend 9](#acties-binnen-de-backend)

[4 Standaard configuratie 10](#standaard-configuratie)

[4.1 Verkoper instellingen 10](#verkoper-instellingen)

[4.2 Klant instellingen 12](#klant-instellingen)

[4.3 Klant instellingen vanuit een import
12](#klant-instellingen-vanuit-een-import)

[4.4 Voorraad instellingen 12](#voorraad-instellingen)

[4.5 Systeeminstellingen 13](#systeeminstellingen)

[4.6 Webshop instellingen 14](#webshop-instellingen)

[4.7 Modulen 14](#modulen)

[5 Import/export processen 15](#importexport-processen)

[5.1 Instellingen Gmail 15](#instellingen-gmail)

[5.2 Vullen handterminal 18](#vullen-handterminal)

[5.3 Uitlezen handterminal 19](#uitlezen-handterminal)

[6 Hardware 20](#hardware)

[7 Toekomstige ontwikkelingen 21](#toekomstige-ontwikkelingen)

# Inleiding 

Deze basishandleiding implementatie Floriline beschrijft de
basisconfiguratie van Floriline. Floriline is een nieuw concept speciaal
ontwikkeld voor lijnrijders. Deze handleiding is tot stand gekomen naar
aanleiding van een interne kennissessie in december 2017.

Het doel is om medewerkers en andere betrokkenen rondom Floriline
inzicht te geven in de basisvereisten die nodig zijn om het product
operationeel te krijgen. Omdat Floriline op het moment van schrijven
(december 2017) een relatief nieuw product is, bestaat er behoefte aan
basiskennis met betrekking tot de uitrol/implementatie van dit product.

Het installeren van Floriline bestaat uit een aantal stappen. De
structuur van de handleiding is gebaseerd op deze stappen. Na deze
inleiding volgt in hoofdstuk één een beschrijving van de workflow van
Floriline. De workflow beschrijft de benodigde stappen om Florishop
(frontend) te installeren. Daarnaast wordt de samenhang tussen de
verschillende componenten, dataflow en interacties beschreven.

Hoofdstuk twee beschrijft de verschillende acties binnen Florishop. De
volgende onderwerpen komen aan bod: inloggen en een klant kiezen,
partijen verdelen en/of retourneren, doorboeken van verdelingen vanuit
de winkelwagen en printen/mailen. Verder wordt nog beschreven hoe
facturen vanuit Floriline naar het hoofdsysteem gemaild kunnen worden en
vice versa: het importeren van data vanuit het hoofdsysteem in
Floriline.

Hoofdstuk drie behandelt een aantal acties die uitgevoerd worden binnen
het hoofdsysteem (backend). Denk hierbij aan het importeren van
verstuurde facturen, exporteren van data en het inrichten van de
voorraad.

Hoofdstuk vier bestaat uit een overzicht van instellingen in Florisoft
met betrekking tot de standaard configuratie van Floriline. Te denken
valt aan het koppelen van een verkoper aan een debiteur, eigenschappen
van klanten binnen de database, het importeren van klanten, opzetten van
voorraden, systeeminstellingen, webshopinstellingen en een overzicht van
vereiste modulen.

Floriline communiceert op verschillende manieren met Florisoft. Deze
communicatie komt aan bod in hoofdstuk vijf. E-mail speelt een
belangrijke rol in dit communicatieproces. Verder wordt specifiek
beschreven hoe de handterminal gevuld dan wel uitgelezen kan worden.

Een overzicht van de benodigde hardware en een beknopt overzicht van de
werking is te vinden in hoofdstuk zes.

Hoofdstuk zeven beschrijft in het kort een aantal scenario’s voor het
doorontwikkelen van Floriline.

Na het lezen van deze handleiding heeft de lezer een goede basis met
betrekking tot het inrichten van Floriline.

**Let op: afbeeldingen in deze handleiding kunnen enigszins afwijken van
hetgeen u op uw scherm te zien krijgt.**

# 1 Workflow Floriline

Dit hoofdstuk beschrijft de workflow van Floriline. De workflow
beschrijft de voorgedefinieerde onderdelen/stappen in het systeem en hun
onderliggende werking/verbanden. Het hoofdstuk bestaat uit twee
paragraven. Paragraaf 1.1 laat op hoofdlijnen zien welke onderdelen er
nodig zijn om Floriline te draaien. Paragraaf 1.2 zoomt dieper in op de
verschillende software onderdelen van Floriline en hun samenhang.

## 1.1 Worklfow Floriline onderdelen op macroniveau

> <u>Onderdeel 1:</u> De basis van Floriline bestaat uit een database in
> combinatie met een webserver. Een image fungeert als basis voor een
> nieuwe installatie wanneer de klant reeds Floriline heeft draaien. De
> database bevat alle Floriline gerelateerde data. Florishop wordt
> geïnstalleerd op de webserver.
>
> Een image is een volledige kopie van Windows, drivers, software en
> Florisoft. (een complete software configuratie)
>
> <u>Onderdeel 2:</u> Florishop (De PDA omgeving die draait in een
> browser of op de Zebra) instellen.

<u>Onderdeel 3:</u> Hardware installeren.

## Workflow software onderdelen Floriline

<img src=".Basishandleiding Floriline NL\media\image3.PNG" style="width:10.23758in;height:5in" alt="Dia4" />

De Systeemgebruiker levert middels een koppeling Verkoop Functionaliteit
aan een Verkoper (lijnrijder). Dit betekent dat de Systeemgebruiker
bepaalt welke verkopers (vaak heeft een klant meerdere lijnen) er zijn.
De debiteur (klant) is gekoppeld aan verkoper middels autorisatie.

De verkoper heeft op zijn beurt toegang tot een Debiteur Groep (groep
van klanten die bediend worden door de betreffende verkoper).

De Debiteur Groep kan gevuld worden vanuit het hoofdsysteem.

In de Debiteur Groep zitten meerdere debiteuren. In dit voorbeeld de
debiteuren A, B en C.

Voor iedere individuele klant kunnen de voorraad/partijen geïmporteerd
worden vanuit het hoofdsysteem.

Vervolgens worden de aankopen van een debiteur door geboekt vanuit
Florishop. Dit gebeurt wanneer een klant een product koopt. Er wordt dan
een factuur binnen de Floriline database aangemaakt. Deze kan op zijn
beurt weer doorgestuurd worden naar het hoofdsysteem.

In de verdere ontwikkeling moet het mogelijk worden om een Verkoper
laten wisselen van debiteurgroep. Dit is standaard nog niet mogelijk
alleen via een ingewikkelde procedure.

De koppeling tussen de verschillende componenten bestaat uit drie
soorten synchronisaties:

Voorraadkoppeling (CSV (SQL), bestellijstkoppeling en debiteurenimport
op basis van CSL (SQL).

#  2 Acties binnen Florishop

Dit hoofdstuk beschrijft een aantal acties die een gebruiker voor handen
heeft bij het gebruik van Florishop (frontend). Dit is de webshop die
draait op de handterminal of in een webbrowser. De volgende acties
worden beschreven: inloggen, verdelen/retourneren.

> <u>Actie 1:</u> Inloggen met de (systeem)gebruiker en een klant
> (debiteur) kiezen vanuit de Zoeken lijst.

<img src=".Basishandleiding Floriline NL\media\image4.png" style="width:2.54202in;height:4.27143in" />

Selecteer een klant uit de keuzelijst of gebruik het zoekveld om snel
een klant te selecteren.

> <u>Actie 2</u>: Producten aan de winkelwagen toevoegen (verdelen) en
> deze eventueel kopen.
>
> <img src=".Basishandleiding Floriline NL\media\image5.png" style="width:2.55814in;height:2in" />  
> Voeg producten toe aan de winkelwagen of kies ervoor om producten te
> retourneren.

<u>  
</u>

> <u>Actie 3:</u> Niet verkochte producten kunnen retour geboekt worden.
>
> <img src=".Basishandleiding Floriline NL\media\image6.png" style="width:5.61621in;height:2.47674in" />
>
> Retour functionaliteit is aanwezig om niet verkochte artikelen terug
> te boeken in de voorraad.
>
> <u>Actie 4:</u> Verdeling doorboeken vanuit de winkelwagen en
> printen/mailen. Hier wordt de bestaande doorboeken-functie in
> Florisoft voor gebruikt. Er komt ook nog een naamoptie bij. Dit zorgt
> er voor dat de klantnaam op de factuur geprint wordt
>
> .<img src=".Basishandleiding Floriline NL\media\image7.png" style="width:3.5625in;height:4.51841in" />
>
> Scherm voor het aanmaken van een factuur. Klant heeft de mogelijkheid
> om een handtekening toe te voegen. Deze wordt mee geprint op de
> factuur.
>
> <u>Actie 5:</u> Facturen per mail exporteren naar het hoofdsysteem.
>
> <u>Actie 6:</u> Debiteuren en voorraden importeren vanuit het
> hoofdsysteem (dia 9).
>
> Bij importeren gemailde data wordt ook de functie VoorraadKoppeling
> uitgevoerd. Dit zorgt er voor dat de up to date voorraad ingeladen
> wordt.

# 3 Acties binnen de backend

Ook de backend kent een aantal mogelijkheden met betrekking tot
Floriline. Deze mogelijkheden worden in dit hoofdstuk besproken.

> <u>Actie 1:</u> Importeren van de verstuurde lijn facturen.
>
> In het scherm Handterminal kiezen voor Terminal uitlezen -&gt; scherm
> Uitlezen handterminal -&gt; Lijncode kiezen -&gt; Na het importeren
> komen de lijnfacturen netjes in de facturenbak van het hoofdsysteem
> terecht.

<img src=".Basishandleiding Floriline NL\media\image8.png" style="width:7.05208in;height:1.74584in" />

> In de groep leeft de vraag of deze actie ook gelogd gaat worden in de
> toekomst. Dit kan van belang zijn voor het leveren van support, bijv.
> bij dubbele facturatie.
>
> <u>Actie 2:</u> Vanuit de backoffice kan er verschillende soorten data
> geëxporteerd worden naar de frontend. (bv. Debiteuren)

<img src=".Basishandleiding Floriline NL\media\image9.png" style="width:7.03774in;height:2.02135in" />

> In het scherm Handterminal kiezen voor Terminal vullen -&gt; scherm
> Vullen handterminal -&gt; Lijncode kiezen -&gt; Na het exporteren
> wordt er een .zip aangemaakt die gemaild wordt. De data in deze .zip
> kan vervolgens ingelezen worden binnen de betreffende lijn.
>
> <u>Actie 3:</u> Klaarzetten van voorraden op basis van de koppelingen
> met het Floriline systeem.
>
> Er zijn altijd twee voorraden: een verkoop voorraad en een retour
> voorraad. De verkoop voorraad is de voorraad in de vrachtwagen,
> bestemd voor de verkoop. De retour voorraad is de voorraad die de lijn
> weer mee terug neemt. Deze kan vervolgens weer teruggeboekt worden in
> de voorraad.
>
> **Let op: er dienen altijd twee voorraden in de backoffice aangemaakt
> te worden. Eén voor de verkoop voorraad en een voor de retour
> voorraad.**

**  
**

# 4 Standaard configuratie

De standaardconfiguratie beschrijft de standaardinstellingen die nodig
zijn voor het standaard functioneren/uitleveren van Floriline zoals door
ons ontwikkeld. Uiteraard kan hier vanaf geweken worden inzake
specifieke klantwensen. Een aantal van deze standaardinstellingen
bestaat uit het instellen van verkoper, klanten, voorraden, systeem
instellingen, webshop instellingen en modulen. In dit hoofdstuk lees je
meer over deze instellingen.

## 4.1 Verkoper instellingen

> <u>Actie 1:</u> Beginnen met koppelen van de juiste verkoper. Deze is
> te selecteren in het venster Systeemgebruikers: Constanten -&gt;
> Tabellen -&gt; Systeem -&gt; Systeemgebruikers.
>
> <img src=".Basishandleiding Floriline NL\media\image10.png" style="width:5.3125in;height:3.31424in" />
>
> Verkopers zijn aan te maken in het volgende venster: Constanten -&gt;
> Tabellen -&gt; Organen -&gt; Verkopers.
>
> <img src=".Basishandleiding Floriline NL\media\image11.png" style="width:0.39583in;height:0.39583in" />

<u>  
</u>

> <u>Actie 2:</u> Een Verkoper is altijd op basis van een debiteurgroep.
> De koppeling tussen de Verkoper en de debiteurgroep is te maken in de
> eigenschappen van de Verkoper (dubbel klikken op de betreffende
> verkoper).
>
> <img src=".Basishandleiding Floriline NL\media\image12.png" style="width:4.73958in;height:3.30955in" />
>
> Naast het koppelen van Verkoper aan een debiteurgroep, moeten er ook
> op het tabblad Webshop nog een aantal instellingen gemaakt worden:

<img src=".Basishandleiding Floriline NL\media\image13.png" style="width:4.75in;height:3.31682in" />

> Kies op het tabblad Webshop de betreffende debiteur in het uitklapmenu
> ‘Op basis van debiteur’. Hiermee krijgt de huidige verkoper (in dit
> geval TEST) in beginsel dezelfde eigenschappen in relatie tot de
> webshop als de geselecteerde debiteur.
>
> Zoals eerder beschreven is een Verkoper altijd op basis van een
> debiteur, die op zijn beurt binnen een debiteurgroep valt. Hierdoor
> zijn de volgende gegevens inzichtelijk:
>
> *Verkoper -&gt; Debr., zoeksleutel en bedrijfsnaam*
>
> Deze relatie zorgt ervoor dat de verkoper gekoppeld zit aan een
> debiteur (werkgever/opdrachtgever). De zoeksleutel zorgt ervoor dat de
> verkoper makkelijker gevonden kan worden. De bedrijfsnaam staat voor
> de naam van het bedrijf waar de verkoper in dienst is.

*  
*

> *Financiële administratie ({LIJNNR}000000)*
>
> Deze instelling is bedoeld voor de financiële administratie en is als
> volgt opgebouwd:
>
> ({LIJNNR}000000).
>
> {LIJNR} = het lijnnummer uit het systeem, 00 = dag, 00 = maand en 00 =
> jaar
>
> De koppeling tussen Verkoper en debiteur zorgt er voor dat de Verkoper
> toegang heeft tot de webshop, voorraden en vereiste modulen.

## 4.2 Klant instellingen

Klanten binnen de database hebben de volgende eigenschappen:

> Het kenmerk van voor de financiële administratie (zie hierboven).
>
> Klanten hebben toegang tot de webshop, voorraden en de vereiste
> modulen.
>
> Klanten zijn lid van de debiteurgroep die gekoppeld staat aan de
> verkoper.
>
> De layout(s) die gebruikt worden binnen Floriline. De klant heeft één
> of meerdere layouts.  
> Bij meerdere layouts kan de klant kiezen. Er kan echter maar één
> layout tegelijk actief zijn.
>
> De standaard lijncode.

## 4.3 Klant instellingen vanuit een import

Om alle klanten in één keer op te nemen in de database wordt gebruik
gemaakt van een import. Hier zijn specifieke instellingen aan verbonden.
Een beschrijving van deze instellingen is hieronder terug te vinden.

> Celtis debiteur (default = FLFS1) als DefaultDebiteurCeltis(2). Dit
> ziet er als volgt uit:
>
> <img src=".Basishandleiding Floriline NL\media\image14.png" style="width:5.19792in;height:1.17623in" />
>
> De configuratie van klanten dia via een import ingeladen worden hebben
> dezelfde kenmerken als beschreven onder de kop ‘Klanten binnen de
> database’ i.c.m. de instelling ‘Deze Debiteur is een Template voor
> nieuwe Debiteuren’.

## 4.4 Voorraad instellingen

Er zijn binnen Floriline altijd twee voorraden. Een LIJNVE-voorraad en
een LIJNRE-voorraad. De LIJNVE-voorraad is de verkoopvoorraad. Deze
voorraad bevindt zich in de vrachtwagen. De LIJNRE-voorraad is de
retourvoorraad. Dit zijn artikelen die mee terug komen. Deze artikelen
kunnen later eventueel weer teruggeboekt worden naar de voorraad.

Beide voorraden hebben een logische omschrijving zodat ze duidelijk van
elkaar te onderscheiden zijn. Daarnaast dienen beide voorraden altijd
open te staan op de webshop.

Voor de retourvoorraad (LIJNRE) moet het volgende ingesteld worden:

<img src=".Basishandleiding Floriline NL\media\image15.png" style="width:6.53194in;height:5.93403in" />

Dit is nodig om de juiste verdeling op de factuur te krijgen.

**Let op: de retourvoorraad dient altijd gekenmerkt te worden als zijnde
een retourvoorraad (zie bovenstaande afbeelding).**

Per tijdseenheid worden de twee voorraden gesynchroniseerd.

## 4.5 Systeeminstellingen

De systeeminstellingen zijn instellingen nodig om het systeem juist te
laten functioneren. Het gaat om de volgende instellingen:

-   DefaultDebiteurCeltis

-   FlorilineSysteem

-   PublishFlorilineVisible (indien werkend met bestellijsten)

<!-- -->

-   Webshop3Map

-   Webshop3URL

-   FloriShopDownloads

## 4.6 Webshop instellingen

Deze instellingen zijn nodig om de webshop goed te laten werken:

-   FlorilineFuncties = Inschakelen van de Floriline werkwijze zoals
    > beschreven in deze documentatie.

-   FlorilineBackend = Pad naar FSNET directory.

-   FlorilineBetalen = In- of uitschakelen betaalmethodes bij
    > doorboeken.

-   Floriline(Factuur/Paklijst)Layout = Standaard layout printen/mailen.

-   FloriLijnCode = Lijncode voor exports.

-   FlorilineFust = In- of uitschakelen van fust functionaliteiten.

-   FlorlinePrinter = Printernaam voor versturen van opdrachten.

-   FlorilineUser = Backend user voor uitvoeren acties.

-   Floriline(Retour)PartijAanmaken = Mogelijkheid om een nieuwe partij
    > toe te mogen voegen.

-   FlorilineFinAdminOvernemen = Mogelijkheid om een accountmanager over
    > te nemen.

## 4.7 Modulen

Florisoft is opgebouwd uit verschillende modules. Een combinatie van
deze modules is verplicht binnen een bepaalde use case. Hieronder een
overzicht van alle minimaal benodigde modules voor een juiste werking
van Floriline.

-   Toevoer vanuit het hoofdsysteem

**Module**: Bestel/Voorraad Component (E-trade) via de server.

-   Ontvangst binnen Floriline

> **Module:** Client Bestel/Voorraad Component (E-trade)

-   Standaard Windows single/multi user installatie (Windows 10)

-   Koppeling met de handterminal van de lijnrijders

-   Florishop

# 5 Import/export processen

Floriline communiceert op verschillende manieren met het hoofdsysteem
(Florisoft). Tijdens dit communicatieproces wordt er verschillende
soorten data over en weer gestuurd. Dit heet im- en exporteren. In dit
hoofdstuk worden de instellingen met betrekking tot im/exporteren
beschreven. Hieronder zijn alle mogelijkheden schematisch weergegeven:

> **Importeren**
>
> **  
> **Het hoofdsysteem importeert gegevens vanuit Floriline.
>
> **  
> **Floriline importeert gegevens vanuit het hoofdsysteem.
>
> **Exporteren**
>
> **  
> **Het hoofdsysteem exporteert gegevens naar Floriline.
>
> **  
> **Floriline exporteert gegevens naar het hoofdsysteem.

## 5.1 Instellingen Gmail

Om het im- en exportproces te faciliteren wordt gebruik gemaakt van een
standaard Gmail account.

> De primaire mailbox is bestemd voor Floriline. De secundaire mailbox
> is bestemd voor het hoofdsysteem.
>
> Alle lijnen kunnen verwerkt worden in één mailbox omdat de software
> gebruik maakt van de lijncode en het volgnummer in de omschrijving.
>
> Bij Gmail moeten de volgende instellingen doorgevoerd worden.
>
> <img src=".Basishandleiding Floriline NL\media\image16.png" style="width:6.45522in;height:2.90278in" />
>
> Op het tabblad ‘Doorsturen en POP/IMAP’, zorg ervoor dat bij punt ‘1.
> Status POP is ingeschakeld voor alle e-mail’ de tekst ‘POP is
> ingeschakeld’ groen is. Zoals in bovenstaande afbeelding.
>
> Bij punt 2 ‘Wanneer berichten worden geopend met POP’ kies je voor
> Gmail-kopie verwijderen in het drop down-menu.
>
> Bij het onderdeel ‘IMAP toegang’ kiezen voor ‘IMAP uitschakelen’.
>
> Als laatste moet er een beveiligingsinstelling gewijzigd worden in de
> instellingen van Gmail. Het gaat om de volgende instelling:
>
> <img src=".Basishandleiding Floriline NL\media\image17.png" style="width:5.07362in;height:1.46895in" />
>
> Deze is als volgt te vinden:

1.  Inloggen bij Gmail met het betreffende account

2.  Klik op de accountafbeelding in de rechterbovenhoek van het
    > scherm.<img src=".Basishandleiding Floriline NL\media\image18.png" style="width:1.59397in;height:0.60425in" />

3.  Klik in het gedeelte ‘Inloggen en beveiliging’ op ‘Apps met toegang
    > tot uw account’

> <img src=".Basishandleiding Floriline NL\media\image19.png" style="width:1.96875in;height:3.5771in" />

1.  In het middelste scherm, is rechts onderin de betreffende switch te
    > zien.

<img src=".Basishandleiding Floriline NL\media\image17.png" style="width:5.07292in;height:0.53125in" />

Nu moeten de instellingen van Gmail doorgevoerd worden in Florisoft.
Volg hiervoor onderstaande stappen:

1.  Kies in de Navigator -&gt; Rechtsklikken op Terminal Lijnrijders
    -&gt; Setup E-mail. Het volgende venster opent. Gebruik voor
    Floriline gebruik altijd ‘Van Florisoft naar Extern’.

> <img src=".Basishandleiding Floriline NL\media\image20.png" style="width:3.64538in;height:3.4375in" />
>
> Dit venster dient voor twee omgevingen ingesteld worden: de Floriline
> omgeving en het hoofdsysteem.
>
> Instellingen voor de Floriline omgeving: Instellingen voor het
> hoofdsysteem:
>
> <img src=".Basishandleiding Floriline NL\media\image21.png" style="width:3.38253in;height:3.82292in" /><img src=".Basishandleiding Floriline NL\media\image22.png" style="width:2.94792in;height:3.31437in" />
>
> **Let op: bovenstaande instellingen zijn bezien vanuit een Gmail
> mailbox. Mocht er in de toekomst evt. een andere (mail)oplossing
> gebruikt gaan worden voor het im-/exporteren, dan vervallen
> bovenstaande instellingen.**

De E-mailinstellingen dienen per gebruiker ingevoerd te worden in het
hoofdsysteem.

## 5.2 Vullen handterminal

Het vullen van de handterminal met data vanuit het hoofdsysteem gaat als
volgt:

> <img src=".Basishandleiding Floriline NL\media\image23.png" style="width:2.88611in;height:4.14097in" />Klik
> in de Navigator op ‘Terminal lijnrijders’ -&gt; kies ‘Terminal vullen’
> -&gt; Klik op ‘Ok’ opent het volgende venster:

<table>
<thead>
<tr class="header">
<th><strong>optie</strong></th>
<th><strong>beschrijving</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1. Lijncode</td>
<td>Vul hier de lijncode van de betreffende lijn in.</td>
</tr>
<tr class="even">
<td>2. FloriLijn Mail</td>
<td>Deze instelling koppelt de mailinstellingen<br />
(zie vorige pagina) aan deze functie (Vullen handterminal).</td>
</tr>
<tr class="odd">
<td>3. Setup</td>
<td>Opent het scherm ‘Export setup’ (zie onder)</td>
</tr>
</tbody>
</table>

<img src=".Basishandleiding Floriline NL\media\image24.png" style="width:2.46875in;height:2.57222in" />

<table>
<thead>
<tr class="header">
<th><strong>optie</strong></th>
<th><strong>beschrijving</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1. Export pad</td>
<td>Vul hier de lijncode van de betreffende lijn in.</td>
</tr>
<tr class="even">
<td>2. Export SQL bestand</td>
<td>Deze instelling koppelt de mailinstellingen (zie vorige pagina) aan deze functie (Vullen handterminal).</td>
</tr>
<tr class="odd">
<td>3. Gekoppelde lijnen</td>
<td>Vink hier alle lijnnummers aan die – naast het gekozen lijnnummer - gevuld moeten worden. Deze lijnen moeten wel gekoppeld zijn aan de huidige gebruiker.</td>
</tr>
</tbody>
</table>

> De paden zoals ingevuld bij ‘Export pad’ en ‘Export SQL bestand’ zijn
> statisch. Dit betekent dat de waarden van deze velden altijd hetzelfde
> zijn. Het Export SQL bestand is een \*.ini bestand. In dit bestand
> staan query’s die de benodigde gegevens uit de database halen alvorens
> deze naar de terminal sturen.
>
> **Export pad:**
> C:\\Shared\\DataAdt\\Floriline\\verzendenvanfloriline\\Files  
> Map waar de bestanden worden geplaatst alvorens ze te versturen naar
> de terminal.
>
> **Export SQL bestand:  
> **C:\\Shared\\DataAdt\\Floriline\\verzendenvanfloriline\\Scripts\\Florilijn
> 1 ophalen data.txt  
> Dit script zoekt de benodigde gegevens op in de database die verzonden
> worden naar de terminal.
>
> **Let op: .ini-bestanden altijd centraal houden. Dit is standaard en
> moet voor een juiste werking van Floriline ook zo blijven. Ook het
> Export pad is altijd hetzelfde.**

## 5.3 Uitlezen handterminal

De gegevens van de handterminal kunnen uitgelezen en ingevoerd worden in
de database. Voer hiervoor de volgende stappen uit:

> <img src=".Basishandleiding Floriline NL\media\image25.png" style="width:3.26042in;height:2.49097in" />In
> de Navigator -&gt; kies ‘Terminal uitlezen’ -&gt; Klik op ‘Ok’ opent
> het volgende venster:

<table>
<thead>
<tr class="header">
<th><strong>optie</strong></th>
<th><strong>beschrijving</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1. Lijncode</td>
<td>Vul hier de lijncode van de betreffende lijn in.</td>
</tr>
<tr class="even">
<td>2. FloriLijn Mail</td>
<td>Deze instelling koppelt de mailinstellingen aan deze functie (Uitlezen handterminal).</td>
</tr>
<tr class="odd">
<td>3. Setup</td>
<td>Opent het scherm Win_ImportSetup setup’ (zie onder).</td>
</tr>
</tbody>
</table>

> <img src=".Basishandleiding Floriline NL\media\image26.png" style="width:5.70964in;height:1.4434in" />

<table>
<thead>
<tr class="header">
<th><strong>optie</strong></th>
<th><strong>beschrijving</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1. Import pad</td>
<td>Map waaruit de bestanden ingelezen worden naar de backoffice.</td>
</tr>
<tr class="even">
<td>2. Import SQL bestand</td>
<td>Verwijzing naar mogelijke scripts die worden uitgevoerd bij het importeren.</td>
</tr>
<tr class="odd">
<td>3. Tijdelijke tabellen map</td>
<td>Map waar de bestanden vanuit mails in worden gedownload.</td>
</tr>
</tbody>
</table>

# 6 Hardware

Floriline kent een aantal hardware componenten om het systeem te laten
functioneren. Hieronder wordt deze hardware nader toegelicht. Belangrijk
om te vermelden is het feit dat Floriline volledig hardware
onafhankelijk kan werken. Dit betekent dat er geen merk-specifieke
hardware benodigd is. Daarom kan het zo zijn dat onderstaande apparaten
in de toekomst anders kunnen zijn. Dit verandert niets aan de basis
configuratie met betrekking tot de hardware.

> **Terminal (Standaard is dit een Zebra TC series)**
>
> Dit is het apparaat waar mee de verkoper de verkochte producten kan
> registeren. De terminal heeft een SIM-kaart aan boord voor
> communicatie met de printer en de rest van het systeem.
>
> **Floriline PC**
>
> Dit is een compacte (shuttle) PC gemonteerd op de printer. Hierop
> draaien: Windows, de database en webserver.
>
> **Printer**
>
> De printer is een apparaat met specifieke eigenschappen die het
> apparaat geschikt maakt voor langdurig gebruik onderweg.
>
> **Router (Standaard is dit een Teltonika RUT950)  
> **De router zorgt ervoor dat de terminal printopdrachten naar de
> printer kan sturen. Verder bezit de router twee SIM-kaarten. Iedere
> SIM-kaart is gekoppeld aan een aparte provider. Werkt de ene provider
> niet, dan kan men terugvallen op een tweede provider gekoppeld aan de
> andere SIM.
>
> **Omvormers/accu’s  
> **De voeding voor het systeem komt uit de vrachtwagen zelf. De
> standaardspanning van vrachtwagens (24V gelijkstroom) is echter niet
> geschikt om de hardware van stroom te voorzien. Daarom moet er een
> omvormer tussen geplaatst worden voor de juiste soort spanning (220V
> wisselspanning). Bij gebruik van een omvormer moet de motor van de
> vrachtwagen blijven draaien om spanning op het systeem te houden.
>
> Sommige klanten hebben geen mogelijkheid om een omvormer te gebruiken.
> Daarom bieden we ook de mogelijkheid om het systeem aan te sluiten op
> een accu. Met deze accu is het mogelijk om het systeem een nacht over
> operationeel te houden.
>
> De accu kan opgeladen worden via het stroomnet of via de
> sigarettenaansluiting in de cabine of aanhanger/bak.
>
> **Let op: de klant kiest voor een omvormer of accu-oplossing. Een
> combinatie is technische niet mogelijk. Dit moet zowel intern als naar
> de klant duidelijk gecommuniceerd worden.**
>
> Soti (zal gebruikt worden) wordt gebruikt om op afstand in te loggen
> op de apparatuur. Deze software heeft tot doel om support mogelijk te
> maken.

# 7 Toekomstige ontwikkelingen

Op het moment van schrijven (december 2017) leven de volgende ideeën
m.b.t. het doorontwikkelen van Floriline.

> **Verkoop uit Assortiment  
> **Hierbij wordt een koppeling gemaakt met de bestellij**s**t(en)
> i.p.v. rechtstreeks verkopen van partijen uit de voorraad.
>
> **Retouren kunnen invoeren op basis van historische orders  
> **Het verkochte partijnummer wordt hierbij gelinkt aan de retouren.
> Dit heeft als voordeel dat er beter inzicht is qua cijfers.
>
> **Automatiseren Floriline Basis Configuratie  
> **Het softwarematig automatiseren van de verschillende handelingen
> zoals beschreven in deze handleiding op basis van een aantal in te
> voeren gegevens. Dit houdt in dat alle handelingen die nodig zijn voor
> het inrichten van een basisconfiguratie met één druk op de knop
> uitgevoerd worden. Specifieke klantwensen kunnen vervolgens handmatig
> doorgevoerd worden.
