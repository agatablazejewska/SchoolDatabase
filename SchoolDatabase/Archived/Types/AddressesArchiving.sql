CREATE TYPE [archived].[AddressesArchiving] AS TABLE
(
	AddressId int PRIMARY KEY,
	City nvarchar(30),
	Street nvarchar(60),
	Building varchar(5),
	ApartmentNumber varchar(5),
	CityState nvarchar(25),
	ZIP nvarchar(5)
) 