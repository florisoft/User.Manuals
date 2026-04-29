# Loading API Data into Microsoft Power BI

In this short manual, you can read how to load the Florisoft Server Management API into Power BI.

## Warning: Read Before Use!

We do not recommend reading the Florisoft API directly with Power BI. Reading it directly through Power BI can impact the performance of the Florisoft server, because Power BI does not provide any form of data storage or caching. This means that when refreshing, all data must be fully retrieved and loaded again.

For larger endpoints such as **SalesHistory** or **Sales**, this can result in retrieving multiple gigabytes of data, especially when Florisoft has been in use for a longer period.

As a result, both the Florisoft application (+ API) and Power BI may experience performance issues.

For production environments, we recommend using an intermediate database, a **data warehouse**, in which the data from the API is stored and in which version control is applied to the requests sent to the API.

*Using a data warehouse offers several advantages:*

- **Performance:** You only need to retrieve the full dataset once and then continuously update only the changes.
- **Data quality:** Using a data warehouse makes data transformation easier.
- **Historical data:** Easy retention of historical data.
- **Security:** By placing a data warehouse between your dashboards and the API, you can determine who gets access to which parts of the data warehouse.

## Introduction

Because Power BI is a separate application from Florisoft, we do not provide support for setting up and troubleshooting Power BI. If you are unable to solve this yourself, we recommend engaging an external party for assistance.

*Florisoft itself is only responsible for the correct functioning of the cloud server and the management API.*

Below are some issues we encountered ourselves and for which we have a direct solution. If this does not solve your issue, we recommend contacting an external party with expertise in Power BI.

### Power BI prompt: edit references

This problem occurs when you see the message below.

<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image17.png"></details>

| Step | Explanation |
|:--|:--|
| **1** | Make sure the **Anonymous** tab is selected (#1).<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image16.png"></details> |
| **2** | Click the dropdown in this message and select the option `<cloud server>/ext/management/` (#2).<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image16.png"></details> |
| **3** | Click **Connect**. |

**For the Power BI query script used in this manual, see the <a href="PowerBI%20Fotos/PowerBI_Query">attachment</a>.**

*To perform the steps below, you must have the following information:*

- Cloud server URL
- Server API user (username)
- Server API user password

| Step | Explanation |
|:--|:--|
| **1** | Open Power BI Desktop, click **Get Data**, and then click **Blank Query**.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image1.png"></details> |
| **2** | Click **New Source**, and then **Web**.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image2.png"></details> |
| **3** | This opens a new connection window. Set the radio button to **Basic** and enter the cloud server URL in the text field, for example: `https://bts-apps.florisoftcloud.com/`<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image3.png"></details> |
| **4** | This opens an authentication window. On the left-hand side, choose **Anonymous** and click **Connect**.<br><br>You will now see a web preview screen, which you can close.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image4.png"></details> |
| **5** | On the left-hand side of your screen, you will see a **Queries** tab. Right-click **Query1** (you can rename it later), then click **Advanced Editor**.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image5.png"></details> |
| **6** | A code editor screen will now open. Copy and paste the code below into it.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image6.png"></details> |
| **7** | Adjust the following values in the code:<br>- **URL HERE**: enter the base cloud server URL here, for example `https://bts-apps.florisoftcloud.com/`. Make sure it forms a URL like this: `https://bts-apps.florisoftcloud.com/ext/management/`<br>- **USERNAME**: enter the API username here.<br>- **Password**: enter the API user password here.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image7.png"></details> |
| **8** | Once you have filled in the details, click **Done**. If everything went correctly, you will now see the **Articles** table.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image8.png"></details> |
| **9** | Right-click the working query and click **Duplicate**. You will now see a copy of the working query appear.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image9.png"></details> You will now see a table appear on the right-hand side. In the formula field, change the text between the `""`.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image10.png"></details>This is the endpoint being called. The Florisoft API has a number of endpoints; these can be found in the table below or in [this manual](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20Server%20Management%20API%20-%20NL.md). **Make sure the endpoint you enter is correct!** |
| **10** | After changing the endpoint text, press **Enter**. This reloads the query and saves it.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image11.png"></details> |
| **11** | Rename the query by right-clicking it and choosing **Rename**.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image12.png"></details> |
| **12** | Once finished, close the Query screen by clicking **Close & Apply**.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image13.png"></details> |
| **13** | You will now return to the Power BI overview screen. You will see the API data being loaded again. Once that is finished, the data has been loaded.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image14.png"></details> |
| **14** | To check whether the data has been loaded correctly, you can create a table or go to the data view. You can find the data view on the left-hand side of the screen by clicking the table icon.<details><summary><b>Click here for your example!</b></summary><img src="PowerBI%20Fotos/image15.png"></details> |

**If everything went well, the required data is now loaded into Power BI.**

**:warning: When using this script, you must update the version number to the most recent value in order to retrieve the latest data!**

```power query language
let
    GetDataFromAPI = (relativePath) =>
        let
            // ENTER BASE URL HERE
            PARAM_API_BASE_URL = "URL HERE!" & "ext/Management/",
            Requestbody = "{""version"":""0""}",
            // ENTER USERNAME HERE
            PARAM_USER = "USERNAME!",
            // ENTER PASSWORD HERE
            PARAM_PW = "PASSWORD",
            Source = Json.Document(
                Web.Contents(
                    PARAM_API_BASE_URL,
                    [
                        RelativePath = relativePath,
                        Content = Text.ToBinary(Requestbody),
                        Headers = 
                        [
                            Authorization = "Basic " & Binary.ToText(Text.ToBinary(PARAM_USER & ":" & PARAM_PW), BinaryEncoding.Base64)
                        ]
                    ]
                )
            ),
            fieldName = List.First(Record.FieldValues(Source)),
            table = Table.FromRecords(fieldName)
        in
            table,
    // Function call that queries the API using the specified endpoint.
    output = GetDataFromAPI("Constants/Articles")
in
    output
