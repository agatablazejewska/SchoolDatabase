CREATE TABLE [archived].[ArchivedAddresses]
(
	AddressId int,
	City varchar(30) NOT NULL,
	Street varchar(60) NOT NULL,
	Building varchar(5) NOT NULL,
	ApartmentNumber varchar(5),
	CityState varchar(25),
	ZIP varchar(5),
	CONSTRAINT CHK_ArchivedZIP CHECK (LEN(ZIP) = 5),
	CONSTRAINT PK_ArchivedAddresses PRIMARY KEY (AddressId)
)