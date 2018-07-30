CREATE PROCEDURE [utilities].[uspInsertStatuses]
	@StatusType varchar(20)
AS
	INSERT INTO Statuses(StatusType)
	VALUES (@StatusType)

RETURN 0
