![image](https://github.com/user-attachments/assets/c868180d-893a-4744-bbaa-0f2847606598)


# ❓ FAQ – Migratie naar Microsoft Azure

[1. Hoe verloopt het migratieproces van Florisoft.net naar Azure?](#1-hoe-verloopt-het-migratieproces-van-florisoftnet-naar-azure)  
[2. Wat is de gemiddelde doorlooptijd van een migratie naar Azure?](#2-wat-is-de-gemiddelde-doorlooptijd-van-een-migratie-naar-azure)  
[3. Welke voorbereidende acties zijn vereist aan de klantzijde?](#3-welke-voorbereidende-acties-zijn-vereist-aan-de-klantzijde)  
[4. Wat is de impact op de dagelijkse bedrijfsvoering tijdens de migratie?](#4-wat-is-de-impact-op-de-dagelijkse-bedrijfsvoering-tijdens-de-migratie)  
[5. Is er sprake van downtime tijdens de migratie?](#5-is-er-sprake-van-downtime-tijdens-de-migratie)  
[6. Hoe wordt dataveiligheid tijdens de migratie gewaarborgd?](#6-hoe-wordt-dataveiligheid-tijdens-de-migratie-gewaarborgd)  
[7. Welke onderdelen van Florisoft.net worden meegenomen in de migratie?](#7-welke-onderdelen-van-florisoftnet-worden-meegenomen-in-de-migratie)  
[8. Wordt Florisoft.net getest vóór de livegang?](#8-wordt-florisoftnet-getest-vóór-de-livegang)  
[9. Hoe wordt bedrijfscontinuïteit gewaarborgd tijdens de migratie?](#9-hoe-wordt-bedrijfscontinuïteit-gewaarborgd-tijdens-de-migratie)  
[10. Is een rollback mogelijk als zich tijdens de migratie problemen voordoen?](#10-is-een-rollback-mogelijk-als-zich-tijdens-de-migratie-problemen-voordoen)  
[11. Welke ondersteuning is beschikbaar na de livegang?](#11-welke-ondersteuning-is-beschikbaar-na-de-livegang)  
[12. Wat verandert op het gebied van backups en updates?](#12-wat-verandert-op-het-gebied-van-backups-en-updates)  
[13. Is het mogelijk om de migratie te verplaatsen naar een ander moment?](#13-is-het-mogelijk-om-de-migratie-te-verplaatsen-naar-een-ander-moment)  

---

### 1. Hoe verloopt het migratieproces van Florisoft.net naar Azure?
Het proces bestaat doorgaans uit 6 stappen, verdeeld over 2 fasen: 

**Fase 1:** 
- inventarisatie
- technische migratie
- configuratie
- testfase

**Fase 2:**
- livegang
- controle

---

### 2. Wat is de gemiddelde doorlooptijd van een migratie naar Azure?

De duur van het traject hangt af van de omvang en complexiteit <br>
**Fase 1** wordt doorgaans in een halve tot één dag gerealiseerd en **Fase 2** in circa een halve dag. <br><br>
Fase 1 en 2 dienen elkaar binnen afzienbare tijd op te volgen om te voorkomen dat versieverschillen complicaties kunnen veroorzaken. 

---

### 3. Welke voorbereidende acties zijn vereist aan de klantzijde?
Uiterlijk 2 weken voor de migratie dient het Florisoft systeem te zijn voorzien van de laatst beschikbare Stable-versie en uitgerold te zijn over alle gebruikers.
Verder is het van groot belang dat de klant uitvoerig test als laatste stap van Fase 1. 

Hierbij te denken aan:
- inloggen gebruikers
- werking printers
- koppelingen met externe applicaties
- verbindingen waar voorheen een VPN verbinding nodig was
- bereikbaarheid storage accounts
- etc. 

Eventuele issues worden verholpen en opnieuw getest, voordat Fase 2 wordt gestart. 


---

### 4. Wat is de impact op de dagelijkse bedrijfsvoering tijdens de migratie?
De impact wordt zo veel mogelijk beperkt. Eventuele verstoringen worden vooraf afgestemd en ingepland. <br>
In **Fase 1** is er geen impact op de bedrijfsvoering.<br>
Indien tijdens het testen in **Fase 1** issues naar boven komen, zullen deze worden verholpen voordat Fase 2 wordt gestart. <br>

**Fase 2** <br>
Let op: Gedurende **Fase 2** zijn alle Florisoft-onderdelen tijdelijk **offline**, inclusief de webshop.
Na het afronden van Fase 1 is bekend hoe lang Florisoft **offline** zal zijn in Fase 2. Deze downtime zal maximaal een halve dag zijn, maar in veel gevallen korter. <br><br>
Voorbereiding aan klantzijde is nodig (zoals bijvoorbeeld stickers uitdraaien, orders klaarzetten, etc.).

---

### 5. Is er sprake van downtime tijdens de migratie?
Beperkte geplande downtime is noodzakelijk bij de livegang (Fase 2). <br>
Dit wordt vooraf afgestemd en waar mogelijk geminimaliseerd.<br>
Houd er dus rekening mee dat gedurende Fase 2 **alle Florisoft-onderdelen tijdelijk offline** zijn, inclusief de webshop. <br><br>
Om de impact zoveel mogelijk te beperken kunnen de nodige voorbereidingen getroffen worden, zoals bijvoorbeeld het uitdraaien van de nodige stickers en het klaarzetten van orders. 

---

### 6. Hoe wordt dataveiligheid tijdens de migratie gewaarborgd?
Data wordt gemigreerd via versleutelde verbindingen en beveiligde protocollen. 

---

### 7. Welke onderdelen van Florisoft.net worden meegenomen in de migratie?
Standaard omvat dit de gestructureerde data, systeemconfiguraties, gebruikersinstellingen, rapportages en eventuele maatwerkcomponenten. <br><br>
Let op; Dit betreft alle onderdelen gerelateerd aan het Florisoft pakket. Mochten eigen bestanden of folders overgezet moeten worden, dient dit vooraf duidelijk aangegeven te worden. 

---

### 8. Wordt Florisoft.net getest vóór de livegang?
De klant is zelf verantwoordelijk voor het testen aan het eind van **Fase 1**. <br>
Eventuele issues dienen opgelost te worden voordat met **Fase 2** gestart wordt.<br><br>
Tijdens de migratie wordt elke stap zorgvuldig gecontroleerd om te waarborgen dat het Florisoft-systeem technisch correct functioneert.<br>
Na livegang is het echter aan de klant om Florisoft.net zelf opnieuw te testen in de praktijk.

---

### 9. Hoe wordt bedrijfscontinuïteit gewaarborgd tijdens de migratie?
Er wordt gewerkt met een planning die rekening houdt met kritieke processen. <br>
Daarom is het van groot belang om zo min mogelijk van de planning af te wijken. 

---

### 10. Is een rollback mogelijk als zich tijdens de migratie problemen voordoen?
Ja. Een fallback- of rollbackplan wordt vooraf opgesteld, zodat bij onvoorziene problemen snel kan worden teruggeschakeld naar de oorspronkelijke situatie. <br>
Deze blijft volledig in tact tot minimaal een dag na de livegang. Daarna zal de oude omgeving zo spoedig mogelijk worden uitgefaseerd. 

---

### 11. Welke ondersteuning is beschikbaar na de livegang?
Zowel tijdens als direct na de migratie kun je contact opnemen met de Florisoft-contactpersoon die de migratie begeleidt. <br>
Eventuele issues of incidenten daarna kunnen worden gemeld bij de support-afdeling van Florisoft. <br>
De supportmedewerkers zorgen voor een snelle en adequate afhandeling van meldingen. <br>
Afhankelijk van de aard en urgentie van het incident wordt een passende oplossing geboden.<br><br>
In geval van proces-belemmerende issues kan gebruik worden gemaakt van de storingsdienst. <br>
Alle overige vragen kunnen via de reguliere kanalen worden gemeld.   

---

### 12. Wat verandert op het gebied van backups en updates?
**Azure Backup** maakt meerdere dagelijkse backups mogelijk, zonder impact op prestaties of beschikbaarheid. Deze backups worden opgeslagen in Azure-opslaglocaties. <br>
Deze manier van beheren verhoogt de dataveiligheid aanzienlijk. <br>
Het uitvoeren van **updates** van besturingssystemen en beveiligingspatches kunnen automatisch uitgevoerd worden. Hierdoor blijven servers beschermd zonder dat handmatige acties nodig zijn. <br>

---

### 13. Is het mogelijk om de migratie te verplaatsen naar een ander moment?
Het verplaatsen van een migratie is in overleg mogelijk, maar bij voorkeur alleen wanneer dit echt noodzakelijk is. <br>
Een wijziging heeft namelijk gevolgen voor onze planning en de beschikbaarheid van het migratieteam.<br>
<br>
Mocht verplaatsing toch nodig zijn, informeer ons dan bij voorkeur minimaal 3 weken van tevoren. <br>
Bij wijzigingen binnen 3 weken kunnen we genoodzaakt zijn om extra kosten in rekening te brengen, bijvoorbeeld vanwege reeds gereserveerde capaciteit.
