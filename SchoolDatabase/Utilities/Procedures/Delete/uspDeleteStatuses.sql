 
 

CREATE PROCEDURE [utilities].[uspDeleteStatuses]
	@StatusId int
AS
	DELETE FROM utilities.Statuses
	WHERE StatusId = @StatusId
RETURN 0
