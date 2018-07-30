CREATE PROCEDURE [listeners].[upsDeleteStudents]
	@StudentId int
AS
	DELETE FROM Students
	WHERE StudentId = @StudentId
RETURN 0
