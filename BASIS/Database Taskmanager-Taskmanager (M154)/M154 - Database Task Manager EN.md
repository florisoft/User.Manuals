<img src="../../fslogo.png">

# Florisoft Manual Database Task Manager

Welcome to the Florisoft manual for the Database Task Manager module. In this manual, you will learn about the functionality of this module. The Database Task Manager module provides insight into the database load and running processes. The concept of the Database Task Manager is similar to the Windows Task Manager, which allows you to easily assess the workload of the database through clear graphs. The graphs show the extent to which the server has been loaded over the past two hours. The following lines display usage per user.

*It is recommended to keep the Database Task Manager constantly running.*

<img src=".Database Task Manager/media/image1.png">

## Opening the Database Task Manager

|Step|Explanation|
|:--|:--|
|**1**|Open the Florisoft navigator.|
|**2**|Click on **System** in the top bar.|
|**3**|Then click on **Database Task Manager**<details><summary>**Click here for your example image!**</summary><img src=".Database Task Manager/media/image4.png"></details>|

*Does a prompt appear asking for a demo code?*

In this case, the license for the module has not been activated yet. Please contact Florisoft Support.

## How to Read the Database Task Manager

When the server is not actively processing any tasks, you will see **\<idle\>** on the first line. At the bottom of the screen, there is a graph that draws a separate line for each active user. This graph easily indicates the top users in the last 2 hours. It is intended that this screen is turned on a client and remains active so that in case of performance issues, this screen can be consulted to resolve the problem (especially query-running connections that burden the database server).

## Postgres Logs

If you need to look back further than two hours into the database activities, you can open the logs in the postgres installation directory/version number/data/log.
