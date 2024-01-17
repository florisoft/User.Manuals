# API data inladen in Microsoft powerBI

In deze korte handleiding leest u hoe je de Florisoft Server Management API inleest in PowerBI.
Deze handleiding is geschikt voor zowel intern als extern gebruik aangezien  het geen gevoellige gegevens bevat. Het is niet zo dat dit de meest efficiënte/makkelijkste manier van werken is, maar dit is de enige manier dat ik het werkend heb gekregen.

## Veel voorkomende problemen

Aangezien PowerBI een aparte applicatie is van Florisoft leveren wij geen ondersteuning bij het opzetten en troubleshooten van PowerBI. Mocht u hier zelf niet uit komen is het aan te raden om hier een externe partij voor in te schakelen. 

*Florisoft zelf is enkel verantwoordelijk voor het correct functioneren van de cloudserver en management api zelf.*

Hieronder staan wel enkele problemen die we zelf ondervonden hebben en een direct oplossing voor hebben. Mocht dit uw probleem niet oplossen adviseren wij u een externe partij in te schakelen met expertise in PowerBI.

### PowerBI melding referenties bewerken

Dit probleem doet zich voor wanneer u deze onderstaande melding te zien krijgt.
<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image17.png"></details>

|Stap|Uitleg|
|:--|:--|
|**1**|Zorg dat het tabje **Anoniem** geselecteerd is (#1).<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image16.png"></details>|
|**2**|Klik op de dropdown in deze melding en selecteer de optie, <**cloud server**>/api/management/ (#2).<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image16.png"></details>|
|**3**|Klik op verbinden.|


**Voor het PowerBI query script dat gebruikt word in deze handleiding zie <a href="PowerBI Fotos/PowerBI_Query">bijlage</a>**.

*Voor het uitvoeren van de onderstaande stappen is het van belang dat u beschikt over de volgende gegevens*:

* Cloud server URL
* Server API user (gebruikersnaam)
* Server API user wachtwoord

|Stap|Uitleg|
|:--|:--|
|**1**|Open PowerBI Desktop, klik op **Gegevens ophalen** en vervolgens op **Lege query**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image1.png"></details>|
|**2**|Klik op **nieuwe bron**, en vervolgens **web**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image2.png"></details>|
|**3**|Dit opent een nieuw connectievenster, zet de radioknop op **basis** en vul de Cloud server URL in het tekstveld. Zoals: https://bts-apps.florisoftcloud.com/ <details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image3.png"></details>|
|**4**|Dit opent een authenticatievenster, kies in de linkerzijkant voor de optie **Anoniem** en klik op verbind.<br><br>U krijgt nu een scherm te zien met een webweergave, deze kan u weg klikken.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image4.png"></details>|
|**5**|Aan de linkerkant van uw scherm ziet u een Query’s tab staan klik met de rechtermuisknop op **Query1** (u kan deze later een andere naam geven) klik vervolgens op de optie **Geavanceerde editor**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image5.png"></details>|
|**6**|Er opent nu een code editor scherm, copy-paste hier de onderstaande code.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image6.png"></details>|
|**7**|Pas in de code de volgende waarden aan:<br>- **URL HIER**: zet hier de basis cloud server URL neer. Bijv. https://bts-apps.florisoftcloud.com/ zorg ervoor dat het samen zo'n URL vormt: https://bts-apps.florisoftcloud.com/api/management/<br>- **USERNAME**: vul hier de API gebruikersnaam in.<br>- **Password**: vul hier het API gebruikers wachtwoord in.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image7.png"></details>|
|**8**|Als u de gegevens heeft ingevuld drukt u op gereed. Als alles goed gegaan is krijgt u nu de Artikelen tabel te zien.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image8.png"></details>|
|**9**|Klik op de werkende query met de rechtermuisknop en klik op **dupliceren**, u ziet nu een kopie verschijnen van de al werkende query.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image9.png"></details> U ziet nu in de rechterkant een tabel verschijnen, pas in het formule veld de tekst aan tussen de "".<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image10.png"></details>Dit is het endpoint dat aangesproken wordt, de Florisoft API heeft een aantal endpoints deze vindt u in de onderstaande tabel of in [deze handleiding](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20Server%20Management%20API%20-%20NL.md). **Zorg ervoor dat het ingevulde endpoint klopt!** |
|**10**|Na het aanpassen van de endpoint tekst drukt u op enter, dit herlaadt de query en slaat het op.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image11.png"></details|
|**11**|Pas de naam van de query aan door er op de rechtermuisknop te drukken en te kiezen voor **naam wijzigen**.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image12.png"></details|
|**12**|Eenmaal klaar sluit u het Query scherm, u doet dit door op de knop **Sluiten en toepassen** te klikken.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image13.png"></details|
|**13**|U komt nu terug op het PowerBI overzicht scherm, u ziet nu dat de gegevens van de API weer worden ingeladen. Als dit eenmaal gedaan is heeft u de gegevens ingeladen.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image14.png"></details|
|**14**|Om te controleren of de gegevens correct zijn ingelezen kan u een tabel aanmaken of naar de gegevensweergave gaan. De gegevensweergave vindt u aan de linkerkant van het scherm door op het tabel icoon te klikken.<details><summary><b>Klik hier voor uw voorbeeld!</b></summary><img src="PowerBI Fotos/image15.png"></details|

**Als alles goed is gegaan staan de benodigde gegevens nu ingeladen in PowerBI**


```power query language
let
    GetDataFromAPI = (relativePath) =>
        let
            // ENTER BASE URL HERE
            PARAM_API_BASE_URL = "URL HIER!" & "api/Management/",
            Requestbody = "{""version"":""0""}",
            //ENTER USERNAME HERE
            PARAM_USER = "USERNAME!",
            //ENTER PASSWORD HERE
            PARAM_PW = "PASSWORD",
            Bron = Json.Document(
                Web.Contents(
                    PARAM_API_BASE_URL,
                    [
                        RelativePath = relativePath,
                        Content = Text.ToBinary(Requestbody),
                        Headers = 
                        [
                            Authorization = "Basic " & Binary.ToText(Text.ToBinary(PARAM_USER & ":" & PARAM_PW), BinaryEncoding.Base64)
                        ]
                    ]
                )
            ),
            veldnaam = List.First(Record.FieldValues(Bron)),
            tabel = Table.FromRecords(veldnaam)
        in
            tabel,
    //Functie call waarmee API wordt bevraagd met gespecificeerde endpoint.
    output = GetDataFromAPI("Constants/Articles")
in
    output
```
If you want to read in the API with multiple version numbers **warning** this might slow down your dashboard, use cautiously!

```power query language
let
    GetDataFromAPI = (relativePath, versionNumber) =>
        let
            // ENTER BASE URL HERE
            PARAM_API_BASE_URL = "URL HERE!" & "api/Management/",
            Requestbody = "{""version"": """ & Text.From(versionNumber) & """}",
            // ENTER USERNAME HERE
            PARAM_USER = "USERNAME HERE",
            // ENTER PASSWORD HERE
            PARAM_PW = "PASSWORD HERE",
            Bron = Json.Document(
                Web.Contents(
                    PARAM_API_BASE_URL,
                    [
                        RelativePath = relativePath,
                        Content = Text.ToBinary(Requestbody),
                        Headers = 
                        [
                            Authorization = "Basic " & Binary.ToText(Text.ToBinary(PARAM_USER & ":" & PARAM_PW), BinaryEncoding.Base64)
                        ]
                    ]
                )
            ),
            veldnaam = List.First(Record.FieldValues(Bron)),
            tabel = Table.FromRecords(veldnaam)
        in
            tabel,
    
    CollectData = (relativePath) =>
        let
            initial_data = GetDataFromAPI(relativePath, 0),

            GetHighestVersion = (data) =>
            let
                highest_version = List.Max(Table.Column(data, "version"))
            in
                highest_version,

            initial_version = GetHighestVersion(initial_data),

            RecursiveFunction = (data, version) =>
                let
                    temp_data = GetDataFromAPI(relativePath, version),
                    returnData = 
                        if Table.RowCount(temp_data) <> 0 then
                            @RecursiveFunction(Table.Combine({data, temp_data}), GetHighestVersion(temp_data))
                        else
                            data
                in
                    returnData
        in
            RecursiveFunction(initial_data, initial_version),

output = CollectData("Constants/Articles")
in
    output
```

|Endpoints|
|:--|
|Constants/ArticleGroups|
|Constants/Articles|
|Constants/Customers|
|Constants/CustomerCountries|
|Constants/Currencies|
|Constants/Divisions|
|Constants/DivisionMethods|
|Constants/FinancialAdministrations|
|Constants/Growers|
|Constants/Packages|
|Constants/ProductGroups|
|Constants/Sellers|
|Constants/Suppliers|
|Constants/Stocks|
|Constants/Users|
|Constants/Vats|
|SalesHistory|
|PurchaseHistory|
|BandRef|
|BandRefLog|
|CustomerOrders|
|OrderlistAssortment|
|OrderlistComponents|
|Constants/Bands|
|Constants/Carriers|
|Constants/CustomerGroups|
|Constants/CustomerGroupRelations|
|DivisionPriceLog|
|InvoiceCredits|
|OutstandingInvoices|
|PackageHistory|
|Payments|
|Shoplog|
|SalesHistoryCostAndRebates|
|Shipments|
|OrderApprovals|
