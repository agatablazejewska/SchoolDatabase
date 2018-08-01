CREATE PROCEDURE [listeners].[upsDeleteStudents]
	@StudentId int
AS
	DELETE FROM listeners.Students
	WHERE StudentId = @StudentId
RETURN 0
