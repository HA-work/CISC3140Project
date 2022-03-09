This is the data dictionary for my database built on the car show data.


There are 7 tables

All_Data
Cars
Make_List
Judges
Judges_Final
Car_Scores
Final_Car_Scores



1) The All_Data table holds all of the data taken in from the CSV.

Its fields are
Timestamp,Email,Name,Year,Make,Model,Car_ID,Judge_ID,
Judge_Name,Racer_Turbo,Racer_Supercharged,Racer_Performance,Racer_Horsepower,Car_Overall,
Engine_Modifications,Engine_Performance,Engine_Chrome,Engine_Detailing,Engine_Cleanliness,
Body_Frame_Undercarriage,Body_Frame_Suspension,Body_Frame_Chrome,Body_Frame_Detailing,Body_Frame_Cleanliness,
Mods_Paint,Mods_Body,Mods_Wrap,Mods_Rims,Mods_Interior,Mods_Other,Mods_ICE,Mods_Aftermarket,Mods_WIP,Mods_Overall


I used INTEGER for the score fields
I used TIMESTAMP for Timestamp
And for the rest I used Text


2) The Cars table holds the initial car data extracted from the All_Data table

 Car_ID  TEXT PRIMARY KEY,
        Year    INTEGER,
        Make    TEXT,
        Model   TEXT,
        Name    TEXT,
        Email   TEXT



3) The Make_List table holds
Car_Make

This table was made to serve as a list variable that I could use to try and get the top 3 cars of each make


4) The Judges Table holds
Judge_ID
Judge_Name



5) The Final_Judges table holds

 Judge_ID  TEXT PRIMARY KEY,
 Judge_Name   TEXT,



 Judge_Count INTEGER,

 Start_Time TIMESTAMP,

 End_Time TIMESTAMP,

 Judging_Duration_Min TIME,

 Average_Judge_Time_Min TIME



This data was extracted from All_Data and by using SQL Functions and Operations to get the times



6) The Car_Scores table holds


Car_ID  TEXT PRIMARY KEY,
Racer_Turbo INTEGER,
Racer_Supercharged INTEGER,
Racer_Performance INTEGER,
Racer_Horsepower INTEGER,
Car_Overall INTEGER,
Engine_Modifications INTEGER,
Engine_Performance INTEGER,
Engine_Chrome INTEGER,
Engine_Detailing INTEGER,
Engine_Cleanliness INTEGER,
Body_Frame_Undercarriage INTEGER,
Body_Frame_Suspension INTEGER,
Body_Frame_Chrome INTEGER,
Body_Frame_Detailing INTEGER,
Body_Frame_Cleanliness INTEGER,
Mods_Paint INTEGER,
Mods_Body INTEGER,
Mods_Wrap INTEGER,
Mods_Rims INTEGER,
Mods_Interior INTEGER,
Mods_Other INTEGER,
Mods_ICE INTEGER,
Mods_Aftermarket INTEGER,
Mods_WIP INTEGER,
Mods_Overall INTEGER,
Total_Score,
Ranking  SERIAL,
Car_Make




The Car_Make field was added to try and get the top 3 cars
The rest of the values are the scores from All_Data and relevant car identifying data

This table was used as an intermediate table so that I could put the cars in order of Total_Score Descending
And then use Rowid to get the ranks



 
7) The Final_Car_Scores table holds

Car_ID  TEXT PRIMARY KEY,
Racer_Turbo INTEGER,
Racer_Supercharged INTEGER,
Racer_Performance INTEGER,
Racer_Horsepower INTEGER,
Car_Overall INTEGER,
Engine_Modifications INTEGER,
Engine_Performance INTEGER,
Engine_Chrome INTEGER,
Engine_Detailing INTEGER,
Engine_Cleanliness INTEGER,
Body_Frame_Undercarriage INTEGER,
Body_Frame_Suspension INTEGER,
Body_Frame_Chrome INTEGER,
Body_Frame_Detailing INTEGER,
Body_Frame_Cleanliness INTEGER,
Mods_Paint INTEGER,
Mods_Body INTEGER,
Mods_Wrap INTEGER,
Mods_Rims INTEGER,
Mods_Interior INTEGER,
Mods_Other INTEGER,
Mods_ICE INTEGER,
Mods_Aftermarket INTEGER,
Mods_WIP INTEGER,
Mods_Overall INTEGER,
Total_Score,
Ranking INTEGER,
Car_Make


This table adds a rank to each car
