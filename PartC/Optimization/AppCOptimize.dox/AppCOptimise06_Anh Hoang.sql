--6. Show the name of the guest, occupant, date of check in and check out and number of nights for booking 5046
CREATE OR ALTER VIEW vBookingDetails5046
AS 
SELECT concat(first_name, ' ', last_name) as 'guest name' , 
booking_id,
occupants,
booking_date as'check-in', 
dateadd (day, nights, booking_date) as 'check out', 
nights as 'number of nights'
FROM guest 
INNER JOIN booking ON guest.id = booking.guest_id 
WHERE booking_id = 5046 ;
GO 

SET STATISTICS IO ON 
SET STATISTICS TIME ON 

SELECT * FROM vBookingDetails5046