CREATE PROCEDURE [archived].[uspDeleteArchivedAddresses]
	@AddressId int
AS
	DELETE FROM archived.ArchivedAddresses
	WHERE AddressId = @AddressId;
RETURN 0
