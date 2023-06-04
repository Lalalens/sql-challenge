# sql-challenge

My task as a new employee at Pewlett Hackard was to run queries utilizing SQL for employees hired during the time frame of 1980-1990's utilizing six csv files. 

## Data Modeling

The first thing that I did was look through the csv files and utilizing the ERD planned out how I needed to create my tables and decided on my primary and foreign keys.

## Data Engineering

After the creation of my tables utilizing postgreseSQL I correctly set my columns to the correct data type and set the condition of not null correctly, to remove all empty cells. While giving the appropriate length for the strings that were being passed in.
I ensured that my Primary and Foreign keys were set for each table that they were needed, because I knew that this would assist me later with my analysis. 

## Data Analysis

During the analysis I utilized INNER JOINS to find employees information like their names, numbers, what departments they worked in.
I had to utilize the WHERE clause when looking for the employees hired in the year in 1986 by extracting the date from the hire date column.
I needed to utilize the count function to count how often the employees last name reappeared, and shockingly there are quite a few people at this company named Baba.
