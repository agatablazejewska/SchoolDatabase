CREATE PROCEDURE [utilities].[uspUpdateAddresses]
	@AddressId int,
	@City nvarchar(30),
	@Street nvarchar(60),
	@Building varchar(5),
	@ApartmentNumber varchar(5),
	@CityState nvarchar(25),
	@ZIP nvarchar(5)
AS
	UPDATE utilities.Addresses
	SET City = @City, Street = @Street, Building = @Building, ApartmentNumber = @ApartmentNumber,
	@CityState = @CityState, ZIP = @ZIP
	WHERE AddressId = @AddressId
RETURN 0
