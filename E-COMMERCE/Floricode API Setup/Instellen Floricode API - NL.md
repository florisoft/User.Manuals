<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Handleiding Instellen Floricode API

In deze handleiding leer je hoe je je Floricode API abbonement koppelt aan Florisoft. 

## Benodigdheden

Om de onderstaande stappen te volgen zorg is het belangrijk dat je over de volgende dingen beschikt:

- Floricode API abbonement
- Floricode API logingegevens (gebruikersnaam en wachtwoord)

Volg de onderstaande stappen:

|Stap|Uitleg|
|:-:|:--|
|**1**|In uw florisoft navigator, klikt u op onderhoud en vervolgens op setup systeem.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/13.jpg"></details>|
|**2**|Klik vervolgens op de map **Geavanceerd** en vul de toegangscode in.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/13.jpg"></details>|
|**3**|Klik in de tabel en druk op de **F3** toets om te zoeken naar de benodigde instellingen:<br><br>**FLORICODECLIENTID**: je floricode gebruikersnaam <Br>**FLORICODECLIENTSECRET**: je floricode wachtwoord.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/14.png"></details>|
|**4**|Vul de instellingen met de bijhorende waarden.|
|**5**|Sluit het setup scherm.|
|**6**|Open vervolgens de timer settings (doe dit op het TIMER account), dit doe je door met de rechtermuisknop op de timer knop te drukken, en vervolgens te klikken op *Timer settings*.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/15.png"></details>|
|**7**|Gebruik de zoekfunctie om te zoeken naar het timer proces:<br>**IMPORTVBNAPI**|
|**8**|Activeer dit timer proces en zorg ervoor dat dit op regelematig tijdsschema draait.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/image-1.png"></details>|
|**9**|Druk op de knop **Eenmalig uitvoeren** om de certificaten op te halen. |
|**13**|**Let op**! Dit werkt alleen als er een EAN code ingevuld staat bij de kweker, deze kunnen dan vervolgens gevonden in kwekerstabel de certificaten gevonden kunnen worden.|
|**14**|Open vervolgens weer de systeem setup vanuit de navigator (**onderhoud→setup systeem**) ga dan naar het mapje **geavanceerd**. Zoek dan vervolgens naar de instelling **KWEKEREANVULLENINLEZENEKT**, zet deze op **True**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/13.jpg"></details> |
|**15**|Open vervolgens weer het constantenscherm en navigeer naar het volgende pad:<br>**Systeem→Users→Policy Beheer**, dit opent het policy scherm. <br>Lees in [deze handleiding](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20API%20Policies%20NL.md) hoe je policies aanmaakt en aanpast.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/16.png"></details> |
|**16**|Zoek naar instelling **Backoffice_Sales_Stock_GrowerCertificate_StocksToCheck**, met deze policy stel je in welke vooraden de geldigheid van certificaten gecontroleerd moeten worden.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/17.png"></details>|
|**17**|De instelling **Backoffice_Sales_Stock_GrowerCertificate_UsersToMailAfterCheck**, dit geeft aan welke Florisoft gebruikers gemaild moeten worden nadat ene certificaat weggehaald wordt van een partij.<Br><br>**Let op!** Dit vereist wel dat er een emailadres ingesteld staat bij de relevante user.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/17.png"></details>||
|**18**|**Backoffice_Sales_Stock_ValidGrowerCertificate** :  Omdat een kweker meerdere certificaten kan hebben maar we er hiervan maar 1 kunnen tonen in de kolom 'Geldig Certificaat' in de voorraad kunnen we in deze policy een hierarchie aangeven voor welk certificaat moet worden getoond.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/17.png"></details>|
|**19**|Zet de instelling **IniSettings_FSSystem_SETUP_ValideerS97Certificaat** aan.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/18.png"></details>||
|**20**|Zorg ervoor dat het overkoepelende policy object gekoppeld staat aan de timer gebruiker. :warning:<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/19.png"></details>|
|**21**|Open op de florisoft timer gebruiker nogmaals de timer instellingen (rechtermuisknop op het timericoon), |
|**22**|Gebruik de zoekfunctie om te zoeken naar het timerproces **KwekerCertificaatPartijControle**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/15.png"></details>||
|**23**|Stel dit timerproces in zodat het met enige regelmaat uitgevoerd wordt.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/20.png"></details>||
|**10**|Certificaten zijn nu terug te vinden in uw systeem. Open het constanten scherm en navigeer naar het volgende pad:<Br>**Organen→Kwekersgegevens→Kwekers**<br><br>Open een kweker, en druk op de knop **certifcaten**. (rechtsonderin)|
|**11**|Ook zijn de certificaten in te zien in de voorraad, open een voorraad (in het voorraadscherm). Klik met de rechtermuisknop op een voorraadpartij en klik op de optie **Kweker Certificaten**<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/image-2.png"></details>|
|**12**|In deze schermen zie je de certificaat informatie waaronder het ID, en wanneer het certificaat geldig is. Dit kun je ook terug laten komen in factuur layouts. <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="Media/NL/image-3.png"></details>|