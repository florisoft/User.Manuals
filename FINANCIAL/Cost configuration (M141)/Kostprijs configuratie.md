# Inhoud

[Licentie 3](#licentie)

[Debiteur instellen 4](#debiteur-instellen)

[Verdeel debiteur 4](#verdeel-debiteur)

[Kostprijs debiteur 4](#kostprijs-debiteur)

[Labels 4](#labels)

[Marge 6](#marge)

[VERDPRSLOG-tabel 6](#verdprslog-tabel)

[Prijsmonitor tabel 6](#prijsmonitor-tabel)

[Structuur 6](#structuur)

[Opschonen 6](#opschonen)

[Prijsconfiguratie instellen 6](#prijsconfiguratie-instellen)

[Opslagen van 7](#opslagen-van)

[Over de basisprijs 7](#over-de-basisprijs)

[Laatste kostprijs stap 7](#laatste-kostprijs-stap)

[Inklappen 7](#inklappen)

[Kolom Kostprijs 8](#kolom-kostprijs)

[Voorraad 8](#voorraad)

[Televerkoop 9](#televerkoop)

[Verdeelscherm 10](#verdeelscherm)

[Webshop cache 11](#webshop-cache)

[Cache overzicht 11](#cache-overzicht)

[Afwijkende voorraad 11](#afwijkende-voorraad)

[Toegankelijke voorraden opslag 11](#toegankelijke-voorraden-opslag)

[Uitloggen 11](#uitloggen)

[Overige informatie 12](#overige-informatie)

# Licentie

Om gebruik te maken van deze module, dient de licentie:
“Kostprijsconfiguratie” actief te zijn.  
<img src=".Kostprijs configuratie\media\image1.png" style="width:6.3in;height:4.85278in" />

# Debiteur instellen

## Verdeel debiteur

Bij deze debiteur kunnen er een x aantal debiteuren opgegeven worden,
waarvan de opslagen gebruikt gaan worden om de kostprijs te kunnen
berekenen. Deze debiteur kunnen ingesteld worden onder Financieel &gt;
Kostprijs.<img src=".Kostprijs configuratie\media\image2.png" style="width:6.3in;height:5.47014in" />

## Kostprijs debiteur

Hier stellen we de opslagen in die gebruikt zullen worden voor het
berekenen van de kostprijs prijs. Hier zijn verder geen instellingen van
toepassing, dit kan net zo goed een debiteur zijn met instellingen voor
een normale prijsconfiguratie.

# Labels

De kostprijs debiteuren staan standaard aangegeven als Debiteur 1 t/m
&lt;x&gt;. Deze teksten kunnen vervangen worden door eigen verzonnen
teksten. De teksten kunnen opgegeven worden in de constanten onder
Systeem -&gt; Kostprijsconfiguratie omschrijvingen. Per nummer kan er
een eigen omschrijving opgegeven worden.

<img src=".Kostprijs configuratie\media\image3.png" style="width:3.1791in;height:3.44019in" />

Na het instellen van deze teksten, zal er bij de “verdeel debiteur” de
opgegeven omschrijvingen zichtbaar zijn.

<img src=".Kostprijs configuratie\media\image4.png" style="width:5.73275in;height:4.97761in" />

# Marge

Bij de optie Financieel -&gt; Kostprijs van de debiteur, kan er een
marge ingesteld worden. Deze marge zal na het berekenen van de kostprijs
controleren of deze behaald is ten opzichte van de partij zijn
verkoopprijs. Indien de marge niet behaald is, dan zal dit weggeschreven
worden in de tabel PRIJSMONITOR.

Dit wordt bijgehouden omdat er verder geen controle is op de kostprijs
en dus moeilijk te bepalen valt of de kostprijs daadwerkelijk correct
is. De gebruiker zou bijv. een dashboard control kunnen maken om deze
tabel in te tonen.

# VERDPRSLOG-tabel

Aan deze tabel zijn 2 nieuwe kolommen toegevoegd:

-   OPSLVAN (geeft ingestelde waarde aan van “Opslagen van” van de
    prijsconfiguratie)

-   OPDEBNR (de ingestelde debiteur van de waarde OPSLVAN)

Voorbeeld; bij een stap heb ik ingesteld staan bij Opslagen van:
Kostprijs debiteur 1 waarbij gevuld staat TEST. Dan zal er in de kolom
OPSLVAN: 7 gevuld zijn en bij OPDEBNR: TEST.

# Prijsmonitor tabel

## Structuur

In de tabel wordt bijgehouden voor welke partij bij welke debiteur de
behaalde marge niet behaald is. Daarbij zijn de volgende gegevens
beschikbaar:

-   Basisprijs (verkoopprijs van de partij)

-   Berekendeprijs (uitkomst van de prijs)

-   Type (geeft aan of het gaat om de kostprijs (2) of verkoopprijs (1))

-   Margebehaald (berekende marge)

-   Margeingesteld (ingestelde marge bij de debiteur)

-   Created (datum + tijd van het aanmaken van het record)

## Opschonen

In de constanten, onder Systeem -&gt; Tabellen opschonen, kan de
prijsmonitor tabel ingesteld worden om op te schonen. De gebruiker kan
zelf aangeven na hoeveel dagen dit verwijderd dient te worden. Indien
ingesteld, zal na de volgende update en purge de tabel voorzien worden
van een DELETED index.

# Prijsconfiguratie instellen

Bij de prijsconfiguratie zijn er een aantal instellingen die toegepast
moeten worden om de kostprijs te berekenen.

## Opslagen van

Hier kan gekozen worden voor de kostprijs debiteuren 1 t/m &lt;x&gt;.
Indien ingesteld, zal er bij het toepassen van deze stap gecontroleerd
worden of er een afwijkende debiteur ingevuld is, alleen dan zal er
gewisseld worden van debiteur en de opslagen daarvan te gebruiken. Voor
de kostprijsberekening wordt er aangeraden dat de “Manier van opslag”
ingesteld wordt op “Over de basisprijs heen”.

## Over de basisprijs

Per prijsconfiguratiestap kan deze optie aangevinkt worden. Deze optie
zorgt ervoor dat de opslag van de stap altijd berekend wordt over de
basisprijs stap.

## Laatste kostprijs stap

Met deze instelling wordt aangegeven wat de laatste stap is van de
kostprijs. De opslagen van deze stap worden toegepast en de kostprijs
wordt onthouden en weggeschreven.

## Inklappen

De prijsconfiguratie kan met het inklappen van de stappen een
simplistische weergave geven. Deze weergave is aangepast, dit zal nu
gegroepeerd worden per Opslagen van. Dit veranderd niks in de volgorde
van de stappen en is puur visueel.

# Kolom Kostprijs

## Voorraad

De kolom “Kost pr. deb” kan toegevoegd worden aan het grid van de
voorraad. Deze kolom zal standaard leeg zijn met een groene achtergrond
kleur.
<img src=".Kostprijs configuratie\media\image5.png" style="width:6.3in;height:4.32153in" />

Middels de D-toets kan er een debiteur geactiveerd worden (net als de
debiteur kolommen). Na het activeren van een debiteur, zal de kostprijs
berekend en getoond
worden.<img src=".Kostprijs configuratie\media\image6.png" style="width:6.3in;height:4.32153in" />

## Televerkoop

De kolom “Kost prijs” heeft dezelfde werking als in de voorraad, echter
hoeft hier geen debiteur geactiveerd te worden middels de D-toets. Deze
kolom zal gevuld worden na het activeren van een debiteur waaraan
verdeeld zal worden.
<img src=".Kostprijs configuratie\media\image7.png" style="width:6.3in;height:4.425in" />

## Verdeelscherm

Na het invoeren van een verdeling via het verdeelscherm zal ook hier de
kolom Kostprijs gevuld worden met de berekende
kostprijs.<img src=".Kostprijs configuratie\media\image8.png" style="width:6.3in;height:3.51736in" />

# Webshop cache

De ingestelde kostprijs debiteuren zullen een nieuwe manier van caching
hanteren in de webshop. Na het inloggen van de klant zullen alle
opslagen van de ingestelde kostprijs debiteuren gecached worden.
Hiervoor is gekozen zodat het invoeren van een koop minder belast wordt
en hierdoor de performance niet achteruit zal gaan.

## Cache overzicht

Er is een pagina toegevoegd aan de webshop, deze pagina laat een
overzicht zien van de cache, hoe lang het cachen duurde en hoeveel
regels er in de cache aanwezig zijn.

Voor de webshop 2 kan de URL aangepast worden naar
&lt;webshop2url&gt;/OpslagCache.aspx.

Voor de mystyle kan de URL aangepast worden naar
&lt;mystyleurl&gt;/Settings en dan de optie opslagcache aan de
linkerkant (wip)

## Afwijkende voorraad

Bij de voorraad kan er een afwijkende voorraadcode ingesteld worden,
deze voorraad code zal gebruikt worden bij de stappen: DEBINETV,
DEBINETVP en DEBINETVA. Indien gevuld, dan zal deze voorraadcode
gebruikt worden om de toegankelijke voorraad opslagen te bepalen i.p.v.
de voorraad waaruit de debiteur koopt.

## Toegankelijke voorraden opslag

Van de ingestelde kostprijs debiteuren zullen de toegankelijke voorraad
opslagen, toegankelijke voorraad productgroep opslagen en de
toegankelijke voorraad artikelgroep opslagen gecached worden. Enkel de
records die een percentage of cent/bedrag gevuld hebben zullen gecached
worden. Hiervoor zijn aan de tabellen DEBINETV, DEBINETVP en DEBINETVA
voorzien van een nieuwe index, zodat de informatie snel beschikbaar is.

Deze cache zal de prijsconfiguratie bij het berekenen van de prijzen
gebruiken, indien de stappen aanwezig zijn in de prijsconfiguratie.
Indien de stap geen opslag kan vinden van een debiteur in de cache, dan
zal de stap zelf de opslag opzoeken en cachen (deze situatie is van
toepassing voor de ingelogde klant, deze opslagen zitten niet in de
nieuwe cache).

## Uitloggen

Nadat de klant uitlogt van de webshop, zal er gecontroleerd worden of de
kostprijs debiteuren nog in gebruik zijn bij andere ingelogde debiteuren
van de webshop. Mochten er een x aantal niet meer van toepassing zijn,
dan zullen deze kostprijs debiteuren uit de cache verwijderd worden.

Voorbeeld:  
Klant A logt in met kostprijs debiteuren: TESTA, TESTB en TEST C

Klant B logt in met kostprijs debiteuren: TESTC, TESTD en TESTX.

In de cache zullen alle kostprijs debiteuren aanwezig zijn. Nadat Klant
A uitlogt van de shop, zullen enkel nog TESTC, TESTD en TESTX
beschikbaar zijn in de cache.

# Overige informatie

Na het doorboeken van een verdeling, zal de kostprijs overgenomen worden
naar de factuurregel. En na het doorboeken van een factuur zal de
kostprijs beschikbaar zijn bij de historische factuurregel.

Kostprijs kan niet handmatig aangepast worden.

Indien de verkoopprijs aangepast wordt van een verdeling, dan zal dit nu
ook gelogd worden in de VERDPRSLOG-tabel. Met als type
HandmatigAangepastInVoorraadVerdeelLijst,
HandmatigAangepastInVoorraadCTRLBLijst,
HandmatigAangepastInTeleverkoopLijst en/of HandmatigAangepastInFactuur.
