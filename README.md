# Database_Design
## Table of contents
* [Project Overview](#project-overview)
* [Technologies](#technologies)
* [Setup](#setup)

## Project Overview
Implement, update, maintain database management system for a business that:
* records bookings for accommodation
* retains all data for historical analysis

All tasks are included:
#### Part A:
###### Database Creation
Create database schema based on the provided ERD.

###### Data Insertion
* Write scripts to bulk insert data into the respective tables.
*	We will provide sample data that will match the attributes and data types in the respective tables.

###### Data Testing
*	Test that the data has been inserted accurately.
For example valid Primary and Foreign key values.

###### Queries:
* The total number of bookings
* The total number of guests booked
* List of guests by room type

#### Part B: 
###### Queries	: 									
* Q1. List the people who has booked room number 101 on 17th November 2016. <br />
* Q2. Give the booking date and the number of nights for guest 1540.<br />
* Q3. List the arrival time and the first and last names for all guests due to arrive on 2016-11-05, order the output by time of arrival.<br />
* Q4. Give the daily rate that should be paid for bookings with ids 5152, 5165, 5154 and 5295. Include booking id, room type, number of occupants and the amount.<br />
* Q5. Find who is staying in room 101 on 2016-12-03, include first name, last name and address.<br />
* Q6. For guests 1185 and 1270 show the number of bookings made and the total number of nights. <br />
* Q7. Show the total amount payable by guest Ruth Cadbury for her room bookings. <br />
* Q8. Calculate the total bill for booking 5346 including extras.<br />
* Q9. For every guest who has the word “Edinburgh” in their address show the total number of nights booked. <br />
* Q10. For each day of the week beginning 2016-11-25 show the number of bookings starting that day.<br />
* Q11. Show the number of guests in the hotel on the night of 2016-11-21. Include all occupants who checked in that day but not those who checked out.<br />
* Q12. List the rooms that are free on the day 25th Nov 2016.<br />

#### Part C: 
###### Create and store views for the following:
1. A list of all Rooms with description. <br />
2. A list of Guests with their name concatenated and address. <br />
3. Show the date of check in and check out and number of nights for booking 5204.<br />
4. List all the people and their room number, who made the booking for room on 26th Nov 
2016.<br />
5. List the people who made the booking for room number 209 on 26th Nov 2016.)<br />
6. Show the name of the guest, occupant, date of check in and check out and number of 
nights for booking 5046.<br />
7. Calculate the total bill for booking 5128 including extras. <br />
8. Show the total amount payable by guest Dr Andrew Murrison for his room bookings.<br />
9. Show the total amount payable by guest who has a ‘Sir’ prefix, whose first name starts 
with ‘P’ and last name ends with ‘rd’ for his room bookings.<br />
10. For every guest who has the word “East” in their address show the total number of nights 
booked. Show last name, first name, address and number of nights. Order by last name then first name<br />
###### Query Statistics and Optimization:
Display query performance statistics for each view and then tune the performance by 
optimising the above views as necessary. The optimization scripts are named individually as AppCOptimisexx.sql where xx is the query 
number. For example, the second query would be called AppCOptimise02.sql. A screenshot of before and after the optimization with cost is inclued
###### Implement Security
Create a security role and a new user that can see the Views 2, 8 and 9 above, but not edit any of the data in them. They should 
see nothing else in the database including the tables. Querry is stored as a script called AppCSecurity.sql that can 
be run to recreate this security role and user. Screen clips of the steps to create this user profile are included.

## Technologies
Project is created with:
SQL Server Management Studio (SSMS) 18.4 

	
## Setup
To run this project, install SSMS locally at https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15



