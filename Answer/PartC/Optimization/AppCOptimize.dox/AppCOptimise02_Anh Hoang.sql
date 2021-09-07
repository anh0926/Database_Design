--A list of Guests with their name concatenated and address

CREATE or ALTER VIEW vGuestInfo
AS 
SELECT CONCAT (first_name,' ', last_name) as "guest name" , address
FROM guest;
GO

SET STATISTICS IO ON 
SET STATISTICS TIME ON 

SELECT * from [dbo].[vGuestInfo]

--test 2
CREATE NONCLUSTERED INDEX [last_name] 
ON guest ([last_name]) , ([first_name])

--DROP INDEX 
DROP INDEX  [last_name]ON guest
--test 3
CREATE NONCLUSTERED INDEX [last_name] 
ON guest ([last_name]) 
INCLUDE([first_name])

DBCC FREEPROCCACHE
GO

