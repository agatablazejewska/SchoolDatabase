CREATE PROCEDURE [listeners].[uspDeleteStudents]
	@StudentId int
AS
	DELETE FROM listeners.Students
	WHERE StudentId = @StudentId
RETURN 0