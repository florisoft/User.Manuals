![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Traceerbaarheid Slotplaten en Karren

Vanwege de waarde van slotplaten en eigen karren is het belangrijk om een **sluitende, traceerbare keten** te hebben.

Bij correct gebruik van dit systeem kan een medewerker op elk moment bepalen waar zijn slotplaten en/of karren zich bevinden. Daarnaast is eenvoudig te achterhalen welke medewerker een slotplaat voor het laatst in handen heeft gehad. Het systeem biedt inzicht in:

- Wat er met een specifieke slotplaat is gebeurd  
- Welk traject deze heeft afgelegd  
- Hoe lang een traject heeft geduurd  
- Een overzicht van slotplaten per klant  

De software is geoptimaliseerd voor gebruik op een **PDA**, maar registratie is ook mogelijk op een **PC met scanner**.

De slotplatenadministratie wordt beïnvloed door een combinatie van:
1. Systeeminstellingen  
2. Fustsoort-instellingen  
3. Gebruikersinstellingen (FS2000 / Inifile)  

Hieronder volgt een overzicht van de relevante instellingen en waar deze beheerd worden.

---

## Inrichting en instellingen

De slotplatenadministratie hangt in de praktijk sterk samen met de bedrijfsspecifieke werkwijze. Onderstaande instellingen hebben aantoonbaar invloed op de slotplatenadministratie en aanverwante processen.

---

## 1. Systeeminstellingen

Deze systeeminstellingen staan momenteel op een **default set**.  
Indien één van deze instellingen aangepast moet worden, dient dit via de **supportafdeling** te verlopen.

- **SlotPlaatAlsFustOpFactuur**  
  Bepaalt of (in/uit) gescande slotplaten als fustregels op een factuur terechtkomen. Dit beïnvloedt ook het ordernummer-gedrag en creditregels, afhankelijk van het proces.

- **SlotPlaatNooitDubbelUitgeven**  
  Indien ingeschakeld, mag een slotplaat niet opnieuw *UIT* worden gemeld zolang deze niet eerst weer *IN* is gemeld.

- **SLOTPLATENNADOOSVULLEN / SlotplatenNaDoosvullen**  
  Heeft invloed op het gedrag na het doosvullen en op controles/afhandeling bij het opnieuw scannen van een slotplaat binnen *Doosvullen*.

- **SLOTPLAATREGISTRATIEDOOSVUL**  
  Wordt gebruikt om na het doosvullen automatisch het slotplatenregistratiescherm te openen (in combinatie met `SLOTPLATENNADOOSVULLEN`).

- **PDADoosvulDoosAanpasDubSlotplt**  
  Indien actief wordt bij PDA-doosvullen automatisch **“Doos aanpassen”** getoond wanneer een slotplaat wordt gescand die al eerder is uitgegeven en nog niet is binnengemeld.

- **AlternatieveFustcodePrefix**  
  Indien gevuld wordt bij doosvullen een barcode met dit prefix geïnterpreteerd als slotplaatnummer en wordt het bijbehorende fust opgezocht.

- **AutomatischKarlijstPrintenBox**  
  Heeft invloed op automatisch printen en afronden binnen Box- en Doosvullen-flows (indirect relevant wanneer slotplaat-scans onderdeel zijn van deze flow).

- **FactuurHerverdCheckIngepakt**  
  Niet puur slotplatenadministratie, maar kan effect hebben op situaties waarbij ingepakte regels of herverdeling de koppeling met een slotplaat beïnvloeden.

---

## 2. Fustsoort-instellingen  
*Constanten → Artikelen → Fustsoorten*

- **Automatisch registreren als slotplaat**  
  Zorgt ervoor dat een gebruikte fustcode (binnen bepaalde flows) automatisch als slotplaat wordt geregistreerd.

- **Slotplaten starten na printen vanuit het doosvullen**  
  Start na het printen vanuit doosvullen automatisch de slotplatenregistratie (in combinatie met de juiste systeeminstellingen).

- **Slotplaat-herkenning in doosvullen**  
  Of een fustcode überhaupt als *slotplaat* wordt behandeld in doosvullen. Dit is een voorwaarde voor diverse controles en gedragingen.

---

## 3. Overige constanten

- **Constanten → Algemeen → Slotplaatnummer**  
  Wordt gebruikt in combinatie met de systeeminstelling `AlternatieveFustcodePrefix`. Hier wordt vastgelegd welk slotplaatnummer bij een fust hoort.

---

## 4. Gebruikersinstellingen (FS2000)  
*Constanten → Gebruikers → activeer gebruiker → Inifiles*

- **OrderNummerSlotplaat (FS2000)**  
  Bepaalt welk ordernummer wordt gebruikt voor (credit)factuurregels die voortkomen uit de slotplaten-flow.

- **DoosVullenFustCodes (FS2000)**  
  Per gebruiker een lijst met toegestane fustcodes in doosvullen. Dit bepaalt ook of een gebruiker slotplaten (als fust) kan gebruiken binnen doosvullen.
