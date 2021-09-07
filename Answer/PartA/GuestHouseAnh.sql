CREATE DATABASE GuestHouseAnh;

USE GuestHousesAnh
;

create table calenda (
"i DATE" date primary key
);
--test
select* from calenda
;

create table rate (
room_type varchar(6),
occupancy INT,  
amount DECIMAL(10,2),
Primary key (room_type, occupancy)
) ; 
--test
select* from rate
;

Create table room_type(
id varchar(6) primary key,
description varchar(100)
);
--test
select* from room type
;


create table booking(
booking_id int primary key,
booking_date DATE,
room_no INT,
guest_id INT,
occupants INT,
room_type_requested VARCHAR(6),
nights INT,
arrival_time VARCHAR(5)
);
ALTER TABLE booking
Add foreign key (guest_id) references guest(id);

ALTER TABLE booking 
add foreign key (room_type_requested) references room_type(id)
;

--test
select * from booking
;

create table room (
id int primary key,
room_type varchar(6),
max_occupancy int
);
--test 
select * from room
;

create table guest (
id int primary key,
first_name varchar(50),
last_name varchar(50),
address varchar(50),
);
--test
select * from guest
;

create table extra(
extra_id int,
booking_id int,
description varchar(50),
amount decimal(10,2),
);
--test
select * from extra
;

-- INSERT DATA

delete [dbo].[booking]
Bulk insert [dbo].[booking]
from 'D:\THAO ANH\STUDY\OneDrive - Ara Institute of Canterbury\BCDE103 Database Design\Assignment\Assignment 2 Portfolio\DataFiles\booking.csv'
WITH 
(
FIELDTERMINATOR =',',
ROWTERMINATOR='0x0A', 
FIRSTROW=2
);
GO
--test [dbo].[booking]
select * from booking
;

delete [dbo].[calenda]
Bulk insert [dbo].[calenda]
from 'D:\THAO ANH\STUDY\OneDrive - Ara Institute of Canterbury\BCDE103 Database Design\Assignment\Assignment 2 Portfolio\DataFiles\calendar.csv'
WITH 
(
ROWTERMINATOR='0x0A',
FIRSTROW= 2
);
GO
--test data insert [dbo].[calenda]
select * from calenda
; 

---insert data to [dbo].[extra]
delete from extra
Bulk insert [dbo].[extra]
from 'D:\THAO ANH\STUDY\OneDrive - Ara Institute of Canterbury\BCDE103 Database Design\Assignment\Assignment 2 Portfolio\DataFiles\extra.csv'
WITH 
(
FIELDTERMINATOR =',',
ROWTERMINATOR= '),('

);
GO 
--- test 
select * from extra;


delete [dbo].[guest]
Bulk insert [dbo].[guest]
from 'D:\THAO ANH\STUDY\OneDrive - Ara Institute of Canterbury\BCDE103 Database Design\Assignment\Assignment 2 Portfolio\DataFiles\guest.csv'
WITH 
(
FIELDTERMINATOR =',',
ROWTERMINATOR= '0x0A',
FIRSTROW= 2
);
GO
--test data table [dbo].[guest]
SELECT * from [dbo].[guest]
;

delete [dbo].[rate]
Bulk insert [dbo].[rate]
from 'D:\THAO ANH\STUDY\OneDrive - Ara Institute of Canterbury\BCDE103 Database Design\Assignment\Assignment 2 Portfolio\DataFiles\rate.csv'
WITH 
(
FIELDTERMINATOR =',',
ROWTERMINATOR='0x0A',
FIRSTROW= 2
);
GO
--test [dbo].[rate]
select * from rate 
;

delete [dbo].[room]
Bulk insert [dbo].[room]
from 'D:\THAO ANH\STUDY\OneDrive - Ara Institute of Canterbury\BCDE103 Database Design\Assignment\Assignment 2 Portfolio\DataFiles\room.csv'
WITH 
(
FIELDTERMINATOR =',',
ROWTERMINATOR='0x0A',
FIRSTROW= 2
);
GO
--test [dbo].[room]
select* from room
;

delete [dbo].[room_type]
Bulk insert [dbo].[room_type]
from 'D:\THAO ANH\STUDY\OneDrive - Ara Institute of Canterbury\BCDE103 Database Design\Assignment\Assignment 2 Portfolio\DataFiles\room_type.csv'
WITH 
(
FIELDTERMINATOR =',',
ROWTERMINATOR='0x0A',
FIRSTROW=2
);
GO
--test [dbo].[room_type]
select* from room_type


--	The total number of bookings
SELECT COUNT(booking_id)
FROM dbo.booking
;
GO

-- Count The total number of guests booked
SELECT COUNT(id)
FROM dbo.guest
;
GO

--List of guests by room type
SELECT CONCAT_WS(' ', first_name,last_name) AS Guestname
FROM dbo.guest
ORDER BY room_type;
GO
