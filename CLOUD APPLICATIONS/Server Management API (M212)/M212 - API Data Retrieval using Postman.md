![Florisoft Corporate Logo](../../fslogo.png)

# Florisoft Manual: Reading Server Management API with Postman

This manual guides you through reading the server management API using a tool called Postman. Postman is an application used for reading and testing APIs.

## Download and Install Postman

Download and install the Postman application. The download link is available on the Postman website [here](https://dl.pstmn.io/download/latest/win64).

If you are collaborating in a team or require more powerful features, creating an account is an option. However, for simply reading an API, this is not necessary.

## Importing a Postman Collection

Florisoft provides a collection of various endpoints that can be imported into Postman. Follow the steps below to import this collection of endpoints into Postman.

|Step|Explanation|
|:--|:--|
|**1**|Download the API, which can be found [here](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/media%20Postman/API-Collectie.json). Alternatively, you can also find the file [here](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/media%20Postman/API-Collectie.json).|
|**2**|If you used the first link, unzip the file and place it outside the zip folder.|
|**3**|Open the Postman application and click on the **Import** button (top left of your screen).<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/1.png"></details>|
|**4**|A pop-up window will appear, allowing you to drag and drop the collection file. Alternatively, you can click on **files** to open a Windows Explorer window and select the file.<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/2.png"></details>|

## Setting up the Postman Collection

Now that you have imported the Postman collection, you will see it appear on the left side of your screen. However, there are still a few steps we need to take to send an API request.

We need to enter the login details and API URL. This can be done in Postman in two ways:

1. **Collection Level**: You can specify authentication and URL for the entire collection, automatically providing these details for all API requests.

2. **Endpoint Level**: You can also specify authentication and URL per endpoint. However, this is not recommended if you only use your own Florisoft API.

*By following the steps below, you will set the authentication and URL at the collection level*.

|Step|Explanation|
|:--|:--|
|**1**|Hover over the imported collection and click on the three dots.<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/6.png"></details>|
|**2**|This will open a context menu; click on the **Edit** option.<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/3.png"></details>|
|**3**|Click on the tab named **Variables**(#3).<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/4.png"></details>|
|**4**|In this tab, under the row **URL**, change the values in the **Initial value** and **Current value** columns to:<br>\<Your cloud server URL\>/ext/management/|
|**5**|Click on the **Save** button(#3) to save your changes.<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/3.png"></details>|
|**6**|Next, click on the **Authorization** tab(#1).<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/5.png"></details>|
|**7**|In this tab, fill in the **Username** and **Password** fields (#2) with the API login details provided by Florisoft.<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/5.png"></details>|
|**8**|Then click on the **Save**(#3) button to save the changes. <details><summary><b>Click here for an example image!</b></summary><img src="media Postman/5.png"></details>|

## Sending an API Request

*Now that we have set the URL and authentication, we can send API requests to retrieve data from the API.*

|Step|Explanation|
|:--|:--|
|**1**|Open the API collection on the left side of your screen.|
|**2**|Click on an endpoint in the list to open it.|
|**3**|Send the API request by clicking on the **Send** button.<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/7.png"></details>|
|**4**|After sending, you will see the API response appear at the bottom of your screen within a few seconds.|
|**5**|Now, let's retrieve a segment of the data. Copy the latest version number by scrolling down in the API response.|
|**6**|Then go to the **Body** tab, where you will see a JSON object sent to the API when making a request. Replace the number 0 with the copied version number.<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/8.png"></details>|
|**7**|If you click **Send** again, you will see a different data segment based on the version numbers in the API response.|

## Error Codes and Troubleshooting

If your API request does not receive a response, you can check the **Status** code above the response screen.

<details><summary><b>Click here for an example image!</b></summary><img src="media Postman/9.png"></details>

A successful request will display 200 OK here, but failed requests will show different codes. Below are the error codes and steps you can take to resolve them.

### 401 Unauthorized

1. Check the collection settings to ensure the login details are correct.
2. In the **authorization** tab of the API endpoint request, check if it is set to **inherit from parent**.

### 404 Not Found

1. Check if you accidentally typed something in the URL field of the endpoint request.
2. Verify that the dropdown next to the URL input field is set to **POST**.
3. Ensure that the base URL in the collection settings is correctly configured: \<your cloud server URL\>/ext/management/
4. It's also useful to check if the Cloudserver is running by entering the URL of your


### 501 Internal Server Error

This error indicates a problem with the API itself on the cloud server. Usually, this is related to differing versions of the cloud server and the Florisoft backoffice application.

It is advisable to align the versions of the cloud server and back office as soon as possible to prevent issues that may arise in other cloud applications.