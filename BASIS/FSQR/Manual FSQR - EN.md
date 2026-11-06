📘 Available in: [Nederlands](Handleiding%20FSQR%20-%20NL.md)

# Using and configuring FSQR

FSQR is information in a QR code on a label. Scanning the code can help Florisoft identify a trolley, box or order item, for example. What happens after scanning depends on the screen and workflow for which the code is configured.

## Contents

- [Why use FSQR?](#why-use-fsqr)
- [Preparation for administrators](#preparation-for-administrators)
- [Create an FSQR configuration](#create-an-fsqr-configuration)
- [Link an FSQR configuration to a policy](#link-an-fsqr-configuration-to-a-policy)
- [Technical settings by application](#technical-settings-by-application)
- [Example: opening a trolley with a label](#example-opening-a-trolley-with-a-label)
- [Checking and troubleshooting](#checking-and-troubleshooting)

## Why use FSQR?

The main benefit of FSQR is that one QR code on a label can be used by different scanning workflows. Instead of printing a separate barcode for each workflow, the same code can contain information that a compatible application uses to identify a trolley, box or order item, for example. Which workflows can use the code depends on their configuration.

The content is made up of segments: recognizable values such as a trolley ID or box ID. You can extend the configuration by adding the required segments, as long as the print process supplies the values and the scanning workflows support them. This lets a label support new scanning workflows without requiring a different barcode for each one.

An FSQR label can help employees avoid typing numbers by hand. Scan it in the screen that belongs to your workflow. A readable QR code will not automatically work in every Florisoft screen.

### Considerations for external parties

FSQR contains Florisoft-specific, combined information. External parties or scanning applications may be able to read the QR code but may not recognize or process its contents. Before using the code in an external workflow, check with the relevant party that its equipment and software support FSQR.

If Florisoft does not recognize the code or does something unexpected, ask your administrator to check that the label and scanning screen are configured for each other.

## Preparation for administrators

Before changing a configuration, determine:

- which object or information the label should identify;
- where the label is printed and which Florisoft screen will scan it;
- which values the print process puts in the QR code and which values the scanning screen needs.

Settings and support can vary by application and Florisoft version. Configuration requires access to constants, the print process policy and the print layout. A policy determines which configuration the print process uses. A print layout determines how the label looks. A decoder is the function that reads the scanned code. A selected field receives a value only when the print process supplies it; empty values are omitted. Test changes with the actual printer, labels and scanner. Make a copy of an existing layout first.

## Create an FSQR configuration

These steps are for administrators. A policy determines which configuration a print process uses. A print layout determines how the label is printed.

1. Open **FSQR Configuratie** in constants and create a configuration with a recognizable description, such as `NewTrolley - trolley ID`.
2. Save the configuration. Open **Fields** and add the required fields, such as `TrolleyId`. A field can occur once per configuration; its order can be configured.
3. Save the fields and select the configuration in the relevant print-process policy. Names and locations depend on the application; see the overview below.
4. Add a QR code to the correct print layout using the variable for that process. Check the printer and whether printing is enabled.
5. In the receiving screen, check that the FSQR decoder is available and, where configurable, allowed. Save changes and reload the settings.
6. Print and scan a representative label. Verify both that the scanner reads it and that the correct object opens or the intended action occurs.

> A configuration selects existing field types; it does not create values the print process does not supply. Some applications generate their own FSQR without using a general configuration.

## Link an FSQR configuration to a policy

The configuration selects the values and their order in the QR code. The policy links it to a print process; the layout determines which variable is printed.

1. Use the FSQR configuration you created above. If needed, add the required fields under **Fields** and save the changes.
2. Choose the intended print process from the table below and find its corresponding policy setting in policy management. Select your configuration as its value and save the policy. Repeat for each desired print process and check which policy applies to the user and situation.
3. Add a QR code to the active layout using the listed variable. Check the printer and whether printing is enabled.
4. Reload the settings, print a representative example and scan it in every intended workflow. Check the content and resulting action.

| Print process | Full policy setting | Layout variable |
|---|---|---|
| Box/distribution label and pick-order label | `Backoffice_Logistics_OrderPick_FSQRCConfiguration` | `FSQRC` |
| New trolley: TrolleyLoading, Transport Planning and Returnables Outbound | `Apps_Logistics_Packing_TrolleyLoading_TrolleyHandling_NewTrolley_TrolleyLabel_Printer_FSQRCode` | `FSQR` |
| Completed trolley: TrolleyLoading | `Apps_Logistics_Packing_TrolleyHandling_CompleteTrolley_CompleteTrolleyLabel_Printer_FSQRCode` | `FSQR` |
| Paused box: BoxPacking | `Apps_Logistics_Packing_BoxPacking_PauseBox_BoxLabel_FSQRCode` | `FsqrPayload` |
| Completed box: BoxPacking | `Apps_Logistics_Packing_BoxPacking_FinalizeBox_BoxLabel_FSQRCode` | `FsqrPayload` |
| Backoffice box packing | `Backoffice_Logistics_BoxPacking_FSQRCode` | Check the layout used |

**Example for Box and pick orders:** create a configuration containing, for example, `KaropbouwBarcode` if the receiving scanning workflow needs it. Select it at `Backoffice_Logistics_OrderPick_FSQRCConfiguration` and place `FSQRC` as a QR code on the label layout. Test the Box and pick-order labels separately and check that the barcode contains a value and is recognized.

The existing label variable `FSQR` uses a different setting: `Backoffice_Logistics_OrderPick_QRCodePayloadFields`. Test existing scanning workflows before replacing the variable. The pick-order packing list has an existing `FSQR` field; a link to the general configuration has not been confirmed for this list. Setting availability can vary by Florisoft version.

## Technical settings by application

The names below are for administrators configuring the settings. Which combination works depends on the print process and the screen where the code is scanned.

<details><summary>Settings and label variables by application</summary>

| Application | Configuration and use | Label variable |
|---|---|---|
| New trolley: Transport Planning and TrolleyLoading | Select a configuration containing `TrolleyId` at `Apps_Logistics_Packing_TrolleyLoading_TrolleyHandling_NewTrolley_TrolleyLabel_Printer_FSQRCode`. The code can open the associated trolley in TrolleyLoading. Returnables Outbound also uses this label flow. | `FSQR` |
| Completed trolley: TrolleyLoading | Select the configuration containing `TrolleyId` at the `FSQRCode` setting under `TrolleyHandling → CompleteTrolley → CompleteTrolleyLabel → Printer`. Check configuration and scanning for the intended next step. | `FSQR` |
| Paused or completed box: BoxPacking | Configure `FSQRCode` separately under `PauseBox → BoxLabel` and `FinalizeBox → BoxLabel`. This print flow supplies `BoxId` for the box code. Check the receiving application and its decoder. | `FsqrPayload` for the label; content lines also have `FSQR`. |
| Backoffice box packing | Select a configuration containing `BoxId` at `Backoffice_Logistics_BoxPacking_FSQRCode`. Box packing can also process an FSQR containing a box ID when scanned. Check which variable the box layout provides and test the workflow. | Check the layout used |
| Box and pick-order/distribution labels | The configurable variant uses `OrderPick_FSQRCConfiguration` and `FSQRC`. Available data varies by print flow. The existing `FSQR` uses a separate field selection, `OrderPick_QRCodePayloadFields`; do not replace one variable with the other without testing the complete workflow. Without a configuration, `FSQRC` is empty. | `FSQRC` or existing `FSQR` |
| PriceLabels | Scan an FSQR containing `KaropbouwBarcode` to find the associated order item for price labels. Allow `FSQR` in `Apps_Logistics_Labeling_PriceLabel_BarcodeSettings_ValidBarcodeDecodeOptions` and ensure the scanner can read QR codes. | Depends on the label source |
| Unique carrier | Supported processes place a carrier ID in the FSQR. Location processing, final check, trolley loading, PalletPicking and VehicleLoading use carrier information in specific workflows. Exact printing and scanning settings differ by process. | Depends on the layout, including `FSQR` |
| Internal picking carrier | OrderPicking can create a carrier label containing `InternalPickingCarrierId`; Sorting can recognize the internal carrier through FSQR. This label flow generates its own content; test both steps together. | `FsqrPayload` |
| Stock and location | Slotting and StockItemInfo can recognize a unique carrier; StockCounting also includes FSQR processing. The outcome depends on the scan flow and available stock. Check each workflow with the selected code. | Depends on the label source |
| Cash & Carry | A supported checkout scan can recognize an FSQR discount ID, among other things; unique carrier processing takes a different route. Check the objective and test the actual checkout workflow. | Depends on the label source |
| Returnables session and packaging | Supported Returnables scanning workflows can recognize a session ID or packaging information. Check the configuration and intended scan page for the relevant workflow. | Depends on the label source |
| Policy situation | An FSQR can contain a policy situation recognized by a supporting policy scanning function. Check the procedure and permissions in the relevant application. | Depends on the source |

This overview distinguishes printing from scanning: the existence of a field or decoder does not mean every source and receiving application combination is supported. Other process integrations may depend on the version or customer-specific configuration; check them with Florisoft before use.

### Available field types

The configuration includes the following field types, among others. Their exact meaning and availability may vary by print and scanning workflow.

| Field | Brief context |
|---|---|
| `ClientCode` | Client code. |
| `CustomerId` | Customer identifier. |
| `ExterneBarcode` | Barcode value from an external system. |
| `KaropbouwBarcode` | Barcode for an order item during trolley building. |
| `PolicySituation` | Code for a policy situation. |
| `BakBarcode` | Barcode of a container. |
| `UniekeDrager` | Identifier for a unique carrier. |
| `ExterneGuid` | Externally unique identifier. |
| `KortingId` | Discount identifier. |
| `Banduitgang` | Code for a conveyor exit. |
| `HandlingZone` | Handling zone identifier. |
| `Gate` | Code for a gate. |
| `Fustcode` | Packaging code. |
| `Richting` | Code for a direction. |
| `ReturnablesSessieId` | Returnables session identifier. |
| `PartijBarcode` | Barcode for a batch or lot. |
| `BoxId` | Box identifier. |
| `TrolleyId` | Trolley identifier. |
| `InternalPickingCarrierId` | Identifier for an internal picking carrier. |

Select only fields that the print flow actually supplies and the receiver needs. For example, the new-trolley label flow supplies `TrolleyId`; adding another field does not automatically populate it.

</details>

## Example: opening a trolley with a label

This example is for administrators configuring a new-trolley label.

1. Create and save an FSQR configuration containing `TrolleyId`.
2. Select it at `Apps_Logistics_Packing_TrolleyLoading_TrolleyHandling_NewTrolley_TrolleyLabel_Printer_FSQRCode`.
3. Configure the printer and layout. Add a QR code using the `FSQR` variable. Allow the FSQR decoder in the relevant TrolleyLoading screen.
4. Print a new trolley label from Transport Planning. Scan it in TrolleyLoading and verify that the associated trolley opens.

## Checking and troubleshooting

- Keep the content to what the workflow needs. More data can make the code denser and harder to scan.
- Test a code containing multiple values in **every** receiving process. Some decoders prioritize one recognized result, so a combination can behave differently from individual codes.
- Test short and representative long values, print sizes and actual scanning conditions. Enlarge the QR code or adjust printer settings if necessary.
- Use a short, recognizable `FSQRClientCode` where the process uses that setting. Before changing an existing code, check the dependent processes.
- Anyone with a suitable scanner can read a QR code. Do not include confidential information that the process does not need.

| Problem | Check |
|---|---|
| No QR code on the printout | Check that printing is enabled, the correct layout is used, and the QR code refers to the correct variable. Check that the configuration is linked to the correct policy. |
| QR code is readable but the app recognizes nothing | Check the permitted decoder for the screen, the field value in the code, and whether the screen supports that use. |
| Wrong object or unexpected action | Check the content and which value the receiver uses, especially with multiple fields. Also check the policy situation and current data. |
| A selected field is missing | Check that the print process supplies the value and that it is populated for this print. Empty fields are omitted. |
| Difficult to scan | Check print quality, size, contrast and placement. Test with the real printer and scanner and representative content. |

When changing an existing production configuration or layout, test all processes that share it before putting the change into use.
