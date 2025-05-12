<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Handleiding Client Stock Component (M42)

In deze handleiding wordt uitgelegd hoe je een voorraad koppeling kunt maken. 

## Inhoudsopgave

[Aanmaken voorraad](#aanmaken-voorraad)  
[Aanmaken leverancier](#aanmaken-leverancier)  
[Aanmaken voorraad template](#aanmaken-voorraad-template)

## Aanmaken voorraad

*Voor de eerste stappen in dit proces is het nodig om een nieuwe voorraad aan te maken in Florisoft. Voor de doeleinden van deze handleiding maken we een voorraad verbinding met een rozenkweker.*

## Aanmaken leverancier

*Volg de onderstaande stappen om een leverancier aan te maken die gebruikt wordt om de voorraad connectie op te zetten.*

|Stap|Uitleg|
|:--|:--|
|**1**|Maak een nieuwe leverancier aan in Florisoft en navigeer naar de map **Web service**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".E-trade client component NL/media/image29.png"></details>|
|**2**|Activeer de instelling "**Activeren voor voorraadkoppeling**" <br>en pas de volgende instellingen aan:<br>**Webservice type**: selecteer hier "*ETrade 0.7*"<br>**URL**: de API URL voor het opvragen van de voorraad<br>**UserID**: gebruikers ID voor het inloggen op de API<br>**Wachtwoord**: API account wachtwoord<br>**Binnenkomende voorraad**: zet hier de zojuist aangemaakte voorraad neer.<br><br>**Gebruik hier de door de leverancier aangeleverde gegevens**.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".E-trade client component NL/media/image29.png"></details>|
|**3**|Open de **Web service** map en navigeer naar de sub map **Partijen ophalen**|
|**4**|Zet de instelling "*Altijd volledig aanbod ophalen ipv wijzigingen*" aan<br><Br>Dit hoeft maar een keer gedaan te worden wanneer de verbinding voor de eerste keer ingelezen wordt. Na het inlezen hoort het weer uitgeschakeld te worden.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".E-trade client component NL/media/image30.png"></details>|
|**5**|Navigeer naar de map **Partijen ontvangen**|
|**6**|Verander de onderstaande instellingen:<br>**Standaard artikel groep**: *Zet dit op "Nieuw artikel 000000001"*<br>**Ingelezen informatie opslaan in ExPartij(neemt veel ruimte in)**: *zet dit aan*<br><br>*The laatste optie is niet beschikbaar als het webservice type niet op ETrade 0.7 staat.*|
|**7**|Klik op de **Ok** knop om de gemaakte veranderingen op te slaan. **Heropen** vervolgens de leverancier.|
|**8**|Navigeer naar de map **Webservice→General**|
|**9**|Klik op de knop "**Partijen inlezen**", het inlezen kan uw Florisoft even bevriezen. <Br>**Raak het systeem tijdens het inlezen niet aan!**<Br><br>*Wanneer het systeem klaar is met inlezen zal er een dialoog scherm verschijnen zoals het onderstaande screenshot.*<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".E-trade client component NL/media/image15.png"></details>  |
|**10**|Navigeer naar de map **Web service→Partijen ophalen**<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".E-trade client component NL/media/image32.png"></details>|
|**11**|Zet de instelling "*Altijd volledig aanbod ophalen ipv wijzigingen*" uit.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".E-trade client component NL/media/image32.png"></details>|
|**12**|We kunnen vervolgens checken of de voorraden correct in zijn gelezen door terug te gaan naar de Florisoft navigator en op de "*Voorraad*" knop te drukken.<details><summary><b>Klik hier voor uw voorbeeld afbeelding!</b></summary><img src=".E-trade client component NL/media/image33.png"></details>|