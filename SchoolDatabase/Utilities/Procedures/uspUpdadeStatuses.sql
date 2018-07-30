CREATE PROCEDURE [utilities].[uspUpdadeStatuses]
	@StatusId int,
	@StatusType varchar(20)
AS
	UPDATE Statuses
	SET StatusType = @StatusType
	WHERE StatusId=@StatusId
RETURN 0
