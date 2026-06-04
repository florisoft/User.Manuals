# Nieuw update- en uitrolmechanisme Florisoft

Florisoft gebruikt voortaan een nieuw mechanisme voor het verspreiden van Backoffice-updates. Het oude uitrolprincipe met `BINUPDATE`, `BINLATEST` en handmatig uitrollen vervalt. In plaats daarvan wordt per gebruikersgroep ingesteld met welke `BIN[VERSIE]_[DATUM]` map gebruikers moeten starten.

Voorbeeld van een nieuwe versie-map:

```text
dataadt\BIN140.598_260603
```

Hierbij is `140.598` het versienummer en `260603` de datum van de versie die staat voor Jaar|Maand|Dag oftewel 3 juni 2026. Dit maakt het een stuk overzichtelijker welke versies er gedownload zijn, maar ook van welke datum die versie is.

## Waarom ziet u deze pagina?

U ziet deze pagina omdat u een bijgewerkte Florisoft-versie wilt uitrollen naar andere gebruikers. De update zelf is op dit moment al uitgevoerd. Ook de purge en de omzetting naar het nieuwe updateformaat zijn al automatisch afgehandeld.

Wat vroeger **uitrollen** heette, werkt nu anders. U rolt geen `BINUPDATE` of `BINLATEST` meer uit. U kiest voortaan per uitrolgroep welke `BIN[VERSIE]_[DATUM]` map gebruikt moet worden.

De uitrolgroepen zijn:

- Beheerders
- Pilotgebruikers
- Standaardgebruikers

### Betekenis van de uitrolgroepen

#### Beheerders

Beheerders zijn gebruikers die verantwoordelijk zijn voor het uitvoeren en beoordelen van updates. Nieuwe versies worden eerst aan deze groep toegewezen zodat de belangrijkste functionaliteit gecontroleerd kan worden voordat andere gebruikers worden bijgewerkt.

#### Pilotgebruikers

Pilotgebruikers vormen een beperkte testgroep van eindgebruikers. Nadat de beheerders de nieuwe versie hebben goedgekeurd, kan deze groep ermee werken in de dagelijkse praktijk. Eventuele problemen worden hierdoor ontdekt voordat de versie naar alle gebruikers wordt uitgerold.

#### Standaardgebruikers

Dit is de grootste groep gebruikers. Zij werken normaal gesproken met de laatst goedgekeurde versie. Pas nadat een versie succesvol is getest door de beheerders en pilotgebruikers, wordt deze versie aan de standaardgebruikers toegewezen.

#### Aanbevolen uitrolvolgorde

1. Beheerders
2. Pilotgebruikers
3. Standaardgebruikers

Op deze manier wordt het risico op verstoringen voor de meeste gebruikers zo klein mogelijk gehouden.

## Wat is er al automatisch gebeurd?

Bij de eerste update naar dit nieuwe mechanisme kan Florisoft nog vanuit het oude proces zijn begonnen. In dat geval is de update eerst naar `dataadt\BINUPDATE` gedownload.

Tijdens de purge is de mapnaam automatisch omgezet van:

```text
dataadt\BINUPDATE
```

naar bijvoorbeeld:

```text
dataadt\BIN140.598_260603
```

Daarbij is de gebruiker die de update uitvoerde automatisch in de groep **Beheerders** geplaatst. Ook is de binversie van de groep **Beheerders** en van deze gebruiker ingesteld op de nieuwe versie-map.

U hoeft hiervoor niets meer te doen. U werkt nu al met de nieuwe versie.

### Wat verandert er bij toekomstige updates?

Deze update is nog gestart vanuit het oude updateproces, maar vanaf nu worden nieuwe updates direct gedownload naar een versie-map, bijvoorbeeld:

dataadt\BIN140.598_260603

Hierdoor hoeft een bestaande binmap niet meer vervangen te worden. Updates verlopen daardoor sneller en meerdere versies kunnen tijdelijk naast elkaar bestaan.

Hiervoor vervalt het oude uitrol proces in zijn geheel. Voorheen werden tijdens het uitrollen grote aantallen bestanden gekopieerd naar andere binmappen. Dat is niet meer nodig. Voortaan hoeft er alleen nog worden ingesteld welke gebruikersgroep welke versie moet gebruiken.

Gebruikers hoeven daarna alleen Florisoft opnieuw te starten om met de toegewezen versie te werken.

## Wat moet u nu doen?

Als u de nieuwe versie goed genoeg vindt om verder te verspreiden, wijst u de gewenste versie toe aan een uitrolgroep.

Het advies is:

1. Laat eerst alleen **Beheerders** met de nieuwe versie werken.
2. Zet daarna een beperkte groep gebruikers in **Pilotgebruikers**.
3. Zet pas daarna **Standaardgebruikers** op dezelfde versie.

## Actieve gebruikers openen

Open het vernieuwde scherm **Actieve gebruikers**. Dit scherm wordt ook automatisch geopend wanneer u vanuit het oude proces probeert uit te rollen.

Links in het scherm staat een filterboom. Onder **Backoffice** staan de drie update-uitrolgroepen:

- **Beheerders**
- **Pilotgebruikers**
- **Standaardgebruikers**

Klik bijvoorbeeld op **Backoffice > Beheerders**. U ziet dan de beheerder die de update heeft uitgevoerd. Rechtsboven ziet u de ingestelde versie voor deze groep, bijvoorbeeld `BIN1.0.140.669_260603`.

<img width="2063" height="762" alt="image" src="https://github.com/user-attachments/assets/acb51ccf-2595-43c8-bded-d89268a36e15" />

## Pilotgebruikers instellen

Het is aangeraden om eerst een kleine groep pilotgebruikers met de nieuwe versie te laten werken voordat de versie naar alle standaardgebruikers gaat.

Gebruikers kunnen op twee manieren in de uitrolgroep **Pilotgebruikers** worden gezet.

Via **Actieve gebruikers**:

1. Selecteer een of meer gebruikers in het scherm **Actieve gebruikers**.
2. Klik met de rechtermuisknop op de selectie.
3. Kies **Update uitrolgroep wijzigen**.
4. Zet de geselecteerde gebruikers op **Pilotgebruikers**.

Via **Constanten**:

1. Ga naar **Constanten > Systeem > Users - Systeemgebruiker**.
2. Open de gewenste gebruiker.
3. Wijzig **Update uitrolgroep** naar **Pilotgebruikers**.

Als de gewenste gebruikers in de groep **Pilotgebruikers** staan, kan de hele pilotgroep op een specifieke versie worden gezet.

1. Open **Actieve gebruikers**.
2. Klik links op **Backoffice > Pilotgebruikers**.
3. Kies rechtsboven bij de versie van **Pilotgebruikers** de gewenste `BIN[VERSIE]_[DATUM]` map.
4. De gekozen versie wordt toegepast op alle gebruikers in de groep **Pilotgebruikers**.

![Placeholder: versie instellen voor Pilotgebruikers](screenshots/actieve-gebruikers-pilotgebruikers-versie.png)

## Versie instellen voor alle standaardgebruikers

Als de versie is goedgekeurd door de pilotgebruikers, kan diezelfde versie worden ingesteld voor alle standaardgebruikers.

1. Open **Actieve gebruikers**.
2. Klik links op **Backoffice > Standaardgebruikers**.
3. Kies rechtsboven bij de versie van **Standaardgebruikers** de gewenste `BIN[VERSIE]_[DATUM]` map.
4. De gekozen versie wordt toegepast op alle gebruikers in de groep **Standaardgebruikers**.

Gebruikers starten daarna met deze versie zodra zij Florisoft opnieuw openen.

![Placeholder: versie instellen voor Standaardgebruikers](screenshots/actieve-gebruikers-standaardgebruikers-versie.png)

## Kolommen in Actieve gebruikers

Het scherm **Actieve gebruikers** toont naast de actuele binversie ook de ingestelde binversie.

- **Actuele binversie**: de versie waarmee de gebruiker nu actief is.
- **Ingestelde binversie**: de versie die voor de gebruiker of zijn groep is ingesteld.

Als deze waarden verschillen, werkt de gebruiker waarschijnlijk nog in een oude sessie. Na opnieuw opstarten gebruikt de gebruiker de ingestelde versie.

## Geavanceerd: afwijkende versie voor een specifieke gebruiker

Normaal volgt een gebruiker de ingestelde versie van zijn of haar uitrolgroep. In uitzonderingen kan een gebruiker rechtstreeks op een afwijkende binversie worden gezet.

Dit kan op twee manieren:

- In **Actieve gebruikers** via rechtermuisknop **Binversie instellen**.
- In **Constanten > Systeem > Users - Systeemgebruiker** bij de gebruiker zelf.

Gebruik dit alleen wanneer een gebruiker bewust moet afwijken van de groep.

![Placeholder: individuele gebruiker op andere binversie zetten](screenshots/gebruiker-binversie-instellen.png)
