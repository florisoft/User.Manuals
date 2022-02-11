# Chatfunctie Florishop inrichten

## Achtergrondinformatie
>Dit document beschrijft de werking van de chatfunctie in Florishop. Het idee achter deze functie is dat ingelogde klanten op de webshop rechtstreeks kunnen communiceren met hun accountmanager. (verkoper) De verkoper heeft uiteraard de mogelijkheid om 'terug' te chatten naar de klant. In de praktijk komt het vaak voor dat klanten wat meer informatie over een product willen voordat ze tot aanschaf over gaan. De chatfunctie binnen de webshop speelt hierin een belangrijke rol.

## Vooraf regelen
Onderstaande zaken dienen vooraf geregeld/ingesteld te zijn.

-   Module Notificatiecentrum activeren

## Stap 1: Gereserveerde systeemgebruiker aanmaken
De eerste stap bestaat uit het aanmaken van een nieuwe systeemgebruiker die uitsluitend bedoeld is om chatberichten vanuit de webshop af te vangen in Florisoft. Ga via de Navigator naar `Constanten -> Systeem -> Users -> Systeemgebruikers` en maak een nieuwe systeemgebruiker aan. Voer hiervoor onderstaande stappen uit:

1. Klik op het icoon 'Add new item' (veer met plus, nr. 1) Het venster Systeemgebruikers opent.
2. Vul bij Userid (nr. 2) de waarde WEBCHAT in.
3. Vul bij Password (nr. 3) een bijbehorend wachtwoord in.
4. Geef de systeemgebruiker een duidelijk beschrijvende naam in het veld Naam. (nr. 4)
5. Klik op de knop Ok (nr. 5) om de nieuwe systeemgebruiker aan te maken.

<img src=".Pop-up Chat & Notification Centre/2021-02-12-10-51-46.png) />


## Stap 2: Systeeminstellingen aanpassen
Nu moeten er een tweetal systeeminstellingen gecontroleerd worden.

1. Klik in de Navigator op het menu Onderhoud -> Setup Systeem. (nr. 1) Het venster Florisoft.NET Systeem Setup opent. 

<img src=".Pop-up Chat & Notification Centre/2021-02-12-10-57-15.png) />

2. Klik op het tabblad Geavanceerd (nr. 2) en vul het wachtwoord in.

<img src=".Pop-up Chat & Notification Centre/2021-02-12-10-59-50.png) />

>**Let op: alle instellingen die zich bevinden onder het tabblad Geavanceerd mogen alleen worden aangepast door personeel van Florisoft. Daarom zitten deze instellingen ook achter een wachtwoord.**

3. Zet de instelling FIDGETINTERCOMMCHAT op True.
4. Geef in de setting WEBSHOPCHATDESTINATIONUSERID de userid van de gereserveerde systeemgebruiker op die aangemaakt is in Stap 1: Gereserveerde systeemgebruiker aanmaken.
5. Klik op Ok om de instellingen in het venster Florisoft.NET Systeem Setup te bevestigen en te sluiten.
6. Sluit Florisoft af en start het opnieuw op.

## Stap 3: Webshopinstellingen aanpassen
De derde stap beschrijft de instellingen die nodig zijn in de webshop. Volg onderstaande stappen om de betreffende instellingen op de juiste manier te configureren:

1. Login op de webshop met het beheer (ADMIN) account.
2. Open de het Management gedeelte door te klikken op de naam van de gebruiker -> Beheer. (nr. 1)
Aan de bovenkant van de webshop verschijnt nu een menubalk met opties.

<img src=".Pop-up Chat & Notification Centre/2021-02-12-11-16-36.png) />

3. Klik op het menu Configuratie -> Webshop Instellingen. (nr. 2) De webshop instellingen worden geopend in een apart browser tabblad.

<img src=".Pop-up Chat & Notification Centre/2021-02-12-11-18-22.png) />

4. Zoek in het veld item naar chat (nr. 3)
5. Geef de instelling SETUP -> WEBCHATAAN de waarde ON. (nr. 4)
6. Geef de instelling SETUP -> WEBCHAT de waarde WEBCHAT. Dit is de Userid van de geserveerde systeemgebruiker die aangemaakt is in Stap 1: Gereserveerde systeemgebruiker aanmaken.
7. Herstart de webshop.

<img src=".Pop-up Chat & Notification Centre/2021-02-12-11-25-24.png) />

## Stap 4: Debiteurgroep(en) aanmaken
Omdat de chatfunctie gebouwd is op de Sales add on is het noodzakelijk om de debiteuren die gebruik gaan maken van de chatfunctie ingedeeld worden in debiteurgroepen. De gedachte hierachter is dat iedere verkoper verantwoordelijk is voor het contact met een x aantal klanten. Alle klanten die horen bij een verkoper dienen gegroepeerd te worden in een debiteurgroep.

Hieronder de stappen voor het aanmaken van een debiteurgroep:

1. Ga via de Navigator naar `Constanten -> Organen -> Debiteurgegevens -> Debiteurgroepen`.
2. Klik op het icoon Add new item (veer met plus, nr. 1) om een nieuwe debiteurgroep aan te maken.
3. De nieuwe groep krijgt automatisch een Groepcode (volgnummer) toegewezen.
4. Vul in het veld Omschrijving (nr. 3) een duidelijke omschrijving (naam) in voor de groep.
5. Klik op de knop Selecteren (nr. 4) en selecteer alle debiteuren die gegroepeerd zullen worden in deze groep.
   Alle geselecteerde debiteuren worden weergegeven in het gedeelte Leden: (nr. 5)

6. Klik op Ok om de nieuwe groep aan te maken.

<img src=".Pop-up Chat & Notification Centre/2021-02-12-11-37-42.png) />

## Stap 5: Webshop sales debiteur aanmaken
Omdat vanuit technisch oogpunt in de webshop alleen maar debiteuren in kunnen loggen is er een aparte debiteur nodig die in de volgende stap aan de verkoper gekoppeld wordt. De verkoper zal later op zijn beurt weer gekoppeld worden aan de systeemgebruiker van de verkoper. Hieronder een globaal stappenplan voor het aanmaken van een sales debiteur.

Een sales debiteur is technisch gezien niets meer dan een 'normale' Florisoft debiteur. Andere benamingen voor een webshop sales debiteur zijn: webshop verkoopdebiteur, verkoopdebiteur of salesdebiteur.

>**Let op: iedere verkoper moet gekoppeld zijn aan een eigen sales debiteur. Eén verkoper betekent dus ook één sales debiteur. Twee verkopers betekent ook dat er twee sales debiteuren in het systeem aanwezig zijn. Oftewel: het aantal sales debiteuren moet gelijk zijn aan het aantal verkoper.**

1. Ga via de Navigator naar `Constanten -> Organen -> Debiteurgegevens -> Debiteuren`.
2. Klik op het icoon Add new item (veer met plus, nr. 1) om een nieuwe debiteur aan te maken. Dubbelklik op één van de beschikbare template debiteuren om de nieuwe sales debiteur op te baseren. Het venster Debiteuren opent.
3. Geef de nieuwe debiteur een Debiteurnummer in het veld Debiteurnummer. (nr. 2)
4. Geef het veld Zoek dezelfde of een afwijkende waarde als het de debiteurnummer. (nr. 3)
5. Geef de nieuwe debiteur een duidelijk omschreven naam in het veld Bedrijfsnaam. (nr. 4)
6. Kies in het veld Land (nr. 5) voor het land van de sales debiteur. 
7. Vul het veld Email adres (nr. 6) met het mailadres van de verkoopdebiteur. Dit mailadres is meestal gelijk aan het adres waar de verkoper standaard mee communiceert richting zijn klanten.

<img src=".Pop-up Chat & Notification Centre/2021-02-12-12-11-11.png) />

8. Klik op het tabblad Ident. (nr. 7)
9. Vul bij het veld Gekoppeld aan gebruiker de systeemgebruiker van de verkoper in. (nr. 8)
10. Klik op het tabblad Internet toegang (nr. 9) 

<img src=".Pop-up Chat & Notification Centre/2021-02-12-12-24-51.png) />

11. Zet het vinkje Deze klant heeft toegang via het Internet (nr. 10) aan.
12. Zet het vinkje Deze klant mag inloggen in Florishop (nr. 11) aan.
13. Klik op de knop Toegankelijke voorraden (nr. 12) om de verkoopdebiteur toegang te geven tot de gewenste voorr(a)ad(en)
14. Geef de debiteur een wachtwoord in het veld Password voor klant. (nr. 13)
15. Klik op Ok om de instellingen te bevestigen. (nr. 14)

<img src=".Pop-up Chat & Notification Centre/2021-02-12-12-35-47.png) />


## Stap 6: Verkoper aanmaken
Stap zes gaat over het aanmaken van een verkoper. De verkoper wordt in deze stap gekoppeld aan zowel de webshop sales debiteur (Zie Stap 5: Webshop sales debiteur aanmaken) en de debiteurgroep. (Zie Stap 4: Debiteurgroep(en) aanmaken) 

1. Ga via de Navigator naar `Constanten -> Organen -> Verkopergegevens -> Verkopers`.
2. Klik op het icoon Add new item (veer met plus, nr. 1) om een nieuwe verkoper aan te maken. (nr. 1)
3. Vul in het veld Code verkoper een zelf bedachte verkoperscode in. (nr. 2)
4. Geef de verkoper een duidelijk omschreven naam in het veld Naam verkoper. (nr. 3)
5. Klik op het tabblad Webshop. (nr. 4)

<img src=".Pop-up Chat & Notification Centre/2021-02-12-12-36-51.png) />

6. Zet het vinkje Accountmanager login aan. (nr. 5)
7. Kies de eerder aangemaakte webshop sales debiteur voor deze verkoper in het veld Op basis van debiteur (Zie Stap 5: Webshop sales debiteur aanmaken, nr. 6)
8. Klik op Ok om de verkoper aan te maken.

<img src=".Pop-up Chat & Notification Centre/2021-02-12-12-42-35.png) />

## Stap 7: Verkoper koppelen als accountmanager aan de debiteur(en)
De verkoper, zoals aangemaakt in de vorige stap, moet gekoppeld worden aan alle debiteuren (klanten) die horen bij deze verkoper. Deze koppeling wordt gemaakt op de debiteur:

1. Ga via de Navigator naar `Constanten -> Organen -> Debiteurgegevens -> Debiteuren`.
2. Dubbelklik op één van de debiteuren die je wil koppelen.
3. Ga naar het tabblad Internet (nr. 1) -> internet toegang. (nr. 2)
4. Kies in het veld Account Manager de verkoper die contact heeft met deze debiteur. (nr. 3)
5. Optioneel: voer deze wijziging door voor alle debiteuren die gekoppeld dienen te worden aan de geselecteerde verkoper met behulp van de functie Wijzigen naar. (nr. 4)
6. Klik op Ok om de instellingen te bevestigen (nr. 5)

<img src=".Pop-up Chat & Notification Centre/![](2021-02-12-12-57-21.png) />


## Stap 8: Verkoper koppelen aan de systeemgebruiker
Stap acht laat zien waar de verkoper gekoppeld wordt aan de systeemgebruiker van de verkoper.

1. Ga via de Navigator naar `Constanten -> Systeem -> Users -> Systeemgebruikers`.
2. Open de systeemgebruiker van de verkoper door op de betreffende regel te dubbelklikken.
3. Kies in het veld Verkoper voor de verkoper die hoort bij deze systeemgebruiker. (nr. 1)
4. Klik op Ok om de instellingen te bevestigen. (nr. 2)

<img src=".Pop-up Chat & Notification Centre/2021-02-12-12-50-32.png) />

## Stap 9: Testen
Deze stap laat zien hoe de chatfunctie werkt op zowel de webshop als in Florisoft. Dit gedeelte zal ook voornamelijk in een reële situatie.

Klant in de webshop:

1. Hertstart de webshop en Florisoft.
2. Activeer de fidgets in Florisoft door te klikken op het menu Fidgets -> Intercommunicatie chat. (nr.1) De fidgets (waar de chatfunctie een onderdeel van is verschijnen aan de rechterkant van de Navigator)

<img src=".Pop-up Chat & Notification Centre/2021-02-12-13-24-21.png) />

<img src=".Pop-up Chat & Notification Centre/2021-02-12-13-26-56.png) />

2. Log op de webshop in met één van de debiteuren die via bovenstaande stappen zijn gekoppeld aan een verkoper en webshop sales gebruiker.
3. Klik op het spreekwolk icoon om de Chat functie te openen. (nr. 1)

<img src=".Pop-up Chat & Notification Centre/2021-02-12-13-19-19.png) />

4. Typ een bericht voor de verkoper in het daarvoor bestemde veld (nr. 2)
5. Druk op de knop SEND (nr. 5) of op Enter op het toetsenbord om het bericht te verzenden.
Het bericht wordt verstuurd naar de verkoper.

<img src=".Pop-up Chat & Notification Centre/2021-02-12-13-21-00.png) />

<img src=".Pop-up Chat & Notification Centre/2021-02-12-13-22-29.png) />

Verkoper in Florisoft:

1.  Zodra een debiteur een bericht verzend vanuit de webshop opent er in de fidgets een nieuw tabblad met de debiteurcode (nr. 1) en het verzonden bericht. (nr. 2)

<img src=".Pop-up Chat & Notification Centre/![](2021-02-12-16-58-00.png) />

2. Typ een antwoord in het tekst vak aan de onderkant van het fidgets scherm (nr. 3) en druk op Enter.
<img src=".Pop-up Chat & Notification Centre/2021-02-12-17-05-45.png) />

3. Het antwoord komt binnen in het chatscherm van de webshop.

<img src=".Pop-up Chat & Notification Centre/2021-02-12-17-08-32.png) />

Bovenstaande stappen herhalen zich om het gesprek voort te zetten.



# Pop-up & Notification Center inrichten

## Vooraf regelen

Onderstaande zaken dienen vooraf geregeld/ingesteld te zijn.

- De webshop instelling **WEBNOTIFICATIONCENTREAAN** moet op ON gezet worden

  

## Aanmaken notificatie



Om een notificatie aan te maken, navigeer je naar de volgende plek in Florisoft: Constanten -> Systeem -> **Notificatieberichten**. 

Klik nu op **Add new item** (veer met plus). Onderstaand scherm krijg je te zien:

<img src=".Pop-up Chat & Notification Centre/2021-03-08-10-25-04.png) />



## Notificatie vullen met informatie



Volg de stappen hieronder om een notificatie te vullen met informatie:



### Titel & Bericht



1. Bij **Default titel** geef je de titel op (maximaal 75 karakters)

2. Bij **Default bericht** geef je het bericht op (maximaal 500 karakters)

3. Bij **Vertalingen titel** kan je een vertaling opgeven van de titel (maximaal 75 karakters)

4.  Bij **Vertalen bericht** kan je een vertaling opgeven van het bericht (maximaal 500 karakters)



### Aantal keer tonen vs. altijd tonen

5. Om een notificatie altijd te tonen, zet je een vinkje bij **Oneiding vaak tonen**. Dit staat default aan.

6.  Om een notificatie x keer te tonen, zet je bij **Oneindig vaak tonen** het vinkje uit. En geef je in het **Aantal keer tonen**-veld op hoe vaak het moet worden getoond.



### Periode waarin je notificatie toont

Als je een notificatie qua tijdsbestek altijd wilt tonen, dan zet je een vinkje bij **Bericht vervalt nooit**. Je hebt dan geen einddatum.

7.  Bij **Datum geldig van** / **Datum geldig tot** geef je op binnen welke periode de notificatie getoond moet worden. Buiten deze periode wordt de notificatie niet getoond.



### Webpagina type



9. Bij **webpagina type** geef je op waar de notificatie getoond moet worden. Voor nu werkt enkel type **Home**.



### Autoriseren debiteuren



10. Bij **Gekoppelde debiteuren** geef je op welke debiteuren de notificatie mogen zien.

- Het is ook mogelijk om dit te autoriseren vanuit de debiteur. Ga hiervoor naar: Constanten -> Organen -> Debiteurgegevens -> **Debiteuren**. 
  
- Om een bericht te koppelen, zet je een vinkje bij: **Is gekoppeld** 

<img src=".Pop-up Chat & Notification Centre/2021-03-08-11-28-48.png) />



## Weergave op de Webshop

11. Als je het juist hebt ingesteld, dan zou je een pop up moeten zien op de Webshop met daarin de notificatie:

<img src=".Pop-up Chat & Notification Centre/2021-03-08-11-12-53.png) />

12. Rechtsboven op de webshop kan je alle notificaties terugvinden: 

<img src=".Pop-up Chat & Notification Centre/2021-03-08-11-15-02.png) />

