<img src="../../fslogo.png"/>

## Handleiding E-Invoice Server (M75)

Met de module E-Invoice Server wordt het mogelijk om informatie naar de
klant te sturen zodat de klant gemakkelijk de inkoopfactuur kan
controleren. De E-Invoice Server bestaat uit de volgende aspecten:  

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

- Optioneel: Instellingen voor het versturen van UBL facturen volgens EN 16931 (de Europese norm voor elektronisch factureren) /Peppol (BIS 3.0).

### Instellingen

- Bij de debiteuren waar je de e-Facturen naar toe wilt zenden, moet de vink
aanstaan “Klant ondersteunt Florisoft eFactuur”. Dit triggert alle
verschillende aspecten van de e-Factuur. **Dit is een verplichte stap!**

**Volg de onderstaande stappen**:

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constanten scherm en navigeer naar het pad:<br>**Organen→Debiteur gegevens→Debiteuren**|
|**2**|Open een debiteur en navigeer binnen de kaart naar de submap:<br>**Factuur→Factuur**|
|**3**|Zet de instelling "*Klant ondersteunt Florisoft eFactuur*" aan.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".efact server/media/foto3.png"></details>|

- Bij de debiteur moet een code ingevuld worden bij: “Optioneel afwijkende
veilingcode in EKT”. Het is van groot belang dat dit nummer uniek is
voor die klant. Dat wil zeggen dat als jij bij klant A een afwijkende
veilingcode aangeeft van 23 dat jij de enige bent die naar die debiteur 23
stuurt. Andere leveranciers dienen dus een andere code te gebruiken. 

**Volg de onderstaande stappen**:

|Stap|Uitleg|
|:--|:--|
|**1**|Navigeer in de debiteurkaart naar de subfolder **EKT→EKT**|
|**2**|Vul in het veld "*Optioneel afwijkende veilingcode in EKT*" een debiteurs afwijkende veiling code in.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".efact server/media/foto2.png"></details>|

### Versturen van UBL facturen gebaseerd op EN16931/Peppol (BIS 3.0)

In Florisoft kun je dit inrichten. De UBL-generator is inmiddels gebaseerd op EN16931/Peppol (BIS 3.0) en kan de gevraagde velden zoals CustomizationID en ProfileID meesturen. 
De instellingen staan in de constanten bij de debiteur op tabblad Factuur -> Electronische Factuur. 

|Stap|Uitleg|
|:--|:--|
|**1**|Open het constanten scherm en navigeer naar het pad:<br>**Organen→Debiteur gegevens→Debiteuren**|
|**2**|Open een debiteur en navigeer binnen de kaart naar de submap:<br>**Factuur→Electronische Factuur**|
|**3**|Zet de instelling "*Bij Florisoft eFactuur ook UBL-bijlage meesturen.*" aan.  Zet de instelling UBL-bijlagetype op: *EN16931 EU Invoice*" en zet UBL-endpointId-type op: "*Btw9925, Kvk 0208 of 0088 EAN/GLN*".<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".efact server/media/UBLefact.png"></details>

Peppol verwacht het XML bestand volgens de type op: EN16931 EU Invoice. Met deze instellingen wordt dit in de XML meegestuurd: 

*cbc:CustomizationIDurn:cen.eu:en16931:2017</cbc:CustomizationID>*  
*cbc:ProfileIDurn:fdc:peppol.eu:2017:poacc:billing:01:1.0</cbc:ProfileID>* 
<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src=".efact server/media/CustomizationID2.png"></details>

Doordat de instelling UBL-endpointId-type op: "*Btw9925, Kvk 0208 of 0088 EAN/GLN* staat, kan in het segment EndpointId de waarde voor de Customer en Supplier afwijkend gevuld en meegestuurd worden. Met andere schemeId's en bijbehorende waardes.  

Standaard is dit 'schemeId' '0088' en waarde 'EAN of GLN'. Dit kan nu afwijkend worden ingesteld met de UBL-endpointId-type.  
Stel deze voor Peppol in op: *Btw 9925, KvK 0208 of 0088 EAN/GLN*. 

<summary><b>Wat gebeurt er zodra dit is ingesteld?</b></summary>   
Het BTW nummer van de debiteur wordt meegestuurd in dit segment in de XML; <cbc:EndpointID schemeID="9925">987654321</cbc:EndpointID>.  
Mocht het BTW nummer leeg zijn, dan gaat het systeem kijken of het KvK nummer van de debiteur gevuld is. Als dit het geval is, dan wordt deze meegestuurd met een ander schemeID="0208".  
Als het BTW nummer en KVK nummer bij de debiteur is gevuld, dan zal het BTW nummer (met schemeID="9925") als eerst worden gestuurd in het EndpointID.  
Zodra deze leeg is, dan wordt het KvK nummer gestuurd in schemeID=”0208”.  
Als beide leeg zijn, dan wordt de GLN van de debiteur gestuurd in schemeID=”0088”.
<details><summary><b>Klik hier voor uw voorbeeld afbeelding waarbij BTW nummer en KVK nummer is gevuld van de debiteur</b></summary><img src=".efact server/media/BTW_en_KVK.png"></details>
<details><summary><b>Klik hier voor uw voorbeeld afbeelding wat er in de XML wordt meegestuurd</b></summary><img src=".efact server/media/XML_Voorbeeld.png"></details>
