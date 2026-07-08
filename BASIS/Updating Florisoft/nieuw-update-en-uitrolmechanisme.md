# Nieuw update- en uitrolmechanisme Florisoft

Florisoft gebruikt een nieuwe manier om nieuwe versies uit te rollen. De update is al klaar. U hoeft nu alleen te bepalen welke gebruikersgroep welke versie mag gebruiken.

Een nieuwe versie wordt opgeslagen in een map met een versienummer en datum, bijvoorbeeld:

```text
dataadt\BIN140.598_260603
```

In deze map staat `140.598` voor het versienummer en `260603` voor de datum van de versie.

## Waarom ziet u deze pagina?

U ziet deze pagina omdat u een nieuwe Florisoft-versie wilt beschikbaar maken voor andere gebruikers. De update zelf is al uitgevoerd. De overstap naar het nieuwe systeem is ook al gebeurd.

In het oude systeem werd een versie verspreid via mappen als `BINUPDATE` en `BINLATEST`. Dat werkt nu anders. U kiest niet meer voor één algemene uitrolmap, maar voor een specifieke versie per gebruikersgroep.

## Welke groepen zijn er?

Er zijn drie groepen:

- Beheerders
- Pilotgebruikers
- Standaardgebruikers

### Wat betekent dit?

- Beheerders: testen de nieuwe versie eerst.
- Pilotgebruikers: krijgen de versie daarna, in een kleine groep.
- Standaardgebruikers: krijgen de versie als deze is getest en goed bevonden.

### Aanbevolen volgorde

1. Beheerders
2. Pilotgebruikers
3. Standaardgebruikers

Op deze manier wordt het risico voor de meeste gebruikers zo klein mogelijk gehouden.

## Wat is er al automatisch gebeurd?

Bij de eerste overgang naar dit nieuwe systeem is de update mogelijk nog begonnen via het oude proces. De versie is daarna automatisch omgezet naar een nieuwe versie-map, zoals `BIN140.598_260603`.

De gebruiker die de update heeft uitgevoerd is automatisch geplaatst in de groep **Beheerders**. De versie voor deze groep is ook al ingesteld. U hoeft hier niets meer voor te doen.

## Wat moet u nu doen?

Als u de nieuwe versie geschikt vindt, kunt u deze toewijzen aan een groep.

Een goede volgorde is:

1. Laat eerst alleen **Beheerders** met de nieuwe versie werken.
2. Geef daarna de versie aan een kleine groep **Pilotgebruikers**.
3. Zet de versie pas daarna ook voor alle **Standaardgebruikers**.

## Actieve gebruikers openen

Open het scherm **Actieve gebruikers**.

Links in het scherm ziet u de groepen:

- **Backoffice > Beheerders**
- **Backoffice > Pilotgebruikers**
- **Backoffice > Standaardgebruikers**

Klik op een groep om te zien welke versie daarvoor is ingesteld. U ziet dan ook welke gebruikers in die groep zitten.

<img width="2063" height="762" alt="image" src="https://github.com/user-attachments/assets/acb51ccf-2595-43c8-bded-d89268a36e15" />

## Gebruikers toevoegen aan een groep

U kunt gebruikers op twee manieren in een groep plaatsen.

Via **Actieve gebruikers**:

1. Selecteer een of meer gebruikers.
2. Klik met de rechtermuisknop.
3. Kies **Update uitrolgroep wijzigen**.
4. Kies de juiste groep, zoals **Pilotgebruikers**.

Via **Constanten**:

1. Ga naar **Constanten > Systeem > Users - Systeemgebruiker**.
2. Open de gewenste gebruiker.
3. Wijzig **Update uitrolgroep** naar de gewenste groep.

## Een hele groep op één versie zetten

Als de gewenste gebruikers in de juiste groep staan, kunt u die groep op een specifieke versie zetten.

1. Open **Actieve gebruikers**.
2. Klik links op de juiste groep.
3. Kies rechtsboven de gewenste versie-map.
4. De gekozen versie wordt toegepast op alle gebruikers in die groep.

<img width="2059" height="764" alt="image" src="https://github.com/user-attachments/assets/75299c81-5109-44d6-bdfe-757478099f33" />

## Wat ziet u in Actieve gebruikers?

In het scherm ziet u twee waarden:

- **Actuele versie**: de versie die de gebruiker op dit moment gebruikt.
- **Ingestelde versie**: de versie die voor de gebruiker of zijn groep is ingesteld.

Als deze waarden verschillen, gebruikt de gebruiker waarschijnlijk nog een oude sessie. Na een nieuwe start van Florisoft wordt de ingestelde versie gebruikt.

## Uitzondering: een afwijkende versie voor één gebruiker

Normaal volgt een gebruiker de versie van zijn of haar groep. In sommige gevallen wilt u één gebruiker apart instellen.

Dat kan via:

- **Actieve gebruikers** via **Binversie instellen**
- **Constanten > Systeem > Users - Systeemgebruiker**

Gebruik dit alleen als een gebruiker bewust afwijkt van de groep.
