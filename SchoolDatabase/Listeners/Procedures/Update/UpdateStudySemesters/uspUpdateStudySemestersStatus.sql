CREATE PROCEDURE [listeners].[uspUpdateStudySemestersStatus]
	@StudySemesterId int,
	@StatusId int
AS
BEGIN TRY
	UPDATE listeners.StudySemesters
	SET StudySemesterStatusId = @StatusId
	WHERE StudySemesterId = @StudySemesterId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
