--10.For every guest who has the word “East” in their address show the total number of nights
--booked. Be sure to include 0 for those guests who have never had a booking. Show last
--name, first name, address and number of nights. Order by last name then first name

CREATE OR ALTER VIEW vGuestInfoByAddress
AS
SELECT TOP (100) PERCENT 
last_name, first_name, address, COALESCE(SUM(nights),0) AS 'total nights'
FROM  booking b RIGHT JOIN guest g 
ON b.guest_id=g.id 
WHERE address LIKE '%East%'
GROUP BY last_name, first_name, address
ORDER BY last_name, first_name;
GO
select * from vGuestInfoByAddress



SET STATISTICS IO ON 
SET STATISTICS TIME ON 

