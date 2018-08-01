CREATE PROCEDURE [utilities].[uspInsertStatuses]
	@StatusType varchar(20)
AS
	INSERT INTO utilities.Statuses(StatusType)
	VALUES (@StatusType)

RETURN 0
