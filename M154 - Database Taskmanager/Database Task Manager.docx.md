![](2022-02-11-15-15-38.png)

# Database Task Manager

\[Database Task Manager\] Nieuw in Florisoft: de Database Task Manager.
Deze laat zien hoe druk de Database Server is en voor wie/wat die bezig
is. Dit wordt getoond als een soort Windows Task Manager waarbij je een
overzicht krijgt van de gebruikers die momenteel bezig zijn op de
database server en in hoeverre zij de database belasten. Met handige
grafieken is ook per gebruiker zichtbaar hoe druk zij zijn en waren.
Vraag vandaag nog een demo code aan en bekijk deze nieuwe module.

\[Database Task Manager\] De database task manager is vernieuwd. Je ziet
nu wie de server zwaar belast heeft in de laatste 2 uur. De nieuwe
grafiek aan de onderkant van het scherm toont nu alle gebruikers en hun
belasting op de database server voor de laatste 2 uur. Aangeraden wordt
om dit scherm open te houden op drukke momenten om zo te zien wie de
grootverbruikers zijn. Daarnaast is het scherm nu voor iedereen gratis
te gebruiken tot 1 November 2020. Ook zal bij het openen van het scherm
er een tabel gevuld worden met alle activiteit met nog meer specifieke
details. Deze tabel genaamd adsactivitylog.adt staat in de tempnet map
van de gebruiker. Om het scherm te openen klik je in de Navigator in het
hoofdmenu op Systeem en dan op Database Task Manager

![](.Database%20Task%20Manager.docx/Media/image1.png)

# Tijdelijke actie

Het scherm is tot 01-11-2020 gratis te gebruiken als een tijdelijke
actie en dus te openen zonder module

# Hoe werkt die demo code?

Een demo code kan ik nu maken en is gekoppeld aan een tijd. Als ik om
15:17 een demo code geef dan kan je die demo code gebruiken tot 15:59.
Om 16:00 zal de demo code het niet meer doen. Na invoer van de demo code
opent het database task manager scherm voor een tijd van 30 minuten
waarna deze automatisch weer afsluit. De demo code is ter demo. Indien
de module wordt aangeschaft zal de demo code niet meer gevraagd worden
en kan je het scherm net zolang open houden tot je wilt

# Wie kan zo'n demo code maken?

Sowieso Patrick. Afhankelijk van de animo moet er wellicht een tooltje
voor gemaakt worden. Maar tot die tijd kan ik het. Je kan dat aan mij
vragen via bijv. Slack. Wel denk ik dat het verstandig is om direct met
de klant mee te kijken (of bijv. dit door Johan te laten regelen) en
wellicht zelfs een afspraak te maken om op een bepaalde tijd te kijken
(wellicht als het druk is). Ik kan nu ook al een demo code maken voor
bijv. morgenochtend 8.00 uur. Daarnaast is het natuurlijk niet de
bedoeling dat de klant elke dag gaat vragen om een demo code. Het maken
van deze module kostte een hoop tijd en het is dus de bedoeling dat de
klant de module aanschaft

# Wat is die bovenste &lt;idle&gt; regel?

Als de database Server niks aan het doen is dan is die &lt;idle&gt;.
Deze regel laat dus zien hoeveel de database server voor niemand wat aan
het doen is. In tegenstelling tot de andere regels is het hier juist
goed dat er een hoog percentage staat. Dat betekent dat die veel idle is
en dus vaak niets te doen heeft. Als &lt;idle&gt; echter op bijv. 10%
staat dan is de database server erg druk bezig. Dit wordt ook zichtbaar
aan de achtergrondkleur die automatisch meekleurt met de drukte.

# Hoe worden de percentages bepaald?

Een aantal keer per seconde wordt er aan de Database Server gevraagd wat
die aan het doen is. Op basis van deze resultaten (samples) worden de
percentages bepaald. Als een gebruiker 6 van de 10x wat aan het doen is
dan is deze voor 60% bezig en staat de belasting op 60%. Aangezien de
database server meerdere dingen tegelijk kan doen kan het zijn dat er
meerdere gebruikers voor 100% bezig zijn en er opgeteld meer dan 100%
werk wordt verricht.

# Grafiek aan de onderkant

Aan de onderkant van het scherm loopt een grafiek die voor alle actieve
gebruikers een eigen lijn tekent.  In deze grafiek is eenvoudig te zien
wie de grootverbruikers zijn van de laatste 2 uur. Het is de bedoeling
dat dit scherm wordt aangezet op een client en altijd aan blijft staan
zodat op het moment dat er performance problemen zijn dit scherm
geraadpleegd kan worden en zo het probleem opgelost kan worden (zullen
vooral query draaiende connecties zijn die de database server belasten).

# AdsAcitivitylog.adt

Op het moment dat het scherm geopend wordt wordt er een
adsactivitylog.adt aangemaakt in de tempnet map van de gebruiker. In
deze tabel staat wie wat wanneer aan het doen was op de database server.
Deze tabel kan gebruikt worden om nog gedetailleerder te kijken wie de
grootverbruikers zijn. Indien deze tabel 2GB zal het loggen autom.
worden uitgeschakeld om schijfruimte te besparen. Bij het herstaren van
Florisoft zal deze tabel verwijderd worden.
