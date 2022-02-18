##      Inhoud

# 

[Inhoud 2](#inhoud)

[Inleiding 3](#inleiding)

[Stap 1. De editor openen 4](#stap-1.-de-editor-openen)

[Stap 2. De editor 6](#stap-2.-de-editor)

[Stap 3. Opslaan en gebruiken 7](#_Toc51670611)

[7](#section-1)

[Kopieren van lay-outs 9](#kopieren-van-lay-outs)

# Inleiding

De module active email is een module die veel gebruikt word. Sinds
enkele maanden zit deze nu ook verwerkt in de Florishop Sales module.
Echter was er 1 groot probleem en dat is het type lay-out. Deze dienen
middels html gemaakt te worden en dit geeft een hoop problemen. Dit
omdat niet iedereen verstand heeft van HTML maar ook omdat sommige zaken
heel lastig te doen zijn en veel testwerk kost. Mede om die redenen
hebben we deze nieuwe editor laten ontwikkelen. Deze editor zal het
maken en aanpassen van active e-mail lay-outs drastisch veranderen en
makkelijker maken voor ons. In de verre toekomst zou het mogelijk zijn
deze editor open te zetten voor onze klanten. Voor nu zal deze optie
alleen door ons gebruikt kunnen worden.  
  
Dit document zal stap voor stap in grote lijnen uitleggen hoe je de
editor kunt gebruiken. Uiteraard zullen er in de toekomst nog wel
aanpassingen voor komen die later verwerkt moeten worden in dit
document.

# Stap 1. De editor openen

De editor is te vinden in Florishop. Deze versie van Florishop moet
minimaal van 9 september 2020 zijn.  
  
Log in op Florishop met een beheer account. Open het beheer en ga naar
configuratie &gt; Mail configuratie  
  
<img src=".Active email editor verise 0.7.docx\media\image2.png" style="width:6.3in;height:1.62778in" />

Dit opent het volgende scherm:  
  
<img src=".Active email editor verise 0.7.docx\media\image3.png" style="width:6.3in;height:2.12639in" />  
  
Klik hier op de knop “Wijzigen”. Het volgende dialoog komt naar voren:  
  
<img src=".Active email editor verise 0.7.docx\media\image4.png" style="width:2.55388in;height:2.152in" />  
Vul hier het ADMINF wachtwoord in en druk op verstuur.  
  
Klik vervolgens op de knop Creëer.

<img src=".Active email editor verise 0.7.docx\media\image5.png" style="width:6.3in;height:2.04306in" />

Het volgende Dialoog komt naar voren:  
  
<img src=".Active email editor verise 0.7.docx\media\image6.png" style="width:2.968in;height:2.30502in" />  
  
**Thema Filter:** Voor welk thema is de mail.  
**Mail type filter:** Welk lay-out type is het. Momenteel is alleen
active email bruikbaar. In de toekomst komen hier ook de
webshopbevestigingsmails.  
**Template naam:** De naam voor de nieuwe lay-out.  
  
Als bovenstaande gegevens zijn ingevuld druk je op Creëer. We gaan nu
naar **stap 2**.

# Stap 2. De editor

Na het afronden van stap 1 verschijnt het volgende scherm:  
  
<img src=".Active email editor verise 0.7.docx\media\image7.png" style="width:6.3in;height:3.25486in" />

Om alles opties te tonen vink je ook de “Show advanced” optie aan.  
De opties is de editor zijn allemaal behoorlijk duidelijk qua tekst. We
lichten er wel enkele toe.  
  
**Eigenschappen:**  
Hier kun je de informatie configureren die er per partij zichtbaar moet
zijn op de active mail. Mis je hier een optie dan graag als offerte
aanvraag aanvragen bij de webdev. Tenzij het een veld is die in de oude
HTML Editor al werkte. Die mogen als service worden toegevoegd.  
**  
Body &gt; Amount of columns:**  
Standaard opent de editor met 1 partij per regel. Met deze optie kun je
meerdere partijen naast elkaar laten zetten in de mail met een max op 4.

<span id="_Toc51670611" class="anchor"></span>**<u>Stap 3. Opslaan en
gebruiken</u>**  
Als je klaar bent druk je op het floppydisk icoon om de active mail op
te slaan

# <img src=".Active email editor verise 0.7.docx\media\image8.png" style="width:6.3in;height:3.35556in" /> 

Vervolgens kun je deze in de Sales module gebruiken als active email. Je
kunt deze lay-out **ook** gebruiken in de backoffice via de “normale”
manier. Hiervoor dient de wesbhop3 url in de systeem instellingen wel
correct ingevuld te zijn zodat Florisoft middels een API kijkt of er
lay-outs staan in de Florishop map. De lay-outs gemaakt met de nieuwe
editor zijn te herkennen aan de ‘FTS\_’ prefix:

<img src=".Active email editor verise 0.7.docx\media\image9.png" style="width:2.96916in;height:2.04195in" />

Vervolgens stuur je de mail naar je klant en krijg je de mail binnen:  
  
<img src=".Active email editor verise 0.7.docx\media\image10.png" style="width:6.3in;height:6.74306in" />

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
  
<img src=".Active email editor verise 0.7.docx\media\image11.png" style="width:6.3in;height:3.31736in" />
