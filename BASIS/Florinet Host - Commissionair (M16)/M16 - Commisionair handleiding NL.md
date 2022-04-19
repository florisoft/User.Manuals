<img src="../../fslogo.png"/>

# Inhoudsopgave

[Inleiding 3](#inleiding)

[1 Factuurpartijen via EKT-verzenden
4](#factuurpartijen-via-ekt-verzenden)

[1.1 Geselecteerde partijen via EKT handmatig verzenden
5](#geselecteerde-partijen-via-ekt-handmatig-verzenden)

[1.2 Verzendopties facturen vanuit factuuroverzicht
6](#verzendopties-facturen-vanuit-factuuroverzicht)

[1.3 EKT-berichten automatisch versturen middels een timer
7](#ekt-berichten-automatisch-versturen-middels-een-timer)

# Inleiding 

De handleiding module Commissionair Florisoft beschrijft de werking van
de module Commissionair binnen Florisoft. Deze module wordt gebruikt
voor het versturen van partijgegevens tussen een commissionair en klant
via EKT-berichten. Op deze manier wordt het mogelijk om
verkochte/gekochte producten te im- en exporteren tussen verschillende
systemen.

**Let op: afbeeldingen in deze handleiding kunnen enigszins afwijken van
hetgeen u op uw scherm te zien krijgt.**

# 1 Factuurpartijen via EKT-verzenden

Dit hoofdstuk beschrijft de stappen die nodig zijn voor het versturen
van aanbiedingen vanuit Florisoft. Hiervoor is de module  
‘Commissionair’ vereist. Deze module maakt het mogelijk om verkochte
partijen in het systeem van de klant te krijgen. De werking van deze
module wordt hieronder stap voor stap uitgelegd.

> “Leveringen emailen bij Zenden EKT”, “E-mail adres” en “Optioneel
> afwijkende veilingcode in EKT”-instellen.
>
> Deze instellingen zijn te vinden onder Constanten -&gt; Debiteuren
> -&gt; zoek de betreffende debiteur -&gt; tabblad EKT.
>
> Leveringen emailen bij Zenden EKT: deze instelling zorgt ervoor dat de
> debiteur gemaild wordt bij het automatisch verzenden van EKT-berichten
> via de timer.
>
> Email adres: het mailadres waarop de klant EKT-berichten ontvangt.  
> Optioneel afwijkende veilingcode in EKT: deze code dient afgestemd te
> worden met de klant en is bedoeld om de verschillende veilingen van
> elkaar te onderscheiden in het EKT bericht.
>
> **Let op: de instelling “Leveringen emailen bij Zenden EKT” dient
> alleen aangevinkt te worden bij het automatisch verzenden van
> EKT-berichten via de timer (zie paragraaf 1.3).**
>
> <img src=".Commisionair handleiding NL\media\image2.png" style="width:6.93044in;height:5.98285in" />

## 1.1 Geselecteerde partijen via EKT handmatig verzenden

Handmatig EKT berichten verzenden gebeurd vanuit de Facturen.

1.  Klik in de Navigator op Facturen -&gt; zoek de betreffende factuur
    -&gt; open deze door te dubbelklikken. Het venster ”Wijzigen
    factuur” opent.

2.  Selecteer de producten (Spatie) op de factuur die in het EKT-bericht
    opgenomen moeten worden.

3.  Klik op de knop EKT Selectie om de geselecteerde producten te
    versturen naar het eerder opgegeven mailadres.

<img src=".Commisionair handleiding NL\media\image3.png" style="width:6.7642in;height:1.26087in" />

Er verschijnt een voortgangsindicator en vervolgens een bevestiging met
het aantal verzonden.

<img src=".Commisionair handleiding NL\media\image4.png" style="width:1.44028in;height:0.85347in" /><img src=".Commisionair handleiding NL\media\image5.png" style="width:2.5375in;height:0.47708in" />

> Wanneer een factuur gedeeltelijk of in z’n geheel is verstuurd krijgt
> deze een bruine achtergrondkleur in het venster “Onderhoud facturen”.

## 1.2 Verzendopties facturen vanuit factuuroverzicht

Naast het handmatig verzenden van artikelen op een factuur biedt
Florisoft ook een aantal mogelijkheden om artikelen met specifieke
eigenschappen te versturen. Deze eigenschappen zijn als volgt:

-   Verzenden nieuwe transacties: verzend alle transacties (artikelen)
    die na de laatste zending zijn toegevoegd aan de factuur.

-   Verzenden alle transacties vandaag: verzend alle transacties
    (artikelen) die vandaag op de factuur terecht zijn gekomen.

-   Verzenden alle transacties factuur: verzend alle transacties (alle
    artikelen) op de factuur.

Deze instellingen zijn te vinden in het venster “Onderhoud facturen”
onder het menu “Internet”:

<img src=".Commisionair handleiding NL\media\image6.png" style="width:7.26806in;height:1.27639in" />

Ook voor deze drie opties geldt dat de factuur een bruine
achtergrondkleur krijgt.

## 1.3 EKT-berichten automatisch versturen middels een timer

Florisoft biedt naast de handmatige optie om EKT-berichten te versturen
ook de mogelijkheid om automatisch berichten te laten versturen met
behulp van een timer. Het instellen van de timer bestaat uit twee
stappen. De eerste stap is het configureren van de timerinstellingen. De
tweede instelling is het activeren van de timer.

**Timerinstellingen configureren**

Voer de volgende stappen uit om de instellingen van de timer te
configureren:

1.  Klik met de rechtermuisknop op het stopwatch icoon in de Navigator.

> <img src=".Commisionair handleiding NL\media\image7.png" style="width:2.68788in;height:1.58355in" />

1.  Zoek in het venster “Timer Settings” naar de functie “ZEND EKT”. In
    > het rechterdeel van dit venster zijn de betreffende instellingen
    > aan te passen.

> <img src=".Commisionair handleiding NL\media\image8.png" style="width:6.68696in;height:4.4354in" />

1: Kies een gebruiker waarop de geselecteerde instellingen van
toepassing zijn.

2: Datum en tijdweergave van de laatste run van deze timer.

3: Op het tabblad Tijdschema zijn de tijdinstellingen voor de timer aan
te passen.

4: Deze optie bepaalt of de hier ingestelde opties geactiveerd worden.

5: Kies hier de dagen, begin- en eindtijd (uren:minuten) en de interval
instellingen waarop de timer moet draaien.

6: Knop om de timer met bovenstaande instellingen eenmalig uit te
voeren.

7: Bevestig de ingevoerde instellingen.

**Timer activeren**

Na het instellen van de timer dient deze geactiveerd te worden. Voer
hiervoor de volgende acties uit:

1.  Klik met de linkermuisknop op het stopwatch icoon in de Navigator.

> <img src=".Commisionair handleiding NL\media\image9.png" style="width:1.72941in;height:0.81261in" />

1.  Het venster Florisoft.NET Timer opent. Hier is een lijst van alle
    actieve timers te vinden die op dit moment draaien.

> <img src=".Commisionair handleiding NL\media\image10.png" style="width:6.46956in;height:4.01303in" />

1.  Omdat timers continu doorlopen is het belangrijk om alle timers te
    > resetten. Klik hiervoor op de knop “Annuleren” en start de timers
    > opnieuw door met de linkermuisknop op het stopwatch-icoon in de
    > Navigator te klikken.

> **Let op: voor een juiste werking van de EKT-timer dient de instelling
> “Leveringen emailen bij Zenden EKT” aangezet te worden in de
> constanten (Constanten -&gt; Organen -&gt; Debiteuren). Vervolgens per
> debiteur op het tabblad EKT deze instelling activeren waar je
> automatisch EKT’s voor wil versturen.**
