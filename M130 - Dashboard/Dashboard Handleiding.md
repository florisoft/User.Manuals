# Florisoft Dashboard Handleiding

<img src='.Dashboard Handleiding/media/image1.png'/>

Welkom bij de handleiding voor de Dashboarding module. Deze handleiding heeft het doel de lezer te leren hoe een dashboard opgezet kan worden, en hem te ondersteunen in het toevoegen van dashboard componenten. 

Na het toevoegen van verschillende grafieken of cirkeldiagrammen moeten Sequel (of SQL) queries worden gebruikt. Als u er niet zeker van bent of u dit kunt, kan er contact op worden genomen met Florisoft voor een afspraak.

## Gebruikers instellen
Start Florisoft op en ga vervolgens naar de constanten.

<img src='.Dashboard Handleiding/media/image2.png'/>

Ga in de constanten naar Systeem > Internet > CMS Zones. Klik vervolgens op het plusje om een nieuwe zone te maken. 

<img src='.Dashboard Handleiding/media/image3.png'/>

Hier kan je een nieuwe CMS zone aanmaken, voor het dashboard is het de standaard om de code 'DASH' en omschrijving 'Dashboard' te geven. Maak duidelijk dat het om het dashboard gaat. Er hoeft geen email ingevuld te worden.

Sla de zone op.

Ga vervolgens naar Organen > Debiteurgegevens > Debiteuren. Maak hierbij een nieuwe debiteur aan genaamd DASH/Dashboard.

Ga vervolgens naar Internet > CMS in de debiteur instellingen. Klik hierbij op de knop CMS Zones. Voeg de net aangemaakte CMS zone toe.

<img src='.Dashboard Handleiding/media/image4.png'/>

Binnen dezelfde instellingen map, verplaats het zicht naar Internet toegang en check of de aangeven vinkjes aanstaan.

<img src='.Dashboard Handleiding/media/image5.png'/>

Super, nu hebben wij de CMS zone voor het dashboard aangemaakt.

Een 'CMS zone' kan worden gezien als een slot die alleen bepaalde gebruikers kunnen openen. Hierboven hebben wij de debiteur DASH toegang gegeven tot de zone 'DASH'. Dit betekent dat als er pagina's de CMSzone 'DASH' krijgen toegewezen, alleen onze debiteur deze pagina kan zien.

## Webshop instellingen
Voordat we kunnen beginnen met het daadwerkelijk maken van het dashboard, moeten we de webshop herstarten. Ga hiervoor terug naar de Navigator, selecteer Onderhoud binnen de taakbalk bovenaan en klik op Purge.

<img src='.Dashboard Handleiding/media/image6.png'/>

<img src='.Dashboard Handleiding/media/image7.png'/>

Als de bovenstaande melding naar voren komt, selecteer 'NEE'.

In het volgende scherm kan je de webshop afsluiten en weer opnieuw opstarten. Doe dit op een tijdstip waarvan je weet dat er geen klanten op de webshop kopen. Om te zien hoeveel gebruikers er op de webshop zitten, klik op de actieve gebruikers links onderaan.

Stop de shop volledig, en start hem vervolgens weer op.

<img src='.Dashboard Handleiding/media/image8.png'/>

Ga nu naar de webshop toe en log in met de debiteur die toegang heeft tot het dashboard (de gebruiker die de CMS zone toegewezen heeft gekregen).

In de dropdown van de account instellingen rechtsbovenaan, selecteer 'Beheer'.

<img src='.Dashboard Handleiding/media/image10.png'/>

Nu zal het scherm iets naar beneden verplaatsen, en zal er een zwarte balk bovenaan weergeven. Klik hier op Categorieen, en maak een nieuwe categorie aan.

Vul de velden in zoals in de foto hieronder weergeven, hierbij kan je de namen maken hoe je wilt. **Vergeet niet de checkbox aan te vinken!!**

Sla nog **niet** op.

<img src='.Dashboard Handleiding/media/image11.png'/>

Klik op het tabblad Visibility. In de dropdown van Zone moet nu de naam van de CMS zone voorkomen. Zet die aan.
Nu mag je hem opslaan.

<img src='.Dashboard Handleiding/media/image12.png'/>

Nu heb je een categorie aangemaakt die alleen zichtbaar is voor gebruikers die de CMS zone 'DASH' toegewezen hebben gekregen.

Vervolgens moeten we een pagina (of pagina's) aanmaken en deze onder de categorie plakken. Zo weergeeft het als onderdeel van de categorie op de webshop.

In de zwarte bal, klik op Pagina's en maak een nieuwe pagina aan. Vul hier de velden in zoals ze staan in de onderstaande foto. Sla de pagina hierna nog **niet** op.

<img src='.Dashboard Handleiding/media/image13.png'/>

Verander hier ook van tabblad naar 'Zichtbaarheid'. Voeg hier ook de CMS zone toe aan de pagina.
Nu kan je de pagina opslaan.

Dit kan je doen voor het aantal pagina's dat je nodig hebt, dit gaat op de zelfde manier. Hier **hoef** je geen andere categorien voor aan te maken.

<img src='.Dashboard Handleiding/media/image14.png'/>

## Toevoegen van dashboard componenten
Ga nu naar een van de nieuwe paginas die je hebt aangemaakt.

Als je op de pagina bent waar je de dashboard componenten wilt toevoegen, dan kan je de editor (links bovenaan) aanzetten.

<img src='.Dashboard Handleiding/media/image26.png'/>

Nu kan je de structuur zien van de pagina. Hierop kan je componenten toevoegen, bewerken en verwijderen zoals aangegeven in de CMS handleiding.

<img src='.Dashboard Handleiding/media/image18.png'/>

Voeg in iedergeval een rij (row) en kolom toe (column). Anders kunnen de componenten niet worden toegevoegd.



<img src='.Dashboard Handleiding/media/image19.png'/>

Binnen de kolom voeg een nieuw component toe (+). Hierbij kan je de categorie Dashboard bekijken en daaruit kiezen.

Als voorbeeld wordt er hier gebruik gemaakt van een tabel.

<img src='.Dashboard Handleiding/media/image21.png'/>

Hier wordt op het moment een simpele SQL query gebruikt om de debiteur nummers van de HORDER-tabel te laten zien. Binnen dit veld kunnen verschillende querys gedraaid worden.

<img src='.Dashboard Handleiding/media/image22.png'/>

Na het invullen van de query, klik op opslaan. Als de query heeft gedraaid wordt de informatie weergeven in de tabel.

**LET OP: het gebruik van queries komt met een risico! Verkeerde queries hebben de potentie heel erg veel te vragen van je webshop, wat kan betekenen dat deze crasht. Maak dan nooit gebruik van een 'select * from TABLE' query (tenzij FS dit aanlevert, of het vanuit een gecontroleerde database view komt)**

<img src='.Dashboard Handleiding/media/image23.png'/>

Een ander voorbeeld is een staafdiagram. Deze kan ook worden toegevoegd binnen een kolom.
Bij het openslaan van de instellen kan je kiezen tussen meerdere opties, voor het voorbeeld is er rekening gehouden met de 'Bar chart'.
Wissel ook van tabblad naar 'Datasets'.

<img src='.Dashboard Handleiding/media/image24.png'/>

Binnen het veld kan je de SQL toevoegen. Als je meerdere waardes wilt zien binnen de barchart, kan je ook een extra item toevoegen. (Bijvoorbeeld voor de gemmiddelde steellengte vs Potmaat).
<img src='.Dashboard Handleiding/media/image25.png'/>

Zodra je het opgeslagen hebt, zal ook de staafdiagram weergeven met de data die je wilt.

Met behulp van SQl kan je de informatie die je wilt zien laten tonen. Maak ALLEEN gebruik van select-queries.

Voor vragen over het dashboard, of wil je het dashboard laten bouwen door Florisoft, neem contact op met de receptie.
