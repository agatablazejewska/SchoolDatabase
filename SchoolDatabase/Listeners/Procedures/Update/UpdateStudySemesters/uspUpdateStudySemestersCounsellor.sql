CREATE PROCEDURE [listeners].[uspUpdateStudySemestersCounsellor]
	@StudySemesterId int,
	@CounsellorId int,
	@ErrNo int OUTPUT
AS
BEGIN TRY
	SET @ErrNo = 0;
	UPDATE listeners.StudySemesters
	SET StudySemesterCounsellor = @CounsellorId
	WHERE StudySemesterId = @StudySemesterId
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
