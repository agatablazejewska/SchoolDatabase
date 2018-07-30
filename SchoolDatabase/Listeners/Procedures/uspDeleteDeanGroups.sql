CREATE PROCEDURE [listeners].[uspDeleteDeanGroups]
	@DeanGroupId int
AS
	DELETE FROM DeanGroups
	WHERE DeanGroupId = @DeanGroupId
RETURN 0
