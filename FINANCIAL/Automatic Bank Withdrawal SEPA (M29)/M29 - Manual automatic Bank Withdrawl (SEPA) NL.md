<img src="../../fslogo.png">

# Florisoft Handleiding Automatic Bank Withdrawl (SEPA)

In deze handleiding wordt uitgelegd hoe je een incasso kan versturen naar uw klanten.

Hoofdstuk 1 legt in stappen uit welke instellingen moeten worden ingevuld aan beide kanten. Hoofdstuk 2 legt uit hoe je een incasso verstuurt. Als laatst wordt er een voorbeeld getoont van een Business-2-Business formulier.

**De gegevens in deze handleiding kunnen afwijken van wat u ziet op uw eigen scherm.**

## Inhoudsopgave

[Inhoudsopgave](#inhoudsopgave)  
[Invoeren incasso gegevens](#invoeren-incasso-gegevens)  
[Betalingskenmerken aanmaken](#betalingskenmerken-aanmaken)
[Incasso sturen](#incasso-sturen)  
[Aanmaken nieuwe betaling ~ Stornerning](#aanmaken-nieuwe-betaling--stornering)  
[Incasso's inzien](#incassos-inzien)  
[Business-2-Business formulier](#business-2-business-formulier)


## Invoeren incasso gegevens

Eerst moeten we de informatie van uw eigen bedrijf correct invullen. Volg hiervoor de onderstaande stappen:

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constantenscherm en navigeer naar het volgende pad in de bestandsstructuur:<br>'*Financieel*' → '*Financiele administratie*'.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image2.png"></details>|
|**2**|Klik tweemaal met de linkermuisknop op de regel met uw eigen bedrijfsnaam.|
|**3**|In het zojuist geopende scherm klikt u op het mapje '*Incasso*'.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image3.png"></details>|
|**4**|Vul hier de benodigde gegevens in en sla deze vervolgens op door op de '**Ok**' te drukken en de wijzigingen op te slaan in de bevestigingsprompt.|
|**5**|In het constantenscherm navigeert u nu naar:<br>*Organen* → *Debiteurgegevens* → *Debiteuren*.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image4.png"></details>|
|**6**|U ziet nu debiteuren in de tabel aan de rechterkant van het scherm. Klik nu tweemaal op de desbetreffende debiteur in deze tabel.|
|**7**|In het debiteurinstellingenscherm navigeert u naar het volgende pad:<br>*Financieel* → *Bankgegevens*.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image5.png"></details>|
|**8**|In dit scherm vult u de volgende gegevens in:<br>- IBAN nr.<br>- IBAN banknaam<br>- BIC/SWIFT code<br>- SEPA machtiging ID,|
|**9**|Vink hier de volgende opties aan:<br>- Incasso klant<br>- Verplicht (**Optioneel**: deze optie geeft aan dat deze klant de incasso **moet** betalen).|
|**10**|Als je niet meteen alle facturen wilt incasseren, maar deze pas wilt incasseren na bijv. 14 dagen na factuurdatum dan is het nodig om bij de debiteur ook aan te geven het veld '*Aanmanen*' u moet hier voor wel eerst de checkbox '*Na*' aan zetten. Deze zorgt ervoor dat de aangemaakte openposten een vervaldatum krijgen van 14 dagen later dan de factuurdatum. Best practice is ook om ook de sys.instelling 'IncassoOverDatum' aan te zetten zodat elke keer als je een incasso bestand maakt alleen de openposten in het incasso bestand komen die over de vervaldatum zijn|
|**11**|Blijf in hetzelfde debiteureninstellingenscherm maar navigeer nu naar het mapje:<br>*Facturen* → *Printen*.|
|**12**|Check hier of de juiste factuurlayout geselecteerd is voor uw gebruik.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image6.png"></details>|
|**13**|Navigeer nu binnen hetzelfde scherm naar de volgende map:<br>*Financieel* → *Algemeneen*.|
|**14**|Check of het *Financieel debiteurnummer debnr* uniek is voor de klant. Dit is namelijk de kenmerkmachtiging en deze **moet** uniek zijn!<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image7.png"></details>|
|**15**|Selecteer onder '*Betalings Condities*' een betalingsconditie, mocht er geen geschikte bij staan kan u er zelf een aanmaken.<br> In de onderstaande afbeelding ziet u een goed voorbeeld van betalingskenmerken.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image13.png"></details>|

## Incasso sturen

|Stap|Uitleg|
|:--|:--|
|**1**|Open de Florisoft navigator en klik vervolgens met uw rechtermuisknop op de *Debiteuren* knop.|
|**2**|In het optie dialoog dat nu naar voren komt klikt u op de optie *Incasso generen*.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image8.png"></details>|
|**3**|U ziet nu het scherm *Incasso opdracht generen*'voor u. In dit scherm klikt u op de knop '*Incassobestand Testen*'. U ontvangt vervolgens een test bestand waarin u kan controleren of alles klopt op de lijst. Dit bestand kan u op de aangegeven locatie terugvinden.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image9.png"></details>|
|**3.a**|Mocht de incasso test niet gelukt zijn kan u dat aanpassen via de debiteur de incasso aanpassen.|
|**4**|Wanneer u uw aanpassingen verricht heeft ga dan terug naar het '*Incasso opdracht genereren*' scherm om het incasso bestand te testen. U kan nu ook gelijk op '**Ok**' drukken.<br>Je krijgt dan een melding waar de incasso is geplaatst. Met direct daarna de mogelijkheid om de incasso te printen. <br>Dit bestand kan dan worden verzonden naar de desbetreffende klant.|

## Aanmaken nieuwe betaling ~ Stornering

Op de bankrekening waar vanaf geïncasserd is, zie je na een aantal dagen de stornering terug.

|Stap|Uitleg|
|:--|:--|
|**1**|In de Florisoft navigator, klikt u op de knop '*Debiteuren*' dit opent het debiteurenscherm.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image10.png"></details>|
|**2**|Selecteer nu de desbetreffende debiteur en het desbetreffende rekeningnummer.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image11.png"></details>|
|**3**|Dit opent het scherm voor het maken van een nieuwe betaling.|
|**4**|Vul bij het tekstvak '*Betaald bedrag* het gestorneerde factuurbedrag in met een min teken (-) ervoor.|
|**5**|Vul bij de '*Betaalwijze*' een '**S**' in dit geeft aan dat het bedrag een stornering is.<br>De desbetreffende factuur staat nu weer open.|


## Incasso's inzien

Om incasso's in te zien die gemaakte zijn door een debiteur volgt u de onderstaande stappen.

|Stap|Uitleg|
|:--|:--|
|**1**|Open de Florisoft Navigator, in deze navigator klikt u op de knop '*Debiteuren*'.|
|**2**|Dit opent het debiteurenscherm, selecteer uit dit scherm vervolgens een debiteur.<br>Dit zorgt ervoor dat dat bijhorende incasso's onderaan het scherm komen te staan in een tabel.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image12.png"></details>|

## Business-2-Business formulier

Om incasso's te versturen wordt er ook gebruik gemaakt van een Business-2-Business formulier. In principe moet u deze zelf opstellen. Om een idee te geven welke componenten in dit formulier moeten staan, staat hieronder een voorbeeld formulier zoals Florisoft het zelf gebruikt.

<details><summary><b>Klik hier voor uw voorbeeld B2B formulier</b></summary><img src=".Handleiding Incasso/media/image15.png"></details>