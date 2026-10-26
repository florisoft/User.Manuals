<img src="../../fslogo.png">

# Florisoft ImageEditor Manual

Use ImageEditor to remove backgrounds from product photos. Add photos, protect product details with a mask when needed, compare previews and save the chosen result with a white background.

[Nederlandse handleiding](ImageEditor%20Handleiding%20-%20NL.md)

## Before you begin

Use a configured ImageEditor app with an available AI model for image processing. Ask your administrator to check any missing model files.

You need read access to your photos and write access to the input and output folders. The app supports JPG, JPEG, PNG and WebP. Empty files and files exceeding the configured size limit are skipped when adding photos. The default limit is 10 MiB per photo; your configuration may differ.

## Configure the folders

1. Open the menu in the upper right corner. The **Settings** window appears.
2. Enter the path to your source photos in **Input folder**. Prefer an absolute path.
3. In **Full-resolution output folder**, enter where you want to save the final photos.
4. Select **Save settings**.

Both fields are required. The app creates missing folders if your permissions allow it. Saving refreshes the input list; select a photo again afterwards. Select **Cancel** to close the window without saving your changes.

## Add and open a photo

1. Select **Photo** in **Input**.
2. Select one or more photos. The app copies them into the input folder and keeps the original files. If a name already exists, the copy receives a number, such as `rose-2.jpg`.
3. Select the photo you want to edit in the list on the left.

The selected photo appears in the centre. **Results** on the right contains the source and available profiles. Previously saved masks and existing previews are loaded when you open a photo.

If your photos are already in the input folder, use the refresh icon next to **Photo** to reload the list. Only files directly in that folder are listed; subfolders are not searched.

## Generate an initial preview

1. Select a photo in **Input**.
2. Select **Generate previews** and wait for processing to finish.
3. Inspect the **medium** preview that appears in the centre.
4. Click another profile on the right to compare the result. Clicking a tile with a plus sign generates that preview; clicking an existing preview opens it.

The five available profiles are **lightest**, **light**, **medium**, **strong** and **extraheavy**. Lighter profiles generally retain more edge detail. Stronger profiles remove more and may also remove fine product details. Compare thin stems, leaves and the product outline carefully.

Use **+**, **-**, **1:1** and **Fit** to inspect details. Previews are reduced images; publishing processes the source again to produce the final photo.

## Protect product details with a mask

If the preview loses part of the product, select **Source** on the right. You can only edit the mask on the source image.

A mask marks areas to keep. You do not need to paint the entire background.

| Tool | How to use it |
|---|---|
| **Draw mask** | Hold the left mouse button and paint over product details that should be kept. |
| **Eraser** | Remove a marking from the mask. This does not delete source pixels or force the AI to remove that area. |
| **Magic wand** | Click an area to add connected pixels of a similar colour to the mask. |
| **Brush** | Adjust the size of the drawing and eraser tools. |
| **Hand** | Drag to pan the zoomed image. |

Select **Undo** to reverse a recent mask edit. Select **Clear mask** to remove all markings for the current photo.

Select **Save mask** before switching to another source photo or closing the app. The mask is saved next to the source, by default as a file such as `rose-keep.png`. Generating previews and publishing also save the current mask. Saving an empty mask removes the corresponding PNG mask file.

## Refine the cutout

Select **Source** and adjust the sliders as needed.

| Setting | Visible effect |
|---|---|
| **Preserve** | A higher value retains more partially recognised details; a lower value removes more. |
| **Edge** | A positive value expands the retained area; a negative value contracts the edge. |
| **Close gaps** | Increase the value to close small holes in the automatically generated mask. Check that intentional openings remain visible. |
| **Wand** | Controls the colour difference accepted by the magic wand. A higher value selects a wider colour range on the next click. |

After making changes, select **Generate previews** again. This recalculates **medium**. Then click a profile that has not yet been generated to create another variant using the current settings. Clicking an existing preview only opens it; it does not refresh it automatically. Use the newly calculated medium preview to assess your latest corrections.

## Save the final photo

1. Select a generated preview on the right and inspect the result.
2. Select **Publish**.
3. Wait for processing to finish. The app displays the processed photo and reports the saved file path.
4. Open the configured output folder to use the file elsewhere.

**Publish** processes the source using the selected profile, the current mask and the current slider settings. Generate and inspect a new preview after making corrections. The app saves the result as a **JPG with a white background**. The interface does not offer transparent output or a PNG output option.

Publishing saves a file in your output folder. It does not automatically send the photo to a webshop. An existing output file with the same name is overwritten; keep a copy first if needed.

## Troubleshooting

| Problem | What to do |
|---|---|
| The input list is empty | Check the input folder and file format, and ensure the photos are directly in that folder. Refresh the list. |
| A photo is not added | Check that the file is not empty, uses a supported format and is within the configured size limit. |
| Drawing is unavailable | Select **Source** in **Results** and wait for any processing to finish. Previews are read-only. |
| Publishing is unavailable | Select a generated preview. You cannot publish the source or a profile that has not been generated. |
| Folder settings cannot be saved | Fill in both paths and check access and write permissions. |
| The app reports insufficient memory for AI processing | Close other demanding applications and try again. If the message persists, ask your administrator to check available memory and the AI configuration. |
| A preview shows earlier corrections | Recalculate **medium** using **Generate previews**. Clicking an existing profile tile only opens it. |
