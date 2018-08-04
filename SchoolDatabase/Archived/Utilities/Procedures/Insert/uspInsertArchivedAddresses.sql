CREATE PROCEDURE [archived].[uspInsertArchivedAddresses]
	@Addresses archived.AddressesArchiving READONLY

AS
	INSERT INTO archived.ArchivedAddresses(AddressId, City, Street, Building, ApartmentNumber, CityState, ZIP)
	SELECT *
	FROM @Addresses;
RETURN 0
