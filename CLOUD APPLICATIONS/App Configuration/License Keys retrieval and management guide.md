![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)
# License Keys retrieval and management guide

To use the Florisoft Apps, a valid license is required.  
License verification takes place automatically via the cloud server.  
Without a valid license, the apps will not start or will operate with limited functionality.

Florisoft licenses are obtained per use case, ensuring that only the necessary modules or users receive a license.  
It is therefore important to understand which license types are available and how these can be managed.

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

To open the **License Management** screen, go to:  
**System → Manage Licenses** in **Florisoft.NET Navigator**.

<img width="1001" height="297" alt="image" src="https://github.com/user-attachments/assets/7c9cb1f1-a6d4-4676-980a-0499d4940d19" />

In the **License Management** screen you will see an overview of all retrieved licenses.  
Here, you can check whether the licenses are up to date and perform manual actions if necessary.

### Functions in this screen

<img width="1920" height="1033" alt="afbeelding" src="https://github.com/user-attachments/assets/5f60e6a3-d1ce-412b-a00f-f5c74424cbd7" />

- **Manually retrieve license keys**  
    Use the **Refresh license keys** button to manually renew licenses.  
    This is useful when the automatic timer has not yet run or when immediate renewal is required.
    
- **Assign licenses to users**  
    You can **assign user licenses to specific users**.  
    This ensures that certain licenses can be used exclusively by that user.
    
- **View claim information**  
    This screen now displays:
    
    - Which **system user** has claimed the license
        
    - On which **device** the license has been claimed
        
    - The **time of claiming**
        
    - The **last activity** of the corresponding license
        
    This allows you to easily verify whether a license is actively used and on which system it is registered.
  
- **Refresh the screen**
    Using the **Refresh** button, the screen can be manually refreshed so that active licenses are immediately displayed with the most up-to-date claim and activity information.

#### Access Rights

To access this screen, the user must have the **policy** `CanManageLicenses` enabled.  
Without this policy, the screen will not be accessible.

---

## 3. Automatically Retrieving License Keys

To automatically retrieve license keys, the **timer function _Renew License Keys_ (GETLICENSEKEYS)** must be configured.  
We recommend running this function **once per week** so that all licenses remain up to date.

**Recommended Configuration:**

- **Timer Function:** `Renew License Keys (GETLICENSEKEYS)`
    
- **Frequency:** Once per week
    
- **Purpose:** Renew and synchronize license data

