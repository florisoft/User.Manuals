<img src="../../fslogo.png" alt="Florisoft Corporate Logo">

# Florisoft Manual Dashboard - M130

Welcome to the Florisoft manual about making changes to the dashboard.<br>This manual requires you to have the Florishop Dashboard addon module in your Florisoft license.

The first chapter covers the CMS-zones and their role in dashboarding, the second chapter covers the different settings accesible for each dashboard user. In chapter three you will learn how to make a dashboard page only visible to specific users.

Lastly chapters four to nine cover the various functionalities that the dashboard addon module has.

:warning: **Images in this manual may vary from what you will see on your screen.**

## Table of contents

[1. Setting up CMS-zones](#setting-up-cms-zones)  
[2. Setting up dashboard users](#setting-up-dashboard-users)  
[3. Creating and editing pages](#creating-and-editing-pages)  
[4. Creating visuals](#creating-visuals)  
[5. Creating and configuring tables](#creating-and-configuring-tables)  
[6. Creating pie charts](#creating-pie-charts)  
[7. Creating a counter](#creating-a-counter)  
[8. Creating a progressbar](#creating-a-progressbar)  
[9. Query filters](#query-filters)  

## Setting up CMS zones

CMS zones are so-called 'labels' that are assigned to debtors and webshop pages in order to manage which debtors see which pages. A debtor with a label/CMS zone assigned will see all pages that also have this label/CMS zone. Pages without a CMS zone/label are visible to everyone, unless otherwise indicated in the visibility of the page. A visualization of this can be found below:

<details open><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image1.png"></details>

This chapter talks about the creation of CMS zones and configuring webshop pages with these CMS zones. By setting a CMS zone on a certain page, you are able to hide it from all users except the users who have the same CMS zone assigned. Assigning CMS zones to users will be discussed in the next chapter.

|Step|Explanation|
|:-:|:--|
|**1**|Start up Florisoft and sign in with your Florisoft user.|
|**2**|Within the Florisoft navigator, navigate to the constants. <details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image2.png"></details>|
|**3**|Within the constants, navigate to the following settings: <br>*System(#1) --> Internet(2#) --> CMS zones(#3)*<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image3.png"></details>|
|**4**|Use the plus sign (#4) to add a new CMS zone. Type in a code (#5) and a description (#6). <br> :bulb: 'Email' stays empty.|
|**5**|Save the CMS zone.|

## Setting up dashboard users

Stay in the constants screen and follow the steps below:

|Step|Explanation|
|:-:|:--|
|**1**|Navigate the constants screen to the debtor settings in the following path:<br>*Community→Debtor data→Debtors*<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image11.png"></details>|
|**2**|Create a new dashboard debtor or use an existing debtor(#4)|
|**3**|In de debtor settings screen navigate to:<br>*Internet(#1)→CMS(#2)*<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image12.png"></details>|
|**4**|Click on the 'CMS Zones' button(#3) and type in the code for the newly created CMS zone in the column named 'zone' and press enter. The complete name of the CMS zone is now shown in the grid.|
|**5**|Save the made changes.<br>:warning: **Make sure that your default dashboard user does not have admin privileges on the webshop. If needed create multiple users.**|

## Creating and editing pages

Log in to the webshop with a user that has admin privileges.<br>
:memo: If you use a user that does not have access to the concerning CMS zone the newly created page won't be visible.

|Step|Explanation|
|:-:|:--|
|**1**|Once logged in open the user options(#1), select 'management'(#2) and navigate to 'CMS'(#3).|
|**2**|Inside the 'CMS' click on the plus sign next to the 'Categories' option.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image5.png"></details> |
|**3**|A new screen should open, fill out the follwing fields:<br>1. **Category URL**: this will be visible in the URL. In the example below it would be: [www.webshop.nl/testdashboard/]()<br>2. **Category display name**: This is how the user will see in webshop navigator<br>3. **Is visible in the navigator**: By enabling this you make sure the category is visible on the webshop<br>4. Navigate to the tab 'Visibility'. <details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image6.png"></details> |
|**4**|In the tab 'visibility' select the newly created CMS zone(#5) and save it.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image7.png"></details>|
|**5**|After saving the category, go back to the black bar above and once again select CMS. Click on the plus sign next to pages.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image8.png"></details>|
|**6**|A new screen will open, fill out the following fields:<br> 1. **URL**: this will be added at the end of the URL. The example image below would lead to the following URL: [www.webshop.nl/testdashboard/testdashboardpagina]()<br>2. **Page display name**: page name that is visible to the user on the webshop.<br>3. **Select a category**: Select the category that was created. <br>4. **Is visible in navigation**: This checkmark makes sure the page is visible for users (if the user has the rights). <br>5. **Zicthbaar in andere CMS componenten**: This makes sure the component is visible for other components. <br>6. Navigate to the tab 'visibility'.<br><details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image9.png"></details>|
|**7**|Within the tab 'Visibility' add the newly created CMS zone and save it.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image10.png"></details>|

The new page will be visible in the webshop's navigator for debtor's that have access to the page's CMS zone.

<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image13.png"></details>

:warning: **If you haven't coupled the CMS zone to your administrator account it won't be visible. Log in with a user that has access to the right CMS zone in order to view the new page.**

## Creating visuals

Navigate to an existing dashboard page and log in with a user that has administrative rights.

:warning: This dashboard component makes use of SQL (or Sequel), a database querying language used to extract data. Please exercise caution when devising and implementing bespoke SQL queries, as creating suboptimal queries may lead to performance issues in your webshop. It is incumbent upon you to assume any risks associated with crafting and executing self-designed SQL queries. By utilizing this component, you acknowledge and accept these terms.

:warning: SQL can be written in two dialects: ADS SQL and PostgreSQL. The editor uses ADS SQL as a standard. However, you can write in PostgreSQL by adding '--pg' at the top of your query.

Follow the steps below to set up graph/diagram:

|Step|Explanation|
|:-:|:--|
|**1**|Start the editor mode by turning on management (1#) and then starting the editor (#2).<br><details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image14.png"/></details>|
|**2**|Add the chart under a column, the location of which is irrelevant. Use the plus sign in the column.<br><details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image15.png"/></details><br> :memo: Make sure there is enough space for the chart to be clearly visible.|
|**3**|Select the 'Dashboard' tab (1#) and then add the 'Chart' component using the green plus sign (2#).<br><details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image16.png"/></details>|
|**4**|	After adding the component, give the chart a title (1#) and indicate what type of chart this is (2#).<br><details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image17.png"/></details>|
|**5**|Navigate to the 'Datasets' tab (3#) and add a new item (4#). Then give this item a name (5#) and optionally a color (6#). Next, add your query to the query editor by clicking on the white area or green button (7#).<br><details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image18.png"/></details><br>:memo: You can add multiple items (#4) to show multiple lines/bars side by side|
|**6**|Before saving your query, you need to validate it. Do this by clicking on the green checkmark button (#1). If it can execute the query, it will display a message (#2). If the query cannot be executed, you will receive an error message on the screen. Only when the query works can you save it.<br><details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image19.png"/></details> <br>:warning: Make sure your queries do not take longer than 1500ms to execute!|

When writing a correct SQL query a chart should appear.
<details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image20.png"/></details><br>

## Creating and configuring tables

Navigate to a dashboard page using a user that has access to the CMS zone.

:warning: This dashboard component makes use of SQL (or Sequel), a database querying language used to extract data. Please exercise caution when devising and implementing bespoke SQL queries, as creating suboptimal queries may lead to performance issues in your webshop. It is incumbent upon you to assume any risks associated with crafting and executing self-designed SQL queries. By utilizing this component, you acknowledge and accept these terms.


|Step|Explanation|
|:-:|:--|
|**1**|Enable **mangement** mode and start the editor.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image14.png"></details>|
|**2**|Add a table under a column using the plus sign, the location itself is irrelevant.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media\image15.png"></details><br>:memo: : Make sure that there is enough space for the table to be clearly visbile.|
|**3**|Select the tab 'Dashboard'(#1) and add a 'Tableview' component using the green plus sign.(#2)|
|**4**|After adding the component, give the table a title <details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image25.png"></details><br>|
|**5**|Add your query to the query editor by clicking on the white input field or the gereen button(#5).|
|**6**|Before saving your query make sure to validate it. Do this by clicking on the green button that contains the checkmark. If the query is correct a notification should appear it executed succesfully, it the query was erroneous an error message should appear instead.|

If you have written a correct SQL query a table should appear.<details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image23.png"/></details><br>

## Creating pie-charts

Navigate to an existing dashboard page and login with a user that has administrative privileges.

:warning: This dashboard component makes use of SQL (or Sequel), a database querying language used to extract data. Please exercise caution when devising and implementing bespoke SQL queries, as creating suboptimal queries may lead to performance issues in your webshop. It is incumbent upon you to assume any risks associated with crafting and executing self-designed SQL queries. By utilizing this component, you acknowledge and accept these terms.

:bulb: SQL can be written in two dialects: ADS SQL or PostgreSQL. If you want to write in PostgreSQL you to add the indicator '--pg'. ADS SQL does not require an indicator.

*Follow the steps below to set up a pie chart dashboard component:*

|Stap|Uitleg|
|:--|:--|
|**1**|Enable management mode and start the editor.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image14.png"></details>|
|**2**|Add the pie chart to a column, the location of which is irrelevant by making use of the plus icon.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image15.png"></details><br>:bulb: Make sure that there is enough space for the piechart to be visible.|
|**3**|Select the 'Dashboard' tab(#1) and add a CMS element called 'Piechart' using the green plus sign.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image24.png"></details>|
|**4**|After adding the component, give the piechart a name and title(#1), decide what kind of piechart it is, whether it is percentages or numbers and the amount of decimals.<details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image25.png"/></details><br>
|**5**|After, add your query into the query editor by clicking on the green buttons or the white square (5#)|
|**6**|Make sure to validate both queries before saving them, do this by clicking on the green button(#1). If the SQL query is correct it will prompt a success message, and if the query is erroneous an error message will show. Only if the SQL query is syntactically correct you may save it.<details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image19.png"/></details><br><br><br>:warning: **Do also make sure that the query doesn't take longer than 1500ms to complete.**|


If you have written a correct SQL query a pie chart should appear.
<details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image26.png"/></details><br>

## Creating a counter

Navigate to a dashboard using a user that has administrative privileges.

:warning: This dashboard component makes use of SQL (or Sequel), a database querying language used to extract data. Please exercise caution when devising and implementing bespoke SQL queries, as creating suboptimal queries may lead to performance issues in your webshop. It is incumbent upon you to assume any risks associated with crafting and executing self-designed SQL queries. By utilizing this component, you acknowledge and accept these terms.

:bulb: SQL can be written in two dialects: ADS SQL or PostgreSQL. If you want to write in PostgreSQL you to add the indicator '--pg'. ADS SQL does not require an indicator.

Follow the steps below to configure a counter:

|Step|Explanation|
|:-:|:--|
|**1**|Enable management mode and start the editor.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image14.png"></details>
|**2**|Add a CMS component to a column, the location of the counter itself is irrelevant but do make sure it is clearly visible.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image15.png"></details>|
|**3**|Select the 'Dashboard' tab(#1) and add a CMS element called 'Gauge' using the green plus sign<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image46.png"></details>
|**4**|After adding the component, give the gauge a title(#1), minimimum & maximum values(#2), range of possible colours(#3), the amount of segments in the counter(#4) and the amount of decimals.(#5)<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image27.png"></details>|
|**5**|Now add your query to the query editor to the white input field or by clicking on the green button(#6)|
|**6**|Make sure to validate both queries before saving them, do this by clicking on the green button(#1). If the SQL query is correct it will prompt a success message, and if the query is erroneous an error message will show. Only if the SQL query is syntactically you may save it.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image19.png"></details><br><br>:warning: **Do also make sure that the query doesn't take longer than 1500ms to complete.**|

If you have written a correct SQL query a counter should appear.
<details><summary><b>Click here for your image</b></summary><img src=".Dashboard Handleiding\media EN\image28.png"/></details><br>

## Creating a progressbar

Navigate to a dashboard page logged in as a user that has administrative rights.

:warning: This dashboard component makes use of SQL (or Sequel), a database querying language used to extract data. Please exercise caution when devising and implementing bespoke SQL queries, as creating suboptimal queries may lead to performance issues in your webshop. It is incumbent upon you to assume any risks associated with crafting and executing self-designed SQL queries. By utilizing this component, you acknowledge and accept these terms.

:bulb: SQL can be written in two dialects: ADS SQL or PostgreSQL. If you want to write in PostgreSQL you to add the indicator '--pg'. ADS SQL does not require an indicator.

Follow the steps below to configure a progressbar:

|Step|Explanation|
|:-:|:--|
|**1**|Enable management mode and start the editor <details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image14.png"></details>|
|**2**|Add a counter under the colum using the plus sign, the location of the counter itself is irrelevant.<br><br>:memo: Do however make sure that the resulting counter is clearly visible.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image15.png"></details>||
|**3**|Select the 'Dashboard' tab and add a 'Progressbar' CMS component using the green plus sign.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image29.png"></details>|
|**4**|After adding the component, give the progressbar a title(#1), colour(#2) and an amount of decimals(#3).<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image30.png"></details>|
|**5**|Add two queries: one that returns the total value E.G. total stems sold and one that returns the partial value E.G. amount of stems sold online.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image31.png"></details> |
|**6**|Make sure to validate both queries before saving them, do this by clicking on the green button(#1). If the SQL query is correct it will prompt a success message, and if the query is erroneous an error message will show. Only if the SQL query is syntactically you may save it.<br><br>:warning: **Do also make sure that the query doesn't take longer than 1500ms to complete.**|

If you have written a correct query a progressbar should appear.

<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image32.png"></details>

## Configuring filters

Filters can be used to retrieve a selection of the available data. There are different kinds of filters, they are described in the text below.

Navigate to a dashboard page using a user that has administrator privileges.

:warning: This dashboard component makes use of SQL (or Sequel), a database querying language used to extract data. Please exercise caution when devising and implementing bespoke SQL queries, as creating suboptimal queries may lead to performance issues in your webshop. It is incumbent upon you to assume any risks associated with crafting and executing self-designed SQL queries. By utilizing this component, you acknowledge and accept these terms.

:bulb: SQL can be written in two dialects: ADS SQL or PostgreSQL. If you want to write in PostgreSQL you to add the indicator '--pg'. ADS SQL does not require an indicator.

Follow the steps below to set up a filter:

|Step|Explanation|
|:-:|:--|
|**1**|Enable the management mode and start the editor.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image14.png"></details>|
|**2**|Add a filter under the column using the plus sign, the location itself is irrelevant.<br><br>:memo: Do however make sure that there is enough space for the filter to be clearly visible.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image15.png"></details>|
|**3**|Select the 'Dashboard' tab(#1) and add a 'FilterToolbar' CMS component using the green plus sign(#2).<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image33.png"></details>|
|**4**|You can direcly save this component, we don't need to configure this any further.|
|**5**|Click on the plus sign in the Filtertoolbar to show the various filters that are available.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image34.png"></details> |

The following filters are available in the FilterToolbar component:

- [Query filter](#query-filters)
    - Make a selection using an SQL query to filter data.

- [PresetValueFilter](#preset-value-filter)
    - Filter the data using predetermined data.

- [QueryFilterDate](#query-filter-date)
    - Filter the data using a extendable calendar to select date ranges to fitler the data.

In [this chapter](#the-use-of-filters) you can read how to use these filters.

:memo: Multiple filters can be added to the same FilterToolBar.

## Query filters

|Step|Explanation|
|:-:|:--|
|**1**|Add a query filter using the green plus sign.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image35.png"></details>|
|**2**|Add a Keyword name and label(#1), make sure these apptly describe the Keyword in the description field. You can also give it a default value and decide if the keyword accepts multiple values.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image38.png"></details>|
|**3**|Add a query to the SQL query editor, to do this click on the white field or green button. **Make sure that the query returns one column!**|
|**4**|Before saving your query, you need to validate it. You can do this by clicking on the green button with the checkmark (#1). If the query can be executed, a message will be displayed (#2). If the query cannot be executed, you will receive an error message on the screen. Only when the query is working, you can save it.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image19.png"></details><br>:warning:**Make sure that your queries do not take longer than 1500ms**|

If the Query filter is set up correctly, the dropdown can be used to create a selection. The image below shows an example of it working on debtor numbers.

<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image39.png"></details>


### Preset value filter

|Step|Explanation|
|:-:|:--|
|**1**|Add a PresetValueFilter to the FilterToolbar using the green plus sign.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image36.png"></details>|
|**2**|Add a Keyword name and label, make sure these apptly describe their functionalities. Give the filter a default value and if a user can enter multiple values in to the filter.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image40.png"></details>|
|**3**|Navigate to the 'Waardes' or 'Values' tab (#4).|
|**4**|In the tab 'Values' or 'Waardes' you'll need to add all your PresetValue. Add an item (#1), enter a name(#2) and value(#3).<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image41.png"></details><br>:bulb: The name is the visual display of the value. In this screen you can create a descriptive name or more cryptic code.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image42.png"></details>|

If the PresetValueFilter is set correctly the dropdown can now be used to make a selection. The example image below in combination with the previous image gives a good insight in how the filter works.
<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image43.png"></details>

### Query filter date

|Step|Explanation|
|:-:|:--|
|**1**|Add the query filter to the filter toolbar using the green plus sign.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image37.png"></details>|
|**2**|Give the QueryFilterDate a name and label(#1) and set a default value(#2). The default value can be a regular date (YYYYMMDD) or '=today'. This makes it so that the standard value of this filter is always the current date. <br><Br>You can also add or remove days from the '=today' value by using + X or - X e.g. =today+1.<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image44.png"></details>|

If the QueryFilterDate is set up correctly the dropdown should now show a selection in a calendar element.

<details><summary><b>Click here for the example image!</b></summary><img src=".Dashboard Handleiding\media EN\image45.png"></details>

### The use of filters

After setting up a filter they need to be used in the SQL queries behind the dashboard components. This needs to be done in the 'WHERE' part of the SQL query. You can refer to the filters by using the given Keyword naam, which needs to be in between ##. 

In the situation below we will use a graph as an example. If we want to change the date range using filters we need to use two QueryFilterDate filers. The keywords for these filters are 'DatumVan' (From Date) and 'DatumTot' (Till Date)

```sql
where date_variable >= '#DateFrom#'
    and date_variable <= '#DateTill#'
```

:bulb: '#Keywordnaam#' gets replaced by the value of the selection, for example: '2023-01-11'

When using the PresetValueFilter mulitple values are possible, you can fix this by doing the following:

```sql
where variable in ('#attribute1#', '#attribute2#')
```

If you want to use multiple variables sepereate them with coma's in the parenthesis.

:bulb: Apostrophs ('') are only necessary when the parameters (variables) are strings or dates. Do not use '' with numeric datatypes like floats or integers.
