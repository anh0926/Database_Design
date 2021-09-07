USE guesthouse2020 ;
GO

--Q1. List the people who has booked room number 101 on 17th November 2016.
SELECT first_name, last_name
FROM guest INNER JOIN booking
ON guest.id = booking.guest_id
WHERE room_no = 101
AND booking_date = '2016-11-17';
GO 

--Q2. Give the booking date and the number of nights for guest 1540
SELECT booking_date, nights
FROM booking
WHERE guest_id=1540;
GO 

--Q3. List the arrival time and the first and last names for all guests due to arrive on 2016-11-05, 
--order the output by time of arrival.
SELECT arrival_time, first_name, last_name
FROM guest INNER JOIN booking
ON guest.id = booking.guest_id
WHERE booking_date = '2016-11-05'
ORDER BY arrival_time ASC;
GO 

--Q4. Give the daily rate that should be paid for bookings with ids 5152, 5165, 5154 and 5295. 
--Include booking id, room type, number of occupants and the amount.
SELECT booking_id as "booking id", room_type_requested as"room type", occupants as "number of occupants", amount as "daily rate"
FROM booking INNER JOIN rate
ON booking.room_type_requested=rate.room_type  AND booking.occupants=rate.occupancy
WHERE booking_id IN  (5152, 5165, 5154, 5295);
GO 

--Q5. Find who is staying in room 101 on 2016-12-03, include first name, last name and address.
SELECT first_name, last_name, address
FROM guest INNER JOIN booking 
ON guest.id=booking.guest_id
WHERE room_no=101 AND booking_date='2016-12-03';
GO

--Q6. For guests 1185 and 1270 show the number of bookings made and the total number of nights. 
--Your output should include the guest id and the total number of bookings and the total number of nights
SELECT guest_id, COUNT(booking_id) AS "total number of bookings", SUM(nights) AS "total number of nights"
FROM booking
WHERE guest_id IN (1185,1270)
GROUP BY guest_id;
GO

--Q7. Show the total amount payable by guest Ruth Cadbury for her room bookings. 
--You should JOIN to the rate table using room_type_requested and occupants.
SELECT first_name, last_name , SUM(amount*nights) AS "total amount" 
FROM guest INNER JOIN booking b ON guest.id=b.guest_id
INNER JOIN rate ON b.room_type_requested=rate.room_type AND occupants=occupancy
WHERE first_name = 'Ruth'and last_name = 'Cadbury'
group by first_name , last_name
GO


--Q8. Calculate the total bill for booking 5346 including extras.
SELECT SUM (rate.amount*b.nights) +
(SELECT SUM(e.amount)
FROM extra e 
WHERE e.booking_id=b.booking_id) AS "total bill for booking 5436"
FROM rate INNER JOIN booking b
ON b.occupants=rate.occupancy AND b.room_type_requested=rate.room_type
WHERE b.booking_id=5346 
GROUP BY b.booking_id;
GO

--Q9. For every guest who has the word “Edinburgh” in their address show the total number of nights booked.
--Be sure to include 0 for those guests who have never had a booking. Show last name, first name, address and number of nights.
--Order by last name then first name.
SELECT last_name, first_name, address, COALESCE(SUM(nights),0) AS 'total nights'
FROM  booking b RIGHT JOIN guest g 
ON b.guest_id=g.id 
WHERE address LIKE '%Edinburgh%'
GROUP BY last_name, first_name, address
ORDER BY last_name, first_name;
GO

--Q10. For each day of the week beginning 2016-11-25 show the number of bookings starting that day. 
--Be sure to show all the days of the week in the correct order.
SELECT booking_date, COUNT(booking_id) AS 'number of bookings'
FROM booking 
WHERE booking_date BETWEEN '2016-11-25' AND '2016-12-01'
GROUP BY booking_date;
GO

--Q11. Show the number of guests in the hotel on the night of 2016-11-21. 
--Include all occupants who checked in that day but not those who checked out.
SELECT SUM(occupants) AS 'total occupants'
FROM booking
WHERE DATEADD (DAY, nights, booking_date) > '2016-11-21'
AND booking_date <= '2016-11-21' ;
GO

 --Q12. List the rooms that are free on the day 25th Nov 2016.
SELECT r.id AS rooms 
FROM room r LEFT JOIN 
booking b
ON b.room_no=r.id
AND DATEADD (DAY, nights, booking_date) > '20161125'
AND booking_date <= '20161125'
WHERE b.room_no IS NULL ;
GO 

