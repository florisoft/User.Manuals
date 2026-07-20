![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)
# License Keys retrieval and management guide

To use the Florisoft Apps, a valid license is required.  
License verification takes place automatically via the cloud server.  
Without a valid license, the apps will not start or will operate with limited functionality.

Florisoft licenses are obtained per use case, ensuring that only the necessary modules or users receive a license.  
It is therefore important to understand which license types are available and how these can be managed.

> Note: to manage licenses via the **Manage Licenses** screen, the user must first have the `CanManageLicenses` policy enabled. Without this policy, the screen is not accessible.

---

## 1. License Types

There are two main types of licenses available within Florisoft:

### **User License**

- A user license is specifically linked to one system user.
    
- Only this user can use the license; other users do **not** have access to it.
    
- This type of license is suitable when a specific user must always have access to certain functionality or modules.
    

### **Floating License**

- A floating license can be shared by multiple users.
    
- When logging in, the system automatically searches for a free license key.
    
- Once a user logs out, the license becomes available again for someone else.
    
- This type of license is ideal for environments where multiple employees alternately use Florisoft.
    

---

## 2. Managing Licenses via the _Manage Licenses_ Screen

### Access Rights

To access this screen, the user must have the **policy** `CanManageLicenses` enabled. Without this policy, the screen will not be accessible.

To open the license overview, go to the following location in **Florisoft.NET Navigator**:
**System → Manage Licenses**

The **App License Feature Overview** screen displays the available Florisoft features and their corresponding license status.

<img src="Media/Licentie Keys ophalen en beheren/app-licentiefeatureoverzicht.png" alt="App License Feature Overview showing the feature structure, license statuses and license key details" />

### Screen Layout

The summary at the top displays:

- **Licensable:** the number of features for which a license can be used.
- **Actively licensed:** the number of features with an active license.
- **Missing:** the number of licensable features for which no active license was found.

The license features are displayed hierarchically on the left. The color and status of a feature indicate whether it is fully, partially or not licensed.

### Feature Details and License Keys

Select a feature on the left to view its license information on the right. This includes its validity, status, assigned user and any claim information.

### Assigning a License to a User

Only a **user license** can be assigned to a specific system user.

Select the required feature and click the **User ID** column for the relevant user license. Press **F3** to search for and select a system user.

An empty, editable user ID is indicated by a different background color. This value cannot be changed for other license types.

### Refreshing the Information

The screen contains two different refresh functions:

- **Refresh:** reloads the current license and claim information displayed on the screen.
- **Refresh license keys:** retrieves the latest license keys and synchronizes them with Florisoft.

Use **Refresh license keys** when new or changed licenses are not yet visible in the overview. If necessary, use **Refresh** afterwards to display the latest information.

---

## 3. Automatically Retrieving License Keys

To automatically retrieve license keys, the **timer function _Renew License Keys_ (GETLICENSEKEYS)** must be configured.  
We recommend running this function **once per week** so that all licenses remain up to date.

**Recommended Configuration:**

- **Timer Function:** `Renew License Keys (GETLICENSEKEYS)`
    
- **Frequency:** Once per week
    
- **Purpose:** Renew and synchronize license data

