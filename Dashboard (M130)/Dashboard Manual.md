# Florisoft manual Dashboard

<img src=".Dashboard Manual/media/image1.png" />

Welcome to the manual for the Florisoft Dashboard on the webshop. This manual will explain how to install the dashboard in your webshop, and how to add tables and charts to the page.

Once you have followed the steps described below, you will have to use SQL queries in order to correctly get data into your charts and tables. If you do not know how to do this, contact Florisoft to plan a follow-up appointment.

## User set up
To begin, go to the Florisoft application and head to the Constants.

<img src=".Dashboard Manual/media/image2.png" />

Once in the Constants, go to System->Internet->CMSZones and click on the feather with the plus sign at the top of the screen to add a new CMS zone.

<img src=".Dashboard Manual/media/image3.png" />

Now, enter a code and a description to recognise the zone. We used "DASH" and "Dashboard" in this example. The field "email" does not have to be filled in. Once filled, press OK.

<img src=".Dashboard Manual/media/image22.png" />

Head to the debtors in the constants (Community->Debtor data->Debtors) and create a new debtor called DASH. Also fill in the description.

Navigate to internet->CMS and click on the "CMS zones" button. In the "Zone" row, enter the code you have given the CMS zone. For example, here we used DASH. Once the code has been typed, press enter. The system will have filled in the rest of the information.

Now you have connected the debtor with the zone we will use to create your dashboard.

Press OK to continue.

<img src=".Dashboard Manual/media/image4.png" />

Then head to "internet access" in the debtor screen. Make sure both options shown are checked!

<img src=".Dashboard Manual/media/image5.png" />


## Webshop settings
The first thing you will have to do is to restart the webshop. This is needed so the shop can update the CMSzones, and the dashboard pages won't be visible to everyone (customers and employees alike).

Head to Florisoft and select Maintenance->Purge, then select "No" if the pop-up below shows.

<img src=".Dashboard Manual/media/image23.png" />

<img src=".Dashboard Manual/media/image11.png" />

Then stop the webshop, this can take a while. Make sure you do this at a time where noone or not many people are on the webshop, because their connection will be disrupted. If Florisoft asks for an update, select "No".

<img src=".Dashboard Manual/media/image12.png" />

Once fully stopped, start it up again.

Now head to your Florisoft webshop, and log in with the debtor you have chosen (which has access to the created CMS zone).

Select the dropdown menu on the top right, and select "Beheer".

<img src=".Dashboard Manual/media/image6.png" />

A black bar will show on the top of your screen. Here, head to "Categories" or "Categorieen" and select "New Category" or "Nieuwe Categorie".

Here, fill in the name of the dashboard. In this example we created the categorie "Rapporten" (or Reports).
**!!Make sure the option "Is zichtbaar in navigatie" or "Is visible in navigation" is checked!!**

Don't click save just yet.

<img src=".Dashboard Manual/media/image7.png" />

Head over to the tab "Visibility" in the Category settings. Click on the dropdown menu under "zone" and select the CMS zone you have made earlier.

<img src=".Dashboard Manual/media/image8.png" />

Now press save.

You have now made a new page! The page "Rapporten" (The name you have give the page) will show in the webshop.

By connecting a debtor which can log into the webshop with the CMSzone "DASH", and then making a page with the CMSzone "DASH", <u>ONLY</u> the selected debtor will be able to see the page (Rapporten).

Now, we want to create seperate pages to distinguish the different reports you can make. Again look to the black bar at the top of the screen and now go to "Pages" or "Pagina's" and select "New Page" or "Nieuwe pagina".

<img src=".Dashboard Manual/media/image9.png" />

Fill in the Name and select the category we've just made. Also, check both checkboxes.

Don't hit save just yet.

<img src=".Dashboard Manual/media/image10.png" />

Head to "visibility" or "zichtbaarheid" and select the CMSzone in the dropdown menu under "Zone" (Dashboard).

Now you can save.

You can do this for how many pages you would like (ofcourse, keep in mind that too many pages will make it look messy) by repeating the proces described above (only the webshop part).

## Adding dashboard components
Head to the page where you want to create a chart or table. In this case it is the page we just created. (The names in the example pictures have changed, you should still see the created paged with your chosen names)

<img src=".Dashboard Manual/media/image13.png" />

Once in the page, make sure the Editor modus is on. Do this by going to the black bar on the top of the screen and select the "Editor" on the left and enabling it.

<img src=".Dashboard Manual/media/image24.png" />

Now you will see extra bars appear.

<img src=".Dashboard Manual/media/image14.png" />

Before you can add charts, you will have to add rows. Click on the plus (+) on the right of the newly appeared grey bar. Now look for a standard Row (NOT the PictureRow) and click on the green plus.

<img src=".Dashboard Manual/media/image15.png" />

Once the screen below pops-up, you can just click save.

<img src=".Dashboard Manual/media/image16.png" />

The added row will show up, along with a "Column" bar. Under the collumn bar you will always place your charts/tables. In the column bar, select the plus and go to the dashboard tab. Here you can select a variety of dashboard items. Select one, for example we will use the TableView.

<img src=".Dashboard Manual/media/image17.png" />

A new screen will pop up, where you can give it a name and enter the SQL query. Again, SQL queries will be required in order to extract data from Florisoft into the webshops dashboard.

Here we use a simple SQL query to show "debnr" from the dataset "horder".

<img src=".Dashboard Manual/media/image18.png" />

After hitting the save button, the table will fill itself with the data.

<img src=".Dashboard Manual/media/image19.png" />

Another example is the bar chart. Add another column to the Row by selecting the plus in the "Row" bar and selecting the plus (+) beneath Column. Again, hit save.

A second column will appear, select the plus sign in the column and add a chart. Then head to the header 'Datasets".

<img src=".Dashboard Manual/media/image20.png" />

Click on "Add Item" or "Item toevoegen" and click on the open field to type in the query. Here you can add multiple queries for the bar chart.

<img src=".Dashboard Manual/media/image21.png" />

Once you've hit save, the bar chart will show. The same can be done for line charts and pie charts.

This is the base explanation for using the Dashboard in the webshop. If you need any help with the SQL queries, contact Florisoft to make a follow-up appointment.