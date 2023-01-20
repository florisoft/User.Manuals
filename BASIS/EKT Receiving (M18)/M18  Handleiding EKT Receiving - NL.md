<img src="../../fslogo.png">

# Florisoft Handleiding EKT Receiving (M18)

Florisoft kan zowel EKT-berichten versturen (exporteren) als ontvangen
(importeren). Deze handleiding beschrijft het importeren van
EKT-bestanden. In veel gevallen zal dit proces volledig automatisch (via
een Timer) plaats vinden. Er bestaat echter ook een mogelijkheid om
handmatig EKT-berichten te importeren.

We gaan er in deze handleiding vanuit dat u al beschikt over een EKT-adres of indien dit niet geval is dat u beschikt over de nodig kennis.

**Let op: afbeeldingen in deze handleiding kunnen enigszins afwijken van
hetgeen u op uw scherm te zien krijgt.**

## Inhoudsopgave

[Mail instellingen in Florisoft](#mail-instellingen-in-florisoft)  
[POP-instellingen](#pop-instellingen)  
[Veilingcodes van leveranciers aanmaken](#veilingcodes-leveranciers-aanmaken)  
[Veilingcodes aanmaken](#veilingcodes-aanmaken)  
[EKT-berichten automatisch inlezen via een timer](#ekt-berichten-automatisch-inlezen-via-een-timer)  
[EKT-berichten handmatig inlezen](#ekt-berichten-handmatig-inlezen)  

## Mail instellingen in Florisoft

Na het aanmaken van de mailbox moeten er een aantal instellingen in
Florisoft ingesteld worden. Deze instellingen worden hieronder
beschreven.

### POP-instellingen

|Stap|Uitleg|
|:-:|:--|
|**1**|Klik in de Florisoft Navigator op de knop "*Onderhoud*" (Nr. 1), kies dan vervolgens voor de optie "*Lokale instellingen*" (Nr. 2)<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image31.png"></details>|
|**2**|Klik op het instellingen tabje genaamd "*Florinet*"<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image32.png"></details>|
|**3**|Klik vervolgens op de "*Instellingen*" knop naast de productie radio knop. Dit opent een nieuw venster.|
|**4**|Vul dit in nieuwe venster de volgende gegevens in:<br>**POP3 Server**: Vul hier het pop server adres in <br>**POP3 Port**: meestal poort 995<br>**SSL**: zet dit aan<br>**Account naam**: het e-mail adres van het EKT-mailbox<br>**Password**: het wachtwoord van de mailbox.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image33.png"></details>|
|**5**|Klik eerst op de **Ok** knop naast de invoervelden om dan vervolgens op de **Ok** van het tabje zelf te klikken.|
|**6**|Vul nu het veld "*Retouradres Florinet berichten*" in met het e-mailadres van de EKT mailbox.|

#### Gebruikt u Office365 lees hier verder!

*Office365 maakt gebruik van OAUTH2 dit zorgt voor wat extra instellingen voor een werkende EKT-mailbox, volg hier voor de onderstaande stappen:*

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constantenscherm en navigeer naar het pad:<br>**Systeem→Email login gegevens**<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image34.png"></details>|
|**2**|Maak een nieuw variabel aan door op het plusje te klikken, dit opent een nieuw venster.|
|**3**|Vul de volgende gegevens in:<br>**Omschrijving**: *zet hier een beknopte omschrijving neer (dit is zichtbaar in het systeem)*<br><br>**POP-gegevens:**<br><br>**Server:** *vul dit veld in met de POP-server*<br>**Port**: *Vul hier het POP-poortnummer in.* <br>**SSL**: *Zit het vinkje SSL aan*<br><br>**SMTP Gegevens**<br><br>**Server:** *Vul dit veld met SMTP server adres*<br>**Port:** *Vul hier het SMTP poortnummer in*<br>**TLS**: *Zet het vinkje TLS aan*<br><br>**Login gegevens**:<br><br>**Gebruiker**: *Vul in dit veld de gebruiker in*<br>**Wachtwoord**: *zet deze dropdown op de waarde "*Microsoft OAuth2*", dit vervangt het wachtwoordveld met een token input veld en voegt de knop "*Instellen OAuth2*" toe*.<br>**Instellen OAuth2.0**: *Klik op deze knop en volg vervolgens de onderstaande stappen*<br>**Token**: *het token veld wordt automatisch gevuld na het doorlopen van de stappen van de knop* **Instellen OAuth2.0**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image34.png"></details>|
|**4**|*Klik op de knop **Instellen OAuth 2.0** en volg de onderstaande stappen:*
|**5**|Een web browser scherm/tablad wordt geopend.|
|**6**|Log in met uw EKT-mailbox account (Office365).|
|**7**|U krijgt nu een vraag om Florisoft toegang te geven tot de volgende instellingen:<br>- Toegang onderhouden tot gegevens waardoor u Florisfoto toegang hebt verleend<br>- Toegang tot het verzenden van e-mails vanuit uw postvak<br>- Je profiel lezen<br>- E-mail verzenden als jou<br>- Je e-mail lezen<br>- lees- en schrijftoegang tot je e-mail<Br><br>**Als u hiertoe bereid bent kan u ok "Ja" drukken**<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image35.png"></details>|
|**8**|U wordt nu omgeleidt naar het onderstaande scherm. Als u eenmaal het onderstaande scherm ziet is de authenticatie via OAuth2.0 voltooid en kan er gebruik gemaakt worden van dit account.|
|**9**|Klik vervolgens op de knop "**Ok**" om in de instellingen op te slaan.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image36.png"></details>|

*De mail instellingen staan nu correct ingesteld in Florisoft.*


## Veilingcodes leveranciers aanmaken

Iedere leverancier stuurt EKT-berichten met behulp van een unieke veilingcode. Daarnaast bepaalt deze veilingcode ook in welke voorra(a)d(en) de handel terecht komt. In dit hoofdstuk wordt beschreven hoe een veilingcode aangemaakt wordt. (paragraaf 4.1)

Daarnaast wordt in paragraaf 4.2 beschreven hoe verschillende standaard voorraden gekoppeld kunnen worden aan de veilingcode


### Veilingcodes aanmaken

*Om een veilingcode aan te maken volgt u de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Open het constantenscherm en navigeer naar het volgende pad:<br>**Locaties→Veilingen**<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image37.png"></details>|
|**2**|Voeg hier een nieuw item toe door op het plus-icoontje te drukken. Dit opent een nieuw scherm.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image37.png"></details>|
|**3**|Vul de veiling code (Zorg ervoor dat deze uniek is, en **hoger** is dan nummer 30!) en omschrijving in.<br><br>*Veilingcodes onder de 30 zijn namelijk gereserveerd voor standaard Royal Flora Holland. Het instellen van de voorraden moet op de timer user gedaan worden.*<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image37.png"></details>|
|**4**|Klik nu op de knop '*EKT-instellingen*', vervolgens verschijnt het venster '*Koppeling Florinet*'.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image37.png"></details>|
|**5**|Stel in het venster '*Koppeling Florinet*' verschillende standaard voora(a)de(en) in.|
|**6**|Dit opent een venster (onder in de afbeelding) waarin je een voorraad kunt kiezen. Zoek een voorraad door in het veld ‘Snelzoeken’ de naam van een voorraad te typen.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image38.png"></details>|

## EKT-berichten automatisch inlezen via een timer

*In de meeste gevallen zullen EKT-berichten automatisch worden ingelezen middels een timer. In dit hoofdstuk wordt beschreven hoe een timer geconfigureerd en aangezet moet worden.*

|Stap|Uitleg|
|:-:|:--|
|**1**|Klik met de rechtermuisknop op het timer-icoon in de Navigator.|
|**2**|Kies de optie '*Timer Settings*', het venster '*Timer Settings*' opent.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image39.png"></details>|
|**3**|Zoek en selecteer de 'EDI'Timer Setting|
|**4**|Kies bij ‘Actieve gebruiker’ de gebruiker waar je de timer op in wil instellen.|
|**5**|Zet het vinkje achter ‘Dit script activeren bij het starten van de timer’ aan|
|**6**|Vul bij de tijden (urenuren:minutenminuten) in waarop de timer geactiveerd wordt. ‘Start’ is de begintijd, ‘Stop’ de eindtijd. Vul bij ‘Interval in minuten’ de intervaltijd van de timer in.|
|**7**|Kies ervoor om de timer met deze instellingen eenmalig OF altijd door te laten lopen.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image40.png"></details>|
|**8**|Om de timer altijd door te laten lopen: Klik op ‘OK’ in het venster ‘Timer Settings’|

## EKT-berichten handmatig inlezen

*Veelal zullen EKT-berichten automatisch ingelezen worden middels een timer functie. 9zie hoofdstuk vijf) Florisoft biedt ook de mogelijkheid om EKT-berichten handmatig in te lezen. Voer hiervoor de volgende stappen uit.*

|Stap|Uitleg|
|:--|:--|
|**1**|Klik in de navigator op de knop '*EDI*'<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image18.png"></details>|
|**2**|Florisoft haalt alle EKT-berichten die klaar staan in de EKT mailbox op en slaat deze op in de map:<br>**C:\NET440\USER\IN**|
|**3**|Klik vervolgens op de knop '*Florinet*' in de navigator.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding standaard EKT-berichten Florisoft/media/image19.png"></details>|
|**4**|De EKT-berichten worden nu in de geselecteerde voorraden (zie paragraaf 4.1) ingelezen.|
|**5**|Na het importeren van de EKT-berichten in Florisoft middels de ‘Florinet-knop’ worden de EKT-berichten verwijderd uit de map <br>**C:\NET440\USER\IN** <br>en geplaatst in de map <br>**C:\NET440\USER\BACKUP**|