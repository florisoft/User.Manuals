# E-trade client component

<img src= "media/image1.png" >

Welkom bij de handleiding voor de voorraadkoppelingen module (E-trade client component). In deze handleiding wordt er uitgelegd hoe je een voorraadkoppeling kan maken met debiteuren door een aparte voorraad en leverancier te maken. Met behulp van deze kunnen we een voorraadkoppeling maken.

# Voorraad maken

De eerste paar stappen vereisen dat je een nieuwe voorraad maakt in Florisoft. In deze handleiding gebruiken we Qualirosa als voorbeeld. De informatie die eigen is van Qualirosa moet vervangen worden met de informatie van het bedrijf waarmee je een koppeling wilt maken.

Ga als eerste naar de constanten in Florisoft:

<img src= "media/image2.png" >

Navigeer naar Locaties -> Voorraden -> Voorraden en maak een nieuwe voorraad aan door op de veer te klikken (nr. 1). Selecteer "Template VMP koppeling" (nr. 2) en druk op OK.

<img src= "media/image3.png" >

**Let op: bovenstaand scherm komt alleen naar boven als de templates daadwerkelijk ingesteld zijn, anders gaat het door naar het scherm in de volgende foto!**

Een nieuw scherm zal openen. Voer hier een voorraad code toe en een beschrijving. Zet voor de zekerheid “VMP” voor de naam en “live” erachter. Dit zorgt ervoor dat de voorraad makkelijker te onderscheiden is van de rest.

<img src= "media/image4.png" >

Ga vervolgens naar de tab "Autorisatie" links in het scherm. Daar vind je alle accounts van Florisoft. Omdat je net pas ee voorraad hebt gemaakt, heeft geen enkele gebruiker toegang tot de voorraad. Door dubbel te klikken, of de spatie te gebruiken om meerdere regels te selecteren, kan je gebruikers toegang geven tot de voorraad. Als je dubbel klikt, verandert hij gelijk van autorisatie, als je meerdere gebruikers in 1 keer wilt autoriseren, gebruik dan de knop "Autoriseren/Blokkeren". Wanneer je iemand autoriseert, heeft de gebruiker toegang tot de voorraad vanaf zijn of haar eigen account.

**Vergeet niet het account te autoriseren waarmee je de voorraad aanmaakt!! Anders kan je zelf de voorraad niet zien!**

<img src= "media/image5.png" >

Navigeer nu naar de tab "Doorboeken" aan de linker kant van het scherm. Check of de instellingen hetzelfde zijn als de onderstaande foto. Bij "Box actief", selecteer een ingangscontrole die toepasselijk is bij de voorraad. Deze instelling hoeft niet gelijk te zijn met de afbeelding.

<img src= "media/image6.png" >

Ga vervolgens naar de tab "Webwinkel" en check ook of deze instellingen gelijk zijn aan de onderstaande foto:

<img src= "media/image7.png" >

Als laatste, klik op "Toegankelijke debiteuren" onderaan in het scherm:

<img src= "media/image8.png" >

Hier vind je een overzicht van alle debiteuren. Hier kan je per debiteur oegang verlenen op specifieke vlakken. Gebruik de uitleg rechts op het scherm:

<img src= "media/image9.png" >

Zodra je alle rechten hebt verleent die je wilt verlenen, klik op OK om het op te slaan. 

Klik nu nog een keer op OK om de veranderingen op te slaan. Selecteer dan "Ja" als Florisoft je vraagt of je het wilt opslaan.

Nu heb je een nieuwe voorraadgemaakt waarmee je een koppeling kan maken. 

# Een leverancier aanmaken

Volg de stappen hier onder om een leverancier aan te maken waarmee je een voorraad koppeling kan maken.

Als eerste, navigeer naar de constanten en naar "Organen" -> Leveranciergegevens -> Leveranciers en maak een nieuwe leverancier aan door op het veertje te klikken.

Vul nu de gemarkeerde velden in (zie afbeelding hieronder). Zorg ervoor dat de Lev.code en Zoek hetzelfde zijn, en dat ze beide "VMP" bevatten. Vul ook de bedrijfsnaam in, typ hier de naam van het bedrijf waarmee je een connectie maakt.

<img src= "media/image11.png" >

Navigeer nu naar de tab "Webservice" aan de linkerkant van het scherm. Check de optie "Activeren voor voorraadkoppeling" aan. Vul nu de gegevens in over de voorraakoppeling.

Alle informatie die ge-highlight is moet worden ingevuld. Deze informatie moet van de debiteur verkregen worden. "Type webservice", "Userid" en "Wachtwoord" moet door de debiteur worden doorgestuurd.

Als de debiteur een bestand of bestanden doorstuurt met deze instellingen erin, kunnen deze direct in het systeem worden geladen. Klik dan op Import en selecteer het bestand. Dit moet een ".adt" bestand zijn. (Je zal 2 bestanden ontvangen hebben, alleen hoort er maar 1 te worden weergegeven als je zoekt).

Als laatste moet je ook "Binnenkomende voorraad" invullen. Hier kan je de voorraad selecteren die je zojuist hebt gemaakt

<img src= "media/image12.png" >

In hetzelfde scherm, klap "Webservice" uit en ga naar "Partijen ophalen". Zorg ervoor dat de checkbox "Altijd volledig aanbod ophalen ipv wijzigingen" aan staat. **Dit hoeft maar 1 keer gedaan te worden, zodra de voorraad opgehaald is moet je deze weer uitzetten.**


<img src= "media/image13.png" >
Ga nu naar "Partijen ontvangen", deze staat ook binnen "Webservice". Er staan veel instellingen op deze pagina. Op dit moment zijn er maar 2 instellingen vn belang. De andere instelingen mogen aan en uit gezet worden naar uw eigen wens. De instelling "Default Artikelgroep" moet worden gezet naar "Nieuw artikel (00000001)", en check de checkbox naast "Ingelezen informatie opslaan in ExPartij (neemt veel ruimte in)". Als het type webservice "Florisoft webservice" is, dan is deze optie er niet en hoeft hij niet aangezet te worden. Maar dat is bij deze handleiding wel het geval, aangezien het webservice type ETrade 0.7 is.


<img src= "media/image14.png" >
Druk op OK en sla de veranderingen op. Dubbel klik weer op dezelfde leverancier om weer in de instellingen te komen. 

Navigeer terug naar "Webservice". Als alles goed is ingevuld kan je nu op de knop "Partijen inlezen" klikken. Zodra je hebt geklikt, verschijnt een tweede scherm. Nu gaat Florisoft alle partijen inlezen van de leverancier. Als het klaar is, zou het scherm vergelijkbaar moeten zijn met de foto. Blijf in de tussen tijd even van Florisoft af.

<img src= "media/image15.png" >

Ga nu weer naar de sub-setting van "webservice", "Partijen ophalen". Zet de optie die je eerder hebt aangezet nu weer uit.

<img src= "media/image16.png" >

Nu alle voorraad van de debiteur geimporteerd is, sluit de constanten en ga via de Navigator naar de Voorraad.

<img src= "media/image17.png" >

Als je in de voorraden bent, dan moet de nieuwe voorraad weergegeven worden. Als je op de naam klikt, worden alle partijen van de voorraad weergeven. Vanuit hier kan je partijen bestellen door er dubbel op te klikken.

**Pas op met partijen in de order lijst te zetten voor het testen, als de leverancier een snel logistiek proces heeft, kan het al verstuurd sworden voordat je het kan verwijderen. Alles wat je in de onderstaande bestellijst toevoegt, kan naar de leverancier worden gestuurd.**

<img src= "media/image18.png" >

Nu heb je succesvol een voorraadkoppeling gemaakt met de leverancier. De stappen kunnen worden herhaald voor andere leveranciers waarmee je een koppeling wilt maken.