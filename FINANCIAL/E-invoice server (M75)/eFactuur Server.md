<img src="../../fslogo.png"/>

## eFactuur Server

Met de module eFactuur Server wordt het mogelijk om informatie naar de
klant te sturen zodat de klant makkelijker de inkoopfactuur kan
controleren. De eFactuur Server bestaat uit de volgende aspecten:  

-Tijdens het verzenden van de originele factuur naar de klant wordt er
een eFactuur meegestuurd in de vorm van een xml bestand. Deze eFactuur
bevat dezelfde factuurregels als die op de originele factuur. Om er
zeker van te zijn dat de data op de eFactuur exact overeenkomt met de
data op de originele factuur wordt deze op hetzelfde moment en met dezelfde data gemaakt.
Dit zelfde bestand wordt ook gebruikt om de print te
produceren waardoor de kans op verschillen kleiner wordt. Op de
originele factuur mogen dus ook geen filters in de lay-out van de factuur
gebruikt worden, aangezien dan de eFactuur dan niet meer overeenkomt met de
originele factuur. 

-Tijdens het verzenden van een EKT bericht wordt er per factuurregel een
unieke identificatie in de EKT verzonden(de zogenaamde eFactuur barcode)
in het veld FS+EFACTBARC:  

-Indien de klant een koop doet via de Florisoft Voorraadkoppeling dat
wordt in het antwoord op die koop (de koopresponse) er een unieke
identificatie meegezonden (de zogenaamde eFactuur barcode). Veld
EFactuurBarcode  

-Op de originele factuur kan ook de eFactuur barcode worden geprint
(veld efactbarc in de factuur.dbf). Het wordt aangeraden om bij de
klanten waarbij ook een eFactuur naar gestuurd wordt deze eFactuur
barcode op de factuur te printen. Dit maakt nl. het controleren een stuk
makkelijker, zeker als bijv. een factuurregel wordt afgekeurd aan de
Client kant.

*Instellingen:  
*-Bij de debiteuren waarna je eFacturen wilt zenden moet de vink
aanstaan “Klant ondersteunt Florisoft eFactuur”. Dit triggert alle
verschillende aspecten van de eFactuur.  
-Bij de debiteur moet een code ingevuld worden bij: “Optioneel afwijkende
veilingcode in EKT”. Het is van groot belang dat dit nummer uniek is
voor die klant. Dat wil zeggen dat als jij bij klant A een afwijkende
veilingcode aangeeft van 23 dat jij de enige bent die naar die debiteur 23
stuurt, andere leveranciers dienen dus een andere code te gebruiken. 
