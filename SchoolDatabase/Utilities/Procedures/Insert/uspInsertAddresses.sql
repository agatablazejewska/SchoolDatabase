 
 

CREATE PROCEDURE [utilities].[uspInsertAddresses]
	@City nvarchar(30),
	@Street nvarchar(60),
	@Building varchar(5),
	@ApartmentNumber varchar(5),
	@CityState nvarchar(25),
	@ZIP nvarchar(5)
AS
	INSERT INTO utilities.Addresses(City, Street, Building, ApartmentNumber, CityState, ZIP)
	VALUES (@City, @Street, @Building, @ApartmentNumber, @CityState, @ZIP)
	
RETURN 0
