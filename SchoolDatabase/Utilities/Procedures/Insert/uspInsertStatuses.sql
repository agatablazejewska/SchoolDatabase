 
 

CREATE PROCEDURE [utilities].[uspInsertStatuses]
	@StatusType nvarchar(20)
AS
	INSERT INTO utilities.Statuses(StatusType)
	VALUES (@StatusType)

RETURN 0
