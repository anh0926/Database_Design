--7. Calculate the total bill for booking 5128 including extras.

CREATE OR ALTER VIEW vTotalBill5128
AS
SELECT SUM (rate.amount*b.nights) +
(SELECT SUM(e.amount)
FROM extra e 
WHERE e.booking_id=b.booking_id) AS "total bill for booking 5128"
FROM rate INNER JOIN booking b
ON b.occupants=rate.occupancy AND b.room_type_requested=rate.room_type
WHERE b.booking_id=5346 
GROUP BY b.booking_id;
GO