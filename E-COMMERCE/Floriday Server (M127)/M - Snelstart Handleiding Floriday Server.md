<img src="../../fslogo.png">

# Florisoft snelstart handleiding Floriday server

:warning: **Deze handleiding gaat er vanuit dat u alle bestellijsten, voorraden, debiteuren en leveranciers correct heeft ingericht. Wanneer deze items correct geconfigureerd zijn kan u de onderstaande stappen uitvoeren om uw aanbod op het Floriday platform te zetten** :warning:

|:bulb:|Indien u zeker weet alles correct geconfigureerd te hebben maar het niet lukt om uw aanbod op Floriday the krijgen, lees dan [hier](#troubleshooting) wat u kan doen om te troubleshooten.|
|:--|:--|

## Stap 1

*Volg de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Zorg dat er aanbod in de desbetreffende bestellijst staat. (Dit komt op Floriday in de catalogus)|
|**2**|In de aangemaakte floriday debiteur geef je middels de toegankelijke bestellijsten aan welke bestellijsten voor deze debiteur op de webshop te zien zijn. Dit kan een enkele bestellijst zijn of meerdere, let wel, al de bestelpartijen die in deze bestellijst actief zijn voor de webshop (s-vink) zullen op Floriday in de catalogus te zien zijn.|
|**3**|De bestelpartijen moeten ook voorzien zijn van alle info ( als beschreven in de technische handleiding ), let hierbij op het aantal fusten per laag en aantal lagen per kar ( wat samen de inhoud per kar maakt ).|
|**4**|Ook moeten op deze bestelpartijen de (per artikelgroep) verplichte (op Floricode te vinden) sorteringskenmerken gevuld zijn.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Snelstart NL/1.png"></details>|
|**5**|De bestelpartijen moeten de leverancierscode van de Floriday leverancier ingevuld hebben of wanneer dit niet kan moeten de afwijkende leveranciers ingevuld zijn in de Floriday leverancier ( knop aanbod leveranciers )<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Snelstart NL/2.png"></details>|

## Stap 2

*Volg de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Zorg dat er aanbod in de voorraad staat. ( dit komt in de directe verkoop - aanbod overzicht )|
|**2**|In de aangemaakte floriday debiteur geef je middels de toegankelijke voorraden aan welke voorraden voor deze debiteur op de webshop te zien zijn. <br><br>**Belangrijk** in deze stap is dat de partijen in de voorraad een bestelpartijnummer ( kolom partijnr in de bestellijst en bestelpartijnr in de voorraad ) hebben dat overeenkomt met een partij in een bestellijst die ook open staat voor floriday .|
|**3**|Wanneer we met 1 bestellijst en 1 voorraad voor floriday werken is het het makkelijkst om middels de 'Bestellingen overhevelen naar de voorraad' partijen van de bestellijst in de voorraad te krijgen, wanneer we deze functie gebruiken wordt automatisch de link gemaakt tussen de bestel en voorraad partij ( te zien aan een overeenkoment bestelpartijnr ).<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Snelstart NL/3.png"></details>|
|**4**|Om deze functie te gebruiken moeten er eerst bestellingen op de partijen worden ingevuld ( het aantal dat je invult zal het aantal zijn dat de partij in de voorraad krijgt en dus wat je aanbiedt op Floriday) Middels onderstaande vink in de constanten kun je in de bestellijst aangeven dat er geen verdelingen moeten worden aangemaakt op de voorraadpartijen ( anders moet je deze bij alle regels gaan verwijderen om een postitief aantal in de voorraad te krijgen )<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Snelstart NL/4.png"></details>|
|**5**|Wanneer er met meerdere bestellijsten/voorraden wordt gewerkt kan er voor gekozen worden om het bestelpartijnummer in de voorraad handmatig aan te passen of om simpelweg alle bestellijsten open te zetten op floriday.|
|**6**|Wanneer partijen in een voorraad geen bestelpartijnummer hebben dat overeenkomt met een partij in de floriday catalogus ( bestellijst ) zullen deze niet op floriday komen.|
|**7**|Zoals bij de bestelpartijen moeten de voorraadpartijen de leverancierscode van de Floriday leverancier ingevuld hebben of wanneer dit niet kan moeten de afwijkende leveranciers ingevuld zijn in de Floriday leverancier ( knop aanbod leveranciers )|

## Stap 3

*Volg de onderstaande stappen:*

|Stap|Uitleg|
|:-:|:--|
|**1**|Synchroniseer het aanbod uit de bestellijst en voorraad via de API met Floriday.|
|**2**|In de leverancier moeten er een aantal dingen correct zijn ingevuld. In de binnenkomende voorraad moet een aparte backupvoorraad zijn ingevuld, wanneer je hier de voorraad aangeeft waar je aanbod in staat zal deze bij elke keer opnieuw inlezen worden geleegd.|
|**3**|De knop 'Aanbod leveranciers' opent een scherm waar je alle leveranciers kan invullen die afwijken van de vaste Floriday leverancier ( in de meeste gevallen FLDAY ) wanneer je dus partijen in je aanbod hebt staan waarvan de levcode niet FLDAY is vul je die afwijkende lev. code in dit scherm in. <Br><br>Wanneer je dit doet moet je wel zorgen dat de originele levcode er ook bij staat. Wanneer je geen afwijkende levcodes in je aanbod hebt kan dit scherm leeg blijven. LET OP! De leverancierscodes in dit scherm zijn hoofdlettergevoelig, wanneer je een levcode intikt in kleine letters wordt de levnaam wel netjes gevuld maar er wordt niks mee gedaan bij de synchronisatie.|
|**4**|Wanneer je klaar bent om te synchroniseren druk je op de knop 'Partijen inlezen' en zul wanneer deze actie klaar is je aanbod op Floriday terugvinden.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Snelstart NL/5.png"></details>|

## Troubleshooting

*Wanneer je na de synchronisatie geen aanbod op Floriday ziet kun je de onderstaande stappen doorlopen om te bepalen waarom dit het geval is.*

|Stap|Uitleg|
|:-:|:--|
|**1**|Log met de Floriday debiteur in op je eigen webshop. Wanneer het aanbod dat je op Floriday verwacht niet op je eigen webshop te zien is kan het zijn dat je webshop offline is of de voorraden om een of andere reden niet online staan voor deze debiteur.|
|**2**|Wanneer het beoogde aanbod wel op je webshop te zien is kun je kijken of de webservice in de Floriday leverancier niet toevallig uit staat.|
|**3**|Als bovenstaande niet het geval is kijken we eerst of de partijen uit de bestellijst wel in de catalogus zijn gekomen dit kun je zien door de Floriday GUID aan te zetten, als de partijen wel een GUID hebben zijn ze waarschijnlijk wel op Floriday te zien. Wanneer partijen wel een GUID hebben maar toch niet in de catalogus te zien zijn kun je proberen de GUID van de partijen te resetten ( Partijen selecteren, vervolgens opties --> reset Floriday Guids ) en opnieuw partijen inlezen. <br><br> Wanneer de partijen nu ( nog steeds) geen GUID krijgen zal er waarschijnlijk iets aan de sorteringskenmerken, Inhoud plaat/kar of leverancierscode mankeren. Loop na of alles volledig is ingevuld en of de e.v.t. afwijkende leverancierscode staat ingevuld bij de constanten --> organen --> leveranciers --> floriday leverancier --> knop aanbod leveranciers.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Snelstart NL/6.png"></details>|
|**4**|Wanneer je aanbod uit de bestellijsten wel in de catalogus staat maar er geen partijen in de directe verkoop komen heeft dat waarschijnlijk te maken met het bestelpartijnr. op de voorraadpartij dat niet overeenkomt met hetzelfde artikel in de catalogus/bestellijst. Wat ook een reden kan zijn is dat, zoals ook beschreven bij stap 3, de levcode van de voorraadpartij niet is toegevoegd bij het aanbod leveranciers op de floriday leverancier. Ook in de voorraad kunnen we kolommen aanzetten om te zien of partijen zijn gesynchroniseerd ( Floriday Batch GUID ) en kunnen we de GUID's resetten wanneer nodig, zie onderstaand.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src=""></details>|
|**5**|Wanneer bovenstaande stappen zijn doorlopen en er staat nog steeds geen aanbod op Floriday kan er het best even met support worden gebeld.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Snelstart NL/7.png"></details>|
|**6**|Er wordt netjes gekocht van Floriday maar de kopen komen in de voorraad/Pickorders met de floriday debiteur als debnr. In dit geval is het debnr van de koper van de partij in florisoft niet gekoppeld aan een veilingkoper. <br><br>Het ordernummer van de verdeling/pickorder is in deze gevallen het veilingkopersnummer van de koper, deze kun je opzoeken in de organen --> veilingkopers en in dit scherm koppelen aan een debiteur in je systeem. <br><br>Afhankelijk van je florisoft versie kan het ook al zijn dat het systeem de kopersnaam al heeft opgezocht a.d.h.v. het kopersnummer, wanneer dit het geval is kun je al wel zien wie de partij gekocht hebt maar moet je nog wel het veilkopersnummer koppelen aan een debiteur.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Floriday Server/Snelstart NL/8.png"></details>|