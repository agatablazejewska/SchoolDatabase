CREATE PROCEDURE [utilities].[uspDeleteAddresses]
	@AddressId int
AS
	DELETE FROM utilities.Addresses
	WHERE AddressId = @AddressId
RETURN 0
