![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding – Order Picking (Picking App)

## Inleiding

Met **Generiek orderpicken** verwerkt een magazijnmedewerker werkopdrachten op een mobiel apparaat. De app begeleidt de gebruiker bij het verkrijgen van een werkopdracht, het verzamelen en registreren van artikelen en het afronden van de opdracht.

De workflow wordt volledig door policies ingericht. Daardoor kan Florisoft automatisch een werkopdracht toewijzen of de medewerker zelf laten kiezen. Ook kan een pick met een knop, een controlescan, per kolli of in deelhoeveelheden worden geregistreerd.

Deze handleiding beschrijft de gebruikersstappen en licht bij iedere stap direct toe welke policies het gedrag bepalen.

---

## Licentievereisten en benodigdheden

Voor Order Picking zijn minimaal nodig:

- toegang tot de Florisoft **Picking App**;
- toegang tot de usecase `Logistics.Picking.OrderPicking`;
- een geldige medewerker;
- een scanner of camera voor de scanflows;
- beschikbare werkopdrachten en voorraden;
- voor printacties: een ingestelde printer, lay-out en een bereikbare Job Agent;
- voor aanvullende acties: de bijbehorende licenties.

De policy `UseCaseKind` bepaalt welke picking-usecase wordt gestart. Selecteer `GenericPicking` voor de workflow in deze handleiding. De andere beschikbare waarde is `PalletPicking`; `Unknown` start geen bruikbare Order Picking-flow. Als geen afwijkende waarde is ingesteld, is `GenericPicking` de standaard.

## Waar vindt u de policies?

Open in de Backoffice het **constantenscherm** en ga via **Systeem → Users → Policy Beheer** naar **Apps → Logistics → Picking**. De onderliggende groepen **Packing List**, **Instruction Scan**, **Alternative Location** en **Order Picking** bevatten de instellingen voor de betreffende processtappen.

Meer informatie over het maken, koppelen en prioriteren van policies staat in de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

> Een lege policywaarde kan terugvallen op een bestaande Backoffice-instelling of op standaardgedrag. Test een gewijzigde inrichting daarom eerst met een aparte testpolicy en een representatieve werkopdracht.

---

## Het orderpickproces in het kort

1. Open **Generiek orderpicken** en identificeer de medewerker.
2. Kies eventueel één of meer medewerkersgroepen.
3. Accepteer de automatisch toegewezen werkopdracht of kies zelf een opdracht.
4. Controleer het overzicht en activeer de werkopdracht.
5. Ga naar de getoonde locatie en scan het artikel of de drager.
6. Controleer de details en registreer de pick volgens de ingestelde methode.
7. Verwerk zo nodig een alternatieve locatie of afwijking.
8. Herhaal dit totdat alle artikelen zijn verwerkt.
9. Rond de werkopdracht af.
10. Voer eventueel aanvullende acties uit en sluit de opdracht.

---

## Stap 1 – De app en medewerkerscontext starten

Open in Florisoft de Picking App en kies **Generiek orderpicken**. Als nog geen medewerker bekend is, vraagt Florisoft eerst om identificatie. Alle scans, claims en pickacties worden daarna aan deze medewerker gekoppeld.

Afhankelijk van de inrichting kan de gebruiker één of meer medewerkersgroepen selecteren. De gekozen groepen worden in de gebruikersstatus bewaard en bij een volgende sessie opnieuw gebruikt. Ze bepalen welke werkopdrachten Florisoft mag aanbieden.

De medewerkersgroepen in de app zijn de **verkopersgroepen** uit de Backoffice. Maak of wijzig deze groepen in het constantenscherm bij **Verkopergroep**. Leg daar de groepcode en groepsnaam vast en voeg de verkopers/medewerkers toe die tot de groep behoren. De app haalt voor de aangemelde medewerker alleen de groepen op waaraan deze medewerker is gekoppeld.

Bij het aanmaken of uitleveren van pickorders bepalen twee Backoffice-policies welke groep op de werkopdracht wordt vastgelegd:

- `Backoffice_Logistics_Pickorders_Entry_ShowUserGroup` toont het veld **Verkopersgroep** in het pickorder-invoerscherm;
- `Backoffice_Logistics_Pickorders_Entry_DefaultUserGroup` vult in dat veld standaard de ingestelde verkopersgroep in. Deze standaard werkt alleen wanneer `Backoffice_Logistics_Pickorders_Entry_ShowUserGroup` is ingeschakeld.

De gekozen groep wordt op de werkopdracht opgeslagen. Selecteert de picker in de app één of meer groepen, dan worden alleen werkopdrachten met één van die groepen geladen. Als geen groep is geselecteerd, past de app geen groepsbeperking toe. Gebruik een standaardgroep daarom vooral om nieuwe werkopdrachten consequent aan de juiste ploeg of afdeling toe te wijzen; de koppeling van medewerkers aan die groep bepaalt vervolgens wie deze groep in de app kan kiezen.

De app toont alleen deze generieke flow wanneer `UseCaseKind` op `GenericPicking` staat. Is `PalletPicking` geselecteerd, dan start een andere usecase waarop deze handleiding niet van toepassing is.

---

## Stap 2 – Beschikbare werkopdrachten bepalen

Voordat de picker een opdracht ziet, beperkt Florisoft de beschikbare werkzaamheden op datum, voorraad en beschikbaarheid.

De policies `OrderDateFrom` en `OrderDateTo` bepalen het toegestane datumbereik ten opzichte van de orderdatum. Wanneer hiervoor geen policywaarde is ingevuld, kan Florisoft terugvallen op de bestaande pickorderdatuminstellingen uit de Backoffice.

Met `AvailableStocks` stelt u in uit welke voorraden pickitems mogen worden geladen. Bij een lege policy kan de bestaande lijst met pickordervoorraden worden gebruikt. Controleer deze selectie zorgvuldig: een werkopdracht kan ontbreken wanneer de bijbehorende voorraad niet is toegestaan.

Wanneer `UseLogisticParcels` actief is, betrekt Florisoft logistieke partijen bij de beschikbaarheidscontrole. `RemoveLogisticParcelWhenZero` bepaalt vervolgens of zo'n logistieke partij wordt verwijderd zodra de resterende hoeveelheid nul is. Deze laatste instelling kan terugvallen op de bestaande systeeminstelling.

De systeeminstelling `IniSettings_FSSystem_Pickorder_PakstatusMoetWordenGepakt` bepaalt of een pickorder de status **Moet worden gepakt** krijgt. Bij de standaardwaarde `true` wordt deze status ook gezet bij normaal uitleveren en printen. Daardoor kunnen workorders ontstaan voor orders die niet via de PDA uitgeleverd moeten worden. Zet de instelling uit wanneer workorders uitsluitend via **Uitleveren via PDA** mogen worden aangemaakt. Zonder de juiste pakstatus kan een opdracht ontbreken in het werkopdrachtenoverzicht.

`PickOrderSplitStrategy` bepaalt hoe een benodigde hoeveelheid over beschikbare unieke dragers wordt verdeeld:

- `SmallestCarriersFirst` gebruikt eerst de kleinere beschikbare dragers en is het standaardgedrag;
- `FullCarriersFirstThenRemainder` gebruikt eerst volledige dragers en verwerkt daarna het restant.

Deze verdeling beïnvloedt welke locatie en unieke drager bij een pickitem worden aangeboden.

---

## Stap 3 – Een werkopdracht verkrijgen

De policy `WorkOrderAssignmentStrategy` onder **Apps → Logistics → Picking → Order Picking** bepaalt hoe de picker een werkopdracht krijgt.

### Automatische toewijzing

Bij `Automatic` reserveert Florisoft automatisch een passende opdracht op basis van de medewerkersgroepen. Dit is de standaardstrategie.

Op het scherm **Overzicht** ziet de picker onder andere:

- het werkopdrachtnummer;
- de transporteur of drager, indien van toepassing;
- het totale aantal picks;
- de aantallen kolli, dozen en stelen;
- de klant- en ordernummers;
- eventuele order- en pickinstructies.

Controleer de gegevens en tik op de knop met de **pijl** om de werkopdracht te activeren. Door de medewerkersgroepen te wijzigen vraagt de gebruiker een opdracht voor de nieuwe selectie op. Gebruik **Verversen** wanneer deze knop op het scherm wordt getoond.

### Handmatige toewijzing

Bij `Manual` opent eerst het scherm **Werkopdrachten**. De gebruiker kan de lijst op medewerkersgroep filteren en ziet per opdracht het werkopdrachtnummer, het totale aantal kolli en de resterende tijd tot vertrek.

1. Tik op de gewenste werkopdracht.
2. Tik op **Bevestig**.
3. Controleer het overzicht.
4. Tik op de knop met de **pijl** om de opdracht te activeren.

`WorkOrderUrgencyThreshold` bepaalt wanneer de vertrektijd als urgent wordt weergegeven. De standaardgrens is 30 minuten. Zodra de resterende tijd binnen deze grens valt, krijgt de opdracht een opvallende urgentiemarkering.

De Backoffice-policy `Backoffice_Logistics_OrderPick_AuthorizeInvoiceHeaderUrgent` maakt in het pickorderscherm de knop **XOrderkop prio** beschikbaar. Een bevoegde gebruiker kan hiermee de prioriteitsmarkering van de `XORDERKOP` aanpassen. Deze markering wordt in de app als urgente werkopdracht weergegeven en opdrachten met prioriteit worden vóór niet-prioritaire opdrachten gesorteerd. `WorkOrderUrgencyThreshold` bepaalt vervolgens of de resterende vertrektijd de urgentiegrens heeft overschreden en daarmee hoe opvallend de urgentie wordt getoond.

Gebruik deze twee instellingen samen om inzicht en sturing te krijgen: de Backoffice-policy bepaalt of planners een opdracht handmatig als prioriteit mogen markeren; de Picking-policy bepaalt vanaf welk moment de vertrektijd extra aandacht vereist.

### Tijdelijke reservering

Een geclaimde opdracht blijft tijdelijk voor de medewerker gereserveerd. Wordt deze niet op tijd geactiveerd, dan geeft Florisoft de claim vrij. De gebruiker krijgt een melding en moet een nieuwe opdracht ophalen. Zo blijven verlaten opdrachten niet onnodig geblokkeerd.

---

## Stap 4 – De werkopdracht activeren en documenten printen

Na activering opent het scherm **Orderpicks**. De policy `ActivateWorkOrderAdditionalActions` bepaalt welke acties Florisoft direct tijdens de activatie uitvoert. De ondersteunde acties zijn `PrintPackingList` en `PrintPickItemLabels`; een lege lijst voert geen automatische actie uit.

### Pickorderstickers automatisch printen

Kies `PrintPickItemLabels` in `ActivateWorkOrderAdditionalActions` om na activatie automatisch stickers voor de pickitems van de werkopdracht af te drukken. Richt vooraf onder **Order Picking → PickItemLabelPrintSettings** de volgende policies in:

- `PickItemLabelPrinter`: de printer voor pickorderstickers;
- `PickItemLabelLayout`: de lay-out voor pickorderstickers.

Na een geslaagde verzending toont Florisoft de gebruikelijke melding dat de printopdracht naar de ingestelde printer is gestuurd. Deze melding bevestigt dat de opdracht is verzonden, niet dat de stickers fysiek uit de printer zijn gekomen. Controleer daarom bij een nieuwe of gewijzigde printer altijd een testwerkopdracht. Voor een onbekende of onbereikbare printer is niet altijd een afzonderlijke melding beschikbaar.

### Paklijst automatisch printen

Voor automatisch printen moeten de policies onder **Packing List** correct zijn ingericht:

- `PrinterSettings` bevat de printer- en lay-outinstellingen;
- `GroupPickItemsForPackingListType` bepaalt hoe de regels worden gegroepeerd.

Met `Customer` worden de regels per debiteur gegroepeerd. Dit is de standaard. Met `CustomerOrderName` groepeert Florisoft per debiteur én ordernaam.

De Job Agent moet bereikbaar zijn om de printopdracht naar de printer te sturen. Ontbreekt een printer of lay-out of mislukt de printopdracht, dan toont Florisoft een melding. Controleer deze melding voordat het fysieke pickproces begint.

Daarnaast moet `Backoffice_Logistics_OrderPick_AllowedToPrintPackingListToPDA` ingeschakeld zijn wanneer de paklijst via de PDA-uitlever- en printflow wordt afgedrukt. Staat deze Backoffice-policy uit, dan houdt Florisoft het printen van de paklijst via PDA tegen, ook wanneer `ActivateWorkOrderAdditionalActions` de actie `PrintPackingList` bevat en `PrinterSettings` correct is ingevuld.

---

## Stap 5 – De picklijst lezen

Iedere artikelregel toont de informatie waarmee de picker het juiste product en de juiste locatie herkent. De standaardregel bevat onder andere productfoto, omschrijving, locatie, klant, ordernummer, hoeveelheid, partijkenmerken, partijsuffix, unieke drager en eventuele instructies.

De policy `LocationDisplayType` bepaalt welke locatie-informatie wordt getoond:

- `LocationCode` toont de locatiecode en is de standaard;
- `LocationDescription` toont de locatieomschrijving.

### Volgorde van de pickitems

Het pickitemscherm sorteert de regels standaard op locatiecode. Hierdoor worden de locaties in een logische volgorde getoond.

Is aan de werkopdracht een looproute gekoppeld, dan volgt Florisoft in plaats daarvan de locatievolgorde van die looproute. Zo kan de picker de artikelen verzamelen in de volgorde waarin de locaties in het magazijn worden bezocht. Locaties die niet in de looproute zijn opgenomen, verschijnen na de locaties uit de route en worden onderling op locatiecode gesorteerd.

`StockItemIdentifier` bepaalt welk partij-identificatienummer zichtbaar is. Beschikbare waarden zijn `None` (standaard), `StockItemNr` en `VStockItemNr`.

Met `StockItemWordReferenceKind` bepaalt u hoe Florisoft het partijwoord uit de tabel `WOORDEN` opzoekt. `ParcelID` gebruikt het partijnummer, `VParcelID` het V-partijnummer en `Unknown` gebruikt geen vastgelegde referentiemethode.

### Inhoud en volgorde van het detailscherm

Met de geordende lijst `PickItemDetails` bepaalt u welke aanvullende velden op het detailscherm verschijnen en in welke volgorde. Beschikbaar zijn:

- `Sku`: partijnummer of SKU;
- `Word`: partijwoord;
- `S1`, `S2`, `S3`, `S4` en `S5`: de sorteringskenmerken;
- `Color`: kleur;
- `PackagingCode`: fustcode;
- `TotalColliToPick`: het oorspronkelijke totaal aantal te picken kolli;
- `Remark`: opmerking;
- `ArticleNumber`: artikelnummer.

Een beschikbare `Remark` verschijnt standaard in **Orderpicks** en **Details** en kan daarnaast via `PickItemDetails` als detailitem worden toegevoegd. De handmatige orderregelopmerking (`OPMERKING`) heeft voorrang; is deze leeg, dan toont de app de webshopnotitie uit **Stock > Note** (`OPMERKING2`). Opmerkingen worden niet gecombineerd.

De standaardlijst bevat `Sku`, `Word`, `S1` tot en met `S5`, `Color` en `PackagingCode`.

Een informatiemarkering geeft aan dat een artikel over meerdere locaties of voorraadregels verdeeld kan zijn. De voortgang onder in het scherm toont hoeveel regels zijn verwerkt. Trek de lijst omlaag om de actuele werkopdracht opnieuw op te halen.

---

## Stap 6 – Een artikel picken

1. Ga naar de locatie die bij het artikel staat.
2. Controleer product, kenmerken, aantal en eventuele instructies.
3. Scan de barcode van de voorraadpartij of unieke drager.
4. Controleer het scherm **Details**.
5. Neem het aangegeven aantal.
6. Registreer de pick volgens de ingestelde methode.

De combinatie van drie policies bepaalt de bevestigingswijze:

- als `SplitOrderPicking` aan staat, voert de picker het aantal volledige kolli en een eventuele resthoeveelheid in;
- als `ScanPerUnit` aan staat, scant de picker iedere kolli afzonderlijk en toont de app een teller en voortgangsbalk;
- als `ConfirmPickWithScan` aan staat, bevestigt de picker het actieve artikel met een passende tweede scan;
- wanneer alle drie uit staan, bevestigt de picker met de knop met het **vinkje**.

`ConfirmPickWithScan` en `ScanPerUnit` staan standaard uit. `SplitOrderPicking` gedraagt zich als uit wanneer geen waarde is ingesteld.

Gebruik bij voorkeur één hoofdvariant. Wanneer `SplitOrderPicking` en `ScanPerUnit` tegelijk actief zijn, heeft de deelpickberekening bij de uiteindelijke verwerking voorrang. Een eenduidige policy voorkomt dat de scherminstructie en de verwachte handeling voor de picker onduidelijk worden.

Na een geslaagde registratie verlaagt Florisoft de resterende hoeveelheid. Een volledig verwerkte regel verdwijnt uit de open picklijst. Als `RemoveLogisticParcelWhenZero` actief is, kan een gebruikte logistieke partij bij nul ook worden verwijderd.

---

## Stap 7 – Handmatig picken

De policy `AllowManualPicking` bepaalt of de gebruiker zonder werkende scan kan doorgaan. Deze instelling staat standaard uit.

Wanneer handmatig picken is toegestaan:

1. veeg over de betreffende artikelregel;
2. tik op het **handsymbool**;
3. bevestig dat het artikel handmatig wordt geregistreerd;
4. controleer het detailscherm;
5. bevestig de pick.

Gebruik deze mogelijkheid alleen wanneer de barcode ontbreekt of niet kan worden gescand. De picker blijft verantwoordelijk voor controle van artikel, locatie en hoeveelheid.

---

## Stap 8 – Een alternatieve locatie gebruiken

`AllowAlternativeLocationSelection` onder **Alternative Location** bepaalt of de picker voorraad van een andere locatie mag selecteren. De standaardwaarde is aan.

1. Houd de artikelregel ingedrukt of veeg over de regel.
2. Tik op het **locatiesymbool**.
3. Selecteer een voorraadregel. De app toont locatie, unieke drager en beschikbare hoeveelheid.
4. Tik op het **vinkje**.
5. Bevestig de gekozen locatie.
6. Controleer het detailscherm en registreer de pick.

Florisoft boekt de pick op de geselecteerde locatie en unieke drager. Wanneer `AllowAlternativeLocationSelection` uit staat, kan de gebruiker de alternatieve keuze niet bevestigen.

---

## Stap 9 – Afwijkingen verwerken

Wanneer onvoldoende voorraad beschikbaar is, kan Florisoft een verdeelcontrole aanmaken. `ExceptionReasonMissingInventory` bepaalt welke uitzonderingsreden daarvoor wordt gebruikt.

Als de Exception Registration-integratie en licentie beschikbaar zijn, kan de picker ook vanuit een pickitem een afwijking registreren:

1. veeg over de artikelregel;
2. tik op het **uitroepteken**;
3. kies een reden en vul de gevraagde gegevens in;
4. bevestig de afwijking.

Florisoft laadt daarna de werkopdracht opnieuw en past de nog te picken hoeveelheid aan.

### Afwijking op een unieke drager

De policies onder **Alternative Location → Carrier Discrepancy** bepalen of een specifieke drager als afwijkend kan worden gemeld.

`AllowRegisterUniqueCarrierDiscrepancy` toont bij inschakeling de afwijkingsactie op een alternatieve voorraadregel. `UniqueCarrierDiscrepancyReasons` bevat de toegestane reden-ID's uit de keuzelijst. Beide instellingen zijn nodig voor een bruikbare flow.

1. Veeg over de voorraadregel.
2. Tik op het **uitroepteken**.
3. Selecteer een reden.
4. Bevestig de registratie.

Zonder geldige redenen toont Florisoft een melding en keert de gebruiker terug.

---

## Stap 10 – De werkopdracht afronden

Zodra alle regels zijn verwerkt, geeft Florisoft aan dat de werkopdracht kan worden afgerond.

De policy `FinalizationMethod` onder **Order Picking → Finalize Work Order** beschrijft twee varianten:

- `Scan`: de gebruiker scant de ingestelde afrondbarcode; dit is de standaard;
- `Manual`: de gebruiker rondt de complete werkopdracht met een knop af.

Florisoft controleert altijd of de werkopdracht pickitems bevat, volledig is en nog aan de actieve picker is toegewezen. Een onjuiste afrondbarcode wordt geweigerd en een opdracht met openstaande regels kan niet normaal worden voltooid.

### Afronden met een speciale instructiescan

De speciale instructiescan hoort bij het afronden van de werkopdracht. Zodra alle pickregels zijn verwerkt, scant de gebruiker de ingestelde instructiebarcode. Florisoft vergelijkt deze scan met de barcode die in de inrichting onder **Instruction Scan** is vastgelegd. Komt de barcode niet overeen, dan blijft de werkopdracht open en verschijnt een melding dat de barcode ongeldig is.

Bij een geldige scan rondt Florisoft eerst de werkopdracht af. Alleen wanneer dat lukt, voert Florisoft de bijbehorende instructie uit. In de inrichting kan worden gekozen voor:

- een paklijst printen;
- een productiebon printen;
- afhankelijk van het soort werkopdracht een paklijst of productiebon printen;
- geen extra printactie.

Zorg dat de instructiebarcode, de gewenste actie en de benodigde printer en lay-out vooraf zijn ingericht. Deze printactie bij het afronden staat los van automatisch printen bij het activeren van een werkopdracht, zoals beschreven in stap 4.

> `Manual` is in de Order Picking-use-case beschreven, maar in de huidige gecontroleerde appcode wordt de werkopdracht nog via een afrondscan voltooid. Gebruik deze policywaarde pas wanneer de handmatige variant in de gebruikte appversie beschikbaar is.

Na een geslaagde afronding toont Florisoft een samenvatting. Tik op het **vinkje** om de opdracht te sluiten en een nieuwe werkopdracht te starten.

---

## Stap 11 – Extra handelingen uitvoeren

De policy `Addons_EnableAddons` onder **Order Picking → Add-ons** bepaalt welke extra handelingen na afronding worden aangeboden. Binnen Order Picking zijn de volgende waarden beschikbaar:

- `AdressLabel`: een adreslabel printen;
- `Returnables`: uitgaande retourverpakkingen registreren;
- `Photos`: foto's aan de werkopdracht toevoegen.

Een geselecteerde actie wordt alleen bruikbaar wanneer ook de bijbehorende licentie en integratie beschikbaar zijn. De algemene add-onwaarden `CMR` en `ExceptionRegistration` worden niet via deze Order Picking-lijst aangeboden.

### Adreslabel printen

1. Open **Extra handelingen**.
2. Selecteer **Adreslabel printen**.
3. Tik op **Bevestig**.
4. Volg de stappen om het label te printen.

### Retourverpakkingen registreren

1. Open **Extra handelingen**.
2. Selecteer **Retourverpakkingen registreren**.
3. Tik op **Bevestig**.
4. Registreer de uitgaande fusten voor de getoonde order.

### Foto's maken en bewaren

Volg de gedeelde [handleiding Foto's maken en beheren](../../Additional%20actions/Photos/Handleiding%20foto%27s%20maken%20en%20beheren%20-%20NL.md). De foto's worden gekoppeld aan de actieve werkopdracht. Keer daarna terug naar de samenvatting en tik op het **vinkje** om de werkopdracht definitief te verlaten.

---

## Meldingen en oplossingen

### Er zijn geen werkopdrachten

- Controleer de medewerkersgroepen.
- Controleer of de juiste verkopersgroep op de werkopdracht staat en of de medewerker aan deze groep is gekoppeld.
- Controleer `Backoffice_Logistics_Pickorders_Entry_ShowUserGroup`, `Backoffice_Logistics_Pickorders_Entry_DefaultUserGroup` en `IniSettings_FSSystem_Pickorder_PakstatusMoetWordenGepakt`.
- Controleer `OrderDateFrom`, `OrderDateTo` en `AvailableStocks`.
- Controleer of `UseLogisticParcels` past bij de gebruikte voorraadflow.
- Tik op **Verversen** en vraag de planner of er beschikbare opdrachten zijn.

### De reservering is verlopen

De werkopdracht is niet op tijd geactiveerd en weer vrijgegeven. Haal een nieuwe opdracht op en activeer deze binnen de beschikbare claimtijd.

### De barcode wordt niet herkend

- Controleer of u de juiste voorraadpartij of drager scant.
- Controleer of het artikel bij de actieve werkopdracht hoort.
- Controleer de locatie en de ingestelde bevestigingsmethode.
- Gebruik alleen indien toegestaan handmatig picken of een alternatieve locatie.

### Er is onvoldoende voorraad

Controleer de locatie en unieke drager. Kies indien beschikbaar een alternatieve locatie of registreer een afwijking. Controleer ook of `ExceptionReasonMissingInventory` correct is ingericht.

### Printen werkt niet

Controleer of automatisch printen bij het activeren is ingeschakeld en of de juiste actie is gekozen. Voor pickorderstickers controleert u `PrintPickItemLabels`, `PickItemLabelPrinter`, `PickItemLabelLayout` en de bereikbaarheid van de Job Agent. De melding dat een opdracht naar een printer is gestuurd bevestigt alleen de verzending; controleer bij een nieuwe of gewijzigde printer altijd het fysieke resultaat. Voor een paklijst controleert u de printer en lay-out, of printen vanaf de PDA is toegestaan en welke paklijstgroepering is gekozen. Controleer bij printen na de afrondscan ook de ingestelde instructiebarcode en de daaraan gekoppelde printactie.

### Een extra handeling is niet beschikbaar

Controleer de bijbehorende licentie en de vereiste integratie. Controleer voor foto's ook de policies, opslaglocatie en toegangsrechten volgens de [handleiding Foto's maken en beheren](../../Additional%20actions/Photos/Handleiding%20foto%27s%20maken%20en%20beheren%20-%20NL.md).

---

## Belangrijk voor een correcte inrichting

- Gebruik `GenericPicking` als `UseCaseKind` voor deze workflow.
- Kies één duidelijke pickmethode en combineer `SplitOrderPicking`, `ScanPerUnit` en `ConfirmPickWithScan` niet zonder een bewuste test.
- Test de beschikbare voorraden, dragerverdeling en locatieweergave met werkelijke magazijngegevens.
- Test iedere printer, lay-out en instructiebarcode voordat de policy in productie wordt gebruikt.
- Leg tekorten vast als afwijking en niet als volledig gepickt.
- Test de afrondmethode en alle add-ons met dezelfde rechten en licenties als de eindgebruiker.
