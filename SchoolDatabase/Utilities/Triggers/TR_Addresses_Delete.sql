CREATE TRIGGER utilities.[TR_Addresses_Delete]
ON utilities.Addresses
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @ArchivingTable AS archived.AddressesArchiving;
	INSERT INTO @ArchivingTable
	SELECT * 
	FROM deleted;
	EXEC archived.uspInsertArchivedAddresses @ArchivingTable;
END
