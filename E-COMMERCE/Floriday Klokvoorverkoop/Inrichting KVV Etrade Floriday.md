![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)
# Inrichting KVV E-Trade Floriday

Om de koppeling tussen Florisoft en Floriday correct te laten functioneren, moeten zowel de **definitieve** als **voorlopige** EKT-berichten juist worden ingesteld en verwerkt.

## 1. Systeeminstellingen

| Instelling | Waarde |
|-------------|--------|
| EKTVoorlopigeKVVOokRFFBT | True |
| KlokVoorVerkoopEktBGMCheck | True |
| KlokVoorVerkoopEktInleesType | HPartij_updaten_indien_aanwezig_anders_inlezen |
| KlokVVBGMVeilCodes | 1;2;3 |
| KlokVVVoorlopigEktBGMCheck | True |
| KlokVVVoorlopigEktInleesType | Inlezen |
| KvvRffVnLeidendSysteem | True |
| KVVVoorlopigUseRFFVNBarcode | True |

---

## 2. Leveranciers aanmaken

Maak per **hoofdgroep (bloemen of planten)** een leverancier aan, eventueel ook per veiling.  
Vul op het tabblad **Webservice** de inloggegevens in zoals aangegeven door **Floriday**.
Let op dat de type webservice op Etrade0.7 staat.

---

## 3. Partijen ontvangen

Op het tabblad **Partijen ontvangen** 'Partijen zijn onderweg' aanzetten, zodat partijen niet direct binnen zijn.  

Bij **Koopantwoord**:
- De ontvangen barcode na koop zetten op **Tradelineitem ID (standaard)**.  
Hierdoor kan later een match gemaakt worden met de EKT vanuit Floriday.

---

## 4. Praktijkvoorbeeld

Een klant doet een koop op de **E-Trade Klokvoorverkoop** vanuit Floriday.  
Bij deze koop lezen wij vanuit de **orderresponse** de waarde uit dit segment:

```xml
<a:OrderResponseTradeLineItem>
  <b:ID schemeName="VN" schemeDataURI="8718288085900" schemeURI="8718288085900">9600001139179</b:ID>
  <b:DocumentType>231</b:DocumentType>
  <b:LineDateTime>0001-01-01T00:00:00</b:LineDateTime>
</a:OrderResponseTradeLineItem>
```

Deze waarde wordt opgeslagen in:
- `Vpartij.barcode`
- `Vpartij.rffvnbarcode`

Dit is dezelfde code als die later in de **(voorlopige) Klokvoorverkoop-EKT** wordt gestuurd (`RFF+VN:`).

### Voorbeeld EKT-bericht

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

In het **RFF+BT-segment** krijgen we de juiste barcode, die zowel op de **nieuwe als oude bon van de veiling** wordt geplaatst (pickbon en verdeelbon vanuit RFH).  
Wanneer we de **EKT inlezen**, wordt op basis van de barcode in het **VN-segment** de bijbehorende **Hpartij** en **Vpartij** geüpdatet.

---

## 5. Uitleg systeeminstellingen

### KlokVoorVerkoopEktBGMCheck → True
Houdt bij het verwerken van definitieve Klokvoorverkoop-EKT’s het **BGM-segment** in de gaten.  
Alleen berichten met **BGM 493** worden als definitief gezien. Berichten met **BGM 323** worden niet per ongeluk als definitief verwerkt.

### KlokVoorVerkoopEktInleesType → HPartij_updaten_indien_aanwezig_anders_inlezen
Bij binnenkomst van een EKT:
- Eerst wordt gezocht naar een bestaande **HPartij** via de **RFF+VN-referentie**.  
- Indien gevonden → de partij wordt **geüpdatet**.  
- Indien niet gevonden → er wordt **automatisch een nieuwe partij** ingelezen.

### KlokVVBGMVeilCodes → 1;2;3
Geeft aan welke **veilingcodes (01, 02, 03)** een Klokvoorverkoopbericht mogen leveren.  
Berichten van andere veilingen worden geweigerd.

### KlokVVVoorlopigEktBGMCheck → True
Handhaaft hetzelfde onderscheid voor voorlopige berichten.  
Alleen EKT’s met **BGM 323** worden als “voorlopig” verwerkt.  
Zo blijft het verschil tussen **voorlopige** en **definitieve** EKT’s duidelijk.

### KlokVVVoorlopigEktInleesType → Inlezen
Met deze instelling worden voorlopige Klokvoorverkoop-EKT’s **daadwerkelijk ingelezen**, zodat definitieve berichten eventueel apart verwerkt of geblokkeerd kunnen worden.

### KvvRffVnLeidendSysteem → True
Laat Florisoft het **RFF+VN-segment** gebruiken als leidende sleutel.  
Zo worden bestaande partijen bijgewerkt i.p.v. dubbel aangemaakt.  
Alleen als er geen bestaande partij gevonden wordt, ontstaat een **nieuwe partij**.

### KVVVoorlopigUseRFFVNBarcode → True
Wanneer ingeschakeld, koppelt Florisoft zowel voorlopige als definitieve KVV-berichten op de **RFF+VN-barcode**.

### EKTVoorlopigeKVVOokRFFBT → True
Bij het inlezen van een **voorlopige Klokvoorverkoop-EKT** neemt Florisoft meteen de barcode uit het **RFF+BT-segment** over.  
Daardoor is de partij in de **voorraad en boxmonitor** direct zichtbaar met de juiste (definitieve) barcode.  
Als er geen voorlopig bericht binnenkomt, wordt de barcode alsnog uit de definitieve EKT gehaald.
