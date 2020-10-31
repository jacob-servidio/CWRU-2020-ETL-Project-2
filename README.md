# CWRU-2020-ETL-Project-2

![](images/NBA.png)

## Project Proposal

This link below can take you to the project proposal

Proposal Link: https://docs.google.com/document/d/1QEVRHTQiBN-4Zyvs3NLs7SRVq0vEOwEhvXSbSJlKddc/edit?usp=sharing

## Getting Started

## Gathering Data
 During our search for information, we found two separate sources including Kaggle and Data World
 
 1.  NBA Players statistics since 1950
  https://www.kaggle.com/drgilermo/nba-players-stats
 2.  NBA team win and Players from 
 https://data.world/jservidio/nba-team-records-and-player-stats/workspace/file?filename=Players.csv
 https://data.world/jservidio/nba-team-records-and-player-stats/workspace/file?filename=Seasons_Stats.csv
 
 ## Putting the Data Together 
 After collecting the desired data from both sources, the next step was to use Jupyter Notebook to manipulate and join the data sets together into one database.
 1. steps within the Jupyter Notebook included importing files, reading files, merging tables, changing column names, removing some columns, and changing all column names to all lower case letters in order to smoothly connect with PostgreSQL.
 
 ## Importing to PostgreSQL (pgAdmin)
 Once the tables were created, we finally created a Database and Table within pgAdmin and inserted each column name and its datatype.
 
 ## Finally 
 The data was inserted from Jupyter to AWS RDS  through the endpoint , created an engine, opened the table and imported the data . And the link to the website is found below .
 https://jacob-servidio.github.io/CWRU-2020-ETL-Project-2/

 ## Authors 
 1. Jermaine Coleman
 2. Jacob Servido
 3. Ravi Patel
 4. Roshini Jayantha 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 Copyright &copy; Jermaine Coleman| Roshini Jayantha| Jacob Servido| Ravindra Patel 2020</div>
