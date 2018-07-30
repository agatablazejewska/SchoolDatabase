CREATE PROCEDURE [utilities].[uspUpdateAddresses]
	@AddressId int,
	@City varchar(30),
	@Street varchar(60),
	@Building varchar(5),
	@ApartmentNumber varchar(5),
	@CityState varchar(25),
	@ZIP varchar(5)
AS
	UPDATE Addresses
	SET City = @City, Street = @Street, Building = @Building, ApartmentNumber = @ApartmentNumber,
	@CityState = @CityState, ZIP = @ZIP
	WHERE AddressId = @AddressId
	
RETURN 0
