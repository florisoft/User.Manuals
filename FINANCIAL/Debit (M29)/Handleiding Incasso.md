<img src="../../fslogo.png"/>

# Florisoft Handleiding Incasso

In deze handleiding wordt uitgelegd hoe je een incasso kan versturen naar uw klanten.


Hoofdstuk 1 legt in stappen uit welke instellingen moeten worden ingevuld aan beide kanten.
Hoofdstuk 2 legt uit hoe je een incasso verstuurt.
Als laatst wordt er een voorbeeld getoont van een Business-2-Business formulier.

**De gegevens in deze handleiding kunnen afwijken van wat u ziet op uw eigen scherm**

## Invoeren incasso gegevens

Eerst moeten we de informatie van uw eigen bedrijf correct invullen. In Florisoft, ga naar de constanten.

<img src=".Handleiding Incasso/media/image3.png"/>

in de constanten, ga naar Financieel > Financiele administratie.

Klik hier op uw eigen bedrijfnaam, navigeer dan naar Incasso.

<img src=".Handleiding Incasso/media/image14.png"/>
Vul al deze gegevens in vóór dat je verder gaat. Sla het daarna op.

In de constanten, ga naar Organen > Debiteurgegevens > Debiteuren.

<img src=".Handleiding Incasso/media/image7.png"/>

Dubbelklik hier op de desbetreffende debiteur. In het scherm dat opent, klik links op Financieel > Bankgegevens.

<img src=".Handleiding Incasso/media/image8.png"/>

Vul hier de volgende gegevens in:
- IBAN nr
- IBAN banknaam
- Bic/Swift code
- SEPA machtiging ID

Vink hier aan:
- Incasso klant
- Verplicht (optioneel: deze optie geeft aan dat deze klant de Incasso MOET betalen)

Als je niet meteen alle facturen wilt incasseren, maar deze pas wilt incasseren na bijv. 14 dagen na factuurdatum dan is het nodig om bij de debiteur ook aan te geven het veld `BETTERMIJN`. Deze zorgt ervoor dat de aangemaakte openposten een vervaldatum krijgen van 14 dagen later dan de factuurdatum. Best practice is ook om ook de sys.instelling 'IncassoOverDatum' aan te zetten zodat elke keer als je een incasso bestand maakt alleen de openposten in het incasso bestand komen die over de vervaldatum zijn. 

Navigeer vervolgens, in hetzelfde scherm, naar Factuur > Printen.

<img src=".Handleiding Incasso/media/image9.png"/>

Check hier of de factuurlayout die je wilt gebruiken geselecteerd is.

Navigeer vervolgens, weer in hetzelfde scherm, naar Financieel > Algemeen.

<img src=".Handleiding Incasso/media/image10.png"/>

Vul hier vervolgens de betalingsconditie in.

Deze kan zelf worden aangemaakt.

Check ook of het Financieel debiteurnummer (debnr) uniek is voor de klant, dat is namelijk de kenmerk machtiging. Deze mag voor geen enkele klant hetzelfde zijn.

## Incasso versturen

Start Florisoft op en ga klik met je rechtermuisknop op de "Debiteuren" knop.

<img src=".Handleiding Incasso/media/image2.png" />

Klik vervolgens op de knop "Incasso genereren".

Het scherm "Incasso opdracht genereren" verschijnt.

<img src=".Handleiding Incasso/media/image4.png" />

Klik dan op de knop "Incassobestand Testen".

Je ontvangt dan een test bestand waarin je kan controleren of alles klopt op de lijst. Dit bestand kan je op de aangegeven locatie terugvinden.

Als dit niet klopt, kan je via de Debiteur knop de incasso aanpassen.

Ga dan terug naar het "Incasso opdracht genereren" scherm. Je kan er alsnog voor kiezen om het incasso bestand te testen, maar je kan nu ook gelijk op OK drukken.

Je krijgt dan een melding waar de incasso is geplaatst. Met direct daarna de mogelijkheid om de incasso te printen. 

Dit bestand kan dan worden verzonden naar de desbetreffende klant.

### Aanmaken nieuwe betaling ~ Stornering
Op de bankrekening waar vanaf geïncasserd is, zie je na een aantal dagen de stornering terug.

Druk op "Debiteuren" in de Florisoft Navigator, ga naar de desbetreffende debiteur en het desbetreffende rekening nummer.

<img src=".Handleiding Incasso/media/image11.png"/>

Selecteer "Nieuwe betaling".

<img src=".Handleiding Incasso/media/image12.png"/>

Een nieuw scherm opent.

<img src=".Handleiding Incasso/media/image13.png"/>

Vul bij "Betaald bedrag" het gestorneerde factuurbedrag in met een min teken (-) ervoor. Vul voor de "Betaalwijze" een "S" in. Dit geeft aan dat het bedrag een stornering is.

Nu staat de desbetreffende factuur weer open.

### Incasso's inzien
Om de incasso's in te zien die gemaakt zijn, ga je naar de debiteuren.

<img src=".Handleiding Incasso/media/image11.png"/>

Selecteer vervolgens een debiteur. Onderaan komt automatisch een scherm over de incasso's die gemaakt zijn.

## Business-2-Business formulier
Om incasso's te versturen wordt er ook gebruik gemaakt van een Business-2-Business formulier. In principe moet u deze zelf opstellen. Om een idee te geven welke componenten in dit formulier moeten staan, staat hieronder een voorbeeld formulier zoals Florisoft het zelf gebruikt.

<img src=".Handleiding Incasso/media/image15.png"/> 
