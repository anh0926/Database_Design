
--CREATE LOGIN USER 
CREATE LOGIN [User Test] WITH PASSWORD=N'12345', 
DEFAULT_DATABASE=[master], 
DEFAULT_LANGUAGE=[us_english],
CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

use [GuestHouse2020];
select * from [dbo].[vBillDrAndrew]
select * from [dbo].[vBillSirPaul]
select * from [dbo].[vGuestInfo]



