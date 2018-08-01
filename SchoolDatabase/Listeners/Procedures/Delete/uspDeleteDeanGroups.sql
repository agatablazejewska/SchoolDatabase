CREATE PROCEDURE [listeners].[uspDeleteDeanGroups]
	@DeanGroupId int
AS
	DELETE FROM listeners.DeanGroups
	WHERE DeanGroupId = @DeanGroupId
RETURN 0
