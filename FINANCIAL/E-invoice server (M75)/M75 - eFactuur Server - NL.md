<img src="../../fslogo.png"/>

## Floriday Hanleiding E-factuur server (M75)

Met de module e-Factuur Server wordt het mogelijk om informatie naar de
klant te sturen zodat de klant makkelijker de inkoopfactuur kan
controleren. De e-Factuur Server bestaat uit de volgende aspecten:  

- Tijdens het verzenden van de originele factuur naar de klant wordt er
een e-Factuur meegestuurd in de vorm van een xml bestand. Deze e-Factuur
bevat dezelfde factuurregels als die op de originele factuur. Om er
zeker van te zijn dat de data op de e-Factuur exact overeenkomt met de
data op de originele factuur, wordt deze op hetzelfde moment en met dezelfde data gemaakt.
Dit zelfde bestand wordt ook gebruikt om de print te
produceren waardoor de kans op verschillen kleiner wordt. Op de
originele factuur mogen dus ook geen filters in de lay-out van de factuur
gebruikt worden, aangezien dan de e-Factuur niet meer overeenkomt met de
originele factuur. 

- Tijdens het verzenden van een EKT bericht wordt er per factuurregel een
unieke identificatie in de EKT verzonden(de zogenaamde eFactuur barcode)
in het veld FS+EFACTBARC:  

- Indien de klant een koop doet via de Florisoft Voorraadkoppeling, dan
wordt in de reactie op die koop (de koopresponse), een unieke
identificatie meegezonden (de zogenaamde e-Factuur barcode). Veld
EFactuurBarcode  

- Op de originele factuur kan ook de e-Factuur barcode worden geprint
(veld efactbarc in de factuur.dbf). Het wordt aangeraden om bij de
klanten waarbij ook een e-Factuur gestuurd wordt, deze de e-Factuur
barcode op de factuur te laten printen. Dit maakt het controleren een stuk
makkelijker, zeker als er bijvoorbeeld een factuurregel wordt afgekeurd aan de
Client kant.

*Instellingen:*

- Bij de debiteuren waar je de e-Facturen naar toe wilt zenden, moet de vink
aanstaan “Klant ondersteunt Florisoft eFactuur”. Dit triggert alle
verschillende aspecten van de e-Factuur.  
- Bij de debiteur moet een code ingevuld worden bij: “Optioneel afwijkende
veilingcode in EKT”. Het is van groot belang dat dit nummer uniek is
voor die klant. Dat wil zeggen dat als jij bij klant A een afwijkende
veilingcode aangeeft van 23 dat jij de enige bent die naar die debiteur 23
stuurt. Andere leveranciers dienen dus een andere code te gebruiken. 

**Let op:**

In het debiteuren scherm moet deze check aangezet worden:
<img src=".efact server/media/foto1.png" />