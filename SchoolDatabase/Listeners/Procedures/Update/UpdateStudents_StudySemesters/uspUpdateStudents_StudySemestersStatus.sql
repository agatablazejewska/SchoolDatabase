CREATE PROCEDURE [listeners].[uspUpdateStudents_StudySemestersStatus]
	@StudentId int,
	@StudySemesterId int,
	@StatusId int,
	@ErrNo int OUTPUT
AS
BEGIN TRY
	SET @ErrNo = 0;
	UPDATE listeners.Students_StudySemesters
	SET StatusId = @StatusId
	WHERE StudentId = @StudentId AND StudySemesterId = @StudySemesterId
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
