<img src="../../fslogo.png"/>

# Inhoud

[Inhoud](#inhoud)


[Stap 1. De editor openen](#stap-1.-de-editor-openen)

[Stap 2. De editor](#stap-2.-de-editor)

[Stap 3. Opslaan en gebruiken](#_Toc51670611)

[Kopieren van lay-outs](#kopieren-van-lay-outs)

# Stap 1. De editor openen

De editor is te vinden in FloriShop. Deze versie van FloriShop moet
minimaal van 9 september 2020 zijn.  
  
Log in op FloriShop met een beheer account. Open het beheer en ga naar
configuratie &gt; Mail configuratie  
  
<img src=".Active Email Editor\media\image2.png" style="width:6.3in;height:1.62778in" />

Dit opent het volgende scherm:  
  
<img src=".Active Email Editor\media\image3.png" style="width:6.3in;height:2.12639in" />  
  
Klik hier op de knop “Wijzigen”. Het volgende dialoog komt naar voren:  
  
<img src=".Active Email Editor\media\image4.png" style="width:2.55388in;height:2.152in" />  
Vul hier het ADMINF wachtwoord in en druk op verstuur.  
  
Klik vervolgens op de knop Creëer.

<img src=".Active Email Editor\media\image5.png" style="width:6.3in;height:2.04306in" />

Het volgende Dialoog komt naar voren:  
  
<img src=".Active Email Editor\media\image6.png" style="width:2.968in;height:2.30502in" />  
  
**Thema Filter:** Voor welk thema is de mail.  
**Mail type filter:** Welk lay-out type is het. Momenteel is alleen
active email bruikbaar. In de toekomst komen hier ook de
webshopbevestigingsmails.  
**Template naam:** De naam voor de nieuwe lay-out.  
  
Als bovenstaande gegevens zijn ingevuld druk je op Creëer. We gaan nu
naar **stap 2**.

# Stap 2. De editor

Na het afronden van stap 1 verschijnt het volgende scherm:  
  
<img src=".Active Email Editor\media\image7.png" style="width:6.3in;height:3.25486in" />

Om alles opties te tonen vink je ook de “Show advanced” optie aan.  
De opties is de editor zijn allemaal behoorlijk duidelijk qua tekst. We
lichten er wel enkele toe.  
  
**Eigenschappen:**  
Hier kun je de informatie configureren die er per partij zichtbaar moet
zijn op de active mail. Mis je hier een optie dan graag als offerte
aanvraag aanvragen bij de webdev. Tenzij het een veld is die in de oude
HTML Editor al werkte. Die mogen als service worden toegevoegd.  
    
**Body &gt; Amount of columns:**  
Standaard opent de editor met 1 partij per regel. Met deze optie kun je
meerdere partijen naast elkaar laten zetten in de mail met een max op 4.

<span id="_Toc51670611" class="anchor"></span>**<u>Stap 3. Opslaan en
gebruiken</u>**  
Als je klaar bent druk je op het floppydisk icoon om de active mail op
te slaan

# <img src=".Active Email Editor\media\image8.png" style="width:6.3in;height:3.35556in" /> 

Vervolgens kun je deze in de Sales module gebruiken als active email. Je
kunt deze lay-out **ook** gebruiken in de backoffice via de “normale”
manier. Hiervoor dient de wesbhop3 url in de systeem instellingen wel
correct ingevuld te zijn zodat Florisoft middels een API kijkt of er
lay-outs staan in de FloriShop map. De lay-outs gemaakt met de nieuwe
editor zijn te herkennen aan de ‘FTS\_’ prefix:

<img src=".Active Email Editor\media\image9.png" style="width:2.96916in;height:2.04195in" />

Vervolgens stuur je de mail naar je klant en krijg je de mail binnen:  
  
<img src=".Active Email Editor\media\image10.png" style="width:6.3in;height:6.74306in" />

Uiteraard is bovenstaande een lelijk voorbeeld uit een test systeem maar
het laat wel zien hoe het er uit kan zien.

# Kopieren van lay-outs

Je kunt de lay-outs vinden in de standaard themes folder in de map
MailTemplates die bij dit specifieke thema past. Houd er rekening mee
dat hierin een Preview template en een normale template zit. Pas na het
opslaan van een template overschrijven we de echte template. Deze
templates zijn over te ze zetten tussen shops. Houd er wel rekening dat
de header afbeelding opnieuw moeten worden geupload. Dit omdat we de
afbeeldingen in de mail vanuit de webshop inladen en niet meesturen als
een bijlage. In de toekomst is het eventueel mogelijk een upload en
download functionaliteit toe te voegen aan de mailconfig om deze stappen
wat makkelijker te maken.  
  
C:\\inetpub\\wwwroot\\Florishop\\Themes\\THEMANAAM\\MailTemplates\\Aanbieding  
  
Dus bijv:  
  
C:\\inetpub\\wwwroot\\Florishop\\Themes\\Native\\MailTemplates\\Aanbieding  
  
<img src=".Active Email Editor\media\image11.png" style="width:6.3in;height:3.31736in" />
