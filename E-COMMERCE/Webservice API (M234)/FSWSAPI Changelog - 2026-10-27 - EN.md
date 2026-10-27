<div align="center" style="background: linear-gradient(135deg, #3F2681 0%, #614B9B 58%, #24B34A 100%); border-radius: 18px; padding: 34px 28px; color: #FFFFFF; font-family: Poppins, Arial, sans-serif;">

<p style="margin: 0 0 8px; font-size: 13px; font-weight: 600; letter-spacing: 0.18em; text-transform: uppercase;">FLORISOFT · CHANGELOG SELECTION</p>

# FSWSAPI

<p style="margin: 8px 0 0; font-size: 18px;">All explicitly labelled changes brought together in one clear overview</p>

</div>

<br>

<div align="center">

| **9 changes** | **Versions 140.583 → 144.472** | **Updated 27 October 2026** |
|:---:|:---:|:---:|
| FSWSAPI | Newest first | Source: Florisoft changelog |

</div>

> [!NOTE]
> This overview contains only changelog entries that are explicitly labelled **`[FSWSAPI]`**. General references to “webservice” and “Management API” are not included because the changelog does not explicitly associate them with FSWSAPI.

## <span style="color:#3F2681">Debtors</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>144.472</strong></td>
<td><strong>Specify the desired debtor number</strong><br><br><code>Debtor/AddOrUpdate</code> has a new optional request field, <code>DebtorNumber</code> (string). This field is used as the desired debtor number.<br><br><sub>Reference: 313219</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>141.816</strong></td>
<td><strong>Additional fields when creating a debtor</strong><br><br>The <code>/Debtor/AddOrUpdate</code> endpoint supports new request fields for debtor creation: <code>financialDebtorNumber</code>, <code>deliveryBlocked</code>, <code>debtorIBAN</code>, <code>debtorBIC</code>, <code>debtorEANCode</code>, <code>debtorGLNAddress</code>, <code>internetAccessEnabled</code> and <code>password</code>.<br><br><sub>Reference: 305575</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>140.583</strong></td>
<td><strong>Template debtor configurable per request</strong><br><br><code>/Debtor/AddOrUpdate</code> has a new optional request field, <code>templateDebtorNumber</code>. When a valid template is supplied, it is used; otherwise, the existing fallback through <code>DEBSHOP.DebiteurAanmakenTemplateDebNr</code> remains in effect. The supplied value is validated to confirm that the debtor exists and is a template.<br><br><sub>Reference: 306891</sub></td>
</tr>
</table>

## <span style="color:#3F2681">Orders and departure dates</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>142.674</strong></td>
<td><strong>Correct order line and more stable line identification</strong><br><br>For <code>OrderListOrderItem/AddOrUpdate</code>, <code>uniqueOrderLineId</code> now contains the <code>BestellingID</code> (<code>BESTID</code>) from <code>BESTVERD</code> instead of the record number. When multiple order lines exist for the same parcel, the correct line is now returned.<br><br><sub>Reference: 311343</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>141.395</strong></td>
<td><strong>New endpoint for departure dates</strong><br><br>The new <code>GET /departureDates/get</code> endpoint returns all available departure dates for the current user and supports optional filters.</td>
</tr>
</table>

## <span style="color:#3F2681">API contract and security</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>141.79</strong></td>
<td><strong>Retrieval method changed from POST to GET</strong><br><br>The HTTP method for <code>/parcels/get</code>, <code>/orderLists/get</code> and <code>/orderListParcels/get</code> has changed from <code>POST</code> to <code>GET</code>.<br><br><sub>Reference: 306897</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>140.847</strong></td>
<td><strong>Configurable rate limiting</strong><br><br>FSWSAPI uses a token-bucket rate limiter keyed by hash code, with support for anonymous users. The limits can be configured through shop settings and are covered by tests for both accepted and blocked requests.<br><br><sub>Reference: 307160</sub></td>
</tr>
</table>

## <span style="color:#3F2681">Parcel data and presentation</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>140.670</strong></td>
<td><strong>Image URLs for parcels</strong><br><br><code>/Parcels/Get</code> and <code>/OrderListParcels/Get</code> contain the new fields <code>PictureUrl</code>, <code>Picture2Url</code> and <code>PictureAltUrl</code>.<br><br><sub>Reference: 306893</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>140.645</strong></td>
<td><strong>Readable sorting characteristics</strong><br><br><code>Parcel</code> and <code>OrderListParcel</code> have been extended with user-friendly code and text fields for sorting characteristics, including <code>S1CodeText</code>, <code>S1Text</code>, <code>S2CodeText</code> and <code>S2Text</code>.</td>
</tr>
</table>

---

<div align="center">

<span style="color:#24B34A"><strong>Florisoft</strong></span> · The software partner for the floriculture industry

[View the complete changelog](https://www.florisoft.nl/changelog/Changelog_Florisoft_dotnet.html)

<sub>Source accessed on 27 October 2026. Changelog status: 27 October 2026 at 08:35.</sub>

</div>
