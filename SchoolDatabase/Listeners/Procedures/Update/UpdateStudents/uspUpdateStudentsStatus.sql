CREATE PROCEDURE [listeners].[uspUpdateStudentsStatus]
	@StudentId int,
	@StatusId int
AS
BEGIN TRY
	UPDATE listeners.Students
	SET StudentStatusId = @StatusId
	WHERE StudentId = @StudentId
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
