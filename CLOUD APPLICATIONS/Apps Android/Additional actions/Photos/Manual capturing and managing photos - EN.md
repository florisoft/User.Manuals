![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual for capturing and managing photos

Several Florisoft apps allow you to add photos to the active order, assignment, or session through **Additional Actions**. The photo action is shown only when it has been configured for the relevant use case.

## Add photos

1. Open **Additional Actions** from the active workflow.
2. Select **Photos**.
3. Choose **Confirm** when prompted.
4. Capture a photo or add an existing photo.
5. Check the selected photos and choose **Save**.

After a successful save, Florisoft shows a confirmation. The photos remain linked to the order, assignment, or session in which they were captured. When you open the photo action again, previously saved photos are shown if the relevant use case supports this.

## Configure the policies

The photo action uses the same policy names in every use case. Only the parent policy path differs per app or use case.

| Policy | Required | Effect |
| --- | --- | --- |
| `Addons_EnableAddons` | Yes | Add the value `Photos` to make the photo action available. |
| `Addons_PhotoStorageDirectoryPath` | No | Configure this policy only for an alternative storage location. Without a value, photos are stored in the archive directory of the Florisoft data folder, under the directory for the relevant use case. |
| `Addons_PhotoStorageRetentionDays` | No | Determines after how many days stored app photos may be removed by the timer process. When no value is supplied or the effective value is `0`, photos for that use case are not removed based on this retention setting. |

For an alternative storage location, use a directory that both the Florisoft cloud server and the Backoffice can access. The cloud server requires read and write access; Backoffice users who open the photos require read access. Configure a retention period that matches the organisation's agreements and available disk space.

## Configure the cleanup timer

The retention policy does not delete files by itself. The **Clean app photos** timer process must be active. This process checks the photo directories for the supported use cases, removes JPG and JPEG files whose last modified date is older than the configured retention period, and then removes empty subdirectories.

1. Sign in as the timer user or select that user in the timer settings.
2. In the Florisoft Navigator, right-click the timer icon and open **Timer Settings**.
3. Find the **Clean app photos** process. Its technical process name is `CLEANAPPPHOTOS`.
4. Activate the process and enable **Activate this script when starting the timer**.
5. Configure an appropriate schedule. Running the process once a day outside peak usage hours is usually sufficient.
6. Save the settings and restart the timer user so the updated schedule becomes active.

After the first run, verify that photos within the retention period remain available and that only older photos are removed. Do not use **Clean Up Tables** for these app photo files; that is a different cleanup process.

## If a photo is not saved

If an error occurs, Florisoft indicates that the photo was not saved. Check the connection and, when an alternative storage location is used, the directory's accessibility and permissions. If the error continues, contact the administrator or Florisoft Support and state the app and the order, assignment, or session from which the photo was added.

## View photos later

The location where saved photos can be viewed later differs per use case. Consult the manual for the app in which the photos were captured.
