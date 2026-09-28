# Openstaande posten automatisch versturen via de timer

Met het timerproces **Openposten sturen** (`OPENPOSTENLIJST`) kan Florisoft automatisch een overzicht van de openstaande posten als PDF naar het financiële e-mailadres van een debiteur sturen.

## Benodigde modules

| Module | Nodig? | Functie |
|:--|:--:|:--|
| **M20 - Open posten** | Ja | Levert de openstaande posten en het overzicht dat wordt verstuurd. Zonder deze module stopt het timerproces direct. |
| **M25 - Timer** | Ja | Voert `OPENPOSTENLIJST` automatisch volgens een ingesteld schema uit. |
| **M27 - Aanmanen** | Alleen voor aanmaningsregistratie | Nodig wanneer Florisoft ook een regel in `AANMANING` moet opslaan en `MANEN1` tot en met `MANEN5` moet bijwerken. Alleen een openpostenoverzicht mailen kan zonder deze module. |

Daarnaast zijn een werkende uitgaande e-mailconfiguratie en een financiële ontvanger bij de debiteur nodig. Dit zijn configuratievoorwaarden en geen afzonderlijke modules.

## Werking in het kort

1. De timer bepaalt welke debiteuren gecontroleerd moeten worden.
2. Florisoft controleert of deze debiteuren een niet volledig betaalde open post hebben die aan de ingestelde voorwaarden voldoet.
3. Het overzicht **Openstaande posten per debiteur** wordt als PDF gegenereerd.
4. De e-mail wordt naar alle actieve financiële e-mailadressen van de debiteur gestuurd.
5. Optioneel wordt de verzending als aanmaning geregistreerd.

## 1. Voorbereiding

Controleer vóór het activeren van de timer het volgende:

- De modules **M20 - Open posten** en **M25 - Timer** zijn actief.
- De Florisoft Timer draait onder de daarvoor bestemde timergebruiker.
- Uitgaande e-mail vanuit Florisoft werkt.
- De debiteur heeft daadwerkelijk openstaande, niet volledig betaalde posten.
- Bij **Constanten → Organen → Debiteurgegevens → Debiteuren → Adressen → Contactgegevens → Financieel** staat minimaal één actief e-mailadres.
- Het overzicht **Openstaande posten per debiteur** kan handmatig naar deze debiteur worden gemaild.

> De timer gebruikt standaard de laatst gekozen printlay-out van **Openstaande posten per debiteur**. Stel deze lay-out daarom eerst handmatig in en test hem. Per debiteur kan op het tabblad **Timer** eventueel een afwijkende lay-out worden gekozen.

## 2. Bepalen welke debiteuren een overzicht ontvangen

De systeeminstelling `TimerOpenpostLijstDebiteurVia` kent twee werkwijzen. Kies één van beide.

### Optie A - DebiteurOpenpostVerwerkDagen

Dit is de standaard en meest geschikte werkwijze voor een herinneringsschema.

1. Stel `TimerOpenpostLijstDebiteurVia` in op `DebiteurOpenpostVerwerkDagen`.
2. Maak in de constanten een set **Verwerkdagen** aan, bijvoorbeeld `7, 14, 21, 30`.
3. Open de debiteur en ga naar **Financieel → Bankgegevens**.
4. Selecteer bij **Openposten stuur dagen** de gewenste set verwerkdagen.

![Voorbeeld van de ingestelde verwerkdagen](https://github.com/user-attachments/assets/486dd6ef-21e2-4403-a081-d91372a2f414)

De timer verstuurt alleen wanneer minimaal één niet volledig betaalde open post precies het ingestelde aantal dagen oud is.

### Optie B - LosseDebiteuren

Gebruik deze werkwijze wanneer alleen een vaste selectie debiteuren een overzicht moet ontvangen.

1. Stel `TimerOpenpostLijstDebiteurVia` in op `LosseDebiteuren`.
2. Open de instellingen van timerproces `OPENPOSTENLIJST` en voeg de gewenste debiteuren toe. Dit zet bij de debiteur **Openposten versturen via de timer** aan.
3. Dezelfde instelling is ook te beheren bij de debiteur op het tabblad **Timer**.

> Let op: bij deze werkwijze is geen controle op verwerkdagen. Een geselecteerde debiteur met een niet volledig betaalde open post ontvangt bij iedere uitvoering van het timerproces opnieuw een overzicht. Stel het timerschema hierop af.

## 3. Timerproces instellen

1. Meld aan op de Florisoft Timer-client.
2. Klik met de rechtermuisknop op het timerpictogram en open de timerinstellingen.
3. Zoek het proces **Openposten sturen** (`OPENPOSTENLIJST`).
4. Activeer het proces en stel het gewenste uitvoermoment of interval in.
5. Open de procesinstellingen en controleer de beschikbare opties:

| Instelling | Betekenis |
|:--|:--|
| **Betalingen ook klaarzetten** | Maakt ook de betalingsgegevens beschikbaar voor een lay-out die deze gegevens gebruikt. |
| **Begindatumfilter / aantal dagen vanaf vandaag** | Beperkt de open posten die in het rapport worden opgenomen. Een negatieve waarde ligt vóór vandaag; `0` is vandaag. Laat dit uit als geen begindatumfilter gewenst is. |
| **Lay-out gebruiken als HTML-body** | Gebruikt de rapportlay-out ook als inhoud van de e-mail. Anders wordt de standaardtekst of de ingestelde factuurtekst gebruikt. |
| **Openpostenlijst opslaan als aanmaning** | Registreert de verzending in `AANMANING` en werkt waar van toepassing `MANEN1` tot en met `MANEN5` bij. Hiervoor zijn M27 en de werkwijze met verwerkdagen vereist. |

![Instellingen van het timerproces Openposten sturen](https://github.com/user-attachments/assets/55f5b284-25ca-46da-b292-05db6ecf7812)

## 4. E-mailtekst en afzender instellen

- De standaardonderwerpregel is **Openposten [debiteurnummer]**.
- Via de factuurteksten **OpenPost Mail Subject** (volgnummer 42) en **OpenPost Mail Body** (volgnummer 43) kan per taal een afwijkend onderwerp en een afwijkende tekst worden ingesteld.
- De taal van de debiteur bepaalt welke vertaling wordt gebruikt.
- Met de e-mailinstelling `AfzenderAfwijkendEmailadres` kan voor deze verzendingen een afwijkende afzender worden gebruikt.

## 5. Aanmaningen registreren (optioneel)

Voor alleen het mailen van openstaande posten is deze stap niet nodig. Wilt u de verzending ook als aanmaning vastleggen, controleer dan alle volgende voorwaarden:

1. Module **M27 - Aanmanen** is actief.
2. `TimerOpenpostLijstDebiteurVia` staat op `DebiteurOpenpostVerwerkDagen`.
3. In de instellingen van `OPENPOSTENLIJST` staat **Openpostenlijst opslaan als aanmaning** aan. De huidige systeemnaam is `OpenPostenLijstSaveAanmaning`; oudere versies kunnen `OpenPostenLijstOpslaanAanmaning` tonen.
4. Bij de debiteur zijn de juiste verwerkdagen ingesteld.

Na een geslaagde verwerking wordt een regel aan `AANMANING` toegevoegd. Wanneer de ouderdom van de open post overeenkomt met verwerkdag 1 tot en met 5, wordt ook het bijbehorende veld `MANEN1` tot en met `MANEN5` bijgewerkt.

> Groeperen op financieel debiteurnummer (`OpenPostenLijstMailGroepType = FinDebNr`) is niet geschikt wanneer iedere losse debiteur een correcte eigen aanmaningsregistratie moet krijgen. Gebruik voor aanmaningen bij voorkeur **Standaard per debiteur**.

## 6. Testen vóór ingebruikname

1. Gebruik eerst één testdebiteur met een financieel e-mailadres en een geschikte open post.
2. Test het overzicht **Openstaande posten per debiteur** handmatig en controleer de PDF, lay-out en ontvanger.
3. Zorg dat de testdebiteur volgens de gekozen werkwijze geselecteerd wordt.
4. Voer `OPENPOSTENLIJST` één keer handmatig uit.
5. Controleer:
   - of de e-mail is ontvangen;
   - of de juiste open posten en bedragen in de PDF staan;
   - of de Timerlog geen fout bevat;
   - en, indien geactiveerd, of `AANMANING` en `MANEN1` tot en met `MANEN5` correct zijn bijgewerkt.
6. Activeer pas daarna het definitieve schema en voeg de overige debiteuren toe.

## Problemen oplossen

| Probleem | Controle |
|:--|:--|
| Het proces verstuurt niets en meldt dat de module ontbreekt | Controleer **M20 - Open posten**. |
| Een debiteur wordt overgeslagen | Controleer de gekozen selectiewijze, de verwerkdagen of de vink **Openposten versturen via de timer**, en of er een niet volledig betaalde open post is. |
| Er komt geen e-mail aan | Controleer de uitgaande e-mailconfiguratie, het financiële contactadres en de Timerlog. |
| De verkeerde lay-out wordt gebruikt | Selecteer handmatig de juiste lay-out bij **Openstaande posten per debiteur** of stel bij de debiteur een afwijkende timerlay-out in. |
| Er wordt wel gemaild maar geen aanmaning geregistreerd | Controleer M27, `OpenPostenLijstSaveAanmaning` en de werkwijze `DebiteurOpenpostVerwerkDagen`. |
| Een klant krijgt bij elke timerrun opnieuw een e-mail | Dit is de normale werking van `LosseDebiteuren`; pas het timerschema aan of gebruik verwerkdagen. |
