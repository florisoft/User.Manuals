<img src="../../fslogo.png"/>


# Florisoft Handleiding Commercial Stock Parcels (M101)

Zodra je beschikt over de module Commerciële Voorraad Partijen heb je bij de
voorraadinstellingen in de constanten een nieuw tabblad en bij het setup
systeem een apart tabje voor de commerciële partijen instellingen.  
  
In mijn onderstaande voorbeeld heb ik dus een commerciële
voorraad aangemaakt en aangegeven: “Is commerciële voorraad”.

<img src=".Commerciële partijen\media\image1.png" style="width:6.28999in;height:3.48958in" />

Bij de logistieke voorraad of voorraden moet je dan vervolgens aangeven:
“Telt mee voor commerciële voorraad”. Zie onderstaand voorbeeld voor de
bloemenvoorraad:

<img src=".Commerciële partijen\media\image2.png" style="width:6.3125in;height:3.09154in" />

De reden waarom deze vink belangrijk is voor het proces, is omdat de
Timerfunctie “Commerciële partijen (Commercial Stock Parcels) aantallen bijwerken” om de opgegeven
aantal minuten de logistieke voorraad af zal gaan om de aantallen bij te
werken bij de Commercial Stock Parcels. Kan namelijk op de logistieke partij
op verkocht zijn. Zie onderstaand;

<img src=".Commerciële partijen\media\image3.png" style="width:6.3in;height:2.27847in" />

Bij de commerciele voorraden en logistieke vooraden moeten ook onderstaande instellingen aangezet worden op tabblad 'doorboeken'.
- Bij doorboeken vinkje voor alleen volledig gepickorderde verd. doorboeken, tonen : altijd aan
- Verdeling doorboeken indien de klant offline is, bij controle volledig gepicked aanzetten.

<img src=".Commerciële partijen\media\image12.png" style="width:6.3125in;height:3.09154in" />


De systeem instellingen m.b.t. Commercial Stock Parcels staan allemaal bij
elkaar onder het tabje Commercial Stock Parcels (Commerciële partijen);

<img src=".Commerciële partijen\media\image4.png" style="width:6.3in;height:2.02014in" />

Uitgelicht even de volgende 4 instellingen.  
<u>CompartijDetails</u>

Sneltoets voor openen Commercial Stock Parcel detail scherm. Instelbaar naar
vrije keuze.

<u>CPartijNrNietTonenWebshop</u>

Partijen die als commerciële partij worden gemaakt, krijgen bij de
logistieke partij een CPARTIJNR. Met deze instelling kun je de partijen
met CPARTIJNR uit de Webshop en Webservice filteren. Indien False zie je
dus de logistieke partij + de commerciële partij. True dus alleen de
commerciële partij.

<u>LogistiekPartijTonenFacthisto</u>

Als deze instelling True staat, opent het factuurhistorie scherm met een
extra scherm waar van een commerciële partij, de logistieke partij
getoond word.

<u>LogistiekPartijTonenWijzig</u>

Als deze instelling True staat, opent het factuur wijzigen scherm met
een extra scherm waar van een commerciële partij, de logistieke partij
getoond word. ( zie onderstaand voorbeeld )

<u>Voorbeeld:</u>

Als klant JELLE heb ik 320 Alstromeria Virginia gekocht, echter waren
dit dus 2 verschillende logistieke partijen. Als klant weet ik dit
natuurlijk niet en daarom krijg ik ook 1 factuurregel. De Florisoft
gebruiker kan dus WEL zien van welke logistieke partijen de klant
heeft ontvangen en kan dus ook op deze logistieke partij crediteren (
rechtermuis op de Logistieke partij ).

<img src=".Commerciële partijen\media\image5.png" style="width:6.3in;height:5.875in" />

Zelfde geldt uiteraard voor het factuurhistorie scherm!

De commerciële voorraad is net als de overige voorraden voorzien van
autorisatie voor gebruikers.

Let op dat de Timer die voorraad door boekt ook voor deze voorraad is
geautoriseerd, zodat de verdelingen door geboekt worden. Zowel de
commerciële partij verdelingen EN logistieke partij verdelingen moeten
worden door geboekt.

De commerciële voorraad kun je een naam geven zoals je zelf wilt. Echter krijgt deze voorraad wel een kleur vanuit je thema
van je navigator. Onderstaand voorbeeld is paars:

<img src=".Commerciële partijen\media\image6.png" style="width:8.12472in;height:4.59344in" />

Om partijen samen te voegen, selecteer de partijen in de logistieke
voorraad en ga via rechtermuisknop op de partij naar “Samenvoegen
Commerciële partijen”

<img src=".Commerciële partijen\media\image7.png" style="width:7.01042in;height:4.53761in" />

Dit opent het volgende scherm:

<img src=".Commerciële partijen\media\image8.png" style="width:6.30208in;height:3.6783in" />

De geselecteerd partijen worden hier getoond. Aan de rechterkant kun je
de prijs middelen, of gebruiken van de oudste of nieuwste partij. Is
bovenin na klikken op deze knoppen nog steeds aan te passen! Na Ok pas
opgeslagen. Rode blokje laat de foto zien van de logistieke partij. Op
de partij waar je de Selecteer vink aanzet neem je de info van over naar
de commerciële partij. Foto, naam etc.

Partijen die zijn samengevoegd krijgen in de Commerciële voorraad een
eigen partij met partij nummer. Dit nummer is ook te zien in de
CPARTIJNR kolom in de voorraad van de logistieke voorraad.

Als je een partij wilt toevoegen aan een al bestaande commerciële
partij, selecteer je 1 van de logistieke partij met dat CPARTIJNR plus
de partij of partijen die je hierbij wilt toevoegen. De bruine regels
zijn al logistieke partijen met CPARTIJNR de witte regels zijn de
nieuwe:

<img src=".Commerciële partijen\media\image9.png" style="width:6.55208in;height:3.84227in" />

Webshop.

Bij klant 'X' heb ik er voor gekozen om de Cel voorraad en de commerciële
voorraad als 1 voorraad te tonen op de Webshop, als Webshop voorraad.
Genoemd Bloemen.

Dit omdat bij klant 'X' NIET iedere partij omgevormd moet worden tot
commerciële partij. Enkel de producten die normaliter werden
“Samengevoegd” om het aanbod voor de klant overzichtelijker te maken.

30% van de logistieke voorraad wordt Commercieel, de overige 70% blijft
dus een losse logistieke partij.

<img src=".Commerciële partijen\media\image10.png" style="width:6.3in;height:2.65208in" />

<img src=".Commerciële partijen\media\image11.png" style="width:6.3in;height:2.56181in" />
