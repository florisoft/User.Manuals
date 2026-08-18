<img src="../fslogo.png">

# Snelstarthandleiding add-on Content Management Systeem (CMS)

*Let op: omdat het CMS continu wordt doorontwikkeld, kunnen sommige screenshots en stappen in deze handleiding in bepaalde gevallen afwijken van de actuele situatie in het systeem.*

In dit document nemen we je stap voor stap mee in het opzetten van je eerste CMS-pagina. We delen dit op in meerdere secties: **Hero (Header)**, **Carrousel**, **Productlijst**, **Tekst + Afbeelding**, **Formulier** en tot slot een **Footer**. Zo maak je kennis met ons CMS en ontdek je direct de uitgebreide mogelijkheden van het systeem.

Kom je er toch niet helemaal uit en ben je op zoek naar een kant-en-klare oplossing? Dan verwijzen we je graag door naar onze website. Hier kun je eenvoudig een pakket kiezen dat onze CMS-specialist in jouw omgeving kan implementeren. [Klik hier voor meer informatie »](https://florisoft.nl/cms-pakketten)

---

## Hero (Header)

De Hero is de eerste indruk van je website. Het geeft bezoekers direct een beeld van wat voor bedrijf je bent. Vaak bevat de Hero ook een button waarmee bezoekers direct naar de webshop of het formulier om klant te worden kunnen navigeren.

### Benodigde componenten

Voor deze sectie heb je de volgende handleidingen nodig:

- [Drag & Drop](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#drag--drop)
- [Row/Column](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#rowcolumn)
- [Panel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#panel)
- [Flex](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#flex)
- [Text](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#text)
- [Button](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#button)
- [Templates](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#templates)

### Stappen

| Stap | Uitleg |
|:--|:--|
| **1** | Sleep via het **Drag & Drop**-scherm een **Row** naar de **Home**-container en voeg vervolgens een **Column** toe aan de Row. Sluit het Drag & Drop-scherm en geef de Column een minimale hoogte van **100 ViewportPercent**. |
| **2** | Plaats een **Panel** in de Column. Geef het Panel de **Identificatienaam** `Hero` en stel voor dit component een **Achtergrondafbeelding** in. Positioneer de achtergrondafbeelding gecentreerd. |
| **3** | Plaats nogmaals een **Panel** binnen het `Hero`-Panel en geef deze de **Identificatienaam** `Overlay`. Geef dit component een zwarte achtergrondkleur met een dekking van **40%**. Stel vervolgens een minimale hoogte van **60 ViewportPercent** in voor dit Panel. |
| **4** | Plaats een **Flex**-component binnen het `Overlay`-Panel. Stel in dat de inhoud zowel horizontaal als verticaal gecentreerd wordt uitgelijnd en activeer **Objecten uitvullen**. Stel vervolgens in dat het Flex-component dezelfde hoogte overneemt als het `Overlay`-Panel. |
| **5** | Plaats opnieuw een **Panel** binnen het Flex-component en geef deze de **Identificatienaam** `Container`. Stel voor het `Container`-Panel een maximale breedte van **1200 pixels** in. |
| **6** | Plaats een **Text**-component in het `Container`-Panel. Selecteer de **H1**-kop in het Text-component, stel de uitlijning in op **Centreren** en vul het volgende in het TinyMCE-veld in: **"Dit is mijn eerste CMS-pagina"**. |
| **7** | Plaats een **Button**-component in het `Container`-Panel en geef deze de tekst **"Naar de shop"**. Activeer de **Chevron**, vul `/voorraad/start` in als [URL](#url) en stel de positie van de button in op **Centreren**. |
| **8** | Wanneer je bovenstaande stappen correct hebt uitgevoerd, ziet jouw Hero er als volgt uit:<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/hero.png"></details> |
| **9** | Sla het **Hero**-Panel op als Template, zodat je deze op andere pagina's opnieuw kunt gebruiken. |

---

## Carrousel (Assortiment)

Onder de Hero tonen we het assortiment. Dit doen we met een **Carrousel**-component.

### Benodigde componenten

Voor deze sectie heb je de volgende handleidingen nodig:

- [Carrousel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#carrousel)
- [Panel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#panel)
- [Flex](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#flex)
- [Text](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#text)
- [Button](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#button)
- [Templates](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#templates)

### Stappen

| Stap | Uitleg |
|:--|:--|
| **1** | Plaats een nieuwe **Panel** in de Column. Geef het Panel de **Identificatienaam** `Assortiment` en stel voor dit component een **Achtergrondkleur** in die overeenkomt met een van je twee themakleuren. |
| **2** | Plaats een tweede **Panel** binnen het `Assortiment`-Panel en geef deze de **Identificatienaam** `Overlay`. Geef dit component eventueel een witte achtergrondkleur met een dekking van **80%**, of kies een dekking die beter aansluit bij je themakleur. Stel voor dit Panel een **Padding** in van **80 pixels boven en onder** en **20 pixels links en rechts**. |
| **3** | Plaats een **Flex**-component binnen het `Overlay`-Panel. Stel in dat de inhoud zowel horizontaal als verticaal gecentreerd wordt uitgelijnd en activeer **Objecten uitvullen**. |
| **4** | Plaats opnieuw een **Panel** binnen het Flex-component en geef deze de **Identificatienaam** `Container`. Stel voor het `Container`-Panel een maximale breedte van **1200 pixels** in. |
| **5** | Plaats een **Carrousel**-component in het `Container`-Panel. |
| **6** | Plaats een **Panel** binnen het Carrousel en geef deze de **Identificatienaam** `Slide 1`. Geef het Panel een achtergrondkleur, een **Padding** van **40 pixels rondom** en een **Hoekafronding** van **20 pixels**. |
| **7** | Plaats een **Text**-component in het `Slide 1`-Panel. Selecteer de **H3**-kop in het Text-component, stel de uitlijning in op **Centreren** en vul het volgende in het TinyMCE-veld in: **"Voorraad 1"**. |
| **8** | Dupliceer het `Slide 1`-Panel vervolgens drie keer en geef de nieuwe Panels de namen `Slide 2`, `Slide 3` en `Slide 4`. |
| **9** | Selecteer het **Carrousel**-component. Schakel **Paginatie** en **Automatisch afspelen** in, zet de **Hoogtemodus** op **Auto Stretch** en stel de **Tussenruimte** in op **20 pixels**. Stel vervolgens onder het tabblad **Styling** het aantal **Zichtbare kolommen** in op **4** voor desktop, **2** voor tablet en **1** voor mobiel. |
| **10** | Wijzig in elk Text-component **"Voorraad 1"** naar de naam van de Voorraad waarnaar je wilt navigeren. Vul vervolgens de bijbehorende [URL's](#url) van de Voorraad in bij de Panels (`Slide 1`, `Slide 2`, `Slide 3` en `Slide 4`). |
| **11** | Selecteer een Panel (Slide) en vul de bijbehorende **Voorraadcode** in onder **Content uitlichten**. Herhaal dit voor iedere Slide. |
| **12** | Wanneer je bovenstaande stappen correct hebt uitgevoerd, ziet jouw Carrousel er als volgt uit:<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/assortiment.png"></details> |
| **13** | Sla het **Assortiment**-Panel op als Template, zodat je deze op andere pagina's opnieuw kunt gebruiken. |

---

## Partijlijst

In deze sectie voegen we een **Partijlijst** toe waarin we een specifieke voorraad uitlichten.

### Benodigde componenten

Voor deze sectie heb je de volgende handleidingen nodig:

- [Partijlijst](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#partijlijst)
- [Panel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#panel)
- [Row/Column](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#rowcolumn)
- [Templates](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#templates)

### Stappen

| Stap | Uitleg |
|:--|:--|
| **1** | Plaats een nieuwe **Panel** in de Column. Geef het Panel de **Identificatienaam** `Partijlijst`. |
| **2** | Plaats een tweede **Panel** binnen het `Partijlijst`-Panel en geef deze de **Identificatienaam** `Overlay`. Stel voor dit Panel een **Padding** in van **80 pixels boven en onder** en **0 pixels links en rechts**. |
| **3** | Plaats een **Row**-component met daarin een **Column**-component binnen het `Overlay`-Panel. |
| **4** | Plaats een **Panel** binnen de Column en geef deze de **Identificatienaam** `Container`. Stel voor het `Container`-Panel een maximale breedte van **1200 pixels** in. |
| **5** | Plaats een **Partijlijst**-component in de **Column** en genereer een voorraad. Stel het component vervolgens in op **Optie 2**. Geef het Partijlijst-component een **Margin** van `auto` aan de linker- en rechterzijde. Stel vervolgens een maximale breedte van **1296 pixels** in en zet de tussenruimte tussen de Partijkaarten op **20 pixels**. Stel het component tot slot in op een **Carrousel-weergave** met navigatiepijlen. |
| **6** | Wanneer je bovenstaande stappen correct hebt uitgevoerd, ziet jouw Partijlijst er als volgt uit:<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/partijlijst.png"></details> |
| **7** | Sla het **Partijlijst**-Panel op als Template, zodat je deze op andere pagina's opnieuw kunt gebruiken. |

---

## Afbeelding + Tekst

In deze sectie voegen we een afbeelding en tekst toe.

### Benodigde componenten

Voor deze sectie heb je de volgende handleidingen nodig:

- [Panel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#panel)
- [Flex](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#flex)
- [Row/Column](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#rowcolumn)
- [Text](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#text)
- [Button](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#button)
- [Templates](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#templates)

### Stappen

| Stap | Uitleg |
|:--|:--|
| **1** | Plaats een nieuwe **Panel** in de Column. Geef het Panel de **Identificatienaam** `Afbeelding + Tekst` en stel een **Achtergrondkleur** in die overeenkomt met een van je twee themakleuren. |
| **2** | Plaats een tweede **Panel** binnen het `Afbeelding + Tekst`-Panel en geef deze de **Identificatienaam** `Overlay`. Geef dit component eventueel een witte achtergrondkleur met een dekking van **80%**, of kies een dekking die beter aansluit bij je themakleur. Stel voor dit Panel een **Padding** in van **0 pixels rondom**. |
| **3** | Plaats een **Flex**-component binnen het `Overlay`-Panel. Stel de **Flexrichting** in op **Rij** en zet **Terugloop** op **Afbreken**. |
| **4** | Plaats twee **Columns** in het Flex-component. Stel beide Columns in op **6 kolommen** voor desktop en tablet en **12 kolommen** voor mobiel. Stel de **Padding** van de linker Column in op **0 pixels rondom**. Stel voor de rechter Column **40 pixels Padding** in aan de linker- en rechterzijde. |
| **5** | Plaats een **Panel** in de linker Column. Stel een **Achtergrondafbeelding** in, positioneer deze gecentreerd en geef het Panel een **Padding** van **8rem rondom**. |
| **6** | Plaats een **Flex**-component in de rechter Column. Stel een **Achtergrondafbeelding** in, positioneer deze gecentreerd en geef het Flex-component een **Padding** van **8rem rondom**. |
| **7** | Plaats een **Panel** in het Flex-component en geef deze de **Identificatienaam** `Tekst en Button`. Stel een **Padding** in van **80 pixels boven en onder** en **0 pixels links en rechts**. Stel de maximale breedte in op **600 pixels**. |
| **8** | Plaats twee **Text**-componenten en een **Button**-component in het `Tekst en Button`-Panel. Selecteer de **H2**-kop in het eerste Text-component en vul het volgende in het TinyMCE-veld in: **"Mijn eerste CMS-pagina is bijna klaar!"**. Vul het tweede Text-component met tekst naar eigen keuze. Voeg tot slot tekst toe aan de Button en stel een eigen URL in. |
| **9** | Wanneer je bovenstaande stappen correct hebt uitgevoerd, ziet jouw **Afbeelding + Tekst**-sectie er als volgt uit:<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/afbeelding-tekst.png"></details> |
| **10** | Sla het **Afbeelding + Tekst**-Panel op als Template, zodat je deze op andere pagina's opnieuw kunt gebruiken. |
| **11** | **Tip:** De sectie is nu over de volledige breedte van het scherm uitgelijnd. Wil je dit beperken, geef het `Afbeelding + Tekst`-Panel dan een maximale breedte van **1200 pixels** en stel de **Margin** aan de linker- en rechterzijde in op `auto`. |

---

## Formulier

In deze sectie zetten we een **Formulier** op.

### Benodigde componenten

Voor deze sectie heb je de volgende handleidingen nodig:

- [Formulier](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#formulier)
- [Tekst input](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#tekst-input)
- [Email input](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#email-input)
- [Verzendknop](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#verzendknop)
- [Panel](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#panel)
- [Flex](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#flex)
- [Text](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#text)
- [Templates](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#templates)

### Stappen

| Stap | Uitleg |
|:--|:--|
| **1** | Plaats een nieuwe **Panel** in de Column. Geef het Panel de **Identificatienaam** `Formulier` en stel een **Achtergrondkleur** in die overeenkomt met een van je twee themakleuren. |
| **2** | Plaats een tweede **Panel** binnen het `Formulier`-Panel en geef deze de **Identificatienaam** `Overlay`. Geef dit component eventueel een witte achtergrondkleur met een dekking van **90%**, of kies een dekking die beter aansluit bij je themakleur. Stel voor dit Panel een **Padding** in van **0 pixels rondom**. |
| **3** | Plaats een **Flex**-component binnen het `Overlay`-Panel. Stel in dat de inhoud zowel horizontaal als verticaal gecentreerd wordt uitgelijnd en activeer **Objecten uitvullen**. |
| **4** | Plaats een **Panel** in het Flex-component. Geef dit Panel een **Padding** van **80 pixels boven en onder** en **40 pixels links en rechts**. Stel de maximale breedte in op **600 pixels**. |
| **5** | Plaats een **Text**-component en een **Formulier**-component in het Panel. |
| **6** | Selecteer de **H2**-kop in het Text-component en vul het volgende in het TinyMCE-veld in: **"Dit is mijn eerste CMS-formulier!"**. |
| **7** | Binnen het **Formulier** kun je ook andere componenten, zoals **Columns** en **Flex**, plaatsen. Plaats een **Flex**-component met daarin twee **Tekst input**-componenten. Deze kunnen bijvoorbeeld worden gebruikt voor de voornaam en achternaam. |
| **8** | Plaats meerdere **Tekst input**-componenten in het Formulier en geef deze de volgende placeholders: **Bedrijfsnaam**, **E-mailadres** (gebruik hiervoor het **Email input**-component), **Telefoonnummer** en **Bericht**. Plaats vervolgens een **Flex**-component met daarin een **Verzendknop**-component. Hiermee kun je de positie van de Verzendknop bepalen. |
| **9** | Doorloop de instellingen van het formulier, zodat je het formulier kunt configureren en testen. |
| **10** | Wanneer je bovenstaande stappen correct hebt uitgevoerd, ziet jouw **Formulier**-sectie er als volgt uit:<details><summary><b>Klik hier voor de voorbeeldafbeelding</b></summary><img src=".Quickstart manual webshop add on CMS 2.0/media/formulier.png"></details> |
| **11** | Sla het **Formulier**-Panel op als Template, zodat je deze op andere pagina's opnieuw kunt gebruiken. |
| **12** | **Tip:** De sectie is nu over de volledige breedte van het scherm uitgelijnd. Wil je dit beperken, geef het `Formulier`-Panel dan een maximale breedte van **1200 pixels** en stel de **Margin** aan de linker- en rechterzijde in op `auto`. |

---

## Footer

Je hebt inmiddels een groot deel van je pagina opgebouwd en hebt waarschijnlijk een goed beeld gekregen van hoe ons CMS werkt en welke mogelijkheden het biedt.

Voor deze laatste sectie kun je gebruikmaken van een kant-en-klaar **Footer Template**. Dit Template vind je in het **Componenten**-dialoogvenster onder de categorie **Templates**. Als je de voorgaande stappen hebt gevolgd, vind je hier ook de andere Templates die je hebt aangemaakt.

Plaats het **Footer Template** vervolgens in de **Footer**-container.

### Benodigde componenten

Voor deze sectie heb je de volgende handleiding nodig:

- [Footer bewerken](https://github.com/florisoft/User.Manuals/blob/main/FLORISHOP%20MANUALS/CMS/CMS%202.0%20Manual%20-%20NL.md#footer-bewerken)

---

Je hebt nu alle secties van deze pagina voltooid! 🎉

Wanneer je vervolgens de **Home**-container als Template opslaat, kun je dit Template gebruiken als basis voor iedere nieuwe pagina die je aanmaakt. Zo heb je altijd een vaste basisstructuur beschikbaar.

Uiteraard zijn er nog veel meer mogelijkheden om je CMS-pagina's volledig naar eigen wens in te richten. Vond je het opzetten van de pagina toch wat lastig of wil je liever direct met een professionele basis starten? Florisoft biedt ook kant-en-klare CMS-pakketten waarmee onze CMS-specialist je kunnen helpen om snel een frisse start te maken.

[Klik hier voor meer informatie »](https://florisoft.nl/cms-pakketten)