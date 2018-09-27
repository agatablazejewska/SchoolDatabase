CREATE PROCEDURE [listeners].[uspUpdateStudents_StudySemestersStatus]
	@StudentId int,
	@StudySemesterId int,
	@StatusId int
AS
BEGIN TRY
	UPDATE listeners.Students_StudySemesters
	SET StatusId = @StatusId
	WHERE StudentId = @StudentId AND StudySemesterId = @StudySemesterId
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
