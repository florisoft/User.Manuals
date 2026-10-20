![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Florisoft Android-apps configureren via MDM

Met een Mobile Device Management-oplossing (MDM), zoals Microsoft Intune of SOTI, kunt u de basisinstellingen van een Florisoft Android-app al tijdens de uitrol van een beheerd Android-apparaat meegeven. Hierdoor hoeft een medewerker de Cloud-server-URL, taal en eventueel de gebruikers-ID niet handmatig in de app in te vullen.

Deze handleiding gaat over **Managed App Configuration** voor Florisoft Android-apps. Maak voor iedere app die u centraal wilt beheren een afzonderlijk configuratieprofiel. De exacte namen van menu's en stappen in uw MDM verschillen per leverancier.

## Wanneer gebruikt u dit

Gebruik deze inrichting wanneer u meerdere Android-apparaten centraal wilt voorbereiden, bijvoorbeeld PDA's. Maak hiervoor in uw MDM per Florisoft Android-app een configuratieprofiel en wijs dit toe aan de beoogde apparaten of gebruikers.

> Gebruik een testgroep voordat u een profiel breed uitrolt. Controleer met name de Cloud-server-URL en de gebruikers-ID op een fysiek apparaat.

## Voor u begint

Zorg dat het volgende beschikbaar is:

- een Android Enterprise-apparaat dat door uw MDM wordt beheerd;
- de Florisoft Android-app die via uw MDM aan het apparaat is toegewezen;
- de juiste Cloud-server-URL van de Florisoft-omgeving;
- een beheerder die in uw MDM Managed App Configuration voor Android-apps kan instellen.

De Hub-app blijft nodig om Florisoft Apps te downloaden, te beheren en bij te werken. Zie voor de inrichting van de Hub-app ook de [installatiehandleiding van de Hub-app](../App%20Hub/Hub-App%20Installatie%20NL.md).

## Configuratieprofiel maken

1. Maak in uw MDM een nieuw Android Enterprise-configuratieprofiel voor de Florisoft Android-app die u wilt configureren.
2. Kies de optie voor **Managed App Configuration** of **App configuration**.
3. Voeg de onderstaande waarden toe. Gebruik alleen de waarden die u centraal wilt beheren.
4. Wijs het profiel toe aan een testapparaat of testgroep en synchroniseer het apparaat met uw MDM.
5. Installeer of open de geconfigureerde app op het apparaat.

Een configuratieprofiel geldt alleen voor de geselecteerde app. Wilt u meerdere Florisoft Apps met MDM beheren, maak dan per app een profiel met de gewenste waarden.

| Instelling | Waarde | Voorbeeld | Zichtbaar resultaat |
|---|---|---|---|
| `BaseUrl` | De volledige URL van de Florisoft Cloud-server. | `https://uwomgeving.florisoft.nl` | De app maakt verbinding met deze omgeving. |
| `Culture` | De gewenste taalcode voor de app. | `NL` | De app gebruikt de opgegeven weergavetaal. |
| `ReleaseChannel` | Het kanaal waaruit de app appversies ophaalt. | `latest` | De app gebruikt het opgegeven releasekanaal. |
| `Userid` | De Florisoft-gebruikers-ID voor het apparaat. | `SCN001` | De gebruikers-ID wordt in de app ingevuld. |

Uw MDM kan apparaatvariabelen ondersteunen. U kunt bijvoorbeeld een apparaatnaam als gebruikers-ID laten invullen. Gebruik daarvoor de variabelenotatie van uw eigen MDM en controleer het resultaat op een testapparaat.

Gebruik voor `ReleaseChannel` normaal `latest`. Gebruik `update` alleen wanneer Florisoft u vraagt een update- of testversie te gebruiken.

> Een wachtwoord kan niet via Managed App Configuration worden meegegeven. Managed App Configuration is bedoeld voor deze basisinstellingen; gebruikers loggen daarna volgens het normale Florisoft-proces in.

## Controleren op het apparaat

1. Open de Florisoft Android-app nadat het apparaat het configuratieprofiel heeft ontvangen.
2. Open **Settings** en controleer de Cloud-server-URL, taal en het releasekanaal.
3. Controleer of de beoogde gebruikers-ID is ingevuld.
4. Controleer of de app verbinding kan maken met de juiste Florisoft-omgeving.

Voor de Hub-app kunt u daarnaast **Catalog** openen om te controleren of de catalogus wordt geladen.

Wanneer een waarde niet is overgenomen, controleer dan of het profiel aan het apparaat is toegewezen, het apparaat met het MDM heeft gesynchroniseerd en de app opnieuw is geopend. Controleer daarna de gebruikte sleutel en waarde in het MDM-profiel.

## Belangrijke beperking

De via MDM aangeleverde `Userid` wordt als appinstelling ingevuld, maar is nog niet in alle versies tegen handmatig wijzigen beschermd. Gebruik deze instelling daarom niet als beveiligingsmaatregel of als harde garantie dat een gebruiker niet kan wisselen van gebruikers-ID. De ondersteuning om het veld bij een centraal aangeleverde waarde alleen-lezen te maken is nog in ontwikkeling.

Managed App Configuration wordt ondersteund door alle Florisoft Android-apps. Maak bij gebruik van meerdere apps altijd een afzonderlijk profiel per app.

## Problemen oplossen

### De app gebruikt de oude Cloud-server-URL

Synchroniseer het apparaat met het MDM, sluit de app volledig en open deze opnieuw. Controleer vervolgens of het juiste profiel aan het apparaat is toegewezen en of `BaseUrl` de volledige URL bevat.

### De taal of gebruikers-ID ontbreekt

Controleer de spelling en hoofdletters van `Culture` en `Userid`. Laat het apparaat daarna opnieuw met het MDM synchroniseren en open de Hub-app opnieuw.

### Ik zie geen apps in de catalogus

Controleer eerst de Cloud-server-URL en de netwerkverbinding. Zie daarna de sectie [Ik zie geen apps in de catalogus](../App%20Hub/Hub-App%20Installatie%20NL.md#ik-zie-geen-apps-in-de-catalogus) in de installatiehandleiding van de Hub-app.
