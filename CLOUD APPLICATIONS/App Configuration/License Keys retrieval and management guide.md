![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)
# License Keys retrieval and management guide

To use the Florisoft Apps, a valid license is required.  
License verification takes place automatically via the cloud server.  
Without a valid license, the apps will not start or will operate with limited functionality.

Florisoft licenses are obtained per use case, ensuring that only the necessary modules or users receive a license.  
It is therefore important to understand which license types are available and how they can be managed.
## 1. License Types

There are two main types of licenses available within Florisoft:

**User License**
- A user license is specifically linked to a single system user.  
- Only this user can use the license; other users do **not** have access to it.  
- This type of license is suitable when a specific user must always have access to certain features or modules.

**Floating License**
- A floating license can be shared by multiple users.  
- When logging in, the system automatically searches for an available license key.  
- Once a user logs out, the license becomes available again for someone else.  
- This type of license is ideal for environments where multiple employees use Florisoft alternately.

## 2. Automatically Retrieving License Keys

To automatically retrieve license keys, the **timer function _Renew License Keys_ (GETLICENSEKEYS)** must be configured.  
We recommend running this function **once per week** to ensure all licenses remain up to date.

**Recommended configuration:**

- **Timer Function:** `Renew License Keys (GETLICENSEKEYS)`  
- **Frequency:** Once per week  
- **Purpose:** Refresh and synchronize license information  
## 3. Managing Licenses via the _Manage Licenses_ Screen

In the Manage Licenses screen, you can view an overview of all retrieved licenses.  
Here you can verify whether the licenses have been updated correctly and perform manual actions if necessary.

Within this screen, you can:

- **Manually retrieve license keys**, for example when the automatic timer has not yet run or an immediate refresh is required.  
- **Assign user licenses to specific users**, ensuring that these licenses are exclusively used by those users.  

**Note:**  
To access this screen, the policy **`CanManageLicenses`** must be enabled for the user.
