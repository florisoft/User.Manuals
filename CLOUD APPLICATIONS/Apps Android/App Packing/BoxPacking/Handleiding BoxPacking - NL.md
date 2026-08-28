![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – BoxPacking (Packing App)

## Inleiding

Met **BoxPacking** pakt een logistiek medewerker orderregels in dozen. De app ondersteunt twee startwijzen: zelf een order kiezen of werken met producten die via Sorting aan een inpaktafel zijn gekoppeld. Daarna kiest de medewerker een bestaande doos of een nieuw verpakkingstype, registreert de aantallen en pauzeert of voltooit de doos.

De workflow wordt volledig door policies ingericht. Daarmee bepaalt u onder andere de startwijze, actieve inpaktafel, zichtbare dozen, aantalseenheid, toegestane fustcodes, labels en eventuele lockplate-registratie.

Deze handleiding beschrijft de gebruikersstappen en licht bij iedere stap direct toe welke policies het gedrag bepalen.

---

## Licentievereisten en benodigdheden

Voor BoxPacking zijn minimaal nodig:

- toegang tot de Florisoft **Packing App**;
- toegang tot de usecase `Logistics.Packing.BoxPacking`;
- een geldige medewerker;
- orders met nog in te pakken orderregels;
- voor de Sorting-flow: pickitems die aan de juiste inpaktafel zijn gekoppeld;
- geldige doosfustcodes;
- voor labelacties: een ingestelde printer, stickerlay-out en een bereikbare printvoorziening;
- voor lockplate-registratie: een verpakking waarvoor `FUST.SLTPLTDV` is ingeschakeld en een werkende lockplate-integratie;
- voor afwijkingen: toegang tot Exception Registration.

De policy `BoxPackingStrategy` bepaalt welke workflow start. `OrderSelection` is de standaard en opent de orderselectie. `PackingStation` gebruikt de door Sorting voorbereide inpaktafelcontext.

## Waar vindt u de policies?

Open in de Backoffice het **constantenscherm** en ga via **Systeem → Users → Policy Beheer** naar **Apps → Logistics → Packing → BoxPacking**. De onderliggende groepen **NewPacking**, **FinalizeBox**, **PauseBox** en **LinkBox** bevatten de instellingen voor de betreffende processtappen. Onder **FinalizeBox → BoxLabel** en **PauseBox → BoxLabel** staan de labelinstellingen.

Meer informatie over het maken, koppelen en prioriteren van policies staat in de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

> Test een gewijzigde inrichting eerst met een aparte testpolicy, representatieve orders, een echte inpaktafel en de bedoelde printers. Een lege configuratielijst betekent niet altijd dat alle waarden beschikbaar zijn.

---

## Het BoxPacking-proces in het kort

1. Open BoxPacking en identificeer de medewerker.
2. Kies een order of open de door Sorting voorbereide inpaktafel.
3. Selecteer een orderregel of een voorbereid pickitem.
4. Kies een bestaande doos of maak een nieuwe doos met een toegestane fustcode.
5. Controleer en bevestig het in te pakken aantal.
6. Herhaal dit voor de resterende producten.
7. Registreer zo nodig een afwijking of corrigeer de verpakking.
8. Pauzeer de doos of maak deze compleet.
9. Scan indien vereist de lockplatebarcode en controleer het geprinte label.

---

## Stap 1 – De app en medewerker starten

Open in Florisoft de Packing App en kies **BoxPacking**. Als nog geen medewerker bekend is, vraagt Florisoft eerst om identificatie. De geregistreerde doosinhoud wordt daarna aan deze medewerker gekoppeld.

De policy `BoxPackingStrategy` bepaalt het eerste werkscherm:

- `OrderSelection`: de medewerker begint met een overzicht van orders die nog ingepakt kunnen worden. Dit is de standaardwaarde;
- `PackingStation`: de medewerker begint met de producten die Sorting voor de ingestelde inpaktafel heeft klaargezet.

De medewerker kiest tijdens het werken niet zelf tussen deze twee flows. De policy bepaalt vooraf welke werkwijze beschikbaar is.

---

## Stap 2 – De inpakcontext bepalen

### Starten vanuit een order

Bij `BoxPackingStrategy = OrderSelection` opent de orderselectie automatisch.

1. Zoek eventueel op klantnummer of ordernummer.
2. Controleer per order de klant, het ordernummer en de getoonde voortgang.
3. Tik op de order die u wilt inpakken.
4. Controleer de resterende orderregels.

BoxPacking toont alleen orders met ten minste één orderregel die nog ingepakt kan worden. Volledig verwerkte orders worden niet aangeboden. Met **Kies order** kunt u later een andere beschikbare order activeren.

### Starten vanuit Sorting en een inpaktafel

Bij `BoxPackingStrategy = PackingStation` bepaalt de policy `PackingStationId` welke inpaktafel actief is. Het tafelnummer staat boven de inkomende lijst.

Voordat u in BoxPacking kunt beginnen, scant een medewerker in de Sorting App de pickitems en koppelt deze aan de juiste inpaktafel. BoxPacking toont vervolgens:

- uitsluitend niet-verwerkte producten van de ingestelde inpaktafel;
- de producten van boven naar beneden in de scanvolgorde van Sorting;
- afzonderlijke groepen per klant en order;
- de eerste groep als actieve groep en volgende groepen als wachtrij.

Zie de [Handleiding Sorting](../Sorting/Handleiding%20Sorting%20-%20NL.md#het-sorting-proces-in-het-kort) voor de volledige pickitem-eerst- en inpaktafel-eerstflows.

Wanneer de actieve groep leeg is, wordt de volgende groep automatisch actief. Nieuwe producten voor de actieve order worden periodiek toegevoegd aan het overzicht.

Staat `PackingStationId` op het verkeerde tafelnummer, dan toont BoxPacking producten van een andere tafel of geen producten. Controleer daarom altijd het nummer boven de inkomende lijst.

---

## Stap 3 – De productlijst lezen

Selecteer een orderregel of voorbereid pickitem. BoxPacking toont de productfoto, omschrijving, kenmerken, fustinformatie en resterende hoeveelheid. De product- en inpakdetails verschijnen in het midden van het scherm.

De policy `ToPackQuantityDisplayType` bepaalt de getoonde en in te voeren aantalseenheid:

- `Bunches`: toon en voer aantallen in bossen in. Dit is de standaardwaarde;
- `Stems`: toon en voer aantallen in stelen in.

De backend verwerkt de definitieve hoeveelheid altijd in stelen. Bij `Bunches` rekent BoxPacking het ingevoerde aantal om met de bosinhoud van het product. Ontbreekt een geldige bosinhoud, dan gebruikt de app minimaal één steel per bos om een ongeldige berekening te voorkomen. Controleer zulke artikelgegevens voordat u verdergaat.

In de Sorting-flow is **Kijk vooruit** beschikbaar. Hiermee ziet u welke pickitems van de actieve klant en order nog niet aan de inpaktafel zijn verwerkt. Deze actie verandert de inpaktafel niet en pakt geen producten in.

---

## Stap 4 – Een bestaande of nieuwe doos kiezen

Wanneer u een product van een andere order selecteert, controleert BoxPacking of voor die klant en order al een bruikbare doos bestaat. U kunt een bestaande doos hervatten of een nieuw verpakkingstype kiezen.

### Beschikbare nieuwe verpakkingen

De policy `NewPacking.AvailablePackagingIds` bevat de fustcodes die bij **Lege verpakking** gekozen mogen worden. De keuzelijst gebruikt records uit de Backoffice-tabel `FUST` en toont de omschrijving met de fustcode.

Daarnaast voegt BoxPacking de klantspecifieke doosfustcode toe wanneer deze bij de klant is ingericht. Een lege `AvailablePackagingIds`-lijst betekent dus:

- alleen de klantspecifieke doosfustcode is beschikbaar wanneer deze bestaat;
- er zijn geen nieuwe verpakkingsopties wanneer zowel de policylijst als de klantspecifieke doosfustcode leeg zijn.

Een lege lijst geeft niet automatisch toegang tot alle fustcodes. Voeg iedere algemeen toegestane fustcode expliciet aan `AvailablePackagingIds` toe.

### Zichtbare bestaande dozen

In de flow met een inpaktafel bepaalt `BoxVisibilityStrategy` welke niet-voltooide dozen worden geladen:

- `ActiveTableOnly`: toon alleen dozen van de actieve inpaktafel. Dit is de standaardwaarde wanneer geen afwijkende waarde is ingesteld;
- `AllTables`: toon dozen van alle inpaktafels zodat een bestaande doos eventueel kan worden overgenomen.

De policy `BoxAdditionalInfo` bepaalt welke extra locatie-informatie bij dozen wordt getoond:

- `None`: geen extra locatie-informatie. Dit is de standaardwaarde;
- `TableNumber`: toon het huidige inpaktafelnummer;
- `RackNumber`: toon het stellingnummer van de klant.

De extra informatie wordt in het huidige scherm gebruikt wanneer `BoxVisibilityStrategy = AllTables`. Bij `RackNumber` groepeert de dooskeuze de beschikbare dozen per stelling. Test `BoxVisibilityStrategy` en `BoxAdditionalInfo` daarom altijd als combinatie.

### Een doos van een andere tafel overnemen

Bij `AllTables` kan een doos van een andere inpaktafel beschikbaar zijn. BoxPacking controleert eerst of op de oorspronkelijke tafel nog niet-ingepakte producten voor dezelfde order staan. Zolang die producten aanwezig zijn, kan de doos niet worden overgenomen.

Wanneer overname is toegestaan, toont de app de huidige en nieuwe tafel en vraagt deze om bevestiging. Na bevestiging wordt de doos aan de actieve inpaktafel gekoppeld. In de stellingflow met `BoxAdditionalInfo = RackNumber` volgt de app de stellinggerichte selectie zonder de normale tafelbevestiging.

---

## Stap 5 – Een product in de actieve doos inpakken

1. Selecteer het product in de actieve groep.
2. Selecteer de juiste bestaande doos of een nieuwe fustcode.
3. Controleer de inpaknotitie en productdetails.
4. Controleer het voorgestelde aantal op het numerieke toetsenblok.
5. Pas het aantal zo nodig aan.
6. Tik op **Bevestig**.

BoxPacking voorkomt dat u meer dan de resterende orderhoeveelheid inpakt. Na een geslaagde registratie:

- wordt de inhoud aan de actieve doos toegevoegd;
- wordt een bestaande inhoudsregel voor hetzelfde product verhoogd in plaats van gedupliceerd;
- worden de resterende order- en inpaktafelaantallen bijgewerkt;
- verdwijnt een volledig verwerkte productregel uit de actieve lijst.

De policy `LinkBox.DepartmentId` bevat de ID van de doos-inpakafdeling die bij het aanmaken van een nieuwe doos wordt vastgelegd. Wanneer deze policy leeg is, kan Florisoft terugvallen op de bestaande Backoffice-instelling `DoosvullenVerpakkingAfdeling`. Controleer deze afdeling wanneer nieuwe dozen administratief in een verkeerde afdeling terechtkomen.

---

## Stap 6 – De fustcode van de actieve doos wijzigen

Wanneer een verkeerde verpakking is gekozen of een andere verpakking nodig is:

1. selecteer de actieve doos;
2. kies de actie om de huidige fustcode te wijzigen;
3. selecteer een andere beschikbare verpakking;
4. bevestig de wijziging.

De nieuwe fustcode wordt opgeslagen en gebruikt bij volgende inpak- en labelacties. De beschikbare keuzes worden opnieuw bepaald door `NewPacking.AvailablePackagingIds` en de klantspecifieke doosfustcode.

---

## Stap 7 – Afwijkingen en foutieve inpaktafelregels verwerken

Als Exception Registration beschikbaar is, kunt u vanuit een productregel een afwijking registreren:

1. veeg over de productregel;
2. open de afwijkingsactie;
3. kies een reden en registreer het afwijkende aantal;
4. bevestig de registratie.

BoxPacking verlaagt daarna de resterende inpaktafelhoeveelheid. Als niets meer resteert, verdwijnt de regel uit het overzicht. De afwijking wordt met de BoxPacking-usecase als bron opgeslagen voor traceerbare opvolging.

De policy `AllowRemovingPackingStationItems` bepaalt of de extra verwijderactie bij regels van de inpaktafel beschikbaar is:

- `false`: de prullenbakactie is niet beschikbaar. Dit is de standaardwaarde;
- `true`: de gebruiker kan een regel handmatig van de actieve inpaktafel verwijderen zonder deze als normaal ingepakt te registreren.

Gebruik verwijderen alleen voor een foutief gescand of niet meer verwerkbaar pickitem. De actie markeert de inpaktafelregel als verwerkt en verwijdert deze uit het actieve overzicht, maar voegt het product niet aan een doos toe.

---

## Stap 8 – Een doos pauzeren

Kies **Pauzeer doos** wanneer u later met de actieve doos wilt verdergaan. De doos blijft bestaan en kan in een volgende inpakactie opnieuw worden geselecteerd.

De policies onder `PauseBox.BoxLabel` bepalen het pauzelabel:

- `PausedBoxPrinterName`: printer voor het pauzelabel. Deze kan terugvallen op de bestaande doosstickerprinter;
- `PausedBoxPrintLayout`: stickerlay-out voor het pauzelabel;
- `PauseBox.BoxLabel.IsActive`: schakelt de printfunctie voor het pauzelabel in of uit.

Voor een geslaagde pauzeactie moeten de printer, lay-out en printfunctie samen een geldige printerconfiguratie vormen. Ontbreekt deze configuratie of is de lay-out ongeldig, dan wordt de pauzeactie afgebroken met de melding dat geen printer is ingesteld.

Controleer na een geslaagde actie of het pauzelabel fysiek is geprint en bij de juiste doos is aangebracht.

---

## Stap 9 – Een doos compleet maken

Kies **Maak doos compleet** wanneer de actieve doos klaar is. Een voltooide doos krijgt de status volledig gepakt en verdwijnt uit het overzicht met open dozen.

De policies onder `FinalizeBox.BoxLabel` bepalen het eindlabel:

- `CompletedBoxPrinterName`: printer voor het label van de voltooide doos. Deze kan terugvallen op de bestaande doosstickerprinter;
- `CompletedBoxPrintLayout`: stickerlay-out voor het eindlabel;
- `FinalizeBox.BoxLabel.IsActive`: schakelt de printfunctie voor het eindlabel in of uit.

Ook hier moeten printer, lay-out en printfunctie samen geldig zijn. Bij een ontbrekende of ongeldige printerconfiguratie wordt de doos niet afgerond.

### Verplichte lockplate registreren

De policy `FinalizeBox.RequireLockPlateRegistration` bepaalt of BoxPacking bij het afronden een externe identificatie moet registreren. De standaardwaarde is `false`.

De scan is alleen verplicht wanneer beide voorwaarden gelden:

- `RequireLockPlateRegistration = true`;
- bij de gekozen fustcode staat `FUST.SLTPLTDV = TRUE`.

BoxPacking vraagt dan om de doosbarcode te scannen voordat de doos wordt voltooid. Zonder geldige barcode stopt de afronding. Na een geldige scan registreert de lockplate-integratie de externe identificatie voor de klant en fustcode.

---

## Meldingen en oplossingen

### Er zijn geen orders beschikbaar

- Controleer of `BoxPackingStrategy` op `OrderSelection` staat.
- Controleer of de order nog minimaal één niet-volledig-ingepakte orderregel bevat.
- Zoek opnieuw op klant- of ordernummer.
- Vraag de planner of de orderregels correct beschikbaar zijn.

### Er staan geen producten op de inpaktafel

- Controleer of `BoxPackingStrategy` op `PackingStation` staat.
- Controleer `PackingStationId` en het tafelnummer boven de inkomende lijst.
- Controleer in Sorting of de pickitems aan deze inpaktafel zijn gekoppeld.
- Controleer of de regels nog een hoeveelheid groter dan nul hebben en nog niet als verwerkt zijn gemarkeerd.

### Er zijn geen verpakkingen beschikbaar

- Controleer `NewPacking.AvailablePackagingIds`.
- Controleer of de gekozen codes bestaan in de Backoffice-tabel `FUST`.
- Controleer de klantspecifieke doosfustcode.
- Houd er rekening mee dat een lege policylijst niet alle fustcodes vrijgeeft.

### Een doos van een andere tafel is niet zichtbaar

- Controleer of `BoxVisibilityStrategy = AllTables`.
- Controleer `BoxAdditionalInfo` wanneer het tafel- of stellingnummer nodig is om de doos te herkennen.
- Controleer of de doos nog niet volledig gepakt is en aan een inpaktafel gekoppeld is.

### Een doos kan niet worden overgenomen

Op de oorspronkelijke inpaktafel staan nog niet-ingepakte producten voor dezelfde order. Verwerk of corrigeer deze producten eerst en probeer daarna opnieuw.

### Het aantal kan niet worden bevestigd

- Selecteer eerst een product en een actieve doos.
- Voer een aantal groter dan nul in.
- Controleer `ToPackQuantityDisplayType` en de bosinhoud van het artikel.
- Voer niet meer in dan de resterende orderhoeveelheid.

### Een inpaktafelregel kan niet worden verwijderd

Controleer of `AllowRemovingPackingStationItems = true`. Gebruik de actie alleen voor een foutieve regel; registreer normale producten altijd via de doos.

### Pauzeren of afronden lukt niet

- Controleer `PauseBox.BoxLabel.IsActive` of `FinalizeBox.BoxLabel.IsActive` voor de betreffende actie.
- Controleer `PausedBoxPrinterName` en `PausedBoxPrintLayout` bij pauzeren.
- Controleer `CompletedBoxPrinterName` en `CompletedBoxPrintLayout` bij afronden.
- Controleer of de printer en printlay-out bereikbaar en geldig zijn.
- Controleer bij een lockplateverpakking `FinalizeBox.RequireLockPlateRegistration`, `FUST.SLTPLTDV` en de gescande barcode.

---

## Belangrijk voor een correcte inrichting

- Vul voor de Sorting-flow een geldig `PackingStationId` in.
- Stem `BoxVisibilityStrategy` en `BoxAdditionalInfo` op elkaar af.
- Geef verwijderen alleen vrij met `AllowRemovingPackingStationItems` voor medewerkers die foutieve inpaktafelregels mogen opschonen.
- Kies met `ToPackQuantityDisplayType` één duidelijke aantalseenheid en controleer de bosinhoud van artikelen.
- Vul `NewPacking.AvailablePackagingIds` met alle algemeen toegestane fustcodes en controleer de klantspecifieke doosfustcode.
- Controleer `LinkBox.DepartmentId` voordat nieuwe dozen in productie worden aangemaakt.
- Test `PauseBox.BoxLabel.PausedBoxPrinterName`, `PausedBoxPrintLayout` en `IsActive` samen.
- Test `FinalizeBox.BoxLabel.CompletedBoxPrinterName`, `CompletedBoxPrintLayout` en `IsActive` samen.
- Schakel `FinalizeBox.RequireLockPlateRegistration` alleen in wanneer de betreffende fustcodes en lockplate-integratie correct zijn ingericht.
