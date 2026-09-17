![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Configuring the Florisoft Hub app through MDM

With a Mobile Device Management (MDM) solution, such as Microsoft Intune or SOTI, you can provide the basic settings of the Florisoft Hub app while deploying a managed Android device. This means an employee does not have to enter the Cloud server URL, language, or optionally the user ID manually in the Hub app.

This manual covers **Managed App Configuration** for the Florisoft Hub app on Android. The exact menu names and steps in your MDM depend on the provider.

## When to use this

Use this setup when you want to prepare multiple Android devices centrally, for example PDAs. Create a configuration profile for the Florisoft Hub app in your MDM and assign it to the intended devices or users.

> Use a test group before a broad rollout. In particular, verify the Cloud server URL and user ID on a physical device.

## Before you start

Make sure the following are available:

- an Android Enterprise device managed by your MDM;
- the Florisoft Hub app assigned to the device through your MDM;
- the correct Cloud server URL for the Florisoft environment;
- an administrator who can configure Managed App Configuration for Android apps in your MDM.

The Hub app remains necessary to download, manage, and update Florisoft Apps. Also see the [Hub app installation manual](../App%20Hub/Hub-App%20Installation%20EN.md).

## Create a configuration profile

1. Create a new Android Enterprise configuration profile in your MDM for the **Florisoft Hub app**.
2. Select **Managed App Configuration** or **App configuration**.
3. Add the values below. Use only the values that you want to manage centrally.
4. Assign the profile to a test device or test group and synchronize the device with your MDM.
5. Install or open the Hub app on the device.

| Setting | Value | Example | Visible result |
|---|---|---|---|
| `BaseUrl` | The full URL of the Florisoft Cloud server. | `https://yourenvironment.florisoft.nl` | The Hub app connects to this environment. |
| `Culture` | The required language code for the app. | `NL` | The Hub app uses the specified display language. |
| `ReleaseChannel` | The channel from which the Hub app retrieves app versions. | `latest` | The Hub app uses the specified release channel. |
| `Userid` | The Florisoft user ID for the device. | `SCN001` | The user ID is filled in in the Hub app. |

Your MDM may support device variables. For example, you can populate the user ID from the device name. Use the variable syntax of your own MDM and verify the result on a test device.

Normally use `latest` for `ReleaseChannel`. Use `update` only when Florisoft asks you to use an update or test version.

> A password cannot be provided through Managed App Configuration. Managed App Configuration is intended for these basic settings; users then sign in through the normal Florisoft process.

## Verify on the device

1. Open the Florisoft Hub app after the device has received the configuration profile.
2. Open **Settings** and verify the Cloud server URL, language, and release channel.
3. Verify that the intended user ID has been populated.
4. Open **Catalog** and check that the Hub app can connect to the correct Florisoft environment.

If a value has not been applied, verify that the profile is assigned to the device, the device has synchronized with the MDM, and the Hub app has been opened again. Then check the key and value used in the MDM profile.

## Important limitation

The `Userid` supplied through MDM is currently populated in the Hub app, but is not yet protected against manual changes in every version. Do not use this setting as a security measure or as a hard guarantee that a user cannot switch user IDs. Support for making the field read-only when a central value is supplied is still in development.

This manual describes the configuration of the **Hub app**. Verify for each separate Florisoft App whether it supports Managed App Configuration itself before expecting a changed configuration to be applied immediately.

## Troubleshooting

### The Hub app uses the old Cloud server URL

Synchronize the device with the MDM, close the Hub app completely, and open it again. Then verify that the correct profile is assigned to the device and that `BaseUrl` contains the full URL.

### The language or user ID is missing

Check the spelling and capitalization of `Culture` and `Userid`. Then synchronize the device with the MDM again and reopen the Hub app.

### I do not see any apps in the catalog

First check the Cloud server URL and network connection. Then see [I do not see any apps in the catalog](../App%20Hub/Hub-App%20Installation%20EN.md#i-do-not-see-any-apps-in-the-catalog) in the Hub app installation manual.
