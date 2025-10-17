![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)
# Configuration of KVV E-Trade Floriday

To ensure the correct integration between Florisoft and Floriday, both the **final** and **preliminary** EKT messages must be properly configured and processed.

## 1. System Settings

| Setting | Value |
|----------|--------|
| EKTVoorlopigeKVVOokRFFBT | True |
| KlokVoorVerkoopEktBGMCheck | True |
| KlokVoorVerkoopEktInleesType | HPartij_updaten_indien_aanwezig_anders_inlezen |
| KlokVVBGMVeilCodes | 1;2;3 |
| KlokVVVoorlopigEktBGMCheck | True |
| KlokVVVoorlopigEktInleesType | Inlezen |
| KvvRffVnLeidendSysteem | True |
| KVVVoorlopigUseRFFVNBarcode | True |

---

## 2. Creating Suppliers

Create a supplier for each **main group (flowers or plants)**.  
On the **Webservice** tab, fill in the login credentials as provided by **Floriday**.

---

## 3. Receiving Batches

Enable the **Receive Batches** tab, so that batches do **not** enter the system directly.  

In the **Purchase Response** section:
- Set the received barcode after purchase to the **Tradelineitem ID (default)**.  
- This allows a later match with the **EKT from Floriday**.

---

## 4. Practical Example

A customer makes a purchase on the **E-Trade Clock Presale** via Floriday.  
From this purchase, the value is extracted from the **order response** segment:

```xml
<a:OrderResponseTradeLineItem>
  <b:ID schemeName="VN" schemeDataURI="8718288085900" schemeURI="8718288085900">9600001139179</b:ID>
  <b:DocumentType>231</b:DocumentType>
  <b:LineDateTime>0001-01-01T00:00:00</b:LineDateTime>
</a:OrderResponseTradeLineItem>
```

This value is stored in:
- `Vpartij.barcode`
- `Vpartij.rffvnbarcode`

This is the same code later sent in the **(preliminary) Clock Presale EKT** (`RFF+VN:`).

### Example EKT Message

```edi
UNB+UNOA:2+8718288085900:14+8714231201113:14+251008:1504+47241537++FDY 212'
UNH+47241537+CLOCKT:003:007:EF'
BGM+493++0'
DTM+97:20251009:102'
NAD+FLA+2'
NAD+SE+8713782574073:160:9'
NAD+BY+46739:160:9'
NAD+DP+8713783461105:160:9'
LIN+++103567:VBN'
DTM+9:120000:402'
NAD+MF+21608'
RFF+AGJ:7241537'
RFF+CTS:999'
RFF+ON:FS0P722989766'
RFF+ADZ:4'
RFF+BT:0029828239179'
RFF+AIR:9100174092012'
RFF+VN:9600001139179'
RFF+AAJ:9600001139179'
RFF+IRN:EDOEBLMK72KX3H0S6EN04EK65::1'
QTY+52:100'
QTY+66:1'
PIA+5+GM-13232:SA:57:91'
IMD++L11+010'
IMD++K21+001'
IMD++S99+:::ALSTR GEM IN FUST .'
PAC+++588'
UNT+33+47241537'
UNZ+1+47241537'
```

In the **RFF+BT segment**, we obtain the correct barcode, which is printed on both the **new and old auction documents** (picking slip and distribution slip from RFH).  
When the **EKT** is read, the barcode in the **VN segment** is used to update the corresponding **Hpartij** and **Vpartij**.

---

## 5. Explanation of System Settings

### KlokVoorVerkoopEktBGMCheck → True
When processing final Clock Presale EKT’s, this monitors the **BGM segment** to ensure that only messages with **BGM 493** are processed as final.  
Messages with **BGM 323** are not mistakenly treated as final.

### KlokVoorVerkoopEktInleesType → HPartij_updaten_indien_aanwezig_anders_inlezen
When an EKT is received:  
- The system first searches for an existing **HPartij** via the **RFF+VN reference**.  
- If found → the batch is **updated**.  
- If not found → a **new batch** is automatically created.

### KlokVVBGMVeilCodes → 1;2;3
Defines which **auction codes (01, 02, 03)** are allowed to deliver Clock Presale messages.  
Messages from other auctions are rejected.

### KlokVVVoorlopigEktBGMCheck → True
Enforces the same distinction for preliminary messages.  
Only EKT’s with **BGM 323** are processed as “preliminary”.  
This ensures that the difference between **preliminary** and **final** EKT’s is maintained.

### KlokVVVoorlopigEktInleesType → Inlezen
With this setting, preliminary Clock Presale EKT’s are **actually read**, allowing final messages to be processed or blocked separately if desired.

### KvvRffVnLeidendSysteem → True
Lets Florisoft use the **RFF+VN segment** as the primary key.  
Existing batches are updated instead of duplicated.  
Only if no batch is found, a **new batch** is created.

### KVVVoorlopigUseRFFVNBarcode → True
When enabled, Florisoft links both preliminary and final KVV messages using the **RFF+VN barcode**.

### EKTVoorlopigeKVVOokRFFBT → True
When reading a **preliminary Clock Presale EKT**, Florisoft immediately adopts the barcode from the **RFF+BT segment**.  
This ensures that the batch is visible in the **inventory and box monitor** with the correct (final) barcode.  
If no preliminary message is received, the barcode is still retrieved from the final EKT.
