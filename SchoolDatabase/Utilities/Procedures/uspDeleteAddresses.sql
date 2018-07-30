CREATE PROCEDURE [utilities].[uspDeleteAddresses]
	@AddressId int
AS
	DELETE FROM Addresses
	WHERE AddressId = @AddressId
RETURN 0
