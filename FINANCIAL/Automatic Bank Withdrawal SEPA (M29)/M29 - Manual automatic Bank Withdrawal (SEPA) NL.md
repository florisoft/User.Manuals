<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Handleiding Automatic Bank Withdrawal (SEPA)

In deze handleiding wordt uitgelegd hoe je een incasos kan versturen naar uw klanten.

Hoofdstuk 1 legt in stappen uit welke instellingen moeten worden ingevuld aan beide kanten. Hoofdstuk 2 legt uit hoe je een incasso verstuurt. Als laatste wordt er een voorbeeld getoond van een Business-to-business formulier.

**De gegevens in deze handleiding kunnen afwijken van wat u ziet op uw eigen scherm.**

## Inhoudsopgave

[Inhoudsopgave](#inhoudsopgave)  
[Invoeren gegevens](#invoeren-gegevens)  
[Betalingskenmerken aanmaken en sturen](#betalingskenmerken-aanmaken-sturen)  
[Aanmaken nieuwe betaling - Stornering](#aanmaken-nieuwe-betaling--stornering)  
[Incasso's inzien](#incassos-inzien)  
[Business-2-Business Formulier](#business-2-business-formulier)  

## Invoeren gegevens

Eerst moeten we de informatie van uw eigen bedrijf correct invullen.<br>*Volg hiervoor de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Open het constantenscherm en navigeer naar het volgende pad in de bestandsstructuur:<br>**Financieel→Financiele administratie**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Handleiding Incasso/media/image2.png"></details>|
|**2**|Klik tweemaal met de linkermuisknop op de regel met uw eigen bedrijfsnaam.|
|**3**|In het zojuist geopende scherm klikt u op het mapje '*Incasso*'.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Handleiding Incasso/media/image3.png"></details>|
|**4**|In dit scherm vult u de volgende gegevens in:<br>- **Incasso soort**: selecteer hier SEPA <br>- **SEPA type**: selecteer B2B<br>- **SEPA Versie**: selecteer het juiste type voor uw bank<br>- **Bedrijfsnaam**: naam van uw bedrijf<br>- **IBAN nr.:** IBAN adres van debiteur<br>- **BIC/SWIFT code**: het aan een bank toegewezen SWIFT-adres om geautomatiseerde betalingen snel en accuraat naar de betrokken banken te sturen.<br>- **Crediteur ID**: crediteur ID<Br>- **Incassant ID**: ID van het incassant <br><br>Vul hier de benodigde gegevens in en sla deze vervolgens op door op de '**Ok**' te drukken en de wijzigingen op te slaan in de bevestigingsprompt.|
|**5**|In het constantenscherm navigeert u nu naar:<Br>**Organen→Debiteurgegevens→Debiteuren**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Handleiding Incasso/media/image4.png"></details>|
|**6**|U ziet nu debiteuren in de tabel aan de rechterkant van het scherm. Klik nu tweemaal op de desbetreffende debiteur in deze tabel.|
|**7**|In het debiteurinstellingenscherm navigeert u naar het volgende pad:<br>**Financieel→Bankgegevens**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=".Handleiding Incasso/media/image20.png"></details>|
|**8**|Vul de volgende gegevens in:<br>**Bankrekening**: *bankrekening van de klant*<br>**IBAN Nummer:** *IBAN nummer van de klant*<br>**IBAN Banknaam**: *Corresponderende nummer*<Br>**BIC/SWIFT code**: *BIC/SWIFT code van de bank*<br>**SEPA Machtiging id**: *het SEPA machtiging van de klant*|
|**9**|Vink hier de volgende opties aan:<br>-  klant<br>- Verplicht (**Optioneel**: deze optie geeft aan dat deze klant de  **moet** betalen).|
|**10**|Als je niet meteen alle facturen wilt incasseren, maar deze pas wilt incasseren na bijv. 14 dagen na factuurdatum dan is het nodig om bij de debiteur ook aan te geven het veld '*Aanmanen*' u moet hier voor wel eerst de checkbox '*Na*' aan zetten.<br><br> Deze zorgt ervoor dat de aangemaakte openposten een vervaldatum krijgen van 14 dagen later dan de factuurdatum. Best practice is ook om ook de sys.instelling 'OverDatum' aan te zetten zodat elke keer als je een  bestand maakt alleen de openposten in het  bestand komen die over de vervaldatum zijn. Vraag aan Florisoft support of dit aan staat mocht u vermoeden dat dit niet het geval is.|
|**11**|Blijf in hetzelfde debiteureninstellingenscherm maar navigeer nu naar het mapje:<br>*Facturen* → *Printen*.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image6.png"></details>|
|**12**|Check hier of de juiste factuurlayout geselecteerd is voor uw gebruik.|
|**13**|Navigeer nu binnen hetzelfde scherm naar de volgende map:<br>*Financieel* → *Algemeneen*.|
|**14**|Check of het *Financieel debiteurnummer debnr* uniek is voor de klant. Dit is namelijk de kenmerkmachtiging en deze **moet** uniek zijn!<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image7.png"></details>|
|**15**|Selecteer onder '*Betalings Condities*' een betalingsconditie, mocht er geen geschikte bij staan kan u er zelf een aanmaken.<br> In de onderstaande afbeelding ziet u een goed voorbeeld van betalingskenmerken.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image13.png"></details>|

## Betalingskenmerken aanmaken sturen

|Stap|Uitleg|
|:--|:--|
|**1**|Open de Florisoft navigator en klik vervolgens met uw rechtermuisknop op de *Debiteuren* knop.|
|**2**|In het optie dialoog dat nu naar voren komt klikt u op de optie *Incasso generen*.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image8.png"></details>|
|**3**|U ziet nu het scherm '*opdracht generen*' voor u. In dit scherm klikt u op de knop '*bestand Testen*'. U ontvangt vervolgens een test bestand waarin u kan controleren of alles klopt op de lijst. Dit bestand kan u op de aangegeven locatie terugvinden (**C:\Incasso**).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image9.png"></details>|
|**4**|Wanneer u uw aanpassingen verricht heeft ga dan terug naar het '* opdracht genereren*' scherm om het  bestand te testen. U kan nu ook gelijk op '**Ok**' drukken.<br>Je krijgt dan een melding waar de  is aangemaakt. Met direct daarna de mogelijkheid om de  te printen. <br>Dit bestand kan dan worden verzonden naar de desbetreffende bank.|

## Aanmaken nieuwe betaling ~ Stornering

*Op de bankrekening waar vanaf geïncasserd is, zie je na een aantal dagen de stornering terug.*

|Stap|Uitleg|
|:--|:--|
|**1**|In de Florisoft navigator, klikt u op de knop '*Debiteuren*' dit opent het debiteurenscherm.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image10.png"></details>|
|**2**|Selecteer nu de desbetreffende debiteur en het desbetreffende factuurnummer.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image11.png"></details>|
|**3**|Dit opent het scherm voor het maken van een nieuwe betaling.|
|**4**|Vul bij het tekstvak '*Betaald bedrag* het gestorneerde factuurbedrag in met een min teken (-) ervoor.|
|**5**|Vul bij de '*Betaalwijze*' een '**S**' in dit geeft aan dat het bedrag een stornering is.<br>De desbetreffende factuur staat nu weer open. In de onderstaande stappen ziet u hoe u betaalwijzes aanmaakt.|

|Stap|Uitleg|
|:--|:--|
|**1**|Vanuit de constanten navigeer naar: <br>**Financial→Betaalwijzen**<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".Handleiding Incasso/media/image16.png"></details>|
|**2**|Maak een nieuwe betaalwijze aan door op het + icoon te drukken.|
|**3**|Vul de noodzakelijke gegevens in en sla de betaalwijze op door op de **Ok** knop en het aanmaken te bevestigen.|

## Incasso's inzien

Om incasso's in te zien die gemaakte zijn door een debiteur volgt u de onderstaande stappen.

|Stap|Uitleg|
|:--|:--|
|**1**|Open de Florisoft Navigator, in deze navigator klikt u op de knop '*Debiteuren*'.|
|**2**|Klik in het debiteuren scherm vervolgens op de "*Menu*" knop en dan vervolgens op de "*Overzichten*" knop.(#1)|
|**3**|Selecteer in het zojuist geopende scherm de overzicht optie:<br>**Betalingen per periode**|
|**4**|Klik vervolgens op de "**Toon in grid**" knop.|
|**5**|Sorteer nu op de **Betaalcode** knop door op de kolom header te klikken.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".Handleiding Incasso/media/image17.png"></details>|

## Business-2-Business formulier

Om incasso's te versturen wordt er ook gebruik gemaakt van een Business-2-Business formulier. In principe moet u deze zelf opstellen. Om een idee te geven welke componenten in dit formulier moeten staan, staat hieronder een voorbeeld formulier zoals Florisoft het zelf gebruikt.

<details><summary><b>Klik hier voor uw voorbeeld B2B formulier</b></summary><img src=".Handleiding Incasso/media/image15.png"></details>

Hieronder de download links voor de B2B formulieren:

1. [**Engelstalig**](https://downgit.github.io/#/home?url=https://github.com/florisoft/User.Manuals/blob/main/FINANCIAL/Automatic%20Bank%20Withdrawal%20SEPA%20(M29)/B2B%20Formulieren/Continuous%20authorization%20Business.docx)

2. [**Nederlandstalig**](https://downgit.github.io/#/home?url=https://github.com/florisoft/User.Manuals/blob/main/FINANCIAL/Automatic%20Bank%20Withdrawal%20SEPA%20(M29)/B2B%20Formulieren/Continuous%20authorization%20Business.docx)
