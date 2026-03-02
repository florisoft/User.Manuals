<img src="../../fslogo.png">

# Florisoft Server Management API - Frequently Asked Questions


|#|Question|
|:-:|:--|
|**1**| **Is it possible to increase batch size when retrieving data?**
|**Answer:**| No, per request the API will return a maximum of 2000 records or fewer (if max size of 5MB is exceeded), starting from the version number that was passed in the request.
|**2**| **Is it possible to retrieve data with a 'from date' as parameter?**
|**Answer:**| No, the only accepted parameters accepted are the "version" number and optionally the "Deleted" flag.
|**3**| **How does the version parameter work?**
|**Answer:**| Every table record has a sequential version number. When a record is updated, the version number is also updated to a higher number.
|**4**| **Where do I find information relating to key fields?**
|**Answer:**| Most endpoints will provide a "pKey" field for primary key. All other fields have friendly names and some knowledge of Florisoft data structures is required for querying using table joins. 
|**5**| **Can you explain the data structures for each endpoint and content?**
|**Answer:**| No, please refer to the [mappings document](https://github.com/florisoft/User.Manuals/blob/main/CLOUD%20APPLICATIONS/Server%20Management%20API%20(M212)/Server%20Management%20API%20Mapping.md) or plan a consultancy meeting for more detail
|**6**| **Will you make any custom table views available as endpoints in thie API?**
|**Answer:**| No.


