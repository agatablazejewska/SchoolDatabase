CREATE TABLE [archived].[ArchivedAddresses]
(
	AddressId int,
	City nvarchar(30) NOT NULL,
	Street nvarchar(60) NOT NULL,
	Building varchar(5) NOT NULL,
	ApartmentNumber varchar(5),
	CityState nvarchar(25),
	ZIP nvarchar(5),
	CONSTRAINT CHK_ArchivedZIP CHECK (LEN(ZIP) = 5),
	CONSTRAINT PK_ArchivedAddresses PRIMARY KEY (AddressId)
)