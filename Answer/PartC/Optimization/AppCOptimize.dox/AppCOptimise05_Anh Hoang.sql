--5. List the people who made the booking for room number 209 on 26th Nov 2016.
SET STATISTICS IO ON 
SET STATISTICS TIME ON 

--TEST 1 
CREATE or ALTER VIEW vRoom209
AS 
SELECT TOP  concat (first_name, ' ', last_name) as 'guest name' , room_no, booking_date
FROM booking 
INNER JOIN guest ON booking.guest_id = guest.id
WHERE room_no ='209' and booking_date = '20161126' ;
GO 

SELECT * FROM [dbo].[vRoom209]

--TEST 2 : select TOP 2 
CREATE or ALTER VIEW vRoom209
AS 
SELECT TOP 2  concat (first_name, ' ', last_name) as 'guest name' , room_no, booking_date
FROM booking 
INNER JOIN guest ON booking.guest_id = guest.id
WHERE room_no ='209' and booking_date = '20161126' ;
GO 
SELECT * FROM [dbo].[vRoom209]




