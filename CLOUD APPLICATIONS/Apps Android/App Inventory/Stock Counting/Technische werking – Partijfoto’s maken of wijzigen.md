![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)


Wanneer een gebruiker in de Inventory-app een partijfoto maakt, doorloopt deze foto een aantal stappen voordat hij zichtbaar is in de app. Hieronder vind je eerst het totale proces in één overzicht, waarna de stappen verder worden uitgelegd.

---

## 1. Procesoverzicht

```
Gebruiker maakt foto
        ↓
Foto wordt opgeslagen in Picture-map (PICS/StockItems)
        ↓
ExfotoUrl wordt bijgewerkt
        ↓
Timerproces maakt LiveFoto (optioneel, voor formaten & hergebruik)
        ↓
Webshop verwerkt en cachet de foto (± 10 min)
        ↓
Inventory-app toont de foto via de webshop
```

---

## 2. Foto maken

De gebruiker maakt een foto **in de Stock Item Detail-pagina**.  
Na het maken van de foto:

- wordt deze direct opgeslagen als **ExfotoUrl** van de partij (de verwijzing naar de foto),
    
- vervangt de foto een eerdere partijfoto indien aanwezig.
    

---

## 3. Waar de foto wordt opgeslagen

De foto wordt opgeslagen in de **Picture-map**.

- `PICS` is een systeeminstelling die bepaalt **waar foto’s worden opgeslagen**.
    
- Deze map wordt ook gebruikt door de **webshop**.
    

Alle foto’s die vanuit de Inventory-app worden gemaakt, komen terecht in:

```
PICS/StockItems
```

Een veelvoorkomend voorbeeld:

```
C:\inetpub\wwwroot\Pictures\StockItems
```

Het systeem beheert deze map automatisch.

---

## 4. Hoe de foto een online adres krijgt

De webshop gebruikt de instelling **PICTUREURL** om foto’s een internetlink te geven.

Voorbeeld van een foto-URL:

```
https://bodemoshop.onflorisoft.cloud/pictures/StockItems/8112_8138.jpeg
```

Dit adres wordt opgeslagen in `ExfotoUrl`, zodat Florisoft weet waar de foto gevonden kan worden.

---

## 5. De rol van het timerproces (LiveFoto)

Naast de webshopverwerking bestaat er een **timerproces** dat foto’s gereedmaakt voor intern gebruik binnen Florisoft.  
Dit proces heet **FotoDown**.

### Wat doet het timerproces?

1. De foto wordt opgeslagen in de Picture-map (`PICS`).
    
2. De foto wordt daarnaast **geregistreerd in de FotoDown-tabel**.
    
3. Het timerproces **FotoDown** ziet dat er een nieuwe foto klaarstaat.
    
4. Het proces maakt een **LiveFoto** (de foto in Florisoft-formaat).
    
5. De LiveFoto wordt **aan de partij gekoppeld**.
    
6. De foto wordt opgeslagen in **vier formaten**, zodat deze op alle plekken (apps, webshop, backoffice) correct wordt weergegeven.
    

### Belangrijk om te weten

- De **webshop heeft de LiveFoto niet nodig** om de foto weer te geven; de `ExfotoUrl` volstaat.
    
- Het LiveFoto-proces dient vooral voor **uniforme formaten en interne toepassingen**.
    
- De LiveFoto heeft **geen invloed op wanneer de foto zichtbaar wordt in de app**.
    

---

## 6. Wanneer is de foto zichtbaar in de app?

Een foto wordt **zichtbaar in de Inventory-app zodra de webshop deze heeft verwerkt**.  
De app gebruikt **altijd de webshop** om foto’s op te halen — nooit de Picture-map zelf.

Een foto wordt zichtbaar wanneer:

1. de foto in **PICS/StockItems** staat,
    
2. de webshop de foto beschikbaar maakt via de publieke foto-URL,
    
3. de webshop de foto heeft herkend en verwerkt (caching / synchronisatie),
    
4. de Inventory-app de foto via de webshop kan ophalen.
    

Gemiddelde verwerkingstijd:

> **± 10 minuten**

Totdat de webshop de foto heeft verwerkt, kan het lijken alsof de foto “niet is opgeslagen”, maar dat komt doordat de webshop de foto nog niet levert aan de app.

---