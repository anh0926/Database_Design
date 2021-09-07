USE GuestHouse2020;
GO 

--Q1.list of all Rooms with description

CREATE or ALTER VIEW vRoomDetails
AS
SELECT r.id, t.description 
FROM room r
INNER JOIN room_type t
ON r.room_type = t.id ;
GO 



