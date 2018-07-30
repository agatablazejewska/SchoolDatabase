CREATE PROCEDURE [listeners].[uspDeleteStudentsRepeatedSubjects]
	@StudentId int
AS
	DELETE FROM StudentsRepeatedSubjects
	WHERE RepeatingStudentId=@StudentId
RETURN 0
