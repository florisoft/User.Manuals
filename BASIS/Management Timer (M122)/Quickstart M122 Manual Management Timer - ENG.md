<img src="../../fslogo.png"/>

# Management Timer (M122) 

**Introduction**

This is a module with which management reports can be generated and sent to the configured e-mail addresses at set intervals. 

The management information is generated with the queries that can be maintained in the existing Management screen. 
The data which you see in the management screen when the query is executed will be 'the same.' The difference is that the data will be generated at runtime, so that you will get the same fields, but different data.

The data can be converted into a PDF or Excel file via a layout. **An existing print layout is mandatory for the management info mailer to execute a query sucessfully. **


## Constants Screen
In the folder Constants => Timer => Management Info Mailing you have to option to manage the report which you want to  have emailed automatically.<img src=".Management Info Mailer\media\Constants.png" />


## Add/Edit a report mailing

When you add (+ icon) or edit a report via double clicking on an existing report you will see the following screen.<img src=".Management Info Mailer\media\EditScreen.png" />


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
The data in the query should be reflected in the layout. So the layout has to be designed before the data can emailed automatically.
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



### Additional options

Just below the times you will find the following 3 options:

- Send 1 time at the end of the month only
  When this tick box has been enabled only on day 1 of the month this report will be run and the results will be emailed.
- Send 1 time at the beginning of the month only
  When this tick box has been enabled only on the last day (Jan 31, Feb 28/29, Mar 31, Apr 30, etc) of the month this report will be run and the results will be emailed.
- Do not send an email via the timer if there is no result
  When the report does not have any result no email will be send to ‘prevent’ that an empty emails will be send. This option is particularly helpful in the case of alert emails. No alert no action needed so no email is needed as well



### Variables

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
<img src=".Management Info Mailer\media\Timer.png" />

The timer function has to be set to active (1) to enable it to run.
In this example this timer function is active between 00:01 and 23:59 (2) with an interval of 2 minutes (3).

This timer function will check in the 'Management Info Mailing' for the reports which have been set to active.
If an active report is found then it will check if the current time is between the start and the stop time of the report. If that is also true it will check if the time difference between the current time and last execution time of the report is larger than the set interval for the report.
If that is also true the execution of the report will start.
