![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)
# Licentie Keys ophalen en beheren

Om de Florisoft Apps te kunnen gebruiken, is een geldige licentie vereist.  
De licentie controle vindt automatisch plaats via de cloudserver.  
Zonder geldige licentie zullen de apps niet opstarten of beperkt functioneren.

Florisoft-licenties worden per use-case afgenomen, zodat alleen de benodigde onderdelen of gebruikers een licentie krijgen.  
Het is daarom belangrijk om te begrijpen welke licentietypes beschikbaar zijn en hoe deze worden beheerd.
## 1. Licentietypes

Er zijn twee hoofdtypen licenties beschikbaar binnen Florisoft:

 **User-licentie**
- Een user-licentie is specifiek gekoppeld aan één systeemgebruiker.
- Alleen deze gebruiker kan de licentie gebruiken; andere gebruikers hebben er geen toegang toe.
- Dit type licentie is geschikt wanneer een specifieke gebruiker altijd toegang moet hebben tot bepaalde functionaliteit of modules.

**Floating-licentie**
- Een floating-licentie kan door meerdere gebruikers worden gedeeld.
- Bij het inloggen wordt automatisch gezocht naar een vrije licentie key.
- Zodra een gebruiker uitlogt, komt de licentie weer beschikbaar voor iemand anders.
- Dit type licentie is ideaal in situaties waar meerdere medewerkers afwisselend met Florisoft werken.

## 2. Licenties beheren via het _Manage Licenses_-scherm
Om het **License Management**-scherm te openen, ga je in **Florissoft.NET Navigator** naar:
**Systeem → Manage licenses**

<img width="1001" height="297" alt="afbeelding" src="https://github.com/user-attachments/assets/7c9cb1f1-a6d4-4676-980a-0499d4940d19" />

In het scherm **License Management** zie je een overzicht van alle opgehaalde licenties.  
Hier kun je controleren of de licenties correct zijn bijgewerkt en eventueel handmatig acties uitvoeren.
### Functies in dit scherm

<img width="1920" height="1033" alt="afbeelding" src="https://github.com/user-attachments/assets/e20563a1-0034-42b2-b9dd-9b42e83156a1" />

- **Handmatig licentiekeys ophalen**  
    Gebruik de knop **Refresh licensekeys** om licenties handmatig te vernieuwen.  
    Dit is handig wanneer de automatische timer nog niet is uitgevoerd of wanneer directe vernieuwing nodig is.
    
- **Licenties toewijzen aan gebruikers**  
    Je kunt **user-licenties toewijzen aan specifieke gebruikers**.  
    Hierdoor kunnen bepaalde licenties exclusief door die gebruiker worden gebruikt.
    
- **Claiminformatie inzien**  
    In dit scherm is nu zichtbaar:
    
    - Welke **systeemgebruiker** de licentie heeft geclaimd.
        
    - Op welk **apparaat** de licentie is geclaimd.
        
    - Het **tijdstip van claimen**.
        
    - De **laatste activiteit** van de betreffende licentie.
    
    Hiermee kun je eenvoudig controleren of een licentie actief wordt gebruikt en op welk systeem deze is geregistreerd.

- **Scherm verversen**
    Met de **Refresh**-knop wordt het scherm handmatig ververst, zodat actieve licenties direct zichtbaar zijn met de meest recente claim- en activiteitsinformatie.

#### Toegangsrechten

Om toegang te krijgen tot dit scherm, moet de **policy** `CanManageLicenses` zijn ingeschakeld voor de gebruiker.  
Zonder deze policy is het scherm niet toegankelijk.

## 3. Automatisch ophalen van licentie keys

Om licentie keys automatisch op te halen, moet de **timerfunctie _Licentie keys vernieuwen_ (GETLICENSEKEYS)** worden ingesteld.  
Wij raden aan deze functie **één keer per week** uit te voeren, zodat alle licenties up-to-date blijven.

**Aanbevolen instelling:**

- **Timer functie:** `Licentie keys vernieuwen (GETLICENSEKEYS)`
    
- **Frequentie:** 1x per week
    
- **Doel:** Vernieuwen en synchroniseren van licentiegegevens
