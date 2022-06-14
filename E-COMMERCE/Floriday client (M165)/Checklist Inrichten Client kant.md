<img src="../../fslogo.png"/>

# Client component Floriday				

## Inhoudsopgave

[Inleiding](#inleiding)

[Aanvragen API key](#apikey)

[Aanmaken van een voorraad](#voorraad)

[Aanmaken van een leverancier](#leverancier)

[Werking](#werking)

<a name="inleiding"/>

## Inleiding handleiding

### Waarvoor dient deze handleiding

Dit document beschrijft wat er benodigd is om een koppeling met Floriday in te richten voor de koper omgeving.
Er wordt staps gewijs uitgelegd welke instellingen er benodigd zijn. Daarbij zal er uitgelegd worden hoe de synchronisatie met Floriday werkt.

<a name="apikey"/>

### Aanvragen API key

De API key kan opgevraagd worden via de portal van Floriday.
Deze is nodig om de connectie op te zetten tussen de Florisoft en Floriday.

Opvragen van de API key:
- Log in op het platform van Floriday
- Via het menu rechts bovenin, navigeer naar “Instellingen”
- Navigeer naar Apps & koppelingen
- Zoek hier naar Florisoft
- Selecteer Florisoft
- Selecteer Applicatie toevoegen?
- Er zal nu een API key getoond worden.

Deze API key dient gevuld te worden in Florisoft bij de leverancier die de synchronisatie zal uitvoeren.

<a name="voorraad"/>

##	Inrichten van een voorraad
>Dit wordt de voorraad waar we de opgehaalde partijen vanaf Floriday gaan publiceren
-	Aanmaken van een nieuwe **Voorraad**
	-	*Constanten -> Locaties -> Voorraden -> Voorraden ->* ***'Insert'***
-	Autorisatie van de users die toegang hebben tot de voorraad

<a name="leverancier"/>

##	Inrichten van een Leverancier 
>De wordt de Leverancier de het aanbod gaat binnenhalen van Floriday
-	Aanmaken van een nieuwe **Leverancier**
	-	*Constanten -> Organen -> Leveranciersgegevens -> Levernaciers ->* ***'Insert'***
-	De volgende instellingen moeten aangezet worden:
	-	*Webservice -> Activeren voor voorraadkoppeling ->* ***vinkje aanzetten***
	-	*Webservice -> Type webservice ->* ***'Floriday koper Api'***
	-	*Webservice -> Binnenkomende voorraad ->* ***'De voorraad die eerder is aangemaakt'***
	-	*Webservice -> API key ->* ***Deze moet je opvragen op het floriday platform'***
	-	*Webservice -> Region GLN ->* ***Dit is de GLN code van de regio (veiling)***
	-	*Webservice -> Aflever GLN ->* ***Dit is de GLN code van de exacte afleverlocatie***  
	-	*Webservice -> Trade-period vanaf ->* ***Hier geef je aan voor welke periode je assortiment wil ophalen, zet deze op 0 tot 2 dagen***
	
### Alternatieve locaties
Het is mogelijk dat een kweker (connectie) niet levert in een bepaalde regio waar een bedrijf gevestigd is. Mocht het bedrijf op meerdere locaties zitten (Rijnsburg en Aalsmeer bijv.) en daar levert de kweker wel, dan dit opgegeven worden onder alternatieve locaties.
Bij het plaatsen van een order, zal de afleverlocatie gebruikt worden die bij de voorraadpartij staat opgeslagen. De partij bevat of de hoofd locatie of de afwijkende locatie, net waar de kweker levert en wat de eerst volgende alternatieve locatie dient te zijn.

<a name="werking"/>

## Werking

Na een correcte inrichting kan het aanbod van Floriday ingelezen worden. Dit kan d.m.v. de knop Inlezen partijen of automatisch via de timer Voorraadkoppeling.

### Connecties
De eerste keer synchroniseren zal als eerste stap de gemaakte connecties met de verschillende kwekers op Floriday ophalen. 
Deze kwekers worden dan opgeslagen in Florisoft, zodat de volgende synchronisatie dit niet nog eens hoeft te doen. 

Het voor de eerste keer synchroniseren van de koppeling kan hierdoor erg lang duren, zorg daarom dat de leverancier tijdelijk op een ander timer schema staat omdat de koppeling ook door de timer zal worden opgehaald en een uur of langer niks met andere koppelingen zal doen. 

Bij nieuwe connecties of ontkoppelde connecties zal dit wel weer opnieuw uitgevoerd worden, maar enkel voor de wijzigingen.

### Aanbod verwerken
De eerste synchronisatie zal het aanbod ophalen per kweker en direct verwerken binnen Florisoft per kweker. De volgende synchronisatie zal van het bestaande aanbod enkel nog de updates van het aanbod ophalen en verwerken.
Partijen worden enkel binnen Florisoft aangemaakt indien een kweker ook daadwerkelijk levert op de ingestelde regio's.

### Aanbod
Binnen de Floriday online omgeving moet assortiment op regelniveau gemarkeerd worden als ‘favoriet’. Je kunt op het platform ook de connectie met de kweker beëindigen op deze kweker niet meer op te halen.
Pas dan wordt het ook meegenomen in het aanbod dat Florisoft ophaalt. 



