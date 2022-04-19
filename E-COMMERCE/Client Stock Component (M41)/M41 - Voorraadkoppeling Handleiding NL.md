<img src="../../fslogo.png"/>

# Voorraadkoppeling handleiding


Welkom bij de handleiding voor de voorraadkoppeling module. In deze handleiding wordt uitgelegd hoe je een voorraadkoppeling kan maken met debiteuren door een aparte voorraad en leverancier te maken. Met behulp van deze kunnen we een voorraadkoppeling maken.

Een voorraadkoppeling die gebruik maakt van E-trade of een Florisoft connectie, zal helpen doordat het een makelijke manier is om voorraad te krijgen. Volg de stappen die beneden beschreven zijn om de voorraadkoppeling op te zetten en te gebruiken.

# Voorraad maken
De eerste paar stappen vereisen dat je een nieuwe voorraad maakt in Florisoft. In deze handleiding, gebruiken we Qualirosa als voorbeeld. Informatie eigen van Qualirosa moet natuurlijk vervangen worden met de informatie van de bedrijf waarmee je een koppeling wilt maken.

Als eerste, ga naar de constanten in Florisoft.

<img src=".Voorraadkoppeling Handleiding/media/image2.png" />

Navigeer naar Locaties -> Voorraden -> Voorraden en maak een nieuwe voorraad aan door op de veer te klikken (nr.1). Selecteer "Template VMP koppeling" (nr.2) en druk op OK.

<img src=".Voorraadkoppeling Handleiding/media/image3.png" />

Een nieuw scherm zal openen. Voer hier een voorraad code toe en een beschrijving. Zet voor de zekerheid "VMP" voor de naam en "live" erachter. Dit zorgt ervoor dat de voorraad makkelijker te onderscheiden is van de rest.

<img src=".Voorraadkoppeling Handleiding/media/image4.png" />

Ga nu naar de tab "autorisatie" links op het scherm. Daar vind je alle accounts van Florisoft. Omdat je net pas de voorraad hebt gemaakt, heeft geen enkele gebruiker toegang tot de voorraad. Door dubbel te klikken of de spatie te gebruiken om meerdere te selecteren, kan je gebruikers toegang geven tot de voorraad. Als je dubbel klikt, verandert hij gelijk van autorisatie. Als je meerdere gebruikers in 1 keer wilt autoriseren, gebruik dan de knop "Autoriseren/Blokkeren". Wanneer je iemand autoriseert, heeft de gebruiker toegang tot de voorraad vanaf zijn of haar eigen account. 

**Vergeet niet het account te autoriseren waarmee je de voorraad aanmaakt!! Anders kan je de voorraad zelf niet zien!**

<img src=".Voorraadkoppeling Handleiding/media/image5.png" />

Navigeer nu naar "Doorboeken" aan de linker kant van het scherm. Check of de instellingen hetzelfde zijn als de onderstaande foto. Bij "Box actief", selecteer een ingangscontrole die toepasselijk is bij de voorraad. Deze instelling hoeft niet gelijk te zijn met de afbeelding.

<img src=".Voorraadkoppeling Handleiding/media/image6.png" />

Ga nu naar de tab "Webwinkel", check ook of deze instellingen gelijk zijn aan de foto hieronder.

<img src=".Voorraadkoppeling Handleiding/media/image7.png" />

Als laatste, klik op "Toegankelijke debiteuren' onderaan je scherm.

<img src=".Voorraadkoppeling Handleiding/media/image8.png" />

Hier vind je een overzicht van alle debiteuren. Hier kan je per debiteur toegang verlenen op specifieke vlakken. Gebruik de uitleg rechts op het scherm.

<img src=".Voorraadkoppeling Handleiding/media/image9.png" />

Zodra je alle rechten hebt verleent die je wilt verlenen, klik op OK om het op te slaan.

Klik nu nog een keer OK om de veranderingen op te slaan, selecteer dan JA als Florisoft je vraagt of je het wilt opslaan.

Nu heb je een nieuwe voorraad gemaakt waarmee je een koppeling kan maken.

# Een leverancier aanmaken
Volg de stappen hier beneneden om een leverancier aan te maken waarmee je een voorraadkoppeling kan maken.

Als eerste, navigeer naar de constanten en naar Organen -> Leveranciergegevens -> Leveranciers en maak een nieuwe leverancier aan door op het veertje te drukken.

Vul nu de gemarkeerde velden in (zie afbeelding hieronder). Zorg ervoor dat Lev.code en Zoek hetzelfde zijn en dat ze beide 'VMP' bevatten. Vul ook de bedrijfsnaam in, type hier de naam van het bedrijf waar je een connectie mee maakt.

<img src=".Voorraadkoppeling Handleiding/media/image10.png" />

Navigeer nu naar de tab "Web Service" aan de linker kant van het scherm. Klik de optie "Activeren voor vorraadkoppeling" aan. Vul nu de gegevens in over de voorraadkoppeling.

Alle informatie die gehighlight is moet worden ingevuld. Deze informatie moet van de debiteur verkregen worden. "Type webservice","Userid" en "Wachtwoord" moet door de debiteur worden doorgestuurd.

Als de debiteur een bestand of bestanden doorstuurt met deze instellingen erin, kunnen deze direct in het systeem worden geladen. Klik dan op Import en selecteer het bestand. Dit moet een ".adt" bestand zijn. (Je zal 2 bestanden ontvangen hebben, alleen hoort er maar 1 te weergeven als je zoekt).

Als laatste moet je ook "Binnenkomende voorraad" invullen. Hier kan je de voorraad selecteren die je zojuist hebt gemaakt.

<img src=".Voorraadkoppeling Handleiding/media/image11.png" />

In hetzelfde scherm, klap "Webservice" uit en ga naar "Partijen ophalen". Zorg hier ervoor de de checkbox "Altijd volledig aanbod ophalen ipv wijzigingen". **Dit hoeft maar 1 keer gedaan te worden, zodra de voorraad opgehaald is moet je deze weer uitzetten**

<img src=".Voorraadkoppeling Handleiding/media/image12.png" />

Ga nu naar "Partijen ontvangen", deze staat ook binnen "Webservice". Er staan veel instellingen op deze pagina. Alleen zijn er nu maar 2 instellingen van belang. De andere instellingen mogen aan en uit gezet worden naar uw eigen wens. De instelling "Default Artikelgroep" moet worden gezet naar "Nieuw artikel (00000001)", en de checkbox naast "Ingelezen informatie opslaan in ExPartij (neemt veel ruimte in)". Als het type webservice "Florisoft webservice" is, dan is deze optie er niet en hoeft hij niet aangezet te worden.

<img src=".Voorraadkoppeling Handleiding/media/image13.png" />

Druk nu op OK en sla de veranderingen op. Dubbel klik weer op dezelfde leverancier om weer in de instellingen te komen.

Navigeer terug naar "Webservice". Als alles goed is ingevuld, kan je op de knop "Partijen inlezen" klikken. Zodra je het hebt geklikt, verschijnt een tweede scherm. Nu gaat Florisoft alle partijen inlezen van de leverancier. Als het klaar is, zou het scherm vergelijkbaar moeten zijn met de foto. Blijf in de tussentijd van Florisoft af.

<img src=".Voorraadkoppeling Handleiding/media/image14.png" />

Ga nu weer naar de sub-setting van "Webservice, "Partijen ophalen". Ze de optie die je net hebt aangezet weer uit.

<img src=".Voorraadkoppeling Handleiding/media/image15.png"/>

Nu alle voorraad van de debiteur geimporteerd is, sluit de constanten en ga via de Navigator naar de Voorraad.

<img src=".Voorraadkoppeling Handleiding/media/image16.png" />

Als je in de voorraden bent, dan moet de nieuwe voorraad weergegeven worden. Als je op de naam klikt, worden alle partijen van de voorraad weergegeven. Vanuit hier kan je partijen bestellen door erop te dubbel klikken.

**Pas op met partijen in de order lijst te zetten voor testen. Als de leverancier een snel logistiek proces heeft, kan het al verstuurt worden voordat je het kan verwijderen. Alles wat je in de onderstaande bestellijst toevoegt, kan naar de leverancier worden gestuurd.

<img src=".Voorraadkoppeling Handleiding/media/image17.png" />

Nu heb je succesvol een voorraadkoppeling gemaakt met de leverancier. De stappen kunnen worden herhaald voor andere leveranciers waarmee je een koppeling wilt maken.
