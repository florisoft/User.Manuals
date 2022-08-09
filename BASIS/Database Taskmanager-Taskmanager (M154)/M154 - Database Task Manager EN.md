<img src="../../fslogo.png" alt="Florisoft logo">

# Database Task Manager

The Database Task Manager is new to Florisoft software package. This tool show you how busy the database is and who/what is making use of it. The tool is a look-a-like of Windows task manager and gives insight into which user is doing what at the moment and gives insight into the impact they are having on the server. The insight is given using graphs to visualize the impact of each user's server workload history.<br> *To test this out on your server request a demo code today and check out this new module!* 

The Database Task Manager has been updated! You are now able to see the users server workload in the last 2 hours. The new graph at the bottom of the screen shows the total user workload from all the users including the individual workloads over the past two hours. It is recommended to keep this screen open in moments of high server workload to see who is the most demanding user.

When opening this screen table will be filled with the activities that take place on the server and its specific details. This table is called '*adsactivitylog.adt*' and is to be found in the '*tempnet*' folder of the user. 

**To open the Database Task Manager screen:**

0. Open the Florisoft Navigator.
1. Click on '*System*' button in the top bar.
2. Within the new dropdown option screen click on '*Database Task Manager*'.

<img src = ".Database Task Manager/media/image1.png" alt = "Database Task Manager">

## What is the upper row called '*\<idle>*'?

If the database is currently not doing anything then its on '*Idle*'. This row shows the baseline performance when the server isn't doing anything. Unlike the other lines in the table it is better if the percentage is high. This means that server is often on idle mode which means it isn't constantly on at a high workload. If idle is on 10% it means that server is constantly busy this should also be indicated in the graphs backgroundcolor which corresponds with the workload.

## How do percentages get calculated?

The database gets polled a couple times a second to see what it is currently doing. By using results (samples) the percentages get calculated. If a user is doing something 6 out of 10 times then its workload percentage is 60%. Seeing as the database server is doing multiple things at once it could be that the total amount of users combined falls out to be higher than 100%.

## Graph at the bottom of the screen

At the bottom of the screen a graph is running that draws a activity graph line for every user. By using this graph it is easy to see which user is the most demanding user in terms of server workload. The intention of this screen is that it gets turned on a user and remains on, so that in case the server gets performance issues this tool can be checked to get an indication which user is the problem. The workload will mostly consist out of query connections that tax the servers performance.

## AdsActivitylog.adt

When the Data Task Manager tool gets opened a file called adactivitylog.adt is created in the '*tempnet*' folder of the user. This table contains info on who was doing what in the database at what moment. This table can be used to give more detailed insights into who/what is the most demanding user of your system. When the adsactivity file gets to a file size of 2GB logging will disabled to save diskspace. When Florisoft is restarted the table will be deleted.
