📘 Beschikbaar in: [English](Manual%20FSQR%20-%20EN.md)

# FSQR gebruiken en inrichten

FSQR is informatie in een QR-code op een sticker. Door de code te scannen kan Florisoft bijvoorbeeld een kar, doos of orderregel herkennen. Wat er na het scannen gebeurt, hangt af van het scherm en de werkwijze waarvoor de code is ingericht.

## Inhoud

- [Waarom FSQR gebruiken?](#waarom-fsqr-gebruiken)
- [Voorbereiding voor beheerders](#voorbereiding-voor-beheerders)
- [Een FSQR-configuratie maken](#een-fsqr-configuratie-maken)
- [FSQR-configuratie koppelen aan een policy](#fsqr-configuratie-koppelen-aan-een-policy)
- [Technische instellingen per toepassing](#technische-instellingen-per-toepassing)
- [Voorbeeld: een kar openen met een sticker](#voorbeeld-een-kar-openen-met-een-sticker)
- [Controleren en problemen oplossen](#controleren-en-problemen-oplossen)

## Waarom FSQR gebruiken?

Het belangrijkste voordeel van FSQR is dat u op één sticker één QR-code kunt gebruiken voor verschillende scanprocessen. In plaats van voor ieder proces een aparte barcode op het label te zetten, kan dezelfde code bijvoorbeeld informatie bevatten waarmee een passende toepassing een kar, doos of orderregel herkent. Welke processen de code kunnen gebruiken, hangt af van hun inrichting.

De inhoud is opgebouwd uit segmenten: herkenbare gegevens zoals een kar-ID of doos-ID. U kunt de configuratie uitbreiden door benodigde segmenten toe te voegen, zolang het printproces de gegevens aanlevert en de scanprocessen ze ondersteunen. Zo kan een label meegroeien met nieuwe scanprocessen zonder voor elk proces een andere barcode nodig te maken.

Een FSQR-sticker kan helpen voorkomen dat medewerkers nummers handmatig overnemen. Scan de sticker in het scherm dat bij de werkwijze hoort. Een leesbare QR-code werkt niet automatisch in elk Florisoft-scherm.

### Aandachtspunt bij externe partijen

FSQR bevat Florisoft-specifieke, samengestelde informatie. Externe partijen of scanapplicaties kunnen de QR-code mogelijk wel uitlezen, maar de inhoud niet herkennen of verwerken. Controleer daarom met de betreffende partij of haar apparatuur en software FSQR ondersteunt voordat u de code in een externe keten gebruikt.

Herkent Florisoft de code niet of gebeurt er iets anders dan verwacht? Vraag uw beheerder of de sticker en het scanscherm voor elkaar zijn ingericht.

## Voorbereiding voor beheerders

Voordat u een configuratie wijzigt, bepaal:

- welk object of welke informatie de sticker moet herkennen;
- waar de sticker wordt afgedrukt en in welk Florisoft-scherm deze wordt gescand;
- welke gegevens de afdruk aan de QR-code meegeeft en welke gegevens het scanscherm nodig heeft.

De instellingen en ondersteuning kunnen verschillen per toepassing en Florisoft-versie. Voor de inrichting is toegang nodig tot de constanten, de policy van het printproces en de afdruklayout. Een policy bepaalt welke configuratie het printproces gebruikt. Een afdruklayout bepaalt hoe de sticker eruitziet. Een decoder is de functie die de gescande code uitleest. Een geselecteerd veld krijgt alleen een waarde als het printproces die aanlevert; lege waarden worden overgeslagen. Test wijzigingen met de echte printer, stickers en scanner. Maak eerst een kopie van een bestaande layout.

## Een FSQR-configuratie maken

Deze stappen zijn bedoeld voor beheerders. Een policy bepaalt hier welke configuratie een printproces gebruikt. Een afdruklayout bepaalt hoe de sticker wordt afgedrukt.

1. Open in de constanten **FSQR Configuratie** en maak een configuratie met een herkenbare omschrijving, bijvoorbeeld `NewTrolley - kar-ID`.
2. Sla de configuratie op. Open daarna **Fields** en voeg de benodigde velden toe, bijvoorbeeld `TrolleyId`. Een veld kan eenmaal per configuratie voorkomen; de volgorde kan worden ingericht.
3. Sla de velden op en selecteer de configuratie in de policy van het betreffende printproces. De namen en locatie verschillen per toepassing; zie het overzicht hieronder.
4. Neem in de juiste afdruklayout een QR-code op met de variabele die bij dat proces hoort. Controleer de printer en de actieve printinstelling.
5. Controleer in het ontvangende scherm of de FSQR-decoder beschikbaar en, waar instelbaar, toegestaan is. Sla wijzigingen op en laad de instellingen opnieuw.
6. Print en scan een representatief label. Controleer niet alleen of de scanner de code leest, maar ook of het juiste object wordt geopend of de bedoelde handeling wordt uitgevoerd.

> Een configuratie selecteert bestaande veldtypen; zij maakt geen gegevens beschikbaar die het printproces niet levert. Sommige toepassingen maken hun FSQR zelf en gebruiken geen algemene configuratie.

## FSQR-configuratie koppelen aan een policy

De configuratie bepaalt welke gegevens en volgorde de QR-code krijgt. De policy koppelt de configuratie aan een printproces; de layout bepaalt welke variabele wordt afgedrukt.

1. Gebruik de FSQR-configuratie die u hierboven hebt aangemaakt. Voeg zo nodig onder **Fields** de benodigde velden toe en sla de wijzigingen op.
2. Kies in de tabel hieronder het gewenste printproces en zoek de bijbehorende policy-instelling op in het policybeheer. Selecteer uw configuratie als waarde en sla de policy op. Herhaal dit voor elk gewenst printproces en controleer welke policy geldt voor de gebruiker en situatie.
3. Voeg in de actieve layout een QR-code toe met de aangegeven variabele. Controleer de printer en of printen actief is.
4. Laad de instellingen opnieuw, print een representatief voorbeeld en scan dit in ieder bedoeld proces. Controleer de inhoud en de uitgevoerde handeling.

| Printproces | Volledige policy-instelling | Layoutvariabele |
|---|---|---|
| Box-/verdeelsticker en pickordersticker | `Backoffice_Logistics_OrderPick_FSQRCConfiguration` | `FSQRC` |
| Nieuwe kar: TrolleyLoading, Transportplanning en Returnables Outbound | `Apps_Logistics_Packing_TrolleyLoading_TrolleyHandling_NewTrolley_TrolleyLabel_Printer_FSQRCode` | `FSQR` |
| Afgeronde kar: TrolleyLoading | `Apps_Logistics_Packing_TrolleyHandling_CompleteTrolley_CompleteTrolleyLabel_Printer_FSQRCode` | `FSQR` |
| Gepauzeerde doos: BoxPacking | `Apps_Logistics_Packing_BoxPacking_PauseBox_BoxLabel_FSQRCode` | `FsqrPayload` |
| Afgeronde doos: BoxPacking | `Apps_Logistics_Packing_BoxPacking_FinalizeBox_BoxLabel_FSQRCode` | `FsqrPayload` |
| Doosvullen in de backoffice | `Backoffice_Logistics_BoxPacking_FSQRCode` | Controleer de gebruikte layout |

**Voorbeeld Box en pickorders:** maak een configuratie met bijvoorbeeld `KaropbouwBarcode` als het ontvangende scanproces die nodig heeft. Selecteer deze bij `Backoffice_Logistics_OrderPick_FSQRCConfiguration` en plaats `FSQRC` als QR-code op de stickerlayout. Test de Box- en pickordersticker afzonderlijk en controleer of de barcode gevuld en herkenbaar is.

De bestaande stickervariabele `FSQR` gebruikt een andere instelling: `Backoffice_Logistics_OrderPick_QRCodePayloadFields`. Test bestaande scanprocessen voordat u de variabele vervangt. De pickorderpaklijst heeft een bestaand `FSQR`-veld; een koppeling aan de algemene configuratie is voor deze paklijst niet bevestigd. Beschikbaarheid van instellingen kan per Florisoft-versie verschillen.

## Technische instellingen per toepassing

De namen hieronder zijn bedoeld voor beheerders die de instellingen inrichten. Welke combinatie werkt, hangt af van het printproces en het scherm waarin de code wordt gescand.

<details><summary>Instellingen en labelvariabelen per toepassing</summary>

| Toepassing | Inrichting en gebruik | Labelvariabele |
|---|---|---|
| Nieuwe kar: Transportplanning en TrolleyLoading | Selecteer een configuratie met `TrolleyId` bij `Apps_Logistics_Packing_TrolleyLoading_TrolleyHandling_NewTrolley_TrolleyLabel_Printer_FSQRCode`. De code kan in TrolleyLoading de bijbehorende kar openen. Dezelfde labelstroom wordt ook door Returnables Outbound gebruikt. | `FSQR` |
| Afgeronde kar: TrolleyLoading | Selecteer de configuratie met `TrolleyId` bij de `FSQRCode`-instelling onder `TrolleyHandling → CompleteTrolley → CompleteTrolleyLabel → Printer`. Controleer de inrichting en het scangedrag voor de beoogde vervolgstap. | `FSQR` |
| Gepauzeerde of afgeronde doos: BoxPacking | Configureer `FSQRCode` afzonderlijk onder `PauseBox → BoxLabel` en `FinalizeBox → BoxLabel`. Voor de dooscode levert deze printstroom `BoxId`. Controleer de ontvangende toepassing en haar decoder. | `FsqrPayload` voor het label; de inhoudsregels hebben daarnaast `FSQR`. |
| Doosvullen in de backoffice | Selecteer een configuratie met `BoxId` bij `Backoffice_Logistics_BoxPacking_FSQRCode`. Doosvullen kan een FSQR met doos-ID ook verwerken bij een scan. Controleer welke variabele de gebruikte dooslayout aanbiedt en test de keten. | Controleer de gebruikte layout |
| Box- en pickorder-/verdeelstickers | De configureerbare variant gebruikt `OrderPick_FSQRCConfiguration` en `FSQRC`. Beschikbare gegevens verschillen per printstroom. De bestaande `FSQR` heeft een afzonderlijke veldselectie via `OrderPick_QRCodePayloadFields`; vervang de ene variabele niet zonder ketentest door de andere. Zonder configuratie blijft `FSQRC` leeg. | `FSQRC` of bestaande `FSQR` |
| PriceLabels | Scan een FSQR met `KaropbouwBarcode` om het bijbehorende orderitem voor prijslabels te vinden. Sta `FSQR` toe bij `Apps_Logistics_Labeling_PriceLabel_BarcodeSettings_ValidBarcodeDecodeOptions` en zorg dat de scanner QR-codes kan lezen. | Afhankelijk van de labelbron |
| Unieke drager | In ondersteunde processen wordt een drager-ID in de FSQR gezet. Onder meer locatieverwerking, eindcontrole, karopbouw, PalletPicking en VehicleLoading gebruiken dragergegevens in specifieke workflows. De precieze print- en scaninstellingen verschillen per proces. | Afhankelijk van de gebruikte layout, onder meer `FSQR` |
| Interne pickdrager | OrderPicking kan een dragerlabel met `InternalPickingCarrierId` maken; Sorting kan de interne drager via FSQR herkennen. Deze labelstroom maakt de inhoud zelf aan; test beide stappen samen. | `FsqrPayload` |
| Voorraad en locatie | Slotting en StockItemInfo kunnen een unieke drager herkennen; StockCounting bevat eveneens FSQR-verwerking. De uitkomst hangt af van de scanflow en beschikbare voorraad. Controleer de afzonderlijke workflow met de gekozen code. | Afhankelijk van de labelbron |
| Cash & Carry | Een ondersteunde kassascan kan onder meer een kortings-ID uit FSQR herkennen; verwerking van een unieke drager verloopt via een andere route. Controleer het doel en test de daadwerkelijke kassawerkwijze. | Afhankelijk van de labelbron |
| Returnables-sessie en fust | Ondersteunde Returnables-scanflows kunnen een sessie-ID of fustgegevens herkennen. Controleer de inrichting en de bedoelde scanpagina van de betreffende workflow. | Afhankelijk van de labelbron |
| Policy-situatie | Een FSQR kan een policy-situatie bevatten die een ondersteunende policy-scanfunctie herkent. Controleer de werkwijze en rechten in de betreffende toepassing. | Afhankelijk van de bron |

Dit overzicht onderscheidt printen van scannen: het bestaan van een veld of decoder betekent niet dat elke combinatie van bron en ontvanger wordt ondersteund. Andere procesintegraties kunnen afhankelijk zijn van de versie of klantspecifieke inrichting; controleer die vóór gebruik met Florisoft.

### Beschikbare veldtypen

De configuratie biedt onder meer de volgende veldtypen. De precieze betekenis en beschikbaarheid kunnen per print- en scanproces verschillen.

| Veld | Korte context |
|---|---|
| `ClientCode` | Clientcode. |
| `CustomerId` | Identificatie van een klant. |
| `ExterneBarcode` | Barcodewaarde uit een extern systeem. |
| `KaropbouwBarcode` | Barcode voor een orderregel bij karopbouw. |
| `PolicySituation` | Code voor een policy-situatie. |
| `BakBarcode` | Barcode van een bak. |
| `UniekeDrager` | Identificatie van een unieke drager. |
| `ExterneGuid` | Extern unieke identificatie. |
| `KortingId` | Identificatie van een korting. |
| `Banduitgang` | Code voor een banduitgang. |
| `HandlingZone` | Identificatie van een handlingzone. |
| `Gate` | Code voor een poort of gate. |
| `Fustcode` | Code van een fust. |
| `Richting` | Code voor een richting. |
| `ReturnablesSessieId` | Identificatie van een Returnables-sessie. |
| `PartijBarcode` | Barcode van een partij. |
| `BoxId` | Identificatie van een doos. |
| `TrolleyId` | Identificatie van een kar. |
| `InternalPickingCarrierId` | Identificatie van een interne pickdrager. |

Selecteer alleen velden die de gebruikte printstroom daadwerkelijk vult en de ontvanger nodig heeft. Bijvoorbeeld: de nieuwe-karlabelstroom levert `TrolleyId`; het toevoegen van een ander veld vult dat veld niet automatisch.

</details>

## Voorbeeld: een kar openen met een sticker

Dit voorbeeld is bedoeld voor beheerders die een nieuwe-karsticker inrichten.

1. Maak en bewaar een FSQR-configuratie met `TrolleyId`.
2. Selecteer deze bij `Apps_Logistics_Packing_TrolleyLoading_TrolleyHandling_NewTrolley_TrolleyLabel_Printer_FSQRCode`.
3. Richt printer en layout in. Voeg een QR-code toe die de variabele `FSQR` gebruikt. Sta de FSQR-decoder toe in het relevante TrolleyLoading-scherm.
4. Print een nieuwe karsticker vanuit Transportplanning. Scan de sticker in TrolleyLoading en controleer of de bijbehorende kar wordt geopend.

## Controleren en problemen oplossen

- Houd de inhoud beperkt tot wat de keten nodig heeft. Meer gegevens kunnen de code dichter maken en het scannen bemoeilijken.
- Test een code met meerdere gegevens in **elk** ontvangend proces. Sommige decoders geven één herkend resultaat voorrang; een combinatie kan daardoor ander gedrag geven dan losse codes.
- Test zowel korte als representatieve lange waarden, afdrukformaten en de daadwerkelijke scanomstandigheden. Vergroot zo nodig de QR-code of pas de printerinstellingen aan.
- Gebruik voor `FSQRClientCode` een korte, herkenbare code waar die instelling in het gebruikte proces wordt toegepast. Wijzig een bestaande code pas na controle van de afhankelijke processen.
- Een QR-code is leesbaar voor iemand met een geschikte scanner. Neem geen vertrouwelijke gegevens op die niet nodig zijn voor het proces.

| Probleem | Controle |
|---|---|
| Geen QR op de afdruk | Controleer of afdrukken actief is, de juiste layout wordt gebruikt en de QR-code naar de juiste variabele verwijst. Controleer ook of de configuratie aan de juiste policy is gekoppeld. |
| QR leesbaar, maar de app herkent niets | Controleer de toegestane decoder voor het scherm, de aanwezige veldwaarde en of dat scherm deze toepassing ondersteunt. |
| Verkeerd object of onverwachte actie | Controleer de inhoud en test welke waarde de ontvanger gebruikt, vooral bij meerdere velden. Controleer ook de policy-situatie en actuele gegevens. |
| Een gekozen veld ontbreekt | Controleer of het printproces de waarde levert en of deze voor de actuele afdruk is gevuld. Een leeg veld wordt niet opgenomen. |
| Slecht scanbaar | Controleer afdrukkwaliteit, formaat, contrast en plaatsing. Test met de echte printer, scanner en representatieve inhoud. |

Wijzigt u een bestaande productieconfiguratie of layout, test dan alle processen die deze delen voordat u de wijziging in gebruik neemt.
