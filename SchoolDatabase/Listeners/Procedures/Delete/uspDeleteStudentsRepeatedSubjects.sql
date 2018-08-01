CREATE PROCEDURE [listeners].[uspDeleteStudentsRepeatedSubjects]
	@StudentId int
AS
	DELETE FROM listeners.StudentsRepeatedSubjects
	WHERE RepeatingStudentId=@StudentId
RETURN 0
