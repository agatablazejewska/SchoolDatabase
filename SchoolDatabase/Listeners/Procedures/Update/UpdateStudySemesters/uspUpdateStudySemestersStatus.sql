CREATE PROCEDURE [listeners].[uspUpdateStudySemestersStatus]
	@StudySemesterId int,
	@StatusId int,
	@ErrNo int OUTPUT
AS
BEGIN TRY
	SET @ErrNo = 0;
	UPDATE listeners.StudySemesters
	SET StudySemesterStatusId = @StatusId
	WHERE StudySemesterId = @StudySemesterId;
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
