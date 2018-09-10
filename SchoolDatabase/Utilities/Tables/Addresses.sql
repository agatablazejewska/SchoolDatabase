CREATE TABLE [utilities].[Addresses]
(
	AddressId int IDENTITY(1,1),
	City nvarchar(30) NOT NULL,
	Street nvarchar(60) NOT NULL,
	Building varchar(5) NOT NULL,
	ApartmentNumber varchar(5),
	CityState nvarchar(25),
	ZIP char(5),
	CONSTRAINT CHK_ZIP CHECK (LEN(ZIP) = 5),
	CONSTRAINT PK_Addresses PRIMARY KEY (AddressId)
)
