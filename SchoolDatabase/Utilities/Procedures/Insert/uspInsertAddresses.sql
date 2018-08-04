 
 

CREATE PROCEDURE [utilities].[uspInsertAddresses]
	@City varchar(30),
	@Street varchar(60),
	@Building varchar(5),
	@ApartmentNumber varchar(5),
	@CityState varchar(25),
	@ZIP varchar(5)
AS
	INSERT INTO utilities.Addresses(City, Street, Building, ApartmentNumber, CityState, ZIP)
	VALUES (@City, @Street, @Building, @ApartmentNumber, @CityState, @ZIP)
	
RETURN 0
