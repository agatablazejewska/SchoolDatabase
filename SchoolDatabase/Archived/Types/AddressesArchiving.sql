CREATE TYPE [archived].[AddressesArchiving] AS TABLE
(
	AddressId int PRIMARY KEY,
	City varchar(30),
	Street varchar(60),
	Building varchar(5),
	ApartmentNumber varchar(5),
	CityState varchar(25),
	ZIP varchar(5)
) 