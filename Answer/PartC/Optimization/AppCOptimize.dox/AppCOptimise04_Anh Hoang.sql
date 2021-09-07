--List all the people and their room number, who made the booking for room on 26th Nov 2016
SET STATISTICS IO ON 
SET STATISTICS TIME ON

CREATE or ALTER VIEW vBookingList20161121
AS 
SELECT concat(first_name, ' ', last_name) AS "guest name", room_no, booking_date
FROM guest
INNER JOIN booking ON guest.id=booking.guest_id
WHERE booking_date = '2016-11-21'


select * from [dbo].[vBookingList20161121]

