# Handleiding - Price Labels (Labeling App)

Deze handleiding helpt u bij het gebruiken van de **Price Labels-functionaliteit** in de Labeling App.

De workflow, barcodeherkenning, printer en layout worden vooraf ingericht via policies. Daardoor kan het proces per omgeving iets verschillen.

---

## Wat is Price Labels?

Price Labels is bedoeld om verkochte producten, oftewel orderitems, te voorzien van een prijslabel. Zo kan de eindklant producten ontvangen die direct zijn geprijsd.

Price Labels is het proces waarin u:
- **Een orderitembarcode scant**
- **De orderitemgegevens controleert**
- **Eventueel de inhoud bos wijzigt**
- **Prijsstickers afdrukt** met de ingestelde printer en layout

Afhankelijk van uw instellingen kan de app extra controles uitvoeren, bijvoorbeeld wanneer er al een prijssticker is geprint of wanneer een order handling-informatie moet bevatten.

---

## Hoe werkt de Price Labels-app?

De app is opgebouwd uit een korte scan- en printflow. U scant een orderitem, controleert de gegevens en print vervolgens de benodigde prijsstickers.

---

## Stap 1: Orderitem scannen (Policies: `EnabledBarcodeTypes`, `ValidBarcodeDecodeOptions`, `ProcessBluComBarcodes`)

Scan de orderitembarcode van het verkochte product waarvoor u prijsstickers wilt printen.

Welke barcodes de app accepteert, hangt af van de ingestelde policies:
- `EnabledBarcodeTypes` bepaalt welke typen barcodes de scanner kan lezen. De volledige naam van deze policy is `Apps_Inventory_Labeling_PriceLabel_EnabledBarcodeTypes`.
- `ValidBarcodeDecodeOptions` bepaalt welke inhoudelijke barcodes de Price Labels-flow kan herkennen en verwerken.
- `ProcessBluComBarcodes` bepaalt of BluCom-barcodes verwerkt mogen worden.

Als `EnabledBarcodeTypes` leeg is, gebruikt de app het standaardprofiel met **Interleaved 2 of 5, Code 128, Code 39, QR-code, EAN-13, Data Matrix en UPC-A**. Zodra u een of meer typen selecteert, vervangt die selectie het standaardprofiel. De scanner leest dan alleen de geselecteerde typen. Zo kunt u bijvoorbeeld EAN-13 uitschakelen wanneer een sticker meerdere barcodes bevat en alleen een andere barcode gescand mag worden.

Een barcode wordt alleen verwerkt als het fysieke barcodetype is ingeschakeld via `EnabledBarcodeTypes` en de inhoud ervan is toegestaan via `ValidBarcodeDecodeOptions`. Vraag uw beheerder om deze policies aan te passen als een benodigd type niet kan worden gescand.

---

## Stap 2: Orderitem controleren en inhoud aanpassen

Na het scannen opent het detailscherm van het orderitem.

In dit scherm ziet u de gegevens van het gescande orderitem. Controleer of dit het juiste product is voordat u gaat printen.

Als dat nodig is, kunt u de **inhoud bos** aanpassen voordat u de prijsstickers afdrukt.

De manier waarop aantallen en totalen worden weergegeven kan afhankelijk zijn van de policy `TotalPriceLabelsDisplayType`.

---

## Stap 3: Controles voor het printen (Policies: `CheckIfPriceLabelPrinted`, `CheckIfOrderHasHandling`)

Afhankelijk van de inrichting kan de app extra controles uitvoeren voordat u print.

### Controle op eerder geprinte prijsstickers

Met de policy `CheckIfPriceLabelPrinted` kan worden ingesteld dat de app een melding toont wanneer er al een prijssticker is afgedrukt voor het gescande orderitem.

Dit helpt voorkomen dat prijsstickers per ongeluk dubbel worden geprint.

### Controle op handling-informatie

Met de policy `CheckIfOrderHasHandling` kan worden ingesteld dat de app controleert of de gescande order handling-informatie bevat.

Gebruik deze controle wanneer alleen orders met handling verwerkt mogen worden in de Price Labels-flow.

---

## Stap 4: Prijsstickers printen (Policies: `AskPriceLabelCopyAmount`, `PriceLabelPrinter`, `PriceLabelLayout`, `PriceLabelPrinterPerCustomer`)

Druk op de printknop om prijsstickers af te drukken.

De printer en layout worden vooraf bepaald door policies:
- `PriceLabelPrinter` bepaalt welke printer wordt gebruikt.
- `PriceLabelLayout` bepaalt welke prijssticker-layout wordt gebruikt.
- `PriceLabelPrinterPerCustomer` bepaalt of de prijslabelinstellingen van de debiteur worden gebruikt in plaats van de standaardinstellingen.

Als de policy `AskPriceLabelCopyAmount` is ingeschakeld, vraagt de app hoeveel kopieen van de prijssticker geprint moeten worden.

Vul het gewenste aantal in en bevestig het printen.

---

## Stap 5: Volgende orderitem verwerken

Na het printen kunt u de volgende orderitembarcode scannen.

Herhaal de vorige stappen voor alle orderitems waarvoor prijsstickers nodig zijn.

---

## Veelgestelde Vragen

**V: Welke barcode kan ik scannen?**

A: `EnabledBarcodeTypes` bepaalt welke fysieke barcodetypen de scanner kan lezen. `ValidBarcodeDecodeOptions` bepaalt vervolgens welke barcode-inhoud de Price Labels-flow kan verwerken. Als BluCom-barcodes gebruikt worden, moet ook `ProcessBluComBarcodes` correct zijn ingesteld.

**V: Wat gebeurt er als `EnabledBarcodeTypes` niet is ingesteld?**

A: Dan gebruikt de app het standaardprofiel met Interleaved 2 of 5, Code 128, Code 39, QR-code, EAN-13, Data Matrix en UPC-A. Een ingestelde selectie vervangt dit volledige standaardprofiel.

**V: Waarom vraagt de app hoeveel prijsstickers ik wil printen?**

A: Dit gebeurt wanneer de policy `AskPriceLabelCopyAmount` is ingeschakeld.

**V: Waarom krijg ik een melding dat er al een prijssticker is geprint?**

A: De policy `CheckIfPriceLabelPrinted` controleert of er al eerder een prijssticker is afgedrukt voor het gescande orderitem.

**V: Welke printer en layout gebruikt de app?**

A: Dit wordt bepaald door `PriceLabelPrinter` en `PriceLabelLayout`. Als `PriceLabelPrinterPerCustomer` is ingeschakeld, kunnen de instellingen van de debiteur worden gebruikt.

**V: Waar pas ik de instellingen aan?**

A: De instellingen beheert u via Policy Beheer in het constantenscherm van de Backoffice.

---

## Waar vindt u de Price Labels-policies?

De policies voor Price Labels configureert u via het **Policy Beheer** in het constantenscherm van de Backoffice.
Volg onderstaande stappen om deze te benaderen:

| Stap | Uitleg |
| ----- | ----- |
| **1** | Open het **constantenscherm** in de Backoffice via de navigator. |
| **2** | Navigeer naar: **Systeem -> Users -> Policy Beheer**. |
| **3** | Selecteer of maak een policy aan, en navigeer vervolgens naar: **Apps -> Labeling -> Price labels**. |

Wilt u meer weten over het instellen en beheren van policies in het algemeen? Raadpleeg dan de [handleiding Policy Management](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Handleiding%20Policy%20Management%20NL.md).

Voor een overzicht van de Price Labels-policies kunt u ook de [Policy Handleiding Price Label](Policies%20Price%20Labels%20NL.md) gebruiken.
