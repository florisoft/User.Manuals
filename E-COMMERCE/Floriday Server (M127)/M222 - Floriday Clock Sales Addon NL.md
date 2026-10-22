# Handleiding Floriday Server Clock Sales add-on

Er vanuit gaande dat de module Floriday Server is ingericht voor aanbieden op floriday danwel Connect afrekenen via de Floriday API zijn alleen onderstaande instellingen (deze worden pas actief bij activatie van de module Floriday Clock Sales addon) nodig om te kunnen veilen via de Floriday API.

De handleiding voor deze module vindt u hier [Handleiding Floriday Server](https://github.com/florisoft/User.Manuals/blob/main/E-COMMERCE/Floriday%20Server%20(M127)/M%20-%20Handleiding%20Server.md)



Deze instellingen stel je in per Veil-debiteur.
<img width="987" height="877" alt="2025-10-13-16-15-06" src="https://github.com/user-attachments/assets/82d35846-4371-4b37-8644-6c5e7c6fd662" />


1. Met deze instelling geef je aan dat je voor deze debiteur wil veilen via Floriday
2. Met deze instelling geef je aan of de partijen ook beschikbaar moeten zijn op Klokvoorverkoop
3. De leverancier die de API sleutel bevat die de communicatie naar Floriday uitvoert.
4. Op welke veiling ga je aanvoeren met deze debiteur?

## Minimum Veilprijs.

Floriday verwacht dat u als aanvoerder een minimum prijs meegeeft, standaard zal dit €0.01 zijn maar als u een afwijkende minimum prijs wil hanteren kan dit in de factuur gevuld worden in de ClockMinimumPrice kolom in de factuur.

## Controle vóór verzending: AanvoerCriticalErrors

Met de systeeminstelling `AanvoerCriticalErrors` bepaalt u welke geconstateerde fouten het verzenden van een aanvoerbrief moeten blokkeren. Deze controle vindt in Florisoft plaats vóór de verzending, ook wanneer u via Floriday veilt. Zodra een gevonden fout in de ingestelde lijst staat, verschijnt een melding en wordt het verzenden afgebroken. U moet de oorzaak herstellen en de aanvoerbrief opnieuw versturen; de melding biedt geen mogelijkheid om alsnog door te gaan.

### Instellen

1. Zoek in de systeeminstellingen naar `AanvoerCriticalErrors` onder `SETUP`.
2. Selecteer één of meerdere foutsoorten uit onderstaande tabel.
3. Sla de instelling op.

De instelling is standaard **leeg**. Er zijn dan via deze instelling geen extra blokkerende foutsoorten geselecteerd. Andere controles in Florisoft en de validatie door Floriday blijven van toepassing. Het verwijderen van een optie betekent dus niet dat een ongeldige aanvoer altijd verzonden of geaccepteerd kan worden. De instelling geldt op systeemniveau en wordt niet per veil-debiteur ingesteld.

### Beschikbare opties

| Optie | Betekenis |
| --- | --- |
| `NietAllesIngepakt` | Een partij is niet volledig ingepakt in de karindeling. |
| `ArtikelGroepCodeOnbekend` | De artikelgroepcode op een factuurregel is niet gevuld. |
| `InhoudKolliIsNul` | De inhoud per collo is 0. |
| `GeenHeleFusten` | Het aantal stuks is geen veelvoud van de inhoud per collo, waardoor gebroken fusten ontstaan. |
| `AnnulerenVanNogNietVerstuurd` | Er wordt geprobeerd een aanvoerbrief te annuleren die nog niet is verstuurd. |
| `GeenVeilGroepBekend` | Bij een verpakking/kar ontbreekt de veilgroep. De controle hangt samen met de automatische veilgroepbepaling. |
| `GeenEnkeleVerpakking` | Er zijn geen verpakkingen/karren gevonden voor de factuur. |
| `GeenBeeldVeilFoto` | Er is geen beeldveilfoto gevonden. Houd hierbij rekening met de inrichting van het beeldveilen. |
| `OngeldigVeilingArtikelNummer` | Het te gebruiken veilingartikelnummer bevat letters. Als het veilingartikelnummer leeg is, wordt voor deze controle het interne artikelnummer gebruikt. |
| `S1Verplicht`, `S2Verplicht`, `S3Verplicht`, `S4Verplicht`, `S5Verplicht`, `S6Verplicht`, `S7Verplicht` | Het betreffende sorteringskenmerk is bij het artikel verplicht en ingesteld om mee te sturen, maar is op de factuurregel niet geldig gevuld. Elk kenmerk is afzonderlijk selecteerbaar. |
| `GeenFustcode` | De fustcode op een factuurregel ontbreekt. |
| `InhoudBosVerplicht` | De inhoud per bos is 0. Deze controle wordt uitgevoerd wanneer `AanvoerInhoudBosCheck` is ingeschakeld. |
| `ValtOnderMinimalePrijs` | De verkoopprijs ligt onder `ConnectMinimalePrijs`. Dit is een Connect-controle bij een bekende koper, waarvoor ook `ConnectMinimalePrijsControle` aan moet staan. Dit is niet de minimumklokprijs uit het kopje Minimum Veilprijs. |
| `VerplichteSorteringMisMatch` | De sorteringskenmerken komen niet overeen met de bij het artikel voorgeschreven kenmerken. Deze controle wordt uitgevoerd bij een bekende koper (Connect). |
| `S1MisMatch`, `S2MisMatch`, `S3MisMatch`, `S4MisMatch`, `S5MisMatch`, `S6MisMatch`, `S7MisMatch` | Aanduiding van het specifieke sorteringskenmerk dat afwijkt bij de controle op voorgeschreven kenmerken. Elk kenmerk is afzonderlijk selecteerbaar; voor de algemene mismatchmelding bij verzending gebruikt u `VerplichteSorteringMisMatch`. |
| `GeenError` | Technische waarde voor 'geen fout'. Deze kiest u niet als blokkerende fout. |

De sorteringscontroles zijn afhankelijk van `ToonSorteringenVoorArtikel` en de inrichting van de sorteringskenmerken bij het artikel. Een optie selecteren activeert niet automatisch de bijbehorende functie of onderliggende controle. Niet iedere optie is daarom in iedere aanvoersituatie van toepassing.

**Let op bij beeldveilen:** de extra fotocontrole tijdens het opbouwen van het bericht wordt uitgevoerd wanneer `BeeldveilenActief` is ingeschakeld. Het kiezen van `GeenBeeldVeilFoto` schakelt beeldveilen niet zelf in.

### Voorbeeld

Wilt u een ontbrekende beeldveilfoto als blokkerende fout behandelen? Selecteer dan `GeenBeeldVeilFoto` in `AanvoerCriticalErrors` en controleer de inrichting van het beeldveilen. Wordt deze fout bij het maken van de aanvoerbrief geconstateerd, dan stopt Florisoft de verzending. Zorg voor een beschikbare beeldveilfoto en verstuur de aanvoerbrief daarna opnieuw.

### Waarschuwen met de mogelijkheid om door te gaan

Wilt u bij een bepaalde fout zelf kunnen beslissen of de aanvoerbrief toch verstuurd mag worden? Gebruik die foutsoort dan in de systeeminstelling `AanvoerWarnings` in plaats van in `AanvoerCriticalErrors`. Bij handmatige verzending krijgt u een waarschuwing met de keuze om door te gaan of te stoppen.

Beide instellingen kunnen naast elkaar worden gebruikt voor verschillende foutsoorten. Staat dezelfde fout in beide lijsten, dan blokkeert `AanvoerCriticalErrors` de verzending. Bij verzending via de timer kan een waarschuwing niet interactief worden bevestigd en wordt de verzending bij een toepasselijke waarschuwing eveneens gestopt.

## Aanvoerbrief print

Als u reeds via Florisoft veilde bent u gewend dat we een veilingspecifieke layout printten wanneer u de aanvoerbrief maakte. Dat is nu vervangen door de gegenereerde brief van Floriday. Wanneer u dus een aanvoerbrief heeft gemaakt wordt er nu een browser geopend waarin de door floriday gemaakte aanvoerbrief te zien is, vanuit deze browser kunt u vervolgens de brief printen.

## Werkwijze

Veilen via Floriday werkt voor de rest via de stappen die u al gewend bent bij het veilen via EAB.

