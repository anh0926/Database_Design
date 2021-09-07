--8. Show the total amount payable by guest Dr Andrew Murrison for his room bookings. You
--should JOIN to the rate table using room_type_requested and occupants. 

CREATE OR ALTER VIEW vBillDrAndrew
AS
SELECT SUM(amount*nights) AS "total amount"
FROM guest INNER JOIN booking b ON guest.id=b.guest_id
INNER JOIN rate ON b.room_type_requested=rate.room_type AND occupants=occupancy
WHERE first_name = 'Dr Andrew'and last_name = 'Murrison';
GO
