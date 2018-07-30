CREATE PROCEDURE [utilities].[uspDeleteStatuses]
	@StatusId int
AS
	DELETE FROM Statuses
	WHERE StatusId = @StatusId
RETURN 0
