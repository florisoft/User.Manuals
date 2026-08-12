![Florisoft logo](https://raw.githubusercontent.com/florisoft/User.Manuals/main/fslogo.png)

# Manual – Address Label

## What is Address Label?

Address Label in the Florisoft Shipping App lets you print address labels for customers or hubs. The label supports shipment identification during the internal logistics process and during handover to the carrier.

You can open Address Label directly in the Shipping App. The print function can also be available as an additional action in other Florisoft apps. The configured policies determine which printer, layout, default quantity, and barcodes are available.

If you create or maintain an address label layout, see the [overview of all available print variables](Address%20Label%20Print%20Variables%20-%20EN.md).

## Requirements

Using Address Label requires at least:

- the Florisoft Shipping App;
- access to the Address Label use case;
- a valid Florisoft user;
- the Address Label licence;
- an active JobAgent;
- a configured printer and report layout;
- a scanner when using the scan workflow.

## Procedure

### Step 1: open Address Label

Open the Shipping App from the Florisoft Hub App or through the Shipping App icon on your device. Sign in with your user credentials and select **Print address label**.

The scan screen opens.

### Step 2: search for or scan a customer

Scan a supported barcode. The `BarcodeDecodeOptions` policy determines which barcodes are recognised.

If scanning is not possible, use the search function at the bottom of the screen to open the customer overview.

<details>
<summary><b>Click here for an example</b></summary>
<img src="Media/Doorloop/1.png">
</details>

### Step 3: select the customer

Find the customer in the list or use the search bar at the top. Select the customer and check the summary at the bottom of the screen. Then select **Continue**.

This manual selection step is skipped after a valid scan.

<details>
<summary><b>Click here for an example</b></summary>
<img src="Media/Doorloop/2.png">
</details>

### Step 4: check the label details

Check the information that will be printed on the label.

The app determines the address in this order:

1. If delivery details have been entered for the customer, the app uses the delivery name and delivery address.
2. If no delivery address is available, the app uses the customer's standard name and address details.

Also check:

- the customer name;
- the displayed address;
- the date on the label;
- the number of labels.

The date can be changed with the date picker. Adjust the number of labels with the plus and minus buttons. The initial quantity is determined by `DefaultCopies`.

<details>
<summary><b>Click here for an example</b></summary>
<img src="Media/Doorloop/3.png">
</details>

### Step 5: print the label

Select the green print button when all details are correct. After a successful print job, the app returns to the scan screen. A green notification at the bottom shows the printer to which the job was sent.

The app is then ready for the next customer.

<details>
<summary><b>Click here for an example</b></summary>
<img src="Media/Doorloop/4.png">
</details>

## Direct printing

When **Direct print** is enabled on the scan screen, the app immediately prints one address label after a valid scan. The confirmation screen is skipped.

Only use direct printing after checking the customer details and printer settings. Disable the option if you want to verify the date, address, or number of labels for every print job.

## Starting from another Florisoft app

Address Label can be opened from a supported logistics process. The active customer or hub is then automatically passed to the Shipping App, so the search and scan steps are skipped.

The integration is available in, among others:

- Order Picking;
- Final Outbound Check;
- TrolleyLoading;
- Returnables Outbound.

The action is only visible when the Address Label licence is active and the relevant app and policies allow the additional action. For more information about app integrations, see the [Cloud Applications overview](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/README_EN.md).

To use Address Label from Final Outbound Check, add `AdressLabel` to `Apps → Logistics → QualityControl → FinalOutboundCheck → Addons → EnableAddons`. The Shipping settings for Address Label, including `Enabled`, `PrinterName`, and `ReportName`, must also be fully configured.

## Configuring policies

Open the constants screen in the Backoffice through the navigator and go to **System → Users → Policy Management**. Select or create a policy and navigate to **Apps → Logistics → Shipping → AddressLabels**.

For more information about creating, assigning, and managing policies, see the [Policy Management manual](https://github.com/florisoft/User.Manuals/blob/main/BASIS/Policy%20Management/Manual%20Policy%20Management%20EN.md).

> The availability of settings may depend on the configuration and version of your environment.

### PrinterSetting

The `PrinterSetting` policy group contains the settings used to print address labels.

| Setting | Behaviour |
| --- | --- |
| `PrinterName` | Determines the printer to which the address label is sent. |
| `ReportName` | Determines the report layout or template used for the address label. Only report layouts with list type `Stickers` or `AdresSticker` can be selected. |
| `DefaultCopies` | Determines how many labels are initially selected on the print screen. |
| `Enabled` | Enables or disables the printer settings for Address Label. |

The JobAgent must be active for printing. If it is unavailable, printers are not shown or the print job cannot be completed. See the [JobAgent manual](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Apps%20Windows/Job-Agent/Manual%20Job-Agent%20-%20EN.md) for installation and configuration.

### BarcodeDecodeOptions

`BarcodeDecodeOptions` determines which barcode types the app recognises on the scan screen. Select only the decoders used in the logistics process. Multiple types can be enabled at the same time.

A decoder tells the app how to interpret the information in a barcode. Depending on the configuration, an order, trolley, or other logistics barcode can lead to the corresponding customer.

## Troubleshooting

| Problem | Check |
| --- | --- |
| The tile or additional action is not visible. | Check the licence, use case access, and the policies of the app from which Address Label is started. |
| A barcode is not recognised. | Check whether the correct type is included in `BarcodeDecodeOptions` and whether the barcode leads to a customer. |
| The wrong address details are shown. | Check the customer's delivery details first and then the standard address details. |
| The printer is unavailable. | Check `Enabled`, `PrinterName`, and whether the JobAgent is active and reachable. |
| The `ReportName` selection list is empty. | Check that a report layout with list type `Stickers` or `AdresSticker` is available. Only these list types are shown. |
| The wrong label or format is printed. | Check the value configured for `ReportName`. |
| The default number of labels is incorrect. | Check the value of `DefaultCopies`. |
