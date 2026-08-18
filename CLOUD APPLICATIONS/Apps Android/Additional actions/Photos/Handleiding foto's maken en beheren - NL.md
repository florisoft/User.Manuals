![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Handleiding foto's maken en beheren

In verschillende Florisoft-apps kunt u vanuit **Additionele acties** foto's aan de actieve order, opdracht of sessie toevoegen. De fotoactie is alleen zichtbaar wanneer deze voor de betreffende usecase is ingericht.

## Foto's toevoegen

1. Open **Additionele acties** vanuit de actieve werkwijze.
2. Selecteer **Foto's**.
3. Kies **Bevestig** wanneer dit wordt gevraagd.
4. Maak een foto of voeg een bestaande foto toe.
5. Controleer de geselecteerde foto's en kies **Opslaan**.

Na een geslaagde opslag toont Florisoft een bevestiging. De foto's blijven gekoppeld aan de order, opdracht of sessie waarin ze zijn vastgelegd. Wanneer u de fotoactie opnieuw opent, worden eerder opgeslagen foto's getoond als de betreffende usecase dit ondersteunt.

## Policies instellen

De fotoactie gebruikt binnen iedere usecase dezelfde policynamen. Alleen het bovenliggende policy-pad verschilt per app of usecase.

| Policy | Verplicht | Werking |
| --- | --- | --- |
| `Addons_EnableAddons` | Ja | Voeg de waarde `Photos` toe om de fotoactie beschikbaar te maken. |
| `Addons_PhotoStorageDirectoryPath` | Nee | Gebruik deze policy alleen voor een afwijkende opslaglocatie. Zonder waarde worden de foto's opgeslagen in de archiefmap van de Florisoft-datafolder, in de map van de betreffende usecase. |
| `Addons_PhotoStorageRetentionDays` | Nee | Bepaalt na hoeveel dagen opgeslagen appfoto's door het timerproces mogen worden verwijderd. Bij geen waarde of een effectieve waarde van `0` worden voor die usecase geen foto's op basis van deze bewaartermijn verwijderd. |

Gebruik bij een afwijkende opslaglocatie een map die bereikbaar is voor zowel de Florisoft-cloudserver als de Backoffice. De cloudserver heeft lees- en schrijfrechten nodig; Backofficegebruikers die de foto's openen hebben leesrechten nodig. Stel een bewaartermijn in die past bij de afspraken van de organisatie en de beschikbare schijfruimte.

## Timer voor het opschonen instellen

De policy voor de bewaartermijn verwijdert zelf geen bestanden. Hiervoor moet het timerproces **App foto's opschonen** actief zijn. Dit proces controleert de fotomappen van de ondersteunde usecases, verwijdert JPG- en JPEG-bestanden waarvan de laatste wijzigingsdatum ouder is dan de ingestelde bewaartermijn en verwijdert daarna lege submappen.

1. Meld aan als de timergebruiker of selecteer deze gebruiker bij de timerinstellingen.
2. Klik in de Florisoft Navigator met de rechtermuisknop op het timericoon en open **Timer Settings**.
3. Zoek het proces **App foto's opschonen**. De technische procesnaam is `CLEANAPPPHOTOS`.
4. Activeer het proces en schakel **Dit script activeren bij het starten van de timer** in.
5. Stel een passend tijdschema in. Een dagelijkse uitvoering buiten de drukke gebruiksuren is doorgaans voldoende.
6. Sla de instellingen op en herstart de timergebruiker zodat de gewijzigde planning actief wordt.

Controleer na de eerste uitvoering dat foto's binnen de bewaartermijn behouden blijven en alleen oudere foto's worden verwijderd. Gebruik niet **Tabellen opschonen** voor deze appfotobestanden; dat is een ander opruimproces.

## Als een foto niet wordt opgeslagen

Bij een fout toont Florisoft dat de foto niet is opgeslagen. Controleer de verbinding en, bij een afwijkende opslaglocatie, de bereikbaarheid en toegangsrechten van de map. Blijft de fout optreden, neem dan contact op met de beheerder of Florisoft Support en vermeld vanuit welke app en order, opdracht of sessie de foto is toegevoegd.

## Foto's later bekijken

Waar opgeslagen foto's later kunnen worden bekeken, verschilt per usecase. Raadpleeg daarom de handleiding van de app waarin de foto's zijn vastgelegd.
