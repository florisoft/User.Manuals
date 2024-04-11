<img src="../../fslogo.png">

# Florisoft Manual for App Version Management

With the Florisoft Hub App, you manage your Florisoft apps. This includes starting, downloading, updating, and removing apps from the Hub app. This manual guides you on how to maintain and test the apps.

To test the functionalities described in this manual, you need to have a Terminal with the hub app installed. If you have a terminal but the hub app is not yet installed, please read [here](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Hub%20App/Hub-App%20Installatie%20NL.md#installeren-van-de-android-app) on how to install it.

## Versioning

In the Hub app catalog, you will see the version number displayed vertically next to the apps. Florisoft regularly releases new versions for the apps with new features and minor improvements. With this version number, you can easily track which version you have.

*When contacting Florisoft Support regarding any issues with the apps, it's advisable to have these version numbers at hand.*

## Downloading App Updates

The apps are downloaded when downloading a cloud server update. When updating the cloud server, you will also see the setting "*Download frontend apps with the Cloud.Server*" enabled. This setting ensures that after updating the cloud server, new app versions are available in the Hub app catalog.

|Step|Explanation|
|:-:|:--|
|**1**|Florisoft Update cloud server.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/2.png"></details>|
|**2**|Downloading front-end apps.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/1.png"></details>|

When the Hub app detects that a newer app version is available, it will automatically update the app the next time it is launched. After the app is updated, you will see that the version number next to the app has also been changed to the newer version.

## Release Channels (Testing New Versions)

To safely test new app versions, you use the different release channels in the Hub app. By default, there are two release channels: latest (the version from the back office (bin version)) and update (the version from your update client).

Apps are automatically downloaded with the cloud server setting "*Download frontend apps with the Cloud.Server*". You only need to download the cloud server; it does not need to be updated.
<!-- I am not sure anymore if this was entirely automatic. I would like to confirm this.-->
The release channels of these apps can be found in the 'Shared/Florisoft/DataPGS/Binapps/' directory. Here, you will find the *latest* and *update* folders. To roll out the apps from the *update* channel to the *latest* channel, you need to manually move the apps in these folders.

Rolling out newer app versions will be simplified soon, but for now, you do this manually. If you want to roll out the app versions from the update client to the latest (production), move the contents of the '*update*' folder to the '*latest*' folder.

**To easily revert errors, it's advisable to first move the entire contents of the latest folder to a temporary backup folder. Make sure the latest folder is empty before placing the 'update' apps in it.**

### Setting Release Channels in the Apps

*You set the release channel in the Hub app. Follow the steps below to do this:*

|Step|Explanation|
|:-:|:--|
|**1**|In the Hub app, click on the hamburger menu in the top right corner of your screen.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/3.png" height=350px></details>|
|**2**|Then click on the gear icon to go to the settings.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/4.png" height=350px></details>|
|**3**|Next, fill in the *Release Channel* field with '**update**' or '**latest**'.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/5.png" height=350px></details>|
|**4**|Click save. You will now be asked to restart the app. Click yes.<details><summary><b>Click here for your example!</b></summary><img src="Media/App Management/6.png" height=350px></details>|
