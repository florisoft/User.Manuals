![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Sorting (Sorting App)

## Inleiding

Met **Sorting** koppelt een logistiek medewerker gescande pickitems aan een inpaktafel. De app ondersteunt twee vaste werkwijzen: eerst een pickitem scannen en daarna de inpaktafel, of eerst een inpaktafel activeren en daarna meerdere pickitems scannen.

De actieve werkwijze wordt centraal met een policy bepaald. De medewerker kiest deze niet zelf. De app toont steeds welke scan wordt verwacht, weigert ongeschikte barcodes en registreert bij een geslaagde actie het pickitem, aantal, de inpaktafel en de medewerker.

Deze handleiding beschrijft de gebruikersstappen en de instellingen die het gedrag bepalen.

---

## Licentievereisten en benodigdheden

Voor Sorting zijn minimaal nodig:

- toegang tot de Florisoft **Sorting App**;
- volledige toegang tot de usecase `Logistics.Sorting`;
- een geldige medewerker;
- een scanner of camera;
- geldige pickitembarcodes waarin zowel het pickitem als het aantal kan worden herkend;
- geldige inpaktafelbarcodes;
- pickitems die nog niet volledig zijn verwerkt;
- correct ingerichte inpaktafels;
- voor de vervolgstap: een passende inrichting van BoxPacking.

## Waar vindt u de policies?

Open in de Backoffice het **constantenscherm** en ga via **Systeem → Users → Policy Beheer** naar **Apps → Logistics → Sorting**.

Sorting bevat de volgende policies:

- `SortingStrategy`: bepaalt of de medewerker eerst een pickitem of eerst een inpaktafel scant;
- `DisplayedStockItemIdentifier`: bepaalt welk partij-identificatienummer bij een gesorteerd pickitem wordt getoond.

Meer informatie over het maken, koppelen en prioriteren van policies staat in de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

> Test een gewijzigde sorteerstrategie eerst met aparte testbarcodes en een testinpaktafel. Een medewerker kan de ingestelde scanvolgorde niet in de app wijzigen.

---

## Het Sorting-proces in het kort

### Pickitem-eerst

1. Open Sorting en identificeer de medewerker.
2. Scan een pickitembarcode met aantal.
3. Controleer de productgegevens en een eventueel bekende inpaktafel.
4. Scan de gewenste inpaktafel.
5. Controleer de bevestiging en scan het volgende pickitem.

### Inpaktafel-eerst

1. Open Sorting en identificeer de medewerker.
2. Scan de inpaktafel.
3. Scan een of meer pickitembarcodes met aantal.
4. Bevestig bij een waarschuwing of het pickitem toch naar deze tafel mag.
5. Scan eventueel direct een volgende inpaktafel.
6. Keer met de homeknop terug naar het startscherm wanneer u klaar bent.

---

## Stap 1 – De app en medewerker starten

Open de Sorting App. Als nog geen medewerker bekend is, vraagt Florisoft eerst om identificatie. Iedere geslaagde sorteerscan wordt daarna aan deze medewerker gekoppeld.

De policy `SortingStrategy` bepaalt de instructie op het startscherm:

- `PickItemFirst`: het startscherm toont **Scan pickitem**. Dit is de standaardwaarde;
- `PackingStationFirst`: het startscherm toont **Scan inpaktafel**.

De app accepteert op het startscherm alleen het objecttype dat bij de ingestelde strategie hoort. Scant u bij `PickItemFirst` eerst een inpaktafel, dan vraagt de app om eerst een pickitem te scannen. Scant u bij `PackingStationFirst` eerst een pickitem, dan vraagt de app om eerst een inpaktafel te scannen.

---

## Stap 2 – Geldige barcodes gebruiken

Sorting laat iedere scan door de centrale barcodedecoder herkennen.

### Pickitembarcode

Een geldige pickitemscan moet zowel een pickitem-ID als een aantal opleveren. De Sorting-use-case gebruikt hiervoor de karopbouw- of orderregelbarcode met het aantal in de barcode. De app weigert de scan wanneer:

- het pickitem-ID ontbreekt of nul is;
- het aantal ontbreekt of nul is;
- het pickitem niet bestaat;
- geen nog niet verwerkt pickitem bij de barcode wordt gevonden;
- de barcode niet als pickitem kan worden herkend.

### Inpaktafelbarcode

Een geldige inpaktafelbarcode moet door de decoder als inpaktafel worden herkend en een tafelnummer groter dan nul opleveren. In de use-case zijn dit barcodes die met `T` beginnen. Een onbekende of ongeldige tafelbarcode wordt geweigerd.

Na een foutieve scan blijft u in het huidige scherm en kunt u direct opnieuw scannen.

---

## Stap 3 – Werken met de pickitem-eerst flow

1. Scan op het startscherm een geldige pickitembarcode.
2. Controleer op het pickitemscherm de foto, omschrijving en kenmerken `S1`, `S2` en `S3`.
3. Controleer of de app aangeeft dat voor dezelfde klant en order al een doos of context op een inpaktafel bekend is.
4. Scan de inpaktafel waaraan u dit pickitem wilt koppelen.
5. Wacht op de bevestiging dat het pickitem succesvol voor de inpaktafel is gesorteerd.

Na een geslaagde koppeling registreert Florisoft het aantal uit de barcode bij de gescande inpaktafel. De app keert automatisch terug naar het startscherm, zodat u het volgende pickitem kunt scannen.

Als voor dezelfde klant en order al een inpaktafel bekend is, toont het pickitemscherm dit tafelnummer als aandachtspunt. De medewerker bepaalt vervolgens met de daadwerkelijk gescande inpaktafel waar het huidige pickitem wordt gekoppeld.

---

## Stap 4 – Werken met de inpaktafel-eerst flow

1. Scan op het startscherm een geldige inpaktafelbarcode.
2. Controleer het actieve tafelnummer bovenaan het inpaktafelscherm.
3. Scan een geldige pickitembarcode met aantal.
4. Controleer de succesmelding en het nieuw toegevoegde product in het overzicht.
5. Scan direct het volgende pickitem voor dezelfde inpaktafel.
6. Scan een andere inpaktafelbarcode om zonder terugkeer naar het startscherm van tafel te wisselen.
7. Tik op de homeknop wanneer u de inpaktafel-flow wilt verlaten.

Het scherm toont het aantal pickitems dat tijdens de geopende tafelcontext succesvol is gesorteerd. Het laatst gescande pickitem verschijnt bovenaan en wordt automatisch geselecteerd, zodat het direct zichtbaar blijft.

Wanneer u een andere inpaktafel activeert of het scherm opnieuw opent, begint het zichtbare sessieoverzicht opnieuw leeg. De eerder gemaakte koppelingen blijven wel in Florisoft opgeslagen en zijn beschikbaar voor de vervolgstap in BoxPacking.

---

## Stap 5 – Een waarschuwing voor een andere bekende inpaktafel verwerken

Bij de inpaktafel-eerst flow controleert Sorting na iedere pickitemscan of voor dezelfde klant en order al een inpaktafel bekend is. Dit kan bijvoorbeeld komen doordat daar een gepauzeerde doos voor de order aanwezig is.

Als het bekende tafelnummer afwijkt van de actieve inpaktafel, toont de app een waarschuwing met dat tafelnummer en vraagt of u wilt doorgaan:

- kies **Ja** om het pickitem toch aan de actieve inpaktafel te koppelen;
- kies **Nee** om de actie af te breken. De bestaande situatie blijft dan ongewijzigd.

Controleer vóór **Ja** of het product fysiek op de actieve tafel ligt en of de order bewust over meerdere tafels wordt verwerkt. Zo voorkomt u dat aanvullende producten op een andere tafel terechtkomen dan de gepauzeerde doos.

---

## Stap 6 – De getoonde partij-identificatie instellen

De policy `DisplayedStockItemIdentifier` bepaalt welk partijnummer in het overzicht van gesorteerde pickitems wordt getoond:

- `StockItemNr`: toon de laatste vier tekens van het partijnummer. Dit is de standaardwaarde;
- `VStockItemNr`: toon de laatste vier tekens van het V-partijnummer;
- `None`: in de huidige Sorting-verwerking valt deze waarde terug op `StockItemNr` en verbergt deze het nummer dus niet.

De policy verandert alleen de herkenningsinformatie op het scherm. De keuze verandert niet welk pickitem wordt gekoppeld en heeft geen invloed op het aantal uit de barcode.

---

## Stap 7 – Verdergaan in BoxPacking

Na een geslaagde sorteerscan is het pickitem aan de inpaktafel gekoppeld. In BoxPacking worden de nog niet ingepakte producten voor de ingestelde tafel in sorteer-volgorde opgehaald en per klant en order gegroepeerd.

Gebruik voor de vervolgstappen de [Handleiding BoxPacking](../BoxPacking/Handleiding%20BoxPacking%20-%20NL.md#starten-vanuit-sorting-en-een-inpaktafel). Daar staat beschreven hoe u:

- de juiste inpaktafel controleert;
- een bestaande of nieuwe doos selecteert;
- aantallen inpakt;
- afwijkingen verwerkt;
- een doos pauzeert of compleet maakt.

---

## Meldingen en oplossingen

### Scan eerst een pickitem

De gekozen scanstrategie verwacht eerst een pickitem, maar u hebt een inpaktafel gescand. Scan eerst een geldige pickitembarcode en daarna de inpaktafel.

### Scan eerst een inpaktafel

De gekozen scanstrategie verwacht eerst een inpaktafel, maar u hebt een pickitem gescand. Scan eerst de inpaktafel en daarna een of meer pickitems.

### Ongeldige barcode

- Controleer of u het objecttype scant dat op het scherm wordt gevraagd.
- Controleer of een inpaktafelbarcode geldig is en een tafelnummer oplevert.
- Controleer of de pickitembarcode zowel een ID als een aantal bevat.
- Maak de barcode schoon of print een nieuw label wanneer deze niet leesbaar is.

### Geen onverwerkt pickitem gevonden

- Controleer of het juiste label is gescand.
- Controleer of het pickitem nog bestaat en nog niet volledig verwerkt is.
- Controleer of het aantal in de barcode groter dan nul is.

### Het pickitem is al actief bij een andere inpaktafel

Controleer de genoemde tafel en de fysieke locatie van het product. Kies alleen **Ja** wanneer het pickitem bewust naar de huidige tafel mag. Kies anders **Nee** en breng het product naar de al bekende tafel.

### Het gewenste partijnummer wordt niet getoond

Controleer `DisplayedStockItemIdentifier`. Houd er rekening mee dat alleen de laatste vier tekens worden getoond en dat `None` in de huidige verwerking terugvalt op `StockItemNr`.

---

## Belangrijk voor een correcte inrichting

- Gebruik één vaste procesvolgorde: `PickItemFirst` of `PackingStationFirst`.
- Stem de fysieke magazijnwerkwijze en scherminstructies op deze strategie af.
- Gebruik pickitembarcodes waarin een geldig pickitem-ID en een aantal zijn opgenomen.
- Gebruik herkenbare, unieke inpaktafelbarcodes die door Florisoft als inpaktafel worden gedecodeerd.
- Kies het partijnummer dat medewerkers op de werkvloer herkennen.
- Test de waarschuwing voor een bekende andere inpaktafel met een representatieve gepauzeerde doos.
- Controleer samen met BoxPacking of gesorteerde pickitems op de bedoelde inpaktafel en in de juiste volgorde verschijnen.
