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

The **License Management** screen shows an overview of all retrieved licenses.  
Here you can check whether the licenses have been updated correctly and perform manual actions if necessary.
### Functions in this screen

- **Manually retrieve license keys**
Use the **Refresh license keys** button to manually renew licenses.  
    This is useful when the automatic timer has not yet run or when immediate renewal is required.
    
- **Assign licenses to users**  
    You can **assign user licenses to specific users**.  
    This allows certain licenses to be used exclusively by that user.
    
- **View claim information**  
    This screen now shows:
    
    - Which **system user** claimed the license.
        
    - On which **device** the license was claimed.
        
    - The **time of claiming**.
        
    - The **last activity** of the license in question.
        
    
    This allows you to easily check whether a license is actively being used and on which system it is registered.
#### Access rights

To access this screen, the **policy** `CanManageLicenses` must be enabled for the user.  
Without this policy, the screen is not accessible.


