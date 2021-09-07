--9.Show the total amount payable by guest who has a ‘Sir’ prefix, whose first name starts
--with ‘P’ and last name ends with ‘rd’ for his room bookings

CREATE or ALTER VIEW vBillSirPaul
AS
SELECT first_name, last_name, SUM(amount*nights) AS "total amount"
FROM guest INNER JOIN booking b ON guest.id=b.guest_id
INNER JOIN rate ON b.room_type_requested=rate.room_type AND occupants=occupancy
WHERE first_name like 'Sir_P%' and last_name like '%rd'
GROUP BY first_name, last_name;
GO
select * from vBillSirPaul




SET STATISTICS IO ON 
SET STATISTICS TIME ON 


