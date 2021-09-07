--5. List the people who made the booking for room number 209 on 26th Nov 2016.

CREATE or ALTER VIEW vRoom209
AS 
SELECT concat (first_name, ' ', last_name) as 'guest name' , room_no, booking_date
FROM booking 
INNER JOIN guest ON booking.guest_id = guest.id
WHERE room_no =209 and booking_date = '20161126' ;
GO 


