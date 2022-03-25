# Handleiding SVC

Welkom bij de handleiding voor de module Server Voorraad Component. SVC wordt gebruikt om je voorraad aan te bieden aan andere organisaties zodat zij in realtime uit de voorraad kunnen kopen. Deze module synchroniseert je voorraad tussen organisaties binnen je eigen backoffice systeem.

## Opzetten
De eerste stap bij het installeren van de SVC, is het bepalen van de voorraad verdeling.
Zo kan je per voorraad een aparte debiteur aanmaken om de voorraad te splitsen bij de ontvangende partij.
Je kan ook de keuze maken om groeperingen te maken, dus bijvoorbeeld een debiteur voor alle Bloemen, Planten en Deco (oid).

Begin met het maken van een nieuwe debiteur, het is handig om eerst een template debiteur aan te maken als je meerdere debiteuren moet gaan maken.
Ga naar de constanten -> Organen -> Debiteurgegevens -> Debiteuren, klik vervolgens op het plusje.

<img src =".Server voorraad component/media/image1.png"/>

Vul tenminste de Deb.nummer, Zoek en Bedrijfsnaam in. Maak zeker dat de namen duidelijk zijn, vooral wat deze debiteur doet. Een ander persoon kan hier ooit naar kijken en moet achterhalen wat dit doet.

<img src =".Server voorraad component/media/image2.png"/>

Kies hier het type webservice, als de ontvangende kant ook een Florisoft gebruiker is, moet de Florisoft webservice gebruikt worden.

<img src =".Server voorraad component/media/image3.png"/>

In de tab 'Server' kan de optie 'Eindklant opslaan als opmerking en niet koppelen aan debiteur'. Dit betekent dat als de ontvangende klant verschillende klanten laat kopen op de webshop, word de subdebiteur meegenomen als opmerking op de factuur.

<img src =".Server voorraad component/media/image4.png"/>

Onder Internet -> Internet toegang moet het 1e en 3e vinkje aanstaan. vervolgens kan je de voorraaden toewijzen die deze debiteur gaat versturen. Hier moeten de 'A' en 'T' vinkjes aanstaan.

Als laatste moet de link worden verstuurd naar de ontvangende partij. Dit is de standaard webshop link met '/service.asmx' erachter geplakt. 
Hiermee kan de ontvangende partij de voorraad in ontvangst nemen.