![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Technical operation – Taking or changing parcel photos.

When a user takes a parcel photo in the Inventory app, the image goes through several steps before becoming visible in the app. Below you will first find a complete overview, followed by a detailed explanation of each step.

> ℹ️  To use this function, the policy `Apps_Inventory_StockCounting_StockItemDetailSettings_AllowManageStockItemPhotos` must be enabled. 
## 1. Process Overview

```
User takes photo
        ↓
Inventory app displays the status ‘Being processed’
        ↓
Photo is stored in Picture folder (PICS/StockItems)
        ↓
ExfotoUrl is updated
        ↓
Timer process creates LiveFoto and a historical photo (used for formats & reuse)
        ↓
Webshop processes and caches the photo (± 10 min)
        ↓
Inventory app displays the photo and removes the processing status
```

---

## 2. Taking the Photo

The user takes a photo **in the Stock Item Detail page**.  
After taking the photo:

- the app immediately displays the status **Being processed** until the photo is available via the webshop,

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
This timer process is called **Foto Download X Fotos (FOTOEXTDOWNLOADX)**.

### What does the timer process do?

1. The photo is stored in the Picture folder (`PICS`).
    
2. The photo is also **registered in the FotoDown table**.
    
3. The **Foto Download X Fotos** timer process detects that a new photo is available.
    
4. The process creates a **LiveFoto** (the Florisoft-format version of the photo).
    
5. At the same time, a **historical photo** is created so the same photo can be reused later.
    
6. The LiveFoto is **linked to the parcel**.
    
7. The LiveFoto is stored in **four formats**, so that it displays correctly across apps, webshop, and backoffice.
    

### Important Notes

- The **webshop does not require the LiveFoto** to show the photo; the `ExfotoUrl` is sufficient.
    
- The LiveFoto process is primarily for **format uniformity and internal applications**.
    
- The LiveFoto and the historical photo do **not** affect when the photo becomes visible in the app.
    

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

Until the webshop has processed the photo, the Inventory app displays the status **Being processed** for the parcel. This confirms that the photo has been received but is not yet available via the webshop.

Once the webshop has processed and synchronized the photo, the status disappears and the new parcel photo becomes visible. There is no need to take the photo again while it is being processed.
