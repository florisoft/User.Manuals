<div align="center" style="background: linear-gradient(135deg, #3F2681 0%, #614B9B 58%, #24B34A 100%); border-radius: 18px; padding: 34px 28px; color: #FFFFFF; font-family: Poppins, Arial, sans-serif;">

<p style="margin: 0 0 8px; font-size: 13px; font-weight: 600; letter-spacing: 0.18em; text-transform: uppercase;">FLORISOFT · CHANGELOGSELECTIE</p>

# FSWSAPI

<p style="margin: 8px 0 0; font-size: 18px;">Alle expliciet gemarkeerde wijzigingen overzichtelijk bij elkaar</p>

</div>

<br>

<div align="center">

| **9 wijzigingen** | **Versie 140.583 → 144.472** | **Bijgewerkt 27 oktober 2026** |
|:---:|:---:|:---:|
| FSWSAPI | Nieuwste bovenaan | Bron: Florisoft-changelog |

</div>

> [!NOTE]
> Dit overzicht bevat uitsluitend changelogregels die expliciet zijn voorzien van het label **`[FSWSAPI]`**. Algemene vermeldingen van “webservice” en “Management API” zijn niet opgenomen, omdat het changelog deze niet expliciet aan FSWSAPI koppelt.

## <span style="color:#3F2681">Debiteuren</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>144.472</strong></td>
<td><strong>Zelf een debiteurnummer meegeven</strong><br><br><code>Debtor/AddOrUpdate</code> heeft het nieuwe optionele requestveld <code>DebtorNumber</code> (string). Dit veld wordt gebruikt als het gewenste debiteurnummer.<br><br><sub>Referentie: 313219</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>141.816</strong></td>
<td><strong>Meer velden bij het aanmaken van een debiteur</strong><br><br>Het endpoint <code>/Debtor/AddOrUpdate</code> ondersteunt nieuwe requestvelden voor debiteurcreatie: <code>financialDebtorNumber</code>, <code>deliveryBlocked</code>, <code>debtorIBAN</code>, <code>debtorBIC</code>, <code>debtorEANCode</code>, <code>debtorGLNAddress</code>, <code>internetAccessEnabled</code> en <code>password</code>.<br><br><sub>Referentie: 305575</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>140.583</strong></td>
<td><strong>Template-debiteur instelbaar per request</strong><br><br><code>/Debtor/AddOrUpdate</code> heeft het nieuwe optionele requestveld <code>templateDebtorNumber</code>. Bij een geldige template wordt deze gebruikt; anders blijft de bestaande fallback via <code>DEBSHOP.DebiteurAanmakenTemplateDebNr</code> van toepassing. De invoer wordt gecontroleerd op bestaan en template-status.<br><br><sub>Referentie: 306891</sub></td>
</tr>
</table>

## <span style="color:#3F2681">Orders en vertrekdata</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>142.674</strong></td>
<td><strong>Correcte verdeling en stabielere orderregelidentificatie</strong><br><br>Bij <code>OrderListOrderItem/AddOrUpdate</code> bevat <code>uniqueOrderLineId</code> voortaan de <code>BestellingID</code> (<code>BESTID</code>) van <code>BESTVERD</code>, in plaats van het recordnummer. Ook wordt bij meerdere verdelingen op dezelfde partij nu de juiste verdeling teruggestuurd.<br><br><sub>Referentie: 311343</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>141.395</strong></td>
<td><strong>Nieuw endpoint voor vertrekdata</strong><br><br>Het nieuwe endpoint <code>GET /departureDates/get</code> retourneert alle beschikbare vertrekdata voor de huidige gebruiker en ondersteunt optionele filters.</td>
</tr>
</table>

## <span style="color:#3F2681">API-contract en beveiliging</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>141.79</strong></td>
<td><strong>Ophalen gewijzigd van POST naar GET</strong><br><br>De HTTP-methode van <code>/parcels/get</code>, <code>/orderLists/get</code> en <code>/orderListParcels/get</code> is gewijzigd van <code>POST</code> naar <code>GET</code>.<br><br><sub>Referentie: 306897</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>140.847</strong></td>
<td><strong>Configureerbare rate limiting</strong><br><br>FSWSAPI gebruikt een token-bucket-rate-limiter op basis van hashcode, met ondersteuning voor anonieme gebruikers. De limieten zijn configureerbaar via shopsettings en worden afgedekt door tests voor toegestane en geblokkeerde requests.<br><br><sub>Referentie: 307160</sub></td>
</tr>
</table>

## <span style="color:#3F2681">Partijgegevens en presentatie</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>140.670</strong></td>
<td><strong>Afbeeldings-URL's voor partijen</strong><br><br><code>/Parcels/Get</code> en <code>/OrderListParcels/Get</code> bevatten de nieuwe velden <code>PictureUrl</code>, <code>Picture2Url</code> en <code>PictureAltUrl</code>.<br><br><sub>Referentie: 306893</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>140.645</strong></td>
<td><strong>Leesbare sorteringskenmerken</strong><br><br><code>Parcel</code> en <code>OrderListParcel</code> zijn uitgebreid met gebruiksvriendelijke code- en tekstvelden voor sorteringskenmerken, waaronder <code>S1CodeText</code>, <code>S1Text</code>, <code>S2CodeText</code> en <code>S2Text</code>.</td>
</tr>
</table>

---

<div align="center">

<span style="color:#24B34A"><strong>Florisoft</strong></span> · Dé softwarepartner in de sierteelt

[Bekijk het volledige changelog](https://www.florisoft.nl/changelog/Changelog_Florisoft_dotnet.html)

<sub>Bron geraadpleegd op 27 oktober 2026. Changelogstand: 27 oktober 2026 08:35.</sub>

</div>
