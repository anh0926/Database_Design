

--Q1.list of all Rooms with description
---Query 1: CPU time = 0 ms,  elapsed time = 202 ms.

CREATE or ALTER VIEW vRoomDetails
AS
SELECT r.id, t.description 
FROM room r
INNER JOIN room_type t
ON r.room_type = t.id ;
GO 


SET STATISTICS IO ON 
SET STATISTICS TIME ON 

select * from [dbo].[vRoomDetails]



