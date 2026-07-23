<img src="../../fslogo.png">

# Florisoft Manual for App Version Management

With the Florisoft Hub App, you manage your Florisoft apps. This includes starting, downloading, updating, and removing apps from the Hub app. This manual guides you on how to maintain and test the apps.

To test the functionalities described in this manual, you need to have a Terminal with the hub app installed. If you have a terminal but the hub app is not yet installed, please read [here](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Hub%20App/Hub-App%20Installatie%20NL.md#installeren-van-de-android-app) on how to install it.

## Versioning

In the Hub app catalog, you will see the version number displayed vertically next to the apps. Florisoft regularly releases new versions for the apps with new features and minor improvements. With this version number, you can easily track which version you have.

*When contacting Florisoft Support regarding any issues with the apps, it's advisable to have these version numbers at hand.*

## Downloading App Updates

The latest app versions are also downloaded when a Florisoft update is performed. When updating the cloud server, the "*Download frontend apps with the Cloud.Server*" setting is enabled for this purpose. In the update environment, these app versions are automatically made available in the *update* release channel.

|Step|Explanation|
|:-:|:--|
|**1**|Florisoft Update cloud server.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/2.png"></details>|
|**2**|Downloading front-end apps.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/1.png"></details>|

When the Hub app detects that a newer app version is available in the configured release channel, it automatically updates the app the next time it is launched. After the update, the version number next to the app will show the newer version.

## Release Channels (Testing New Versions)

To safely test new app versions, use the different release channels in the Hub app. Two release channels are available by default:

- *latest*: the current production version of the apps, matching the production environment;
- *update*: the new app versions associated with the Florisoft Update environment that still need to be tested.

To test a new app version before rolling it out to all users, you need a separate update cloud server in addition to the production cloud server. This allows key users to test the new apps together with the updated cloud server without affecting other users.

### Testing New App Versions

1. Perform the Florisoft update in the update environment. The new app versions are automatically made available in the *update* release channel.
2. Update the cloud server for the update environment. Leave the "*Download frontend apps with the Cloud.Server*" setting enabled.
3. Configure the key users' devices to connect to the update cloud server.
4. On these devices, set the *Release Channel* field in the Hub app to **update**.
5. Restart the Hub app. The apps from the *update* release channel will then be updated automatically.
6. Have the key users test the new app versions.

### Rolling Out New App Versions to Production

Once the new app versions have been tested and approved, follow these steps:

1. Update the production cloud server.
2. Start the Florisoft Update client.
3. Right-click the Florisoft Leaves icon in the Navigator.
4. Select **Versie uitrollen Apps** (Roll Out App Versions) to roll out the tested app versions from *update* to *latest*.
5. Confirm the rollout.

There is no need to manually move the contents of the *update* and *latest* folders. After the rollout, devices using the *latest* release channel are updated automatically when the relevant app is restarted.

> **Please note:** until **Versie uitrollen Apps** has been performed, the *latest* release channel remains on the existing production version. Updating the update environment only changes the versions in the *update* release channel.

### Setting Release Channels in the Apps

*You set the release channel in the Hub app. Follow the steps below to do this:*

|Step|Explanation|
|:-:|:--|
|**1**|In the Hub app, click on the hamburger menu in the top right corner of your screen.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/3.png" height=350px></details>|
|**2**|Then click on the gear icon to go to the settings.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/4.png" height=350px></details>|
|**3**|Enter **update** or **latest** in the *Release Channel* field.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/5.png" height=350px></details>|
|**4**|Click *Save*. You will now be asked to restart the app. Click *Yes*.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/6.png" height=350px></details>|

Use *update* only on test devices that connect to the update cloud server. Use *latest* for regular production devices.
