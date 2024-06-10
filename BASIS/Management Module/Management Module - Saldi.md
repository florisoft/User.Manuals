<img src="../../fslogo.png">

# Florisoft Manual Management Module (Saldi)

Welcome to the florisoft management module manual, in this manual you will learn how to export sales balance data from Florisoft to an excel file. The exported data can be filtered based on parameters such as the financial administration and invoice date.

## Prerequisites

In order to export the Florisoft data directly to Excel it is required to have Microsoft Excel installed on your server. If this requirement is not met Florisoft will produce an error saying it can't export to Excel. 

### Steps

*Follow the steps below:*

|Step|Explanation|
|:-:|:--|
|**1**|From the florisoft navigator open the management screen (#1).<details><summary><b>Click here for the example image!</b></summary><img src="Saldi/1.png"></details>|
|**2**|Navigate the management queries file structure like so:<br>**Fixed→Sale→Saldi**<details><summary><b>Click here for the example image!</b></summary><img src="Saldi/2.png"></details>|
|**3**|Dubble click on the Saldi query, this opens a new tab on the right side of the screen alongside a filter/parameters table in the bottom left (#1).<details><summary><b>Click here for the example image!</b></summary><img src="Saldi/3.png"></details>|
|**4**|In de parameter tab set the **date** dropdown (under the *Options* header) to the value **InvoiceDate**.<details><summary><b>Click here for the example image!</b></summary><img src="Saldi/7.png"></details>|
|**5**|In the filters/parameters entry use the following filters, **Administrations** here you can select a financial adminisration that is to be used in the Excel report.<details><summary><b>Click here for the example image!</b></summary><img src="Saldi/4.png"></details><br>You can also select multiple **Administrations** at once by utilizing the search grid. Open a the **Administrations** dropdown and press the F3-key, in this grid you can select multiple options using the space bar. Click on the **Ok** button to confirm your selection.<details><summary><b>Click here for the example image!</b></summary><img src="Saldi/8.png"></details>|
|**6**|Now fill out the filters under the header **Period**, this filters the sales balance the data for the given period of time.<details><summary><b>Click here for the example image!</b></summary><img src="Saldi/4.png"></details>|
|**7**|Click on the triangular button to execute the management query with the given parameters.<details><summary><b>Click here for the example image!</b></summary><img src="Saldi/5.png"></details>|
|**8**|You should now see data on the right side of your screen in query tab we opened before. To export the data in this tab click on the Excel icon in the top left of your screen.<details><summary><b>Click here for the example image!</b></summary><img src="Saldi/6.png"></details>|
