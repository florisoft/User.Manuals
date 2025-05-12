<img src="../../fslogo.png">

# Florisoft Handleiding Prepaid - M199

Dit document gaat over de implementatie en werkwijze van PrePaid kooplimieten op de Florishop. **Let op!** Het gebruik van de PrePaid wallet werkt op dit moment alleen nog wanneer Buckaroo of Saferpay als betaalprovider wordt gebruikt. Andere providers kunnen op aanvraag worden toegevoegd.

Het idee van dit systeem is dat klanten op de webshop slechts op een vooruitbetaald tegoed kunnen shoppen. Hieronder kan niet worden gekocht, en er is ook sprake van een deel wat niet besteed kan worden. Een soort ‘onderpand’ of ‘prepaid minimum tegoed’. Men wenst dit prepaid tegoed op de webshop direct te kunnen ophogen, via vooruitbetalingen. In de backoffice is dit per klant (debiteur) instelbaar, en de betalingen die gedaan zijn op de webshop kunnen hier uiteindelijk worden getoond. Nadat deze zijn verwerkt.

## Hoe kan dit worden ingesteld in de backoffice?

*Volg hier voor de onderstaande stappen*:

|Stap|Uitleg|
|:--|:--|
|**1**|Stel eerst in dat een klant een Pre-Paid klant is.Dit kan in het constantenscherm onder: **Organen→Debiteurgegevens→Debiteuren**.<br>Open de debiteur kaart en navigeer naar:<br>**Internet→Koop limiet**<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image1.png"></details>|
|**2**|Wanneer dit is aangevinkt, krijgt men voortaan een melding indien men poogt handmatig het kooplimiet te wijzigen, kooplimieten dienen dus niet meer handmatig aangepast te worden wanneer het een'PrePaid' klant betreft :<br><br>Het Minimum prepaid tegoed ‘basis inleg’ is een soort onderste limiet, welk niet besteed mag worden. Dit wordt direct van het totale tegoed afgehaald, en komt niet in het kooplimiet naar voren, maar kan wel worden getoond op de webshop.<Br><br>In het kort dient vooral de vink Webshop betaalwijze via ‘Pre paid’ aangezet te worden, en desgewenst kan het Minimum prepaid tegoed worden gevuld. Dit laatste is optioneel.<br><br>Het totale betaalde bedrag wat nog niet is verwerkt door het systeem (via de webshop), of dit nu een ‘vooruit’ betaling was of niet, wordt in het kooplimiet verwerkt. Dit verwerken gebeurt dan wel direct bij het betalen via de payment gateway op de webshop, dan wel op de Timer PREPAIDTEGOEDBEPALEN<br><br>Zorg er daarnaast ook voor dat de instelling "*Koop limiet altijd actief (ook bij kooplimiet 0.00)* aan staat!"<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image2.png"></details>|
|**3**|Open het timer settings scherm.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image11.png"></details>|
|**4**|Zoek in de timer processen naar "*PrePaid tegoeden bepalen*", u kan dit doen middels CTRL + SHIFT + F of door op '*Timer Setting*' kolom te klikken en de eerste 2 letters van het timer proces in te typen (PR).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image12.png"></details>|
|**5**|Dit timerproces wordt geacht aangezet te worden wanneer men deze functionaliteit wenst te gebruiken.Wanneer er een betaling is gedaan, en de Timer was actief, is het volgende gedrag te verwachten: <br><br>Wanneer de klant een prepaid betaling heeft gedaan en de timerfunctie is uitgevoerd wordt het kooplimiet opgehoogd met dit bedrag min de basis inleg.'<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image13.png"></details>|
|**6**|Betalingen die helemaal zijn verwerkt (dus tegen facturen weggestreept/verbruikt), kunnen in de openstaande posten worden ingezien. Hierbij staat in de nieuwe kolom (zie voorbeeld, de omschrijvingen ervan bevatten de nederlandse en engelse omschrijvingen, slechts 1 ervan zal uiteindelijk worden weergegeven), het soort webshop betaling (mits dit een webshop betaling is geweest ).<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image6.png"></details>|
|**7**|Ten slotte moet in de Florishop settings de onderstaande instelling aan worden gezet.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image7.png"></details>U vindt deze instelling onder de **Configuratie→Webshop Settings**, zoek in dit scherm met de zoekfunctie naar '**PAYMENTEXTENSION**. Open de instelling en zet het aan door de waarde aan te vinken.|
|**8**|Wanneer deze aan staat en in de debiteur is aangegeven dat deze met een prepaid tegoed werkt zul je bij het klikken op de accountnaam op de Florishop de optie krijgen je prepaid wallet in te zien en op te hogen.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image8.png"></details>|
|**9**|Wanneer je deze wallet opent kan de klant zien wat hij nog te besteden heeft, ook kun je hier je prepaid tegoed opwaarderen, het drempelbedrag dat we in de debiteur hebben ingesteld is hier ook terug te zien.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image9.png"></details>|
|**10**|Wanneer je een bedrag intypt waarmee je je tegoed wilt opwaarderen wordt je naar de payment gateway van je betaalprovider verwezen.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image10.png"></details>|

Heeft een debiteur een afwijkende betaalmethode (payment provider)?<br>Dan stelt u deze in op debiteur niveau, volg hiervoor de onderstaande stappen.

|Stap|Uitleg|
|:-:|:--|
|**1**|Open Florisoft en ga naar het constantenscherm, navigeer naar het volgende pad:<br>**Organen→Debiteur gegevens→Debiteur**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image14.png"></details>|
|**2**|Open de desbetreffende debiteur.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image14.png"></details>|
|**3**|Navigeer in de debiteur naar:<br>**Internet→Webshop 2**<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image14.png"></details>|
|**4**|Stel vervolgens in de instelling **Webshop betaaltype** het afwijkende betaaltype in.<details><summary><b>Klik hier voor uw voorbeeld afbeelding</b></summary><img src="Pre Paid Kooplimiet/image14.png"></details>|
|**5**|Mocht uw gewenste betaaltype/payment provider er niet tussen staan laat deze dan aanmaken door Florisoft.|
