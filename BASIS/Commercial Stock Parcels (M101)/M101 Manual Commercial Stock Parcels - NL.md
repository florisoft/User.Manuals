<img src="../../fslogo.png"/>

# Florisoft Handleiding Commercial Stock Parcels (M101)

Zodra je beschikt over de module **Commerciële Voorraad Partijen**, heb je bij de **voorraadinstellingen** in de **Constanten** een nieuw tabblad en bij het **Setup Systeem** een apart tabblad voor de instellingen van **Commercial Stock Parcels**.

Belangrijke informatie voor het inrichten van de module: voordat de module wordt ingericht, moet door een medewerker van Florisoft nagekeken worden of de manier van hashen via de nieuwe methode gaat. Neem hiervoor contact op met de supportafdeling.  
Het omzetten kan via de debugoptie **Commerciële partijen hash omzetten**. Standaard staat dit aan op systemen die ongeveer na 2020 zijn geïmplementeerd. Systemen die al live waren vóór dat jaartal, moeten worden omgezet naar de nieuwe manier van hashen. Mocht dat nog niet gedaan zijn, dan kun je contact opnemen met de supportafdeling.

In onderstaand voorbeeld heb ik een commerciële voorraad aangemaakt en aangegeven: **Is commerciële voorraad**.

<img src=".Commerci%C3%ABle%20partijen/media/image1.png" style="width:6.28999in;height:3.48958in" />

Bij de logistieke voorraad of voorraden moet je vervolgens aangeven: **Telt mee voor commerciële voorraad**. Zie onderstaand voorbeeld voor de bloemenvoorraad:

<img src=".Commerci%C3%ABle%20partijen/media/image2.png" style="width:6.3125in;height:3.09154in" />

De reden waarom deze vink belangrijk is voor het proces, is omdat de timerfunctie **Commerciële partijen (Commercial Stock Parcels) aantallen bijwerken** om de opgegeven hoeveelheid minuten de logistieke voorraad doorloopt om de aantallen bij te werken bij de **Commercial Stock Parcels**. Er kan namelijk al op de logistieke partij verkocht zijn. Zie onderstaand:

<img src=".Commerci%C3%ABle%20partijen/media/image3.png" style="width:6.3in;height:2.27847in" />

Bij de commerciële voorraden en logistieke voorraden moeten ook onderstaande instellingen aangezet worden op tabblad **Doorboeken**.

- Bij doorboeken het vinkje voor **alleen volledig gepickorderde verdelingen doorboeken** op **altijd aan** zetten
- **Verdeling doorboeken indien de klant offline is**, bij controle **volledig gepicked** aanzetten

<img src=".Commerci%C3%ABle%20partijen/media/image12.png" style="width:6.3125in;height:3.09154in" />

De systeeminstellingen met betrekking tot **Commercial Stock Parcels** staan allemaal bij elkaar onder het tabblad **Commercial Stock Parcels (Commerciële partijen)**:

<img src=".Commerci%C3%ABle%20partijen/media/image4.png" style="width:6.3in;height:2.02014in" />

Hieronder worden vier instellingen uitgelicht.

<u>CompartijDetails</u>

Sneltoets voor het openen van het **Commercial Stock Parcel detail** scherm. Instelbaar naar vrije keuze.

<u>CPartijNrNietTonenWebshop</u>

Partijen die als commerciële partij worden gemaakt, krijgen bij de logistieke partij een **CPARTIJNR**. Met deze instelling kun je de partijen met **CPARTIJNR** uit de **Webshop** en **Webservice** filteren.  
Indien **False**, zie je dus de logistieke partij én de commerciële partij.  
Indien **True**, zie je alleen de commerciële partij.

<u>LogistiekPartijTonenFacthisto</u>

Als deze instelling op **True** staat, opent het **factuurhistorie** scherm met een extra scherm waarin van een commerciële partij de logistieke partij wordt getoond.

<u>LogistiekPartijTonenWijzig</u>

Als deze instelling op **True** staat, opent het scherm **factuur wijzigen** met een extra scherm waarin van een commerciële partij de logistieke partij wordt getoond. Zie onderstaand voorbeeld.

<u>Voorbeeld:</u>

Als klant **JELLE** heb ik 320 **Alstromeria Virginia** gekocht. Dit waren echter 2 verschillende logistieke partijen. Als klant weet ik dit natuurlijk niet en daarom krijg ik ook 1 factuurregel.  
De Florisoft-gebruiker kan dus wél zien van welke logistieke partijen de klant heeft ontvangen en kan dus ook op deze logistieke partij crediteren via **rechtermuisknop op de logistieke partij**.

<img src=".Commerci%C3%ABle%20partijen/media/image5.png" style="width:6.3in;height:5.875in" />

Hetzelfde geldt uiteraard voor het scherm **factuurhistorie**.

De commerciële voorraad is, net als de overige voorraden, voorzien van autorisatie voor gebruikers.

Let erop dat de timer die voorraad doorboekt ook voor deze voorraad is geautoriseerd, zodat de verdelingen worden doorgeboekt. Zowel de **commerciële partijverdelingen** als de **logistieke partijverdelingen** moeten worden doorgeboekt.

De commerciële voorraad kun je een naam geven zoals je zelf wilt. Deze voorraad krijgt echter wel een kleur vanuit het thema van je **Navigator**. In onderstaand voorbeeld is dat paars:

<img src=".Commerci%C3%ABle%20partijen/media/image6.png" style="width:8.12472in;height:4.59344in" />

Om partijen samen te voegen, selecteer je de partijen in de logistieke voorraad en ga je via **rechtermuisknop op de partij** naar **Samenvoegen Commerciële partijen**.

<img src=".Commerci%C3%ABle%20partijen/media/image7.png" style="width:7.01042in;height:4.53761in" />

Dit opent het volgende scherm:

<img src=".Commerci%C3%ABle%20partijen/media/image8.png" style="width:6.30208in;height:3.6783in" />

De geselecteerde partijen worden hier getoond. Aan de rechterkant kun je de prijs middelen, of de prijs van de oudste of nieuwste partij gebruiken. Dit is bovenin, na het klikken op deze knoppen, nog steeds aan te passen. Pas na **OK** wordt het opgeslagen.  
Het rode blokje laat de foto zien van de logistieke partij. Op de partij waar je de **Selecteer**-vink aanzet, neem je de informatie over naar de commerciële partij, zoals foto, naam, enzovoort.

Partijen die zijn samengevoegd krijgen in de **Commerciële voorraad** een eigen partij met partijnummer. Dit nummer is ook te zien in de kolom **CPARTIJNR** in de voorraad van de logistieke voorraad.

Als je een partij wilt toevoegen aan een al bestaande commerciële partij, selecteer je 1 van de logistieke partijen met dat **CPARTIJNR** plus de partij of partijen die je hieraan wilt toevoegen. De bruine regels zijn al logistieke partijen met **CPARTIJNR**; de witte regels zijn de nieuwe:

<img src=".Commerci%C3%ABle%20partijen/media/image9.png" style="width:6.55208in;height:3.84227in" />

## Webshop

Bij klant **X** heb ik ervoor gekozen om de **celvoorraad** en de **commerciële voorraad** als 1 voorraad te tonen op de **Webshop**, als **Webshop voorraad**, genaamd **Bloemen**.

Dit omdat bij klant **X** niet iedere partij omgevormd moet worden tot commerciële partij. Enkel de producten die normaliter werden **samengevoegd** om het aanbod voor de klant overzichtelijker te maken.

30% van de logistieke voorraad wordt **Commercieel**; de overige 70% blijft dus een losse logistieke partij.

<img src=".Commerci%C3%ABle%20partijen/media/image10.png" style="width:6.3in;height:2.65208in" />

<img src=".Commerci%C3%ABle%20partijen/media/image11.png" style="width:6.3in;height:2.56181in" />
