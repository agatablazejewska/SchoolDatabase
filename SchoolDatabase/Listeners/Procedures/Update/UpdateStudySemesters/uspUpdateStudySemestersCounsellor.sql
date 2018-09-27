CREATE PROCEDURE [listeners].[uspUpdateStudySemestersCounsellor]
	@StudySemesterId int,
	@CounsellorId int
AS
BEGIN TRY
	UPDATE listeners.StudySemesters
	SET StudySemesterCounsellor = @CounsellorId
	WHERE StudySemesterId = @StudySemesterId
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
