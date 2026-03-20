# Handleiding NFC pickorders printen
## Standaard werkwijze via clusters

## Doel van NFC-printen

Wanneer een picker zijn pas aanbiedt op het NFC-apparaat, bepaalt Florisoft automatisch welke pickorders direct geprint en gelopen mogen worden.

Deze standaard NFC-werkwijze is bedoeld om pickers efficiënt door het magazijn te laten werken. Het systeem kijkt daarbij niet alleen naar prioriteit, maar ook naar:

- of een pickorder op dat moment geprint mag worden;
- of de debiteur mee mag doen aan NFC-printen;
- of het cluster open is;
- of er recent al iemand naar dat cluster is gestuurd;
- en of er binnen een cluster voldoende werk beschikbaar is.

> Belangrijk: in de standaard NFC-methode wordt **niet puur op klantprioriteit** geselecteerd. Prioriteit speelt mee, maar **clusterlogica en printbaarheid zijn leidend**.

---

## Wat gebeurt er bij een NFC-scan?

Na het aanbieden van de pas doorloopt Florisoft in grote lijnen deze stappen:

1. De software bepaalt welke pickorders **nu geprint mogen worden**.
2. Pickorders van debiteuren die niet via NFC mogen lopen, worden uitgesloten.
3. De software bepaalt welke clusters op dat moment beschikbaar zijn.
4. Eerst krijgen pickorders met **prioriteit 1** voorrang.
5. Als dat niet voldoende is, zoekt Florisoft een logisch cluster met voldoende aanvullend werk.
6. De gekozen pickorders worden automatisch geselecteerd en geprint.
7. Daarna worden de pickorders opnieuw gegroepeerd voor verdere verwerking.

---

## Hoofdregels van de selectie

## 1. Alleen printbare pickorders doen mee

Niet iedere pickorder komt automatisch in aanmerking.

Een pickorder wordt alleen meegenomen als deze op dat moment volgens de normale printcontrole ook echt geprint mag worden.

Dat betekent dat pickorders kunnen afvallen door bestaande print- of uitlevervoorwaarden.

---

## 2. Debiteuren kunnen uitgesloten zijn van NFC-printen

Sommige debiteuren doen helemaal niet mee aan het NFC-proces.

Dat kan twee oorzaken hebben:

- de debiteur is expliciet uitgesloten van NFC;
- of de debiteur is niet toegestaan voor deze specifieke NFC-printmethode.

Voor de standaard werkwijze geldt dat alleen debiteuren meedoen die zijn toegestaan voor **printen per cluster**.

---

## 3. De standaard methode werkt clustergericht

De standaard NFC-werkwijze probeert pickorders zo te kiezen dat een picker efficiënt in een logisch cluster kan lopen.

Het systeem probeert dus niet simpelweg “de order met de hoogste prioriteit” te printen, maar zoekt vooral naar een **goed uitvoerbare pickopdracht binnen een cluster**.

---

## 4. Gesloten clusters worden niet gebruikt

Clusters die geblokkeerd of gesloten zijn, worden niet meegenomen in de selectie.

Alleen open clusters kunnen worden gekozen.

---

## 5. Recent gebruikte clusters worden tijdelijk overgeslagen

Als er kort geleden al een picker naar een cluster is gestuurd, dan wordt dat cluster tijdelijk overgeslagen.

Zo voorkomt het systeem dat meerdere pickers steeds naar hetzelfde cluster worden gestuurd terwijl andere clusters beschikbaar zijn.

Pas als er geen beter alternatief is, kan Florisoft terugvallen op een cluster dat eerder al gebruikt is.

---

## 6. Prioriteit 1 krijgt voorrang

Als er pickorders met **prioriteit 1** beschikbaar zijn, dan worden deze als eerste bekeken.

Daarbij geldt wel:
- de pickorders moeten printbaar zijn;
- de debiteur moet mogen meedoen;
- en de order moet passen binnen een bruikbare clusterselectie.

Prioriteit 1 heeft dus voorrang, maar alleen binnen de grenzen van de rest van de logica.

---

## 7. Het systeem probeert eerst voldoende werk binnen één cluster te vinden

Als er niet genoeg prioriteit-1 pickorders zijn, zoekt Florisoft verder per cluster.

Daarbij werkt de software in feite in drie stappen:

### Poging 1
Er wordt gekeken of er in één cluster direct genoeg pickorders van dezelfde prioriteit beschikbaar zijn.

Als dat lukt, wordt dat cluster gekozen.

### Poging 2
Als poging 1 niet lukt, kijkt Florisoft of er in één cluster wel voldoende pickorders van die prioriteit zijn, en of die kunnen worden aangevuld met pickorders van lagere urgentie binnen datzelfde cluster.

### Poging 3
Als ook dat niet lukt, kiest Florisoft het cluster met de meeste pickorders van die prioriteit, en vult dat waar mogelijk aan met andere pickorders uit hetzelfde cluster.

De belangrijkste gedachte hierachter is:

> eerst efficiënt lopen binnen een cluster, daarna pas verder aanvullen.

---

## 8. Bij weinig werk mag het systeem aanvullen vanuit volgende clusters

Als er in het gekozen cluster te weinig werk beschikbaar is, kan Florisoft aanvullend pickorders meenemen uit volgende open clusters.

Dat gebeurt alleen wanneer het totaal in het oorspronkelijke cluster onder een ingestelde ondergrens blijft.

De standaard voorkeur blijft dus:
- eerst één logisch cluster;
- alleen bij te weinig werk aanvullen over meerdere clusters.

---

## 9. Er geldt een maximum per printopdracht

Per NFC-scan print Florisoft maximaal het ingestelde aantal pickorders voor één printset.

Hierdoor blijft een pickopdracht beheersbaar en passend bij de bedoeling van het clustergericht lopen.

---

## Wat betekent dit in de praktijk?

De standaard NFC-werkwijze betekent in de praktijk het volgende:

- Florisoft zoekt niet zomaar de hoogste klantprioriteit;
- Florisoft zoekt ook niet willekeurig de eerstvolgende order;
- het systeem maakt een afweging tussen **prioriteit**, **printbaarheid**, **clusterbeschikbaarheid** en **voldoende werk in een logisch loopgebied**.

Daarom kan het gebeuren dat een order met een lagere verwachting vanuit gebruikersperspectief toch eerder geprint wordt, omdat die beter past binnen de actuele clusterverdeling.

---

## Waarom lijkt het soms alsof er niet op klantprioriteit wordt gewerkt?

Dat klopt in de standaard inrichting ook gedeeltelijk.

De software geeft wel voorrang aan pickorders met een hoge pickprioriteit, maar de uiteindelijke keuze wordt daarna sterk beïnvloed door:

- clusterindeling;
- clusterbeschikbaarheid;
- recente inzet van pickers;
- minimale aantallen per cluster;
- en aanvulling met andere pickorders om een werkbare printset te maken.

Daardoor is de uitkomst **niet hetzelfde als puur sorteren op klantprioriteit**.

---

## Wat print het systeem uiteindelijk?

Als Florisoft een geschikte set pickorders heeft bepaald, dan gebeurt automatisch het volgende:

- de pickorders worden geselecteerd;
- de printopdracht wordt uitgevoerd;
- het pasnummer van de picker wordt meegestuurd;
- en de pickorders worden daarna opnieuw gegroepeerd.

Voor de gebruiker voelt dit als één NFC-actie, maar op de achtergrond vindt dus eerst een volledige selectiecontrole plaats.

---

## Samenvatting voor eindgebruikers

**NFC-printen in de standaard clusterwerkwijze kiest automatisch pickorders die op dat moment het beste passen bij een efficiënte loopopdracht.** Daarbij kijkt Florisoft naar printbaarheid, toegestane debiteuren, open en beschikbare clusters en naar prioriteit. Prioriteit 1 krijgt voorrang, maar de uiteindelijke selectie wordt vooral bepaald door de vraag in welk cluster op dat moment het beste en meest logisch gewerkt kan worden.

---

## Korte versie voor klanten

**Met NFC-printen wijst Florisoft automatisch pickorders toe aan de picker die zijn pas aanbiedt. Daarbij kijkt het systeem niet alleen naar prioriteit, maar ook naar de vraag of de orders geprint mogen worden en in welk cluster op dat moment het meest efficiënt gewerkt kan worden. Zo ontstaat per scan een logische, uitvoerbare pickopdracht.**

---
