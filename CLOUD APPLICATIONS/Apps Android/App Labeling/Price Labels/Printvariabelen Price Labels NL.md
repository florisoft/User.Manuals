# Printvariabelen Price Labels

In dit document staan alle beschikbare variabelen voor een Price Labels-layout. Gebruik de variabelenaam uit de linkerkolom in de layout. Welke waarde wordt gevuld, hangt af van de gegevens op de gescande orderregel en de gekoppelde klant, partij, bestelling en bestelpartij.

## Klant variabelen

| Variabele | Betekenis |
| --- | --- |
| **DebNr** | Debiteurnummer. |
| **DebNaam** | Naam van de debiteur. |
| **DebKey** | Zoek sleutel van de debiteur. |
| **DebBoxPrijsStkTxt** | Vrije prijsstickertekst van de debiteur. |
| **SubDebBoxPrijsStkTxt** | Vrije prijsstickertekst van de subdebiteur. |
| **SubDebTaalAlgemeen** | Algemene taal van de subdebiteur. |
| **SubDebNr** | Subdebiteurnummer. |
| **Customer_Logo_Path** | Pad naar het klantlogo voor de sticker. |
| **EtiketWinkelnaam** | Winkelnaam voor het etiket van de debiteur. |
| **RetailValuta** | Retailvaluta van de financiële debiteur. |
| **FlnetVeil** | FLNet-veilingcode van de debiteur. |

## Artikel en klantartikel variabelen

| Variabele | Betekenis |
| --- | --- |
| **ArtNr** | Artikelnummer. |
| **ArtikelOmschrijving** | Artikelomschrijving uit de orderregel. |
| **ArtGrpCod** | Artikelgroepcode. |
| **ARTVE** | Verkoopeenheid van het artikel. |
| **KlantBarcode** | Barcode uit de `ArtikelBarcode` / `Artikbar` tabel. |
| **KlantOmschrijving** | Klantomschrijving uit de `ArtikelBarcode` / `Artikbar` tabel. |
| **KlantArtikelnummer** | Extern artikelnummer van de klant. |
| **BarcodeKlantPrijs** | Klantprijs uit de `ArtikelBarcode` tabel. |
| **AantalPerBos** | Aantal per bos uit de `ArtikelBarcode` tabel. |
| **ArtikelBarcodeRetailPrijs** | Retailprijs uit de `ArtikelBarcode` tabel. |
| **ArtikelBarcodeVerzorging** | Verzorgingstekst uit de `ArtikelBarcode` tabel. |

## Orderregel variabelen

| Variabele | Betekenis |
| --- | --- |
| **Inhoud** | Inhoud kolli/fust van de orderregel. |
| **Kolli** | Aantal kolli, uitgerekend op basis van de orderregel. |
| **Verdeel_Aaantal** | Totaal aantal stelen. |
| **AantalStickers** | Aantal prijsstickers dat geprint wordt. |
| **Orderreg_RetailPrijs** | Retailprijs van de orderregel. |
| **RegelBarcode** | Barcode van de orderregel. |
| **Orderreg_AfBarcode** | Af-barcode van de orderregel / historische order. |
| **Orderreg_InhBos** | Inhoud bos van de orderregel. |
| **RetailPrijsUser** | Gebruiker die retailprijs heeft gezet / gewijzigd. |
| **Orderreg_IsRetailPrijsAkkoord** | `TRUE` wanneer retailprijs akkoord is, anders `FALSE`. |
| **VE** | Verkoopeenheid van de orderregel. |
| **Prijs** | Partijprijs 2 op de orderregel / historische order. |
| **BosEenheid** | Handmatig bepaalde bos-eenheid. |
| **BestelPartijEANCode** | EAN-code van de bestelpartij op de orderregel / historische order. |
| **Verdeling_ExArtNr** | Extern artikelnummer uit de verdeling. |
| **KwaliteitsCode** | Kwaliteitscode van de orderregel / historische order. |
| **KeurCodeOmschrijving** | Omschrijving van de keurcode. |
| **Orderreg_Scancode** | Scancode van de orderregel. |

### Automatisch aantal stickers

`AantalStickers` bevat het berekende aantal prijsstickers. Bij de automatische afdrukflow wordt dit aantal mede bepaald met `InhFust`, `InhPlaat`, `InhKar` en `StickerDragerType`. Wanneer de flow het juiste aantal automatisch bepaalt, wordt niet om een handmatig aantal kopieën gevraagd.

## Sorteer variabelen

| Variabele | Betekenis |
| --- | --- |
| **Sort1** | Eerste sorteerwaarde. |
| **Sort2** | Tweede sorteerwaarde. |
| **Sort3** | Derde sorteerwaarde. |
| **Sort4** | Vierde sorteerwaarde. |
| **Sort5** | Vijfde sorteerwaarde. |
| **Sort6** | Zesde sorteerwaarde. |
| **Sort7** | Zevende sorteerwaarde. |

### Eenheid achter sorteerwaarde

Policy **SortingValuesWithoutUnit** bepaalt of de eenheid achter sorteerwaarden wordt klaargezet.

| Policy stand | Gedrag |
| --- | --- |
| Policy uit | Sorteerwaarde blijft zoals nu gevuld, bijvoorbeeld `50 Cm`. |
| Policy aan | Eenheid wordt niet gevuld in de printvariabele, bijvoorbeeld `50`. |

Wanneer `Cm` toch op de sticker getoond moet worden, wordt dit in de layout zelf toegevoegd. De printvariabele blijft dan alleen de sorteerwaarde bevatten.

## Orderkop variabelen

| Variabele | Betekenis |
| --- | --- |
| **OrderKop_OrderNaam** | Ordernaam uit de orderkop. |
| **OrderKop_BestelDatum** | Besteldatum uit de orderkop. |

## Partij variabelen

| Variabele | Betekenis |
| --- | --- |
| **PartijNummer** | Partijnummer van de orderregel / historische order. |
| **VPartijNr** | Virtueel partijnummer. |
| **LandVherkomst** | Land van herkomst. |
| **Kleur** | Kleuromschrijving van de partij. |
| **KwekerNaam** | Naam van de kweker. |
| **InhFust** | Inhoud fust van de partij. |
| **InhPlaat** | Inhoud plaat van de partij. |
| **InhKar** | Inhoud kar van de partij. |
| **StickerDragerType** | Stickerdrager / boeketdragertype van de partij. |
| **Partij_Omschr** | Partijomschrijving zonder specifieke taalcode. |
| **Partij_Omschr_D** | Zelf invulbare partijomschrijving / vertaling voor code D. |
| **Partij_Omschr_E** | Zelf invulbare partijomschrijving / vertaling voor code E. |
| **Partij_Omschr_F** | Zelf invulbare partijomschrijving / vertaling voor code F. |
| **Partij_Omschr_G** | Zelf invulbare partijomschrijving / vertaling voor code G. |
| **Partij_Omschr_H** | Zelf invulbare partijomschrijving / vertaling voor code H. |
| **Partij_Omschr_I** | Zelf invulbare partijomschrijving / vertaling voor code I. |
| **Partij_Omschr_J** | Zelf invulbare partijomschrijving / vertaling voor code J. |
| **Partij_Omschr_K** | Zelf invulbare partijomschrijving / vertaling voor code K. |
| **Partij_Omschr_L** | Zelf invulbare partijomschrijving / vertaling voor code L. |

## Bestelling variabelen

| Variabele | Betekenis |
| --- | --- |
| **Bestverd_Owncode** | Eigen code van de gekoppelde bestelling. |
| **Bestverd_Barcodefrom** | Beginbarcode / barcode-from van de gekoppelde bestelling. |
| **Bestverd_Labeldescription** | Labelomschrijving van de gekoppelde bestelling. |

## Bestelpartij variabelen

| Variabele | Betekenis |
| --- | --- |
| **Bestel_InhBos** | Inhoud bos van de bestelpartij. |
| **Bestel_Code** | Bestelcode. |
| **Bestel_ExCode** | Externe code van de bestelpartij. |
| **Bestel_ExOmschr** | Externe omschrijving van de bestelpartij. |
| **Bestel_Omschr_D** | Zelf invulbare bestelomschrijving / vertaling voor code D. |
| **Bestel_Omschr_E** | Zelf invulbare bestelomschrijving / vertaling voor code E. |
| **Bestel_Omschr_F** | Zelf invulbare bestelomschrijving / vertaling voor code F. |
| **Bestel_Omschr_G** | Zelf invulbare bestelomschrijving / vertaling voor code G. |
| **Bestel_Omschr_H** | Zelf invulbare bestelomschrijving / vertaling voor code H. |
| **Bestel_Omschr_I** | Zelf invulbare bestelomschrijving / vertaling voor code I. |
| **Bestel_Omschr_J** | Zelf invulbare bestelomschrijving / vertaling voor code J. |
| **Bestel_Omschr_K** | Zelf invulbare bestelomschrijving / vertaling voor code K. |
| **Bestel_Omschr_L** | Zelf invulbare bestelomschrijving / vertaling voor code L. |
| **Bestel_ConsPrijs** | Consumentenprijs van de bestelpartij. |
| **BestelKleur** | Kleur van de bestelpartij. |
| **BestelKleurTaal** | Kleur van de bestelpartij in klant-/paklijsttaal. |
| **Bestel_VE** | Verkoopeenheid van de bestelpartij. |
| **Bestel_InhFust** | Inhoud fust van de bestelpartij. |
| **Bestel_ScanCode** | Scancode van de bestelpartij. |
| **Bestel_DagenHoudbaar** | Aantal dagen houdbaar. |
| **Bestel_HoudbaarTM** | Houdbaar t/m datum, wanneer productiedatum bekend is. |
| **Bestel_Prijs** | Prijs van de bestelpartij. |
| **MonoBoeketIngredient** | Omschrijving ingredient voor monoboeket. |
| **AantalStelenPerMonoBoeket** | Aantal stelen per monoboeket. |

## Plantenpaspoort variabelen

Deze worden gevuld via de bestelpartij.

| Variabele | Betekenis |
| --- | --- |
| **PlantenPaspoort_A** | Botanische naam van het artikel. |
| **PlantenPaspoort_B** | Fytosanitair registratienummer. |
| **PlantenPaspoort_C** | Uniek batchnummer / partijnummer. |
| **PlantenPaspoort_D** | Land van herkomst. |

## Sticker variabelen

| Variabele | Betekenis |
| --- | --- |
| **Soortprijssticker** | Soort prijssticker. Voor PDA PriceLabel wordt vaste waarde `H` gevuld. |
