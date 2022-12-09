<img src="../../fslogo.png">

# Florisoft Handleiding Management Timer (M122)

Welkom bij de handleiding voor het gebruik van de managementtimer. Met de managementtimer module kan management informatie gegenereerd en verstuurd worden op ingestelde tijden en intervallen.

De managementinformatie wordt gegenereerd met bestaande queries die in het Management scherm onderhouden worden. De gegevens uit de queries worden dan met een lay-out omgezet naar een PDF of Excel bestand en verstuur naar het door u gewenste e-mail adressen.

Dit is handig als u management rapportages wil ontvangen op een vast tijdstip. Is dit iets wat u wilt, dan is de managementtimer module voor u!

## Het aanmaken van mangement timer - info mailing

*Volg de onderstaande stappen om een automatisch gemailde rapportage wilt opzetten:*

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constanten scherm vanuit de navigator.|
|**2**|Navigeer naar het onderstaande pad:<br>**Timer→Management Info Mailing**<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Management Info Mailer/media/image5.png"></details>|
|**3**|Om een nieuwe management info mailer aan te maken drukt u op het plus (+) icoontje.<br> Wilt u een bestaande aanpassen doet u dat door tweemaal met de linkermuisknop op een management info mailer tabel rij te klikken.|
|**4**|In de onderstaande tabel vind u een uitleg van elk veld van het scherm dat u nu te zien krijgt.|

*Veld uitleg van de onderstaande afbeelding*:

<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Management Info Mailer/media/image3.png"></details>

|Invoerveld|Uitleg|
|:--|:--|
|**Actief**|Moet deze management email rapportage meegenomen worden in het timer proces. Als dit uit staat betekent het dat de rapportage **dus** niet uitgevoerd wordt.|
|**Naam**|De naam wordt ook gebruikt voor de bestandsnamen zoals deze in de mail terecht komen.|
|**Script**|De gebruikte SQL query voor het verkrijgen van de management informatie. Deze queries kunnen onderhouden worden in het Management scherm.|
|**Layout**|Een print layout (ook wel "*rapport*" genoemd), te onderhouden in de constanten onder: **systeem→Print Layouts**|
|**Exporteren als**|U kan hier het formaat kiezen waarin het rapport naar u gemaild wordt u heeft hier de volgende opties:<br>1. Microsoft Excel bestand <br>2. CSV <br>3. PDF <br><br> **Belangrijk om te onthouden**: *Indien u PDF selecteert als de exporteeroptie is er een Florisoft rapport lay-out nodig. Deze zijn niet standaard in het systeem aanwezig, Florisoft support kan deze rapporten voor u aanmaken. **U wordt hier wel voor gefactureerd.***|
|**E-mails**|U kan hier ontvangers voor de management rapportage invullen. Vul een e-mailadres in in het bovenste invoerveld en druk op '*Toevoegen*'. Het zojuist toegevoegde e-mailadres verschijnt nu in de onderstaande tabel.|
|**Opslaan - Pad**|U kan hier aangeven waar de geëxporteerde rapportages in uw bestandssysteem geplaatst worden. |
|**Bestandsnaam**|De bestandsnaam die het geëxporteerde rapportage krijgt. |
|**Voeg datum toe aan export bestandsnaam**|Als u dit aanzet krijgt het geëxporteerde rapport een datum achter de bestandsnaam.|
|**Planning**|Vul hier de start- en eindtijd en op welke dagen de management rapportage gecreëerd en verstuurd. Met het interval veld geeft u aan om de hoeveelminuten de rapportage verstuurd moet worden. |
|**Stuur 1-malig aan het einde van de maand alleen.**|Bij het aanzetten van deze instelling wordt er alleen aan het eind van de maand een management rapportage verstuurd. |
|**Stuur 1-malig aan het begin van de maand alleen**|Bij het aanzetten van deze instelling wordt er alleen aan het begin van de maand een management rapportage verstuurd.|
|**Via de timer geen email sturen als er geen resultaat is**|Bij het aanzetten van deze instelling wordt er **geen** rapportage verstuurd als de managementdatabasequery geen resultaten ophaalt.|

## Aanzetten van het timer proces

*Volg de onderstaande stappen om te checken of het management rapportage mailen proces aan staat op de timer*.

|Stap|Uitleg|
|:--|:--|
|**1**|Open de Florisoft navigator ingelogd als uw Timer gebruiker.|
|**2**|Klik met de rechtermuisknop op het timer/stopwatch icoontje.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".Management Info Mailer/media/image4.png"></details>|
|**3**|Dit opent een dialoog schermpje, klik op de optie "*Timer settings*".|
|**4**|Dit opent het Timer instellingen scherm. Klik eenmaal op de tabel kolom '*Timer Setting* en typ de volgende letters **MA**. U hoort nu naar de timer instelling die beginnen met MA gebracht te worden. <Br>Als er een paars vinkje staat in de active kolom & rij van het management queries timer proces betekent het dat het aan staat.|
|**5**|Klik vervolgens op de tabel regel van "*Management queries mailen*" u ziet nu de timer instellingen aan de rechterkant van uw scherm.|
|**6**|Zet de optie "*Dit script activeren bij het starten van de timer*" aan.|
|**7**|Stel nu de de planning in van het timerproces, op welke dagen en tijden hoort het timerproces uitgevoerd te worden.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".Management Info Mailer/media/image2.png"></details>|
|**8**|Herstart uw Timer gebruiker.|