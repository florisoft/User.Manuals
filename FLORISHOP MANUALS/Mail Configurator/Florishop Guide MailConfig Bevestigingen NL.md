<img src="../../fslogo.png">

# Informatie over nieuwe MJML-bevestigingen in MailConfig

Een bevestigingsmail wordt verstuurd nadat een klant een bestelling heeft geplaatst. Voorheen werden deze e-mails door Support samengesteld met FRPT. Deze methode is verouderd en wordt binnenkort vervangen door MailConfig.

## Aanleiding
MailConfig bestond al voordat de bevestigingen werden toegevoegd, maar werd toen uitsluitend voor aanbiedingen gebruikt. Consultancy had veel werk aan het handmatig onderhouden van FRPT-bestanden voor de bevestigingen. MailConfig was een geschikte vervanger, omdat het concept voor het maken van e-mails ongeveer hetzelfde is.

Er is wel voor een nieuwe techniek gekozen. Deze informatie is niet noodzakelijk voor het gebruik van de configurator, maar geeft wel inzicht in de werking ervan. De achterliggende techniek heet MJML. Het maken van e-mails is complex, omdat HTML slechts gedeeltelijk en per e-mailclient verschillend wordt ondersteund. MJML genereert automatisch geschikte HTML voor e-mails, zodat er minder tijd nodig is om de e-mails goed te laten werken.

## Bouwblokken
Bij deze implementatie is voornamelijk gekozen voor templateblokken, zoals headers, footers en bodies. U kunt deze afzonderlijk kiezen. Elk blok heeft een eigen vorm en samen vormen ze één volledige template.

Voor de bouwblokken zijn eenvoudige en uitgebreide varianten beschikbaar. De eenvoudige variant toont alleen de belangrijkste onderdelen. De uitgebreide variant biedt een uitgebreidere presentatie en kan aanvullende informatie tonen.

De varianten van de header, body en footer kunnen afzonderlijk worden gekozen. Het is daardoor mogelijk om verschillende varianten met elkaar te combineren.

Controleer na het kiezen of aanpassen van de bouwblokken altijd de voorbeeldweergave.

## Bevestigingen voor hoofd- en subklanten
Dit is niet zozeer van toepassing op het onderhouden van templates, maar is wel belangrijk voor het proces.

Bij organisaties die met hoofd- en subklanten werken, kan een bestelling voor verschillende klanten worden geplaatst. De bevestigingsmail houdt hier automatisch rekening mee.

De vormgeving blijft afkomstig uit MailConfig. Welke orderregels, ontvangers en prijzen worden getoond, wordt automatisch bepaald aan de hand van de klantrelatie, de bestelling en de ingestelde verzendregels.

U hoeft hiervoor niets te doen. Dit wordt automatisch bepaald op basis van de constructie en configuratie. Hieronder staan de verschillende mogelijkheden.

### 1. Een reguliere klant plaatst een bestelling
Zonder hoofd- en subklantconstructie zijn er geen bijzonderheden. De klant ontvangt een bevestiging van de geplaatste bestelling.

### 2. Subklant koopt voor zichzelf
Een subklant kan voor zichzelf kopen. Deze ontvangt, net als bij een reguliere aankoop, een overzicht van wat er is gekocht. Op basis van de instellingen moet de hoofdklant mogelijk over de aankoop worden geïnformeerd. In dat geval wordt automatisch een extra bevestiging met een andere toon naar de hoofdklant of verkoper gestuurd (uw subklant heeft ... gekocht).

### 3. Hoofdklant koopt voor één of meer subklanten
Als hoofdklant kunt u voor uw subklanten kopen. In de bevestiging worden alle orderregels per subklant gegroepeerd. Dit gebeurt automatisch en bevat extra prijsinformatie. De strekking van de e-mail is: "U hebt als hoofdklant voor deze subklanten gekocht."

Op basis van de instellingen moeten de subklanten voor wie is gekocht mogelijk ook individueel worden geïnformeerd. Zij ontvangen dan een bevestiging met alleen hun eigen orderregels (uw hoofdklant heeft ... voor u gekocht). Ook dit gebeurt automatisch.
