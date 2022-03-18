<img src=".Management Info Mailer\media\image2.png" />

# Management Info Mailer

**Introduction**

This is a module with which a management report can be generated which will be send to the configured e-mail addresses at a set interval. 

The management information is generated with the queries that can be maintained in the existing Management screen. 
The data which you see in the management screen we the query is executed will be 'the same.' The difference is that the data will be generated at runtime, so that you will get the same fields, but different data.

The data can be converted into a PDF or Excel file via a layout. **A layout is mandatory for the management info mailer to execute a query sucessfully. **



## Constants Screen
In the folder Constants => Timer => Management Info Mailing you have to option to manage the report which you want to  have emailed automatically.

<img src=".Management Info Mailer\media\constants.png" />

##  Add/ delete a report
In the toolbar you find an option to search for a  report.
<img src=".Management Info Mailer\media\toolbar.png" />

Via the + icon you can add a new report to the configuration.
An excisting report can be deleted via the bucket icon.

## Editing a report

When you add (+ icon) or edit a report via double clicking on an excising report you will get the following screen.

<img src=".Management Info Mailer\media\EditScreen.png" />



### ID

This is the automatically assigned ID by Florisoft

### Active

This determines if this report should be executed or not. This tick box should be set to Active/True to ensure the the report will be triggered by the timer process.

### Name

The descriptive name of the report

### Script

The actual script which you have created in the Management screen

### Layout

A Print layout (aka 'Report' which can be maintained in the Constants => System => Print Layouts.
The data in the query should be reflected in the layout. SO the layout has to be designed before the data can emailed automatically.
If the layout hasn't been designed you will get an empty report.

### Export as

Determine if the report will be emailed as PDF or in an Excel format

### E-Mails

In this field you can enter 1 email address at a time and add it to the list with email addresses to which the report willbe emailed.
With the add button you can add an email address to the list.
When you select an email address in the list you can delete it form the list with the delete button.

### Planning

In this section you can configure the planning for this particular report.
Here you enter between which start and stop time and with which interval the query should run and be emailed.

**Example 1** 

If you want to have the report refreshed every 2 hours on Sunday, Wednesday and Friday and it should be emailed between 10:15 am and 18:15 pm you can configure that in the following way:

<img src=".Management Info Mailer\media\Planning1.png" /> 



**Example 2**

If you want to have the report refreshed only once a day between 18:00 pm and 19:00 PM you can configure it like this:
<img src=".Management Info Mailer\media\Planning2.png" /> 

As you can see the interval is set to a longer value than the time difference between the Start and Stop times.
This ensures that the report will be executed only once between the Start and Stop time. In this case the interval could be set to 60 as well, but when you make the interval at least 1 minute longer than the time difference you know that it will not be run twice.

### Variabels

On the right hand side of the screen you will find and white rectangle.
If you have configured any variable in the management query in the management screen they will appear in this part of the screen.
The screen can not be closed before every variable has been set to a value.
If you do not want to use variables, but you need them to filter the results, they variables should be included in the SQL statements in the management query in the the management screen.

### Run query

Via the Run Query button you can test if the report will run successfully and if it will be emailed to the configured email addresses.

### Other options

At the bottom of the screen there are 3 tickboxes which can be used.
These are self explanatory.

## Timer function

There is a specific combination of function which you need to be aware of.
The process to trigger the management info mailer is a timer function.
<img src=".Management Info Mailer\media\timer.png" />

The timer function has to be set to active (1) to enable it to run.
In this example this timer function is active between 00:01 and 23:59 (2) with an interval of 2 minutes (3).

This timer function will check in the 'Management Info Mailing' for the reports which have been set to active.
If an active report is found then it will check if the current time is between the start and the stop time of the report. If that is also true it will check if the time difference between the current time and last execution time of the report is larger than the set interval for the report.
If that is also true the execution of the report will start.
