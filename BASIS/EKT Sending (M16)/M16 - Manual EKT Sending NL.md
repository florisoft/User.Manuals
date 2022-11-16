<img src="../../fslogo.png">

# Florisoft EKT Sending Handleiding (M16)
  

De handleiding module EKT Sending Florisoft beschrijft de werking van de module EKT Sending binnen Florisoft. Op deze manier wordt het mogelijk om verkochte/gekochte producten te im- en exporteren tussen verschillende systemen.

**Let op: afbeeldingen in deze handleiding kunnen enigszins afwijken van hetgeen u op uw scherm te zien krijgt.**


## Inhoudsopgave

[Inhoudsopgave](#inhoudsopgave)  
[Geselecteerde partijen via EKT handmatig verzenden](#11-geselecteerde-partijen-via-ekt-handmatig-verzenden)  
[Verzendopties facturen vanuit factuuroverzicht](#12-verzendopties-facturen-vanuit-factuuroverzicht)  
[EKT-berichten automatisch versturen middels een timer](#13-ekt-berichten-automatisch-versturen-middels-een-timer)  
[Timerinstellingen configureren](#timerinstellingen-configureren)  
[Timer activeren](#timer-activeren)


## 1 Factuurpartijen via EKT-verzenden

Dit hoofdstuk beschrijft de stappen die nodig zijn voor het versturen van aanbiedingen vanuit Florisoft. Hiervoor is de module
EKT Sending vereist. Deze module maakt het mogelijk om verkochte partijen in het systeem van de klant te krijgen. De werking van deze module wordt hieronder stap voor stap uitgelegd.

|Stap|Uitleg|
|:--|:--|
|**1.**|Open het constanten scherm en navigeer naar:<br> *Organen*(#1) → *Debiteurgegevens*(#2) → (*Debiteuren*)(#4) → Desbetreffende debiteur in tabel.|
|**2.**|In het debiteurinstellingen scherm klikt u op het mapje '*EKT*'.|
|**3.**|U past hier de volgende instellingen aan:<br>**1.** **Leveringen emailen bij Zenden EKT**: *deze instelling zorgt ervoor dat de debiteur gemaild wordt bij het automatisch verzenden van EKT-berichten via de timer.* <br> **2.** **E-mail adres**: *het mailadres waarop de klant EKT-berichten ontvangt.* <br> **3.** **Optioneel afwijkende veilingcode in EKT**: *deze code dient afgestemd te worden met de klant en is bedoeld om de verschillende veilingen van elkaar te onderscheiden in het EKT bericht*<details><summary><b>Klik hier voor uw voorbeeld afbeelding<b></summary><img src=".Commisionair handleiding NL/media/image1.png"></details>|  
|**4.**|**Let op: de instelling “Leveringen emailen bij Zenden EKT” dient alleen aangevinkt te worden bij het automatisch verzenden van EKT-berichten via de timer (zie paragraaf 1.3).**|



## 1.1 Geselecteerde partijen via EKT handmatig verzenden

Handmatig EKT berichten verzenden gebeurd vanuit de Facturen.

|Stap|Uitleg|
|:--|:--|
|**1.**|Open de navigator en klik op de '*Facturen*' knop(#1).|
|**2.**|In het facturen scherm zoekt u naar de desbetreffende factuur, klik er vervolgens tweemaal op met de linkermuisknop. Dit opent het '*Wijzigen factuur*' scherm.|
|**3.**|Selecteer de producten op de factuur door het gebruik van de spatiebalk.|
|**4.**|Klik vervolgens op de knop '*EKT Selectie*'(#1)<details><summary><b>Klik hier voor uw voorbeeld afbeelding<b></summary><img src=".Commisionair handleiding NL/media/image3.png"></details>|
|**5.**|Indien uw EKT bericht veel producten bevat ziet u een voortgangsscherm en daarna een verzendbevestiging met het aantal verzonden.<details><summary><b>Klik hier voor uw voorbeeld afbeelding<b></summary><img src=".Commisionair handleiding NL/media/image5.png"><br><img src=".Commisionair handleiding NL/media/image4.png"></details> |
|**6.**|Wanneer een factuur gedeeltelijk of in z’n geheel is verstuurd krijgt deze een bruine achtergrondkleur in het venster “Onderhoud facturen”.|


## 1.2 Verzendopties facturen vanuit factuuroverzicht

Naast het handmatig verzenden van artikelen op een factuur biedt Florisoft ook een aantal mogelijkheden om artikelen met specifieke eigenschappen te versturen. Deze eigenschappen zijn als volgt:

|Verzendoptie|Uitleg|
|:--|:--|
|**Verzenden nieuwe transacties:**|*verzend alle transacties (artikelen) die na de laatste zending zijn toegevoegd aan de factuur*|
|**Verzenden alle transacties vandaag:**|*verzend alle transacties (artikelen) die vandaag op de factuur terecht zijn gekomen.*|
|**Verzenden alle transacties factuur:**|*verzend alle transacties (alle artikelen) op de factuur.*|

Deze instellingen zijn te vinden in het vinden in het scherm '*Onderhoud facturen*' onder het tabje internet. 

|Stap|Uitleg|
|:--|:--|
|**1.**|Klik op de '*Facturen*' knop dit opent het '*Facturen onderhoud*'.|
|**2.**|Klik vervolgens op het '*Internet*' tabje hier ziet u de drie eerder genoemde opties.<details><summary><b>Klik hier voor uw voorbeeld afbeelding<b></summary><img src=".Commisionair handleiding NL/media/image11.png"></details>|
|**3.**|Ook voor deze drie opties geldt dat de factuur een bruine achtergroundkleur krijgt.|

## 1.3 EKT-berichten automatisch versturen middels een timer

Florisoft biedt naast de handmatige optie om EKT-berichten te versturen ook de mogelijkheid om automatisch berichten te laten versturen met behulp van een timer. Het instellen van de timer bestaat uit twee stappen. De eerste stap is het configureren van de timerinstellingen. De tweede instelling is het activeren van de timer.

### Timerinstellingen configureren

Voer de volgende stappen uit om de instellingen van de timer te configureren:

|Stap|Uitleg|
|:--|:--|
|**1.**|Open de Florisoft navigator en klik met de rechtermuisknop op het Timer icoontje. U ziet nu een klein optie schermpje klik hier op '*Timer settings*'.<details><summary><b>Klik hier voor uw voorbeeld afbeelding<b></summary><img src=".Commisionair handleiding NL/media/image7.png"></details>|
|**2.**|Dit opent het '*Timer Settings*' zoek in de linker tabel naar de instelling '*ZEND EKT*' vink deze aan. In het rechterdeel zijn vervolgens de instellingen aan te passen. |
|**3.**|In het rechterdeel van het scherm zijn de volgende acties mogelijk:<br>**1.** Kies eeen gebruiker waarop de geselecteerde instellingen van toepassing zijn. **Selecteer hier '*TIMER*'**<br>**2.** Datum en tijdsweergave van de laatste run van deze timer.<br>**3.** Deze optie bepaalt of de hier ingestelde opties geactiveerd worden.<br>**4.** Kies hier de dagen, begin- en eindtijd(uren:minuten), en d einterval instellingen waarop de timer moet draaien.<br>**5.** Knop om de timer met bovenstaande instellingen eenmalig uit te voeren.<br>**6.** Bevestig de ingevoerde instellingen.|


### Timer activeren

Na het instellen van de timer dient deze geactiveerd te worden. Voer hiervoor de volgende acties uit:

|Stap|Uitleg|
|:--|:--|
|**1.**|Klik met de linkermuisknop op het stopwatch icoon in de navigator.<details><summary><b>Klik hier voor uw voorbeeld afbeelding<b></summary><img src=".Commisionair handleiding NL/media/image9.png"></details>|
|**2.**|Het venster Florisoft.NET Timer opent. Hier is een lijst van alle actieve timers te vinden die op dit moment draaien.<details><summary><b>Klik hier voor uw voorbeeld afbeelding<b></summary><img src=".Commisionair handleiding NL/media/image10.png"></details>|
|**3.**|**Omdat timers continu doorlopen is het belangrijk om alle timers te resetten. Klik hiervoor op de knop “Annuleren” en start de timers opnieuw door met delinkermuisknop op het stopwatch-icoon in de Navigator te klikken.**|