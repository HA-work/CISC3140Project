# CISC3140Project
Repository for CISC 3140 Linux work.





Instructions for getting Lab 1 to work

All you need to do is clone this repository and run the command

make lab1 

and the code will run.




Explination of the code



The code uses 3 awk scripts to complete the tasks.
The reason I needed 3 is because of the differences of AWK when compared to other programming languages.
It did not always function in the way that I had intended and I had to work around some issues to get the desired output.
Also the language does not have certain features that would make the task easier like objects.
There is probably a more optimal way to do this and a better way to compile the work which I shall try to do.

The scripts

The first AWK script is called lab1AWKscript.awk 
It reads in the data from the gist 
aggregates the score of each car and sorts what it gets into a file in the folder sampleOutputs called rankingReport.csv
This file does not have the ranks yet but it is sorted
The file also extracts the unique makes and puts them into a file in the folder sampleOutputs called makeList.csv

The second AWK script is called lab1AWKrank.csv
This files reads in the rank report that I created and makes use of the lines read feature to provide the car ranks.
It stores this final ranking report in the folder sampleOutputs in a file called rankingReportFinal.csv

The third and last AWK script is called lab1AWKmake.awk
This file reads in from the rankingReportFinal.csv and the makeList.csv to find the top 3 cars of each make
and outputs them to a file in sampleOutputs called bestMakes.csv

The make file

The make file in the repository has a patter for lab1 which calls the 3 scripts with the appropriate inputs
This lets all of the code run easier
Can be run right from the root of the repository

The input
The input data is from the Professor's gist so it is always up to date


The output

The output files are all located in the folder sampleOutputs

The most relevant output files are

rankingReportFinal.csv
This file has a header row explaining the data you will see
the records are then the relevant data asked about from the cars which is
year
car id
car make
car model
total score
ranking


bestMakes.csv
This file lists each of the uniqie car makes followed by a header row
followed by the top 3 ranking cars of that make with all of the relevant details
that were included in the rankingReport.csv



o	Description of your report's contents


My report has 2 csv files that give the desired output

The first is the rankingReportFinal.csv
It has a header file
and then a record of all the cars in order of ranking which means highest total scores first
It also includes the other relevant car information

the nest is the bestMakes.csv
This file lists a car make followed by the top 3 cars of that make or fewer if there were less than 3
It lists the same info as the rankingReportFinal.csv for the cars


o	Description of raw data; explain each field and how you obtained the latest version 

The raw data is a list of cars from a car show along with relevant data
The year is the year the car was made

the make is the brand of car

the model is the type of car

the carid is the cars unique identifier

the 8th field onwards are the different score categories and the numbers are what the car got in those categories

I obtained the latest version by connecting to the gist instead of just downloading a copy of the csv
which could be outdated in the future




o	List any dependencies required for the scripts to function



There are no dependencies needed for the script to function
The only dependency that I can think of is that because I am not using my own input data but a gist
then my scripts will probably not function without internet or if the gist goes down
