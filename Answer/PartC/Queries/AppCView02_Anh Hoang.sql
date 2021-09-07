--A list of Guests with their name concatenated and address

CREATE or ALTER VIEW vGuestInfo
AS 
SELECT CONCAT (first_name,' ', last_name) as "guest name" , address
FROM guest;
GO

