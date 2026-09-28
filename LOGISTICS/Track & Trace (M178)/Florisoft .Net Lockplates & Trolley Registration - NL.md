![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding Lockplates & Trolley Registration

## 1. Waarvoor wordt deze module gebruikt?

Met **Lockplates & Trolley Registration** registreert u de uitgifte, retourontvangst en locatie van herbruikbare slotplaten en eigen karren. Iedere slotplaat of kar heeft een unieke barcode. Door deze barcode bij iedere overdracht te scannen, ontstaat een sluitende historie.

De administratie geeft onder andere antwoord op de volgende vragen:

- Waar bevindt een slotplaat of kar zich nu?
- Aan welke klant of locatie is deze uitgegeven?
- Wanneer is deze uitgegeven en weer ontvangen?
- Welke medewerker heeft de laatste handeling uitgevoerd?
- Welke route heeft de slotplaat of kar afgelegd?
- Welke slotplaten staan nog bij een klant uit?

De module is onderdeel van de klassieke Florisoft .NET/FS2000-omgeving. De bediening is geoptimaliseerd voor een PDA of handscanner, maar kan ook op een pc met scanner worden gebruikt.

> **Belangrijk:** de administratie is alleen betrouwbaar wanneer iedere uitgaande én terugkomende slotplaat of kar wordt gescand. Een gemiste scan zorgt ervoor dat Florisoft een verkeerde locatie of status toont.

---

## 2. De werkwijze in één minuut

1. Een medewerker meldt zich aan met zijn medewerkerscode.
2. Kies **UIT** wanneer een slotplaat of kar naar een klant gaat.
3. Selecteer de klant en scan iedere uitgaande barcode precies één keer.
4. Kies **IN** wanneer een slotplaat of kar terugkomt.
5. Scan iedere teruggekomen barcode precies één keer.
6. Controleer meldingen direct en sluit het scherm pas wanneer alle fysieke exemplaren zijn verwerkt.

De basisregel is eenvoudig:

| Fysieke beweging | Keuze in Florisoft |
|---|---|
| Het bedrijf uit, richting klant | **UIT** |
| Terug bij het bedrijf | **IN** |

---

## 3. Wat moet vooraf geregeld zijn?

### 3.1 Techniek

Controleer vóór de inrichting:

- Florisoft is op de handscanner geïnstalleerd en start zonder foutmelding.
- De handscanner heeft een stabiele netwerkverbinding met de Florisoft-omgeving.
- De fysieke scanknop vult een barcode in Florisoft in.
- De scanner geeft na een scan ook een afsluitend Enter-signaal, zodat Florisoft de barcode verwerkt.
- De juiste Florisoft-omgeving en administratie worden geopend.
- De medewerker kan inloggen met de beoogde Florisoft-gebruiker.
- Bekend is of een bestaande gebruiker volstaat of een extra gebruiker/licentie nodig is.
- TeamViewer is beschikbaar voor ondersteuning. Deel toegangsgegevens niet per e-mail; laat de klant tijdens de afspraak toegang verlenen.

### 3.2 Stamgegevens en materiaal

Leg vóór de inrichting klaar:

- minimaal twee echte slotplaten of karren met leesbare, unieke barcodes;
- de gebruikte fustcodes;
- één testklant;
- één medewerker die de registratie in de praktijk gaat uitvoeren;
- indien relevant: een testorder voor die klant;
- een overzicht van de typen slotplaten en karren die gevolgd moeten worden;
- de betekenis van eventuele barcodeprefixen en de verwachte barcodelengte.

Gebruik voor de eerste test geen grote productierun. Test met een klein, herkenbaar aantal dat na afloop fysiek kan worden gecontroleerd.

### 3.3 Proceskeuzes

Beantwoord vóór het aanpassen van instellingen de volgende vragen:

1. Op welk fysiek moment wordt **UIT** gescand?
2. Op welk fysiek moment wordt **IN** gescand?
3. Wie is verantwoordelijk voor iedere scan?
4. Gaat de uitgifte uitsluitend naar klanten of ook naar veilingen?
5. Moet een slotplaat als fustregel op de factuur worden verwerkt?
6. Mag een slotplaat opnieuw worden uitgegeven zolang deze nog niet is binnengemeld?
7. Is de registratie onderdeel van **Doosvullen** of een los proces?
8. Moet Florisoft bij een onbekende barcode om een eigen plaatnummer vragen, of moet de scan worden geweigerd?
9. Moet bij de registratie een ordernummer worden gebruikt?
10. Welke medewerkers mogen welke fustcodes gebruiken?
11. Welke typen karren worden geregistreerd en welke unieke barcode wordt per kar gescand?
12. Wie controleert periodiek de openstaande registraties per klant?

Pas de inrichting pas aan nadat deze keuzes met de klant zijn bevestigd.

---

## 4. Inrichting door de consultant

De inrichting bestaat uit systeeminstellingen, fustsoort-instellingen, overige constanten en gebruikersinstellingen.

### 4.1 Systeeminstellingen

De systeeminstellingen staan standaard op een defaultconfiguratie. Laat wijzigingen via de supportafdeling uitvoeren en leg de gekozen waarde in het ticket vast.

| Instelling | Functie | Te bevestigen keuze |
|---|---|---|
| `SlotPlaatAlsFustOpFactuur` | Verwerkt IN/UIT gescande slotplaten als fustregels op een factuur. Dit kan ook invloed hebben op ordernummers en creditregels. | Wel of niet financieel verwerken |
| `SlotPlaatNooitDubbelUitgeven` | Blokkeert een nieuwe UIT-registratie zolang de vorige registratie niet IN is gemeld. | Blokkeren wordt aanbevolen voor een sluitende keten |
| `SLOTPLATENNADOOSVULLEN` / `SlotplatenNaDoosvullen` | Stuurt de afhandeling van slotplaten na Doosvullen. | Alleen relevant bij koppeling met Doosvullen |
| `SLOTPLAATREGISTRATIEDOOSVUL` | Opent na Doosvullen automatisch de slotplatenregistratie. | Wel of niet automatisch openen |
| `PDADoosvulDoosAanpasDubSlotplt` | Opent **Doos aanpassen** wanneer tijdens PDA-doosvullen een nog uitstaande slotplaat opnieuw wordt gescand. | Gewenste afhandeling bij dubbele scan |
| `AlternatieveFustcodePrefix` | Herkent een barcodeprefix als slotplaatnummer en zoekt het gekoppelde fust op. | Alleen vullen bij een afgesproken barcodestructuur |
| `AutomatischKarlijstPrintenBox` | Beïnvloedt automatisch printen en afronden binnen Box- en Doosvullen-processen. | Alleen aanpassen als dit proces wordt gebruikt |
| `FactuurHerverdCheckIngepakt` | Kan de koppeling met slotplaten beïnvloeden wanneer ingepakte regels worden herverdeeld. | Alleen beoordelen bij herverdeling |

Aanvullende systeeminstellingen kunnen onder andere de toegestane barcodeprefixen, barcodelengte, klantkeuze en het onthouden van de medewerkerscode bepalen. Wijzig deze alleen wanneer het afgesproken proces daarom vraagt.

### 4.2 Fustsoorten

Ga naar **Constanten → Artikelen → Fustsoorten** en open iedere fustcode die als slotplaat of kar wordt gebruikt.

Controleer per fustsoort:

- **Automatisch registreren als slotplaat**: gebruikt Florisoft de fustcode automatisch als eigen plaatnummer binnen de betreffende flow?
- **Slotplaten starten na printen vanuit het doosvullen**: moet de registratie na het printen automatisch starten?
- **Slotplaat-herkenning in doosvullen**: moet deze fustcode binnen Doosvullen als slotplaat worden behandeld?

Noteer per fustcode welke opties zijn aangezet. Controleer nooit meerdere fustcodes tegelijk zonder ze afzonderlijk te testen.

### 4.3 Slotplaatnummer en barcodeherkenning

Ga indien een alternatieve fustcodeprefix wordt gebruikt naar **Constanten → Algemeen → Slotplaatnummer**.

Leg daar de relatie vast tussen het slotplaatnummer en de betreffende fustsoort. Controleer vervolgens met een echte barcode of:

1. de volledige barcode wordt gelezen;
2. het afgesproken prefix wordt herkend;
3. de juiste fustcode wordt gevonden;
4. geen andere barcodes per ongeluk als slotplaat worden behandeld.

### 4.4 Gebruikersinstellingen

Ga naar **Constanten → Gebruikers → activeer gebruiker → Inifiles**.

Controleer per gebruiker:

- `OrderNummerSlotplaat`: het ordernummer voor eventuele (credit)factuurregels uit de slotplatenflow;
- `DoosVullenFustCodes`: de fustcodes die deze gebruiker binnen Doosvullen mag gebruiken. Een ontbrekende slotplaat-fustcode kan het gebruik blokkeren.

Controleer daarnaast of de medewerker die tijdens het scannen wordt ingevoerd als medewerker in Florisoft bestaat. De Florisoft-login en de medewerkerscode zijn niet noodzakelijk hetzelfde gegeven.

---

## 5. Dagelijks gebruik

### 5.1 Slotplaat of kar UIT melden

Gebruik deze procedure wanneer de slotplaat of kar fysiek naar een klant gaat.

1. Open in de PDA-navigator **Slotplaten**.
2. Vul of scan de medewerkerscode in.
3. Controleer of de juiste medewerker wordt getoond.
4. Kies **UIT**.
5. Kies, wanneer Florisoft dit vraagt, **Klant**.
6. Vul of scan de juiste klant in.
7. Controleer de getoonde klantnaam. Ga niet verder bij een verkeerde klant.
8. Vul indien het scherm daarom vraagt het juiste ordernummer in.
9. Scan de barcode van iedere uitgaande slotplaat of kar één keer.
10. Controleer na iedere scan of Florisoft geen waarschuwing toont.
11. Vergelijk het aantal gescande exemplaren met het fysieke aantal.
12. Kies **Klaar**.

**Niet doen:** dezelfde barcode nogmaals scannen omdat er geen geluid hoorbaar was. Controleer eerst het scherm en het aantal. Een tweede scan kan afhankelijk van de inrichting een waarschuwing, blokkade of nieuwe registratie veroorzaken.

### 5.2 Slotplaat of kar IN melden

Gebruik deze procedure zodra de slotplaat of kar fysiek terug is op de eigen locatie.

1. Open in de PDA-navigator **Slotplaten**.
2. Vul of scan de medewerkerscode in.
3. Controleer of de juiste medewerker wordt getoond.
4. Kies **IN**.
5. Vul indien Florisoft daarom vraagt het juiste ordernummer in.
6. Scan iedere teruggekomen barcode één keer.
7. Controleer na iedere scan of Florisoft geen waarschuwing toont.
8. Vergelijk het aantal gescande exemplaren met het fysieke aantal.
9. Kies **Klaar**.

Bij een UIT-scan kan Florisoft een eerder openstaand record eerst automatisch binnenscannen voordat de nieuwe uitgifte wordt vastgelegd. Vertrouw hier niet blind op: onderzoek een onverwachte status voordat het fysieke exemplaar opnieuw wordt uitgegeven.

### 5.3 Fysieke controle op een locatie

Gebruik **Slotplaat controle** om te controleren welke geregistreerde slotplaten op de huidige locatie fysiek aanwezig zijn.

1. Open **Slotplaat controle**.
2. Scan alle fysiek aanwezige slotplaten op die locatie.
3. Correct gevonden slotplaten worden groen gemarkeerd.
4. Los iedere melding op:
   - **Barcode niet gevonden**: de barcode is niet bekend in de administratie;
   - **Niet bekend op deze locatie**: de slotplaat bestaat, maar Florisoft verwacht deze op een andere locatie.
5. Sluit de controle pas nadat de verschillen zijn genoteerd en toegewezen voor onderzoek.

---

## 6. Verplichte acceptatietest

Voer deze test na de inrichting uit met één testklant en twee herkenbare testbarcodes.

### Test A — eerste uitgifte

1. Meld beide testbarcodes **UIT** naar de testklant.
2. Controleer dat beide registraties aan de juiste klant, medewerker, datum en tijd zijn gekoppeld.
3. Controleer eventuele fust- of factuurregels wanneer `SlotPlaatAlsFustOpFactuur` actief is.

**Geslaagd wanneer:** beide exemplaren precies één keer als uitstaand bij de juiste klant zichtbaar zijn.

### Test B — dubbele uitgifte

1. Probeer één van de nog uitstaande testbarcodes opnieuw **UIT** te melden.

**Geslaagd wanneer:** Florisoft reageert volgens de afgesproken inrichting. Bij `SlotPlaatNooitDubbelUitgeven` moet de nieuwe uitgifte worden geblokkeerd.

### Test C — retourontvangst

1. Meld beide testbarcodes **IN**.
2. Controleer dat de retourdatum, retourtijd, medewerker en locatie zijn vastgelegd.

**Geslaagd wanneer:** geen van beide exemplaren nog als uitstaand bij de klant staat.

### Test D — opnieuw uitgeven

1. Meld één terugontvangen testbarcode opnieuw **UIT** naar de testklant.

**Geslaagd wanneer:** een nieuwe uitgifte wordt vastgelegd en de eerdere historie behouden blijft.

### Test E — foutscenario's

Controleer ten minste:

- een onbekende barcode;
- een barcode met verkeerde lengte of verkeerd prefix, indien daarop wordt gecontroleerd;
- een onbekende medewerkerscode;
- een verkeerde klant;
- een slotplaat die volgens Florisoft op een andere locatie staat.

**Geslaagd wanneer:** de medewerker de melding begrijpt, niet willekeurig verder klikt en weet bij wie het verschil moet worden gemeld.

---

## 7. Veelvoorkomende meldingen en oplossingen

| Melding of situatie | Betekenis | Actie |
|---|---|---|
| Medewerker is niet bekend | De ingevoerde medewerkerscode bestaat niet. | Controleer de code en laat de medewerker zo nodig aanmaken. |
| Debiteur/klant is niet bekend | De gekozen klant kan niet worden gevonden. | Stop en kies de juiste klant; scan niet door. |
| Slotplaat is niet bekend | De barcode heeft nog geen bruikbare registratie of koppeling. | Controleer barcode, fustcode en inrichting. Maak niet zonder afspraak een nieuw plaatnummer aan. |
| Slotplaat is al uitgegeven en nog niet ingeleverd | Florisoft heeft nog een openstaande UIT-registratie. | Controleer de fysieke situatie. Meld eerst IN wanneer de plaat werkelijk retour is. |
| Slotplaat begint niet met de juiste tekenreeks | De barcode voldoet niet aan de ingestelde prefixcontrole. | Controleer of de juiste barcode is gescand en of de prefixinrichting klopt. |
| Barcode heeft een verkeerde lengte | De scan voldoet niet aan de ingestelde barcodelengte. | Controleer scannerconfiguratie, barcode en ingestelde lengte. |
| Barcode bestaat, maar niet op deze locatie | Florisoft verwacht de slotplaat elders. | Verplaats niets administratief zonder de fysieke route te onderzoeken. |
| Fustcode ontbreekt of is niet toegestaan | De gebruiker mag deze fustcode niet gebruiken of de slotplaat mist een fustkoppeling. | Controleer de fustsoort en `DoosVullenFustCodes` van de gebruiker. |

---

## 8. Werkafspraken voor een betrouwbare administratie

- Scan altijd op het moment van de fysieke overdracht, niet achteraf vanaf een lijstje.
- Eén fysieke beweging betekent één scan.
- Controleer vóór UIT altijd de klantnaam.
- Leg onbekende of beschadigde barcodes apart; verzin niet zelf een vervangend nummer.
- Geef een gescande slotplaat niet door aan een collega voordat de registratie is afgerond.
- Stop bij een waarschuwing en lees de melding volledig.
- Corrigeer verschillen dezelfde werkdag.
- Wijs één proceseigenaar aan voor openstaande slotplaten en karren.
- Controleer periodiek het overzicht per klant en onderzoek oude openstaande registraties.

---

## 9. Opleverchecklist

De module is pas gereed voor gebruik wanneer alle onderstaande punten met **ja** kunnen worden beantwoord:

- [ ] Florisoft start op de handscanner.
- [ ] De scanner verwerkt een barcode inclusief Enter-signaal.
- [ ] De juiste Florisoft-gebruiker en medewerkerscode zijn beschikbaar.
- [ ] De klant heeft het afgesproken IN- en UIT-moment bevestigd.
- [ ] Alle gebruikte fustcodes zijn ingericht.
- [ ] De barcodeprefixen en barcodelengte zijn gecontroleerd.
- [ ] De gewenste blokkade op dubbele uitgifte werkt.
- [ ] De factuurverwerking is getest of bewust niet geactiveerd.
- [ ] De gebruikersinstellingen `OrderNummerSlotplaat` en `DoosVullenFustCodes` zijn gecontroleerd.
- [ ] Een volledige UIT-, dubbele UIT-, IN- en heruitgiftetest is uitgevoerd.
- [ ] De uitstaande registraties zijn na de test gecontroleerd.
- [ ] De klant weet hoe meldingen en verschillen moeten worden opgevolgd.
- [ ] De gemaakte keuzes en testresultaten zijn in het ticket vastgelegd.

Pas na een geslaagde acceptatietest mag de klant de module in het reguliere proces gebruiken.
