📘 Available in: [Nederlands](README.md)

# Florisoft Apps

This page helps you find the right customer documentation for Florisoft Apps. The visual shows which processes are supported by the apps. Use the user manuals for installation, configuration, and day-to-day use.

## Find the right documentation

| Subject | Documentation |
|---|---|
| Installing the Hub app and managing apps | [Hub app installation manual](App%20Hub/Hub-App%20Installation%20EN.md) |
| Retrieving and managing license keys | [License key management guide](App%20Configuration/License%20Keys%20retrieval%20and%20management%20guide.md) |
| Day-to-day use of Android apps | [Android app manuals](https://github.com/florisoft/User.Manuals/tree/main/CLOUD%20APPLICATIONS/Apps%20Android) |
| Printing from apps | [Job Agent manual](Apps%20Windows/Job-Agent/Manual%20Job-Agent%20-%20EN.md) |
| Server Management API | [Server Management API documentation](Server%20Management%20API%20%28M212%29) |

## App structure overview

<img alt="Overview of Florisoft Apps and supported processes by functional domain" src="Media/Florisoft%20App%20structure%20overview.png" />

The visual shows how Florisoft Apps are organized into functional domains, such as *Core Services*, *Sales*, *Inventory*, and *Logistics*. The items listed under each app indicate which processes are supported. Consult the user manual for the relevant app for operating instructions, configuration details, and screenshots.

## Licenses

A valid license is required to use Florisoft Apps. License verification takes place through the Florisoft cloud server. Without the required license, an app or specific functionality may not be available.

New licenses or changes to existing licenses can be requested through [Florisoft](https://www.florisoft.nl/contact).

> See [Retrieving and managing license keys](App%20Configuration/License%20Keys%20retrieval%20and%20management%20guide.md) for instructions on retrieving and managing license keys.

## Integrated functionality

Florisoft Apps can provide functionality from other apps within the same workflow. This allows a user to perform a task without opening the additional app separately.

An integrated feature is shown when the corresponding license is active. The additional app does not always need to be installed separately on the device. Without the required license, the feature remains hidden.

### Example: printing an address label after the final check

After completing a check in **Final Outbound Check**, the **Print address label** option may be available. This option is only shown when the customer has an **Address Label** license.

## Installation and updates

Use the Hub app to download, open, remove, and update available Florisoft Apps. The available apps may differ between Android and Windows.

> Follow the [Hub app installation manual](App%20Hub/Hub-App%20Installation%20EN.md) to install the Hub app, configure the cloud server URL, and manage apps.

## Changelogs and developments

Consult the current overviews for changes, improvements, bug fixes, and information about Florisoft Apps:

- [Cloudserver (.NET) changelog](https://www.florisoft.nl/changelog/Changelog_Florisoft_dotnet.html)
- [Florisoft Apps changelog](https://app.florisoft.nl/apps/latest/changelog.html)
- [Florisoft Apps overview](https://www.florisoft.nl/Solution_information/apps)

## Policies

Settings within Florisoft Apps are managed centrally through policies in the backoffice. Policy scenarios determine how an app behaves in different contexts.

> See [Policy Management](../BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md) for instructions on configuring and managing policies.

## Printing with the Job Agent

The **Job Agent** is required for printing from Florisoft Apps. This Windows component forwards print jobs from the apps to printers on the network.

> See the [Job Agent manual](Apps%20Windows/Job-Agent/Manual%20Job-Agent%20-%20EN.md) for installation and configuration instructions.

## Support

For functional or technical questions and error messages, contact Florisoft Support through the [ticket portal](https://helpdesk.florisoft.nl).

> **Note:** If a consultant is configuring an app, follow the agreed communication route during implementation. Contact Support directly after the handover.

For remote assistance, Florisoft may use Quick Support. Prepare an Android device by following the [TeamViewer PDA configuration manual](../HARDWARE/PDA%20configuration/Teamviewer%20PDA/Teamviewer%20Zebra%20EN.md). For a non-Zebra device, use the manual in the same folder.

## Getting started

1. Check that the Florisoft cloud server is accessible.
2. Request the required app licenses.
3. Install and configure the Hub app.
4. Download the required apps through the Hub app.
5. Follow the user manual for the relevant app.
6. Configure policies, the Job Agent, and Quick Support where required.
