# LabQueries

This repo is checked by a script that will execute the queries on the OIT Bigdata database, with read-only permission.

In order to submit quieries correctly, they must be in /SomeFolderName/Scripts/my_query.sql

The filenames can have any extension or none at all.

The script will then deposit the result of that query into /SomeFolderName/Results/my_squery.csv

In order to re-run a query you simply delete the result file and it will re-run the query
