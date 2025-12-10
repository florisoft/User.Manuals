![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Technical operation – Taking or changing parcel photos.

When a user takes a parcel photo in the Inventory app, the image goes through several steps before becoming visible in the app. Below you will first find a complete overview, followed by a detailed explanation of each step.

---

## 1. Process Overview

```
User takes photo
        ↓
Photo is stored in Picture folder (PICS/StockItems)
        ↓
ExfotoUrl is updated
        ↓
Timer process creates LiveFoto (optional, used for formats & internal reuse)
        ↓
Webshop processes and caches the photo (± 10 min)
        ↓
Inventory app displays the photo via the webshop
```

---

## 2. Taking the Photo

The user takes a photo **in the Stock Item Detail page**.  
After taking the photo:

- it is immediately stored as the **ExfotoUrl** of the parcel (the reference to the photo),
    
- it replaces any previously existing batch photo.
    

---

## 3. Where the Photo Is Stored

The photo is stored in the **Picture folder**.

- `PICS` is a system setting that determines **where photos are stored**.
    
- This folder is also used by the **webshop**.
    

All photos taken from within the Inventory app end up in:

```
PICS/StockItems
```

A common example:

```
C:\inetpub\wwwroot\Pictures\StockItems
```

This directory is managed automatically by the system.

---

## 4. How the Photo Gets an Online Address

The webshop uses the **PICTUREURL** setting to generate an online link for each photo.

Example of a photo URL:

```
https://bodemoshop.onflorisoft.cloud/pictures/StockItems/8112_8138.jpeg
```

This URL is stored in `ExfotoUrl` so Florisoft knows where the photo can be retrieved.

---

## 5. The Role of the Timer Process (LiveFoto)

In addition to webshop processing, a **timer process** exists that prepares photos for internal Florisoft usage.  
This process is called **FotoDown**.

### What does the timer process do?

1. The photo is stored in the Picture folder (`PICS`).
    
2. The photo is also **registered in the FotoDown table**.
    
3. The **FotoDown** timer process detects that a new photo is available.
    
4. The process creates a **LiveFoto** (the Florisoft-format version of the photo).
    
5. The LiveFoto is **linked to the parcel**.
    
6. The LiveFoto is stored in **four formats**, so that it displays correctly across apps, webshop, and backoffice.
    

### Important Notes

- The **webshop does not require the LiveFoto** to show the photo; the `ExfotoUrl` is sufficient.
    
- The LiveFoto process is primarily for **format uniformity and internal applications**.
    
- The LiveFoto does **not** affect when the photo becomes visible in the app.
    

---

## 6. When Does the Photo Become Visible in the App?

A photo becomes **visible in the Inventory app once the webshop has processed it**.  
The app **always retrieves photos from the webshop**, never directly from the Picture folder.

A photo becomes visible when:

1. the photo exists in **PICS/StockItems**,
    
2. the webshop exposes the photo via the public photo URL,
    
3. the webshop has detected and processed the photo (caching / synchronization),
    
4. the Inventory app can retrieve the photo from the webshop.
    

Average processing time:

> **± 10 minutes**

Until the webshop finishes processing, it may seem like the photo “was not saved”, while in reality the webshop simply has not made it available yet.