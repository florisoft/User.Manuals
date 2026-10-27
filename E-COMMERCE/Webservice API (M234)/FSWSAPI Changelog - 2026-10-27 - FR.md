<div align="center" style="background: linear-gradient(135deg, #3F2681 0%, #614B9B 58%, #24B34A 100%); border-radius: 18px; padding: 34px 28px; color: #FFFFFF; font-family: Poppins, Arial, sans-serif;">

<p style="margin: 0 0 8px; font-size: 13px; font-weight: 600; letter-spacing: 0.18em; text-transform: uppercase;">FLORISOFT · SÉLECTION DU JOURNAL DES MODIFICATIONS</p>

# FSWSAPI

<p style="margin: 8px 0 0; font-size: 18px;">Toutes les modifications explicitement identifiées, réunies dans un aperçu clair</p>

</div>

<br>

<div align="center">

| **9 modifications** | **Versions 140.583 → 144.472** | **Mis à jour le 27 octobre 2026** |
|:---:|:---:|:---:|
| FSWSAPI | Les plus récentes en premier | Source : journal des modifications Florisoft |

</div>

> [!NOTE]
> Cet aperçu contient uniquement les entrées du journal des modifications portant explicitement le libellé **`[FSWSAPI]`**. Les mentions générales de « webservice » et de « Management API » ne sont pas incluses, car le journal ne les associe pas explicitement à FSWSAPI.

## <span style="color:#3F2681">Débiteurs</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>144.472</strong></td>
<td><strong>Indiquer directement un numéro de débiteur</strong><br><br><code>Debtor/AddOrUpdate</code> dispose du nouveau champ de requête facultatif <code>DebtorNumber</code> (chaîne de caractères). Ce champ est utilisé comme numéro de débiteur souhaité.<br><br><sub>Référence : 313219</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>141.816</strong></td>
<td><strong>Davantage de champs lors de la création d’un débiteur</strong><br><br>L’endpoint <code>/Debtor/AddOrUpdate</code> prend en charge de nouveaux champs de requête pour la création d’un débiteur : <code>financialDebtorNumber</code>, <code>deliveryBlocked</code>, <code>debtorIBAN</code>, <code>debtorBIC</code>, <code>debtorEANCode</code>, <code>debtorGLNAddress</code>, <code>internetAccessEnabled</code> et <code>password</code>.<br><br><sub>Référence : 305575</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>140.583</strong></td>
<td><strong>Débiteur modèle configurable par requête</strong><br><br><code>/Debtor/AddOrUpdate</code> dispose du nouveau champ de requête facultatif <code>templateDebtorNumber</code>. Lorsqu’un modèle valide est indiqué, celui-ci est utilisé ; sinon, le mécanisme de repli existant via <code>DEBSHOP.DebiteurAanmakenTemplateDebNr</code> reste applicable. La saisie est contrôlée afin de vérifier l’existence du débiteur et son statut de modèle.<br><br><sub>Référence : 306891</sub></td>
</tr>
</table>

## <span style="color:#3F2681">Commandes et dates de départ</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>142.674</strong></td>
<td><strong>Répartition correcte et identification plus stable des lignes de commande</strong><br><br>Pour <code>OrderListOrderItem/AddOrUpdate</code>, <code>uniqueOrderLineId</code> contient désormais le <code>BestellingID</code> (<code>BESTID</code>) de <code>BESTVERD</code>, au lieu du numéro d’enregistrement. De plus, lorsque plusieurs répartitions existent pour un même lot, la répartition correcte est maintenant renvoyée.<br><br><sub>Référence : 311343</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>141.395</strong></td>
<td><strong>Nouvel endpoint pour les dates de départ</strong><br><br>Le nouvel endpoint <code>GET /departureDates/get</code> renvoie toutes les dates de départ disponibles pour l’utilisateur actuel et prend en charge des filtres facultatifs.</td>
</tr>
</table>

## <span style="color:#3F2681">Contrat API et sécurité</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>141.79</strong></td>
<td><strong>Méthode de lecture modifiée de POST vers GET</strong><br><br>La méthode HTTP des endpoints <code>/parcels/get</code>, <code>/orderLists/get</code> et <code>/orderListParcels/get</code> est passée de <code>POST</code> à <code>GET</code>.<br><br><sub>Référence : 306897</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>140.847</strong></td>
<td><strong>Limitation de débit configurable</strong><br><br>FSWSAPI utilise un limiteur de débit de type « token bucket » fondé sur un code de hachage, avec prise en charge des utilisateurs anonymes. Les limites sont configurables au moyen des paramètres de la boutique et sont couvertes par des tests portant sur les requêtes autorisées et bloquées.<br><br><sub>Référence : 307160</sub></td>
</tr>
</table>

## <span style="color:#3F2681">Données des lots et présentation</span>

<table>
<tr>
<td width="110" align="center" bgcolor="#F1ECFA"><strong>140.670</strong></td>
<td><strong>URL d’images pour les lots</strong><br><br><code>/Parcels/Get</code> et <code>/OrderListParcels/Get</code> contiennent les nouveaux champs <code>PictureUrl</code>, <code>Picture2Url</code> et <code>PictureAltUrl</code>.<br><br><sub>Référence : 306893</sub></td>
</tr>
<tr>
<td width="110" align="center" bgcolor="#E9F7ED"><strong>140.645</strong></td>
<td><strong>Caractéristiques de tri plus lisibles</strong><br><br><code>Parcel</code> et <code>OrderListParcel</code> ont été enrichis de champs de code et de texte plus conviviaux pour les caractéristiques de tri, notamment <code>S1CodeText</code>, <code>S1Text</code>, <code>S2CodeText</code> et <code>S2Text</code>.</td>
</tr>
</table>

---

<div align="center">

<span style="color:#24B34A"><strong>Florisoft</strong></span> · Le partenaire logiciel du secteur de la floriculture

[Consulter le journal des modifications complet](https://www.florisoft.nl/changelog/Changelog_Florisoft_dotnet.html)

<sub>Source consultée le 27 octobre 2026. État du journal des modifications : 27 octobre 2026 à 08 h 35.</sub>

</div>
