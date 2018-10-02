CREATE PROCEDURE [listeners].[uspUpdateStudentsStatus]
	@StudentId int,
	@StatusId int,
	@ErrNo int OUTPUT
AS
BEGIN TRY
	SET @ErrNo = 0;
	UPDATE listeners.Students
	SET StudentStatusId = @StatusId
	WHERE StudentId = @StudentId
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
