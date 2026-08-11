📘 Beschikbaar in: [English](README_EN.md)

# Florisoft Apps

Deze pagina helpt u de juiste klantdocumentatie voor Florisoft Apps te vinden. De visual toont welke processen door de apps worden ondersteund. Gebruik de gebruikershandleidingen voor installatie, inrichting en dagelijks gebruik.

## Snel naar de juiste documentatie

| Onderwerp | Documentatie |
|---|---|
| Hub-app installeren en apps beheren | [Installatiehandleiding Hub-app](App%20Hub/Hub-App%20Installatie%20NL.md) |
| Licentiesleutels ophalen en beheren | [Handleiding licentiesleutels](App%20Configuration/Licentie%20Keys%20ophalen%20en%20beheren.md) |
| Dagelijks gebruik van Android-apps | [Handleidingen Android-apps](https://github.com/florisoft/User.Manuals/tree/main/CLOUD%20APPLICATIONS/Apps%20Android) |
| Afdrukken vanuit apps | [Handleiding Job Agent](Apps%20Windows/Job-Agent/Handleiding%20Job-Agent%20-%20NL.md) |
| Server Management API | [Documentatie Server Management API](Server%20Management%20API%20%28M212%29) |

## App-structuuroverzicht

<img alt="Overzicht van Florisoft Apps en ondersteunde processen per functioneel domein" src="Media/Florisoft%20App%20structure%20overview.png" />

De visual toont hoe de Florisoft Apps zijn ingedeeld in functionele domeinen, zoals *Core Services*, *Sales*, *Inventory* en *Logistics*. De onderdelen onder iedere app geven aan welke processen worden ondersteund. Raadpleeg de gebruikershandleiding van de betreffende app voor de concrete bediening, configuratie en schermafbeeldingen.

## Licenties

Voor het gebruik van Florisoft Apps is een geldige licentie vereist. De licentiecontrole vindt plaats via de Florisoft-cloudserver. Zonder de benodigde licentie kan een app of specifieke functionaliteit niet beschikbaar zijn.

Nieuwe licenties of wijzigingen in bestaande licenties kunnen via [Florisoft](https://www.florisoft.nl/contact) worden aangevraagd.

> Zie [Licentiesleutels ophalen en beheren](App%20Configuration/Licentie%20Keys%20ophalen%20en%20beheren.md) voor het ophalen en beheren van licentiesleutels.

## Geïntegreerde functionaliteit

Florisoft Apps kunnen functionaliteit van andere apps binnen dezelfde workflow aanbieden. Een gebruiker kan daardoor een taak uitvoeren zonder de aanvullende app afzonderlijk te openen.

Een geïntegreerde functie wordt getoond wanneer de bijbehorende licentie actief is. De aanvullende app hoeft hiervoor niet altijd afzonderlijk op het apparaat te zijn geïnstalleerd. Zonder de benodigde licentie blijft de functie verborgen.

### Voorbeeld: adreslabel afdrukken na de eindcontrole

Na het afronden van een controle in **Final Outbound Check** kan de optie **Print address label** beschikbaar zijn. Deze optie wordt alleen getoond wanneer de klant over een licentie voor **Address Label** beschikt.

## Installatie en updates

De Hub-app wordt gebruikt om beschikbare Florisoft Apps te downloaden, te openen, te verwijderen en bij te werken. De beschikbare apps kunnen verschillen tussen Android en Windows.

> Volg de [installatiehandleiding van de Hub-app](App%20Hub/Hub-App%20Installatie%20NL.md) voor de installatie, het instellen van de cloudserver-URL en het beheren van apps.

## Changelogs en ontwikkelingen

Raadpleeg de actuele overzichten voor wijzigingen, verbeteringen, bugfixes en informatie over Florisoft Apps:

- [Changelog Cloudserver (.NET)](https://www.florisoft.nl/changelog/Changelog_Florisoft_dotnet.html)
- [Changelog Florisoft Apps](https://app.florisoft.nl/apps/latest/changelog.html)
- [Overzicht Florisoft Apps](https://www.florisoft.nl/Solution_information/apps)

## Policies

Instellingen binnen Florisoft Apps worden centraal beheerd met policies in de backoffice. Policy-situaties bepalen hoe een app zich in verschillende contexten gedraagt.

> Zie [Policy Management](../BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md) voor het inrichten en beheren van policies.

## Afdrukken met de Job Agent

Voor het afdrukken vanuit Florisoft Apps is de **Job Agent** nodig. Deze Windows-component stuurt printopdrachten vanuit de apps door naar printers binnen het netwerk.

> Zie de [handleiding Job Agent](Apps%20Windows/Job-Agent/Handleiding%20Job-Agent%20-%20NL.md) voor installatie en configuratie.

## Ondersteuning

Neem bij functionele of technische vragen en foutmeldingen contact op met Florisoft Support via het [ticketportaal](https://helpdesk.florisoft.nl).

> **Let op:** Wordt een app door een consultant ingericht, volg dan tijdens de implementatie de afgesproken communicatielijn. Neem na de overdracht rechtstreeks contact op met Support.

Voor ondersteuning op afstand kan Florisoft Quick Support gebruiken. Bereid een Android-apparaat hiervoor voor met de [handleiding TeamViewer PDA-configuratie](../HARDWARE/PDA%20configuration/Teamviewer%20PDA/Teamviewer%20Zebra%20NL.md). Gebruik voor een niet-Zebra-apparaat de handleiding in dezelfde map.

## Aan de slag

1. Controleer of de Florisoft-cloudserver bereikbaar is.
2. Vraag de benodigde app-licenties aan.
3. Installeer en configureer de Hub-app.
4. Download de benodigde apps via de Hub-app.
5. Volg de gebruikershandleiding van de betreffende app.
6. Configureer waar nodig policies, de Job Agent en Quick Support.
