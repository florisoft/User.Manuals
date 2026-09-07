![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – EntryControl (Receiving App)

## Inleiding

Met **EntryControl** registreert een logistiek medewerker inkomende artikelen op een mobiel apparaat. De medewerker identificeert een verwacht artikel met een barcode of zoekt het handmatig op, controleert de artikelgegevens en registreert de volledig of gedeeltelijk ontvangen hoeveelheid. Tijdens de verwerking kan Florisoft verdeel- en pickorderstickers afdrukken.

De workflow wordt met policies ingericht. Daarmee bepaalt u onder andere de actieve inslagzone, beschikbare voorraden, zichtbare zoekfilters en de printer- en labelinstellingen.

Deze handleiding beschrijft de actuele gebruikersstappen en licht bij iedere stap toe welke policies het gedrag bepalen.

---

## Licentievereisten en benodigdheden

Voor EntryControl zijn minimaal nodig:

- toegang tot de Florisoft **Receiving App**;
- toegang tot de usecase `Logistics.Receiving.EntryControl`;
- een geldige medewerker;
- een ingerichte box of inslagzone met verwachte inkomende artikelen;
- een scanner of camera voor de scanflow;
- voor printacties: een ingestelde printer, verdeelstickerlay-out en een bereikbare printvoorziening.

De Receiving App toont EntryControl alleen wanneer de gebruiker volledige toegang tot de usecase heeft. Als nog geen medewerker bekend is, vraagt Florisoft bij het starten om een medewerker te identificeren. De verwerking wordt daarna met deze medewerker uitgevoerd.

## Waar vindt u de policies?

Open in de Backoffice het **constantenscherm** en ga via **Systeem → Users → Policy Beheer** naar **Apps → Logistics → Receiving → EntryControl**. De instellingen voor de verwerking en labels staan in de onderliggende groep **ProcessInboundItem**.

Meer informatie over het maken, koppelen en prioriteren van policies staat in de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

> Test een gewijzigde inrichting eerst met een aparte testpolicy, een representatieve inslagzone en de bedoelde printer. De ontvangst kan administratief al verwerkt zijn wanneer Florisoft daarna meldt dat de printer of lay-out ontbreekt.

---

## Het EntryControl-proces in het kort

1. Open de Receiving App, kies **EntryControl** en identificeer zo nodig de medewerker.
2. Controleer of **Direct printen** past bij de gewenste werkwijze.
3. Scan het inkomende artikel of open de zoekfunctie.
4. Selecteer het juiste artikel wanneer meerdere resultaten beschikbaar zijn.
5. Controleer de artikelgegevens en de resterende hoeveelheid.
6. Registreer de volledige of een gedeeltelijke ontvangst.
7. Controleer de melding en de geprinte labels.
8. Verwerk een resterende hoeveelheid of ga terug om een volgend artikel te ontvangen.

---

## Stap 1 – De ontvangstcontext inrichten

EntryControl werkt altijd binnen één actieve box of inslagzone. De policy `InboundAreaId` bepaalt welke boxcode actief is. De keuzelijst gebruikt de beschikbare boxen uit de Backoffice.

De app toont, zoekt en verwerkt alleen inkomende regels waarvan de boxcode overeenkomt met `InboundAreaId`. Wanneer deze policy leeg is, vindt EntryControl geen regels met een geldige boxcode. Een verkeerde boxcode kan ertoe leiden dat de medewerker geen artikelen ziet of dat een gescand artikel als niet gevonden wordt gemeld.

De policy `AvailableStocks` bepaalt uit welke voorraden artikelen mogen worden gevonden. De lijst gebruikt de beschikbare voorraadcodes uit de Backoffice:

- scannen en handmatig zoeken blijven beperkt tot de geselecteerde voorraden;

Een lege `AvailableStocks`-lijst voegt in de zoek- en scanquery geen extra voorraadbeperking toe. De actieve `InboundAreaId` blijft wel altijd gelden. Vul de lijst expliciet wanneer medewerkers alleen artikelen uit bepaalde voorraden mogen verwerken.

Controleer de combinatie van `InboundAreaId` en `AvailableStocks` met werkelijke ontvangstregels voordat de policy in productie wordt gebruikt.

---

## Stap 2 – Scannen met of zonder Direct printen

Het startscherm vraagt om een inkomend artikel te scannen. Onderaan staat de keuze **Direct printen**.

### Direct printen uitgeschakeld

Wanneer **Direct printen** uitstaat:

1. scan de barcode van het inkomende artikel;
2. selecteer zo nodig het juiste artikel wanneer de barcode meerdere resultaten oplevert;
3. controleer op het detailscherm de artikelgegevens en hoeveelheid;
4. pas de te verwerken hoeveelheid zo nodig aan;
5. tik op de knop met het **vinkje** om de ontvangst te verwerken.

Deze werkwijze is geschikt wanneer de medewerker de gegevens of de ontvangen hoeveelheid eerst moet controleren.

### Direct printen ingeschakeld

Wanneer **Direct printen** aanstaat, verwerkt Florisoft na een geldige scan direct de volledige resterende hoeveelheid. Het detailscherm en de handmatige hoeveelheidscontrole worden overgeslagen. Als meerdere inkomende artikelen bij de barcode horen, moet de medewerker eerst het juiste artikel selecteren.

Gebruik **Direct printen** alleen wanneer de fysieke levering overeenkomt met de volledige openstaande hoeveelheid. Schakel de optie uit bij een deelontvangst of wanneer controle vóór registratie nodig is.

Na de scan toont de app tijdelijk een laadscherm. Scan het volgende artikel pas nadat de verwerking en eventuele melding zijn afgerond.

### Geen of meerdere resultaten

- Levert de barcode geen geldig resultaat op, dan meldt Florisoft dat de gescande barcode ongeldig is.
- Levert de barcode precies één artikel op, dan gaat de app direct verder volgens de gekozen printwerkwijze.
- Levert de barcode meerdere artikelen op, dan opent **Selecteer inkomend artikel**. Tik op het juiste artikel en bevestig de selectie.

De scan zoekt alleen binnen de voorraden uit `AvailableStocks`. De uiteindelijke artikelselectie en verwerking moeten daarnaast binnen de actieve `InboundAreaId` vallen.

---

## Stap 3 – Een inkomend artikel handmatig zoeken

Gebruik de knop met het **vergrootglas** op het startscherm wanneer een barcode ontbreekt, beschadigd is of niet kan worden gebruikt.

Het scherm **Zoek inkomend artikel** toont de verwachte inkomende artikelen uit de actieve inslagzone en toegestane voorraden. De lijst is op omschrijving en daarna op partijnummer gesorteerd. Per regel ziet u:

- de productfoto, wanneer beschikbaar;
- de omschrijving;
- de kenmerken S1, S2 en S3;
- de leverancier;
- de totale hoeveelheid;
- een groene statusmarkering wanneer de verwerkte hoeveelheid gelijk is aan of groter is dan de totale hoeveelheid.

Voer minimaal drie tekens in om de lijst met een zoekterm te verversen. Tekst zoekt zonder onderscheid tussen hoofdletters en kleine letters in de omschrijving. Een numerieke zoekterm vergelijkt ook de laatste vier cijfers van het partijnummer. Maak het zoekveld leeg om de volledige toegestane lijst opnieuw te laden.

1. Zoek het gewenste artikel.
2. Tik op de juiste regel.
3. Tik op **Selecteer inkomend artikel**.
4. Controleer het detailscherm en registreer de hoeveelheid.

Handmatig geselecteerde artikelen worden altijd via het detailscherm verwerkt. De keuze **Direct printen** op het scanscherm slaat deze controle niet over.

---

## Stap 4 – De zoeklijst filteren

De policy `AvailableInboundItemFilterOptions` bepaalt welke velden in **Filter inkomende artikelen** beschikbaar zijn. Alleen expliciet aangeleverde opties worden getoond. Wanneer de lijst leeg is of niet aan de app wordt geleverd, is de filterknop niet zichtbaar.

EntryControl ondersteunt de volgende waarden:

- `StockIds`: filter op één of meer voorraadcodes;
- `PackagingIds`: filter op één of meer fustcodes;
- `SupplierIds`: filter op één of meer leveranciers;
- `ShipmentNumber`: filter op tekst die in het verschepingsnummer voorkomt, zonder onderscheid tussen hoofdletters en kleine letters.

Open het filter, vul de gewenste waarden in en kies **Toepassen**. Het getal bij de filterknop toont hoeveel filtervelden actief zijn. Meerdere ingevulde filtersoorten gelden tegelijk; een resultaat moet dus aan alle actieve filtersoorten voldoen. Binnen één meervoudige selectie, bijvoorbeeld twee voorraden, mag een artikel aan één van de geselecteerde waarden voldoen.

Kies **Resetten** om alle filtervelden te wissen. De zoekterm blijft daarbij staan en de lijst wordt opnieuw geladen met die zoekterm, `InboundAreaId` en `AvailableStocks`.

> EntryControl heeft in de actuele app geen afzonderlijk filter **Voltooide regels verbergen**. Volledig verwerkte regels kunnen in het overzicht blijven staan en zijn herkenbaar aan de groene statusmarkering.

---

## Stap 5 – Artikel en hoeveelheid controleren

Het scherm **Controleer artikel** toont:

- productfoto en omschrijving;
- leverancier;
- fustcode;
- kenmerken S1, S2 en S3;
- aantal kolli × inhoud, met het totale aantal stelen;
- verschepingsnummer;
- de nog te verwerken hoeveelheid.

Bij het openen vult Florisoft standaard de volledige resterende hoeveelheid in. Het invoerveld accepteert minimaal nul en maximaal de resterende hoeveelheid. De knop met het **vinkje** wordt pas actief bij een hoeveelheid groter dan nul.

Controleer het fysieke artikel, de kenmerken, het fust en de hoeveelheid voordat u bevestigt. Gebruik de **homeknop** om zonder registratie terug te keren naar het startscherm. Gebruik het **vergrootglas** om een ander artikel te zoeken.

---

## Stap 6 – Een volledige of gedeeltelijke ontvangst registreren

### Volledige ontvangst

Laat de voorgestelde resterende hoeveelheid staan en tik op het **vinkje**. Na een geslaagde verwerking keert Florisoft terug naar het startscherm. Het artikel is volledig verwerkt wanneer de geregistreerde hoeveelheid gelijk is aan de totale verwachte hoeveelheid.

### Gedeeltelijke ontvangst

Voer bij een deelontvangst een hoeveelheid in die lager is dan de resterende hoeveelheid en tik op het **vinkje**. Florisoft verwerkt alleen dit aantal. Het detailscherm blijft geopend, verlaagt de resterende hoeveelheid en zet het invoerveld op nul.

U kunt daarna:

- nog een hoeveelheid van hetzelfde artikel verwerken;
- met het vergrootglas een ander artikel zoeken;
- met de homeknop teruggaan naar het scanscherm.

Registreer nooit meer dan fysiek is ontvangen. Een eenmaal geslaagde verwerking kan al voorraad- en verdeelacties hebben uitgevoerd, ook wanneer een daaropvolgende printwaarschuwing verschijnt.

---

## Stap 7 – Labels afdrukken en controleren

EntryControl gebruikt bij iedere bevestigde verwerking de printflow voor verdeelstickers. De policies onder `ProcessInboundItem` bepalen de uitvoer.

`ProcessInboundItem.InboundItemLabelLayout` selecteert de verdeelstickerlay-out. De keuzelijst bevat printlay-outs van het type **BoxVerdeelsticker**. Zonder lay-out verwerkt Florisoft het artikel wel, maar volgt een waarschuwing dat mogelijk niet is geprint.

`ProcessInboundItem.InboundItemLabelPrinter` selecteert de printer. Zonder printer verwerkt Florisoft het artikel wel, maar volgt een waarschuwing dat mogelijk niet is geprint.

`ProcessInboundItem.AlwaysPrintPickItemLabels` bepaalt of verdeel-/pickorderstickers tijdens deze verwerking altijd moeten worden geprint. Zonder ingeschakelde waarde is dit gedrag uitgeschakeld. Test deze policy met een artikel dat wel en een artikel dat niet aan een pickorder is verdeeld.

`ProcessInboundItem.PrintOneLabelPerBox` bepaalt of één label per doos wordt geprint. Zonder ingeschakelde waarde gebruikt de verwerking niet deze één-label-per-doosvariant. Controleer met verschillende kolli- en inhoudsaantallen of het aantal fysieke labels bij het magazijnproces past.

De policy `ProcessInboundItem.TakePictureDuringProcessing` is zichtbaar in Policy Beheer, maar is daar als **nog niet geïmplementeerd** gemarkeerd. Vertrouw niet op deze instelling voor het maken of bewaren van foto's en neem foto-opname niet op in de operationele werkwijze.

Na een succesmelding is de verwerking uitgevoerd en is de printopdracht door de applicatie afgehandeld. Controleer altijd of het juiste aantal labels fysiek op de juiste printer is verschenen. Een melding in de app bewijst niet dat papier, media of printerhardware probleemloos hebben gewerkt.

---

## Belangrijk voor een correcte inrichting

- Vul een geldige `InboundAreaId` in voordat medewerkers EntryControl gebruiken.
- Gebruik `AvailableStocks` om de toegestane ontvangstvoorraad bewust af te bakenen.
- Bied met `AvailableInboundItemFilterOptions` alleen filters aan die medewerkers nodig hebben.
- Test volledige ontvangst, deelontvangst en **Direct printen** afzonderlijk.
- Test printer, lay-out, `AlwaysPrintPickItemLabels` en `PrintOneLabelPerBox` als één samenhangende configuratie.
- Behandel een printwaarschuwing als een reeds uitgevoerde ontvangstregistratie en registreer niet blind opnieuw.
- Vertrouw niet op `TakePictureDuringProcessing` zolang deze functie als niet geïmplementeerd is gemarkeerd.
- Handling units, zichtbare crossdock-instructies, afzonderlijke klantlabelbediening en een filter om voltooide regels te verbergen maken geen deel uit van de actuele appworkflow.
