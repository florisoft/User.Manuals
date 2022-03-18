> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image1.png" style="width:3.45972in;height:1.26389in" />

# **<u>Inhoudsopgave</u>**

[Inleiding 3](#inleiding)

[1 Mailbox aanmaken 4](#mailbox-aanmaken)

[2 Instellingen mailbox aanpassen 5](#instellingen-mailbox-aanpassen)

[2.1 Inbox-instellingen wijzigen 5](#inbox-instellingen-wijzigen)

[2.2 POP-instellingen & archiefinstellingen wijzigen
6](#pop-instellingen-archiefinstellingen-wijzigen)

[2.3 Veiligheidsinstellingen aanpassen
6](#veiligheidsinstellingen-aanpassen)

[3 Mail instellingen Florisoft instellen
8](#mail-instellingen-florisoft-instellen)

[3.1 POP-instellingen instellen 8](#pop-instellingen-instellen)

[4 Veilingcodes leveranciers aanmaken
10](#veilingcodes-leveranciers-aanmaken)

[4.1 Veilingcode aanmaken 10](#veilingcode-aanmaken)

[5 EKT-berichten automatisch inlezen via een timer
12](#ekt-berichten-automatisch-inlezen-via-een-timer)

[6 EKT-berichten handmatig inlezen 14](#ekt-berichten-handmatig-inlezen)

# Inleiding 

Veel informatie met betrekking tot handel tussen partijen wordt volledig
digitaal en geautomatiseerd verstuurd middels EKT-berichten. Dit zijn
databestanden met informatie over gekochte/verkochte producten.

Florisoft kan zowel EKT-berichten versturen (exporteren) als ontvangen
(importeren). Deze handleiding beschrijft het importeren van
EKT-bestanden. In veel gevallen zal dit proces volledig automatisch (via
een Timer) plaats vinden. Er bestaat echter ook een mogelijkheid om
handmatig EKT-berichten te importeren.

Deze handleiding beschrijft hoe het importeren van EKT-berichten werkt.
Hiervoor zijn een aantal instellingen benodigd. Hoofdstuk één beschrijft
het aanmaken van een Gmail-box. Deze mailbox wordt door leveranciers
gebruikt voor het versturen van EKT-berichten.

In hoofdstuk twee worden de instellingen van de mailbox beschreven. Het
gaat dan om specifieke instellingen die nodig zijn om de communicatie
tussen de mailbox en Florisoft goed te laten verlopen.

Hoofdstuk drie beschrijft de mailinstellingen benodigd voor Florisoft.

Wanneer alle instellingen aangaande het mailaccount goed staan, is de
volgende stap om veilingcodes voor leveranciers aan te maken. Aan iedere
veilingcode worden ook standaardvoorraden gekoppeld. Dit proces staat
beschreven in paragraaf 4.1.

Hoofdstuk vijf beschrijft hoe het inlezen van EKT-berichten automatisch
plaats vindt via een timer. Hoofdstuk zes besluit met het beschrijven
van het handmatig inlezen van EKT-berichten.

Na het lezen van de handleiding is de gebruiker zelfstandig in staat om
Florisoft EKT-berichten in te laten lezen.

**Let op: afbeeldingen in deze handleiding kunnen enigszins afwijken van
hetgeen u op uw scherm te zien krijgt.**

# 1 Mailbox aanmaken

Florisoft maakt gebruik van een standaard Gmail account om EKT-berichten
in te lezen. Dit hoofdstuk beschrijft de stappen die nodig zijn voor het
aanmaken van een mailbox.

1.  Ga naar de volgende pagina om een Gmail account aan te maken.

> <https://accounts.google.com/SignUp>

1.  Vul de volgende gegevens in:

<table>
<thead>
<tr class="header">
<th><strong>Nr.</strong></th>
<th><strong>Omschrijving</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Voornaam: voornaam van de klant</td>
</tr>
<tr class="even">
<td>2</td>
<td>Achternaam: achternaam van de klant</td>
</tr>
<tr class="odd">
<td>3</td>
<td><p>Gebruikersnaam.<br />
Verzin zelf een gebruikersnaam.<br />
Dit wordt het mailadres van de EKT-mailbox.</p>
<p>Vul ook ergens ‘EKT’ in de gebruikersnaam in, zodat de mailbox als EKT-mailbox herkenbaar is.</p></td>
</tr>
<tr class="even">
<td>4</td>
<td>Wachtwoord<br />
Verzin zelf een wachtwoord</td>
</tr>
<tr class="odd">
<td>5</td>
<td>Wachtwoord bevestigen<br />
Bevestig het bij punt 4 verzonnen wachtwoord.</td>
</tr>
<tr class="even">
<td>6</td>
<td>Verjaardag<br />
Kies een willekeurige datum. Let op dat je een datum kiest waardoor je nu minimaal 18 jaar bent.</td>
</tr>
<tr class="odd">
<td>7</td>
<td>Geslacht<br />
Kies een geslacht. Omdat het hier een mailbox betreft met een puur technisch doeleinde, is ‘Overige’ de beste keuze.</td>
</tr>
<tr class="even">
<td>8</td>
<td><p>Standaard homepage</p>
<p>Vink ‘Google instellen als mijn standaard homepage’ uit.</p></td>
</tr>
<tr class="odd">
<td>9</td>
<td><p>Volgende</p>
<p>Klik op ‘Volgende’ om de mailbox aan te maken.</p></td>
</tr>
</tbody>
</table>

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image2.png" style="width:3.563in;height:8.26157in" />

# 2 Instellingen mailbox aanpassen

Na het aanmaken van de EKT-mailbox dienen er een aantal aanpassingen
gedaan te worden in de instellingen van de mailbox. Op deze manier kan
de mailbox op de juiste manier communiceren met Florisoft.

Pas de volgende instellingen in de mailbox aan: Inbox-instellingen,
POP-instellingen & archiefinstellingen en veiligheidsinstellingen.

## 2.1 Inbox-instellingen wijzigen

Voer de volgende stappen uit om de inbox-instellingen te wijzigen:

1.  Klik vanuit de inbox van Gmail op het tandwiel-icoon. (nr.1) Klik
    vervolgens in het uitklap menu op ‘Instellingen.’ (nr. 2)

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image3.png" style="width:6.688in;height:3.00915in" />

1.  Het volgende scherm verschijnt. Klik in dit scherm op het tabblad
    ‘Inbox’ (nr. 1) en zet de vinkjes voor ‘Sociaal’ en ‘Reclame’ uit.
    (nr. 2) Klik op ‘Wijzigingen opslaan’ onderaan de pagina om de
    wijzigingen op te slaan. (nr. 3)

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image4.png" style="width:6.728in;height:3.14093in" />

## 2.2 POP-instellingen & archiefinstellingen wijzigen

Neem de volgende stappen om de POP-instellingen & archiefinstellingen te
wijzigen.

1.  Klik op het tabblad ‘Doorsturen en POP/IMAP.’ (nr. 1)

<img src=".Handleiding standaard EKT-berichten Florisoft\media\image5.png" style="width:6.776in;height:3.67028in" />

1.  Zet de optie ‘POP inschakelen voor **alle email**’ aan. (nr. 2)

2.  Kies in het uitklapmenu (nr. 3) voor ‘ Gmail-kopie in archief
    plaatsen’. (nr. 3)

3.  Sla de wijzigingen op door te klikken op ‘Wijzigingen opslaan.’
    (nr. 4)

## 2.3 Veiligheidsinstellingen aanpassen

Voer de volgende stappen uit om de veiligheidsinstellingen van de
mailbox goed te zetten.

1.  Klik vanuit de inbox op het icoon van het mail-account. (nr. 1) Klik
    hierna op de knop ‘Mijn account’. (nr. 2)

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image6.png" style="width:2.232in;height:2.26895in" />

1.  Klik in het volgende scherm op de kop ‘Inloggen en beveiliging’.
    (nr. 1) Scroll in het volgende venster naar beneden totdat je de
    volgende instelling (rechts onder) ziet.

<img src=".Handleiding standaard EKT-berichten Florisoft\media\image7.png" style="width:2.96736in;height:0.89583in" /><img src=".Handleiding standaard EKT-berichten Florisoft\media\image8.png" style="width:2.504in;height:1.80996in" />

1.  Klik op het schuifje (nr. 2) om deze instelling aan te zetten.

# 3 Mail instellingen Florisoft instellen

Na het aanmaken van de mailbox moeten er een aantal instellingen in
Florisoft ingesteld worden. Deze instellingen worden hieronder
beschreven.

## 3.1 POP-instellingen instellen

Voer de volgende stappen uit om de POP-instellingen in te stellen in
Florisoft.

1.  Klik in de navigator op het menu ‘Onderhoud’. (nr. 1) Kies
    vervolgens ‘Lokale instellingen’. (nr. 2)

<img src=".Handleiding standaard EKT-berichten Florisoft\media\image9.png" style="width:6.472in;height:1.71972in" />

1.  Klik in het volgende venster ‘Lokale instellingen’ (nr. 1) op het
    tabblad ‘Florinet’ (nr.2 )

2.  Het venster ‘Lokale instellingen’ (zie onder) opent. Kies hier het
    tabblad ‘Florinet’. (nr .1) Klik vervolgens op de knop
    ‘Instellingen’ naast ‘Productie’. (nr. 2)

> Dit opent het venster ‘Win\_Setup\_EKTinstellingen’. Vul in dit
> venster de volgende instellingen in:

**POP3 Server:** pop.gmail.com (nr. 3)

**POP3 Port:** 995 (nr. 4)

**SSL:** vink aan (nr. 5)

**Account naam:** het e-mailadres van de EKT-mailbox

**Password:** het wachtwoord van de mailbox zoals aangemaakt in
hoofdstuk 1 (nr. 4)

<img src=".Handleiding standaard EKT-berichten Florisoft\media\image10.png" style="width:5.824in;height:3.7926in" />

Klik na het invullen van deze gegevens op ‘Ok’ (nr. 8) in het venster
Win\_Setup\_EKTInstellingen.

Klik nu op ‘Ok’ in het venster ‘Lokale instellingen’. (nr. 9)

1.  Vul in het veld ‘Retouradres Florinet berichten’ het e-mailadres van
    de EKT mailbox in. (nr. 10)

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image11.png" style="width:4.464in;height:2.90697in" />

Nu staan de mailinstellingen correct ingesteld in Florisoft.

# 4 Veilingcodes leveranciers aanmaken

Iedere leverancier stuurt EKT-berichten met behulp van een unieke
veilingcode. Daarnaast bepaalt deze veilingcode ook in welke
voorra(a)d(en) de handel terecht komt. In dit hoofdstuk wordt beschreven
hoe een veilingcode aangemaakt wordt. (paragraaf 4.1)

Daarnaast wordt in paragraaf 4.2 beschreven hoe verschillende standaard
voorraden gekoppeld kunnen worden aan de veilingcode.

## 4.1 Veilingcode aanmaken

Doe het volgende voor het aanmaken van een veilingcode.

1.  Klik in de Navigator op het volgende icoon.

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image12.png" style="width:1.98986in;height:0.7501in" />

1.  Het venster ‘Constanten’ opent. Klik hier op ‘Locaties’ (nr. 1) en
    daarna op ‘Veilingen’. (nr. 2) Klik nu op ‘Nieuw item toevoegen’.
    (nr. 3) Het venster Veilingen opent.

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image13.png" style="width:6.5849in;height:4.14246in" />

1.  Vul een Veilingcode (nr. 4) en Omschrijving (nr. 5) in. Klik nu op
    de knop ‘EKT instellingen’. (nr. 6) Vervolgens verschijnt het
    venster ‘Koppeling Florinet’. (zie volgende pagina voor vervolg)

**Let op: alleen veilingcodes vanaf nummer 30 en hoger zijn
toegestaan!!**

1.  Stel in het venster ‘Koppeling Florinet’ verschillende standaard
    voora(a)d(en) in.

<img src=".Handleiding standaard EKT-berichten Florisoft\media\image14.png" style="width:4.79245in;height:5.19476in" />

> Def. voorraad (nr. 1): kies hier de standaard voorraad. Klik hiervoor
> op de zwarte naar beneden wijzende pijl (omcirkeld).
>
> Dit opent een venster (onder in de afbeelding) waarin je een voorraad
> kunt kiezen. (nr. 4) OF  
> Zoek een voorraad door in het veld ‘Snelzoeken’ de naam van een
> voorraad te typen. (nr. 5)
>
> Klik op de naam van de voorraad, bijvoorbeeld TEST om de betreffende
> voorraad te selecteren.
>
> Klik vervolgens op Ok (nr. 6) en nogmaals op Ok (nr. 7)

Herhaal stap 4 voor alle te koppelen standaard voorraden en overige
standaard instellingen.

# 5 EKT-berichten automatisch inlezen via een timer

In de meeste gevallen zullen EKT-berichten automatisch worden ingelezen
middels een timer. In dit hoofdstuk wordt beschreven hoe een timer
geconfigureerd en aangezet moet worden.

1.  Klik met de rechtermuisknop op het timer-icoon in de Navigator.

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image15.png" style="width:6.79245in;height:3.95437in" />

1.  Kies de optie ‘Timer Settings’. Het venster ‘Timer Settings’ opent.

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image16.png" style="width:2.45868in;height:1.08348in" />

1.  Selecteer hier de ‘EDI’ Timer Setting. (nr. 1)

<img src=".Handleiding standaard EKT-berichten Florisoft\media\image17.png" style="width:6.75472in;height:4.48034in" />

1.  Kies bij ‘Actieve gebruiker’ de gebruiker waar je de timer op in wil
    instellen. (nr. 3)

2.  Zet het vinkje achter ‘Dit script activeren bij het starten van de
    timer’ aan (nr. 4)

3.  Vul bij nr. 5 de tijden (urenuren:minutenminuten) in waarop de timer
    geactiveerd wordt. ‘Start’ is de begintijd, ‘Stop’ de eindtijd. Vul
    bij ‘Interval in minuten’ de intervaltijd van de timer in.

> **Voorbeeld:** Start: 10.00 Stop: 11:00 Interval in minuten: 5

**Betekenis:** timer draait ’s ochtends tussen 10.00 uur en 11.00 uur ’s
om de vijf minuten.

1.  Kies ervoor om de timer met deze instellingen eenmalig OF altijd
    door te laten lopen.

> Voor eenmalig uitvoeren: druk op de knop ‘Eenmalig uitvoeren’. (nr. 6)

Om de timer altijd door te laten lopen: Klik op ‘OK’ in het venster
‘Timer Settings’ (nr. 7)

1.  Voer de stappen 4 t/m 7 ook uit voor de ‘Florinet Timer Setting’.
    (nr. 2)

# 6 EKT-berichten handmatig inlezen

Veelal zullen EKT-berichten automatisch ingelezen worden middels een
timer functie. 9zie hoofdstuk vijf) Florisoft biedt ook de mogelijkheid
om EKT-berichten handmatig in te lezen. Voer hiervoor de volgende
stappen uit.

1.  Klik in de Navigator op de knop ‘EDI’

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image18.png" style="width:1.48979in;height:0.92721in" />

1.  Florisoft haalt alle EKT-berichten die klaar staan in de EKT mailbox
    op en slaat deze op in de map  
    C:\\NET440\\USER\\IN

2.  Klik vervolgens op de knop ‘Florinet’ in de Navigator.

> <img src=".Handleiding standaard EKT-berichten Florisoft\media\image19.png" style="width:1.48979in;height:0.92721in" />

1.  De EKT-berichten worden nu in de geselecteerde voorraden (zie
    paragraaf 4.1) ingelezen.

2.  Na het importeren van de EKT-berichten in Florisoft middels de
    ‘Florinet-knop’ worden de EKT-berichten verwijderd uit de map
    C:\\NET440\\USER\\IN en geplaatst in de map C:\\NET440\\USER\\BACKUP
