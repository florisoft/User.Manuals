# Server management API

The Florisoft API makes data retrieval safe and easy, it provides, multiple internet accessible endpoint to get data from your system. 

The different endpoints for the Florisoft API are based on your Florisoft system database but now with user-friendly names. Descriptions of the API endpoints, including which fields are available can be found here ([Dutch](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20Server%20Management%20API%20-%20NL.md)) and here ([English](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20Server%20Management%20API%20-%20EN.md)).

Our API uses BASIC authentication, which means you will need both a Username and Password in order to login and get data from our API. The login credentials along your custom API-URL will be provided when purchasing the Server Management API module.

API requests to your Florisoft server management API endpoints will always be POST-requests, where alongside your user credentials you will provide a version number. This version number is sent in the form of Application/JSON request body like so:

```json
    {
        "Version" : 0
    }
```

The version number is directly based on the _VERSION field in your database tables. In the context of the API the version field can be seen as an index where the first 2000 records from that version number are sent through the API request. However, the API is capped at 5MegaBytes of data at a time, so if 1000 records would exceed 5MB only 999 records will be sent.

Version numbers can only be positive (eight byte) integers so the lowest possible version number is 0. Higher version numbers will thus be the more recent data records.

In the request body you can also add the boolean value **Deleted**, on default this set to False. Setting this will True will make the API sent the records that were deleted from the corresponding endpoint table. 
API requests for deleted records also work with version numbers. The request body for deleted API requests look like this:

```json
    {
        "Version" : 0,
        "Deleted" : true
    }
```

#### User manuals

On this page you will find user manuals on the following server management API related topics:

**1.** **On the use of Postman**:
    [Dutch](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20API%20inlezen%20via%20Postman.md)    [English](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20API%20Data%20Retrieval%20using%20Postman.md)<br>
    
**2.** **Authorization**:
    [Dutch](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20API%20Autorisatie.md)    [English](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20API%20Authorization.md)
    <br>

**3.** **API Policies**:
    [Dutch](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20API%20Policies%20NL.md)  [English](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20API%20Policies%20EN.md)
    <Br>

**4.** **API Endpoint Description**:
    [Dutch](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20Server%20Management%20API%20-%20NL.md)   [English](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20Server%20Management%20API%20-%20EN.md)
    <br>

**5.** **Testing the API with PowerBI**:
    [Dutch](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/M212%20-%20Server%20Management%20API%20in%20PowerBI%20-%20NL.md)
