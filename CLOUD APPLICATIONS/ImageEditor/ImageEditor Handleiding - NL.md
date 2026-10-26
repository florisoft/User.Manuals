<img src="../../fslogo.png">

# Florisoft Handleiding ImageEditor

Met ImageEditor verwijdert u de achtergrond van productfoto's. U voegt foto's toe, beschermt zo nodig productdelen met een masker, vergelijkt voorbeelden en slaat het gekozen resultaat op met een witte achtergrond.

[English manual](ImageEditor%20Manual%20-%20EN.md)

## Voor u begint

Gebruik een ingerichte ImageEditor-app met een beschikbaar AI-model voor beeldverwerking. Laat ontbrekende modelbestanden door uw beheerder controleren.

U hebt leesrechten nodig op uw foto's en schrijfrechten op de invoer- en uitvoermappen. De app ondersteunt JPG, JPEG, PNG en WebP. Bij het toevoegen worden lege bestanden en bestanden boven de ingestelde grootte overgeslagen. De standaardlimiet is 10 MiB per foto; uw inrichting kan hiervan afwijken.

## Mappen instellen

1. Open het menu rechtsboven. Het venster **Instellingen** verschijnt.
2. Vul bij **Invoermap** het pad in naar de map met uw te bewerken foto's. Gebruik bij voorkeur een volledig pad.
3. Vul bij **Uitvoermap voor volledige resolutie** in waar de definitieve foto's moeten worden opgeslagen.
4. Kies **Instellingen opslaan**.

Beide velden zijn verplicht. De app maakt ontbrekende mappen aan wanneer uw rechten dit toestaan. Na het opslaan wordt de invoerlijst vernieuwd en selecteert u opnieuw een foto. Met **Annuleren** sluit u het venster zonder uw wijzigingen op te slaan.

## Een foto toevoegen en openen

1. Kies **Foto** bij **Invoer**.
2. Selecteer een of meer foto's. De app kopieert ze naar de invoermap; de oorspronkelijke bestanden blijven staan. Bestaat een naam al, dan krijgt de kopie een volgnummer, bijvoorbeeld `roos-2.jpg`.
3. Selecteer links de foto die u wilt bewerken.

Het midden toont de geselecteerde foto. Rechts staan bij **Resultaten** de bron en de beschikbare profielen. Eerder opgeslagen maskers en bestaande voorbeelden worden bij het openen geladen.

Staan uw foto's al in de invoermap, gebruik dan het vernieuwpictogram naast **Foto** om de lijst opnieuw in te lezen. Alleen bestanden direct in die map worden getoond; submappen worden niet doorzocht.

## Een eerste voorbeeld maken

1. Selecteer een foto bij **Invoer**.
2. Kies **Voorbeelden genereren** en wacht tot de verwerking klaar is.
3. Controleer het voorbeeld **medium** dat in het midden verschijnt.
4. Klik rechts op een ander profiel om het resultaat te vergelijken. Een tegel met een plusteken wordt bij aanklikken berekend; een bestaand voorbeeld wordt geopend.

De vijf beschikbare profielen zijn **lightest**, **light**, **medium**, **strong** en **extraheavy**. Lichtere profielen behouden doorgaans meer van de randen; sterkere profielen verwijderen meer en kunnen ook fijne productdetails aantasten. Vergelijk daarom vooral dunne stelen, bladeren en de productomtrek.

Gebruik **+**, **-**, **1:1** en **Passend** om details te controleren. Voorbeelden zijn verkleinde afbeeldingen; de definitieve foto wordt bij publiceren opnieuw vanuit de bron verwerkt.

## Productdelen beschermen met een masker

Mist er een deel van het product in het voorbeeld? Keer rechts terug naar **Bron**. Alleen op de bron kunt u het masker bewerken.

Een masker markeert delen die behouden moeten blijven. U hoeft niet de volledige achtergrond in te kleuren.

| Gereedschap | Gebruik |
|---|---|
| **Masker tekenen** | Houd de linkermuisknop ingedrukt en teken over productdelen die behouden moeten blijven. |
| **Gum** | Verwijder een markering uit het masker. Dit verwijdert geen pixels uit de bronfoto en dwingt de AI niet om dat gebied weg te halen. |
| **Magnetische wand** | Klik op een gebied om aaneengesloten pixels met een vergelijkbare kleur aan het masker toe te voegen. |
| **Penseel** | Pas de grootte van het teken- en gumgereedschap aan. |
| **Hand** | Verschuif de ingezoomde afbeelding door te slepen. |

Gebruik **Ongedaan maken** om een recente maskerbewerking terug te draaien. Met **Masker wissen** verwijdert u alle markeringen van de huidige foto.

Kies **Masker opslaan** voordat u naar een andere bronfoto gaat of de app sluit. Het masker wordt naast de bron bewaard, standaard als bijvoorbeeld `roos-keep.png`. Bij het genereren en publiceren slaat de app het huidige masker ook op. Slaat u een leeg masker op, dan wordt het bijbehorende PNG-maskerbestand verwijderd.

## De uitsnede verfijnen

Selecteer **Bron** en pas zo nodig de schuifregelaars aan.

| Instelling | Zichtbaar effect |
|---|---|
| **Behouden** | Een hogere waarde behoudt meer van gedeeltelijk herkende delen; een lagere waarde verwijdert meer. |
| **Rand** | Een positieve waarde breidt het behouden gebied uit; een negatieve waarde trekt de rand naar binnen. |
| **Gaten sluiten** | Verhoog de waarde om kleine openingen in het automatisch bepaalde masker te sluiten. Controleer dat gewenste openingen zichtbaar blijven. |
| **Wand** | Bepaalt hoeveel kleurverschil de magnetische wand accepteert. Een hogere waarde selecteert een ruimer kleurbereik bij de volgende klik. |

Kies na wijzigingen opnieuw **Voorbeelden genereren**. Dit berekent **medium** opnieuw. Klik vervolgens op een nog niet berekend profiel om een andere variant met de huidige instellingen te maken. Een al bestaand voorbeeld wordt bij aanklikken alleen geopend en wordt niet automatisch vernieuwd. Gebruik het opnieuw berekende medium-voorbeeld om uw laatste correcties te beoordelen.

## De definitieve foto opslaan

1. Selecteer rechts een berekend voorbeeld en controleer het resultaat.
2. Kies **Publiceren**.
3. Wacht tot de verwerking klaar is. De app toont de verwerkte foto en meldt het opslagpad.
4. Open de ingestelde uitvoermap om het bestand verder te gebruiken.

**Publiceren** verwerkt de bron met het geselecteerde profiel, het huidige masker en de huidige schuifinstellingen. Controleer na correcties dus eerst een nieuw voorbeeld. De app slaat het resultaat op als **JPG met een witte achtergrond**. De interface biedt geen keuze voor transparantie of PNG-uitvoer.

Publiceren slaat een bestand op in uw uitvoermap. Het verstuurt de foto niet automatisch naar een webshop. Een bestaand uitvoerbestand met dezelfde naam wordt overschreven; bewaar zo nodig eerst een kopie.

## Problemen oplossen

| Probleem | Wat kunt u doen? |
|---|---|
| De invoerlijst is leeg | Controleer de invoermap, het bestandsformaat en of de foto's direct in die map staan. Vernieuw daarna de lijst. |
| Een foto wordt niet toegevoegd | Controleer of het bestand niet leeg is, een ondersteund formaat heeft en binnen de ingestelde limiet valt. |
| Tekenen lukt niet | Selecteer **Bron** bij **Resultaten** en wacht tot eventuele verwerking klaar is. Voorbeelden zijn alleen-lezen. |
| Publiceren is niet beschikbaar | Selecteer een berekend voorbeeld. Een bron of nog niet berekend profiel kunt u niet publiceren. |
| De mappen kunnen niet worden opgeslagen | Vul beide paden in en controleer de schrijf- en toegangsrechten. |
| De app meldt onvoldoende geheugen voor AI-verwerking | Sluit andere zware toepassingen en probeer opnieuw. Blijft de melding terugkomen, laat uw beheerder het beschikbare geheugen en de AI-inrichting controleren. |
| Een voorbeeld toont oude correcties | Bereken **medium** opnieuw met **Voorbeelden genereren**. Een bestaande profieltegel wordt bij aanklikken alleen geopend. |
