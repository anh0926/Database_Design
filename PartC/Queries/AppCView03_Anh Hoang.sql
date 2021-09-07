--Show the date of check in and check out and number of nights for booking 5204

CREATE or ALTER VIEW vBooking5204
AS 
SELECT booking_date as "check in", DATEADD (DAY, nights, booking_date) AS "check out", nights
FROM booking 
WHERE booking_id=5204
