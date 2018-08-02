CREATE PROCEDURE [listeners].[uspDeleteStudentsRepeatedSubjects]
	@StudentRepeatedSubjectId int
AS
	DELETE FROM listeners.StudentsRepeatedSubjects
	WHERE StudentRepeatedSubjectId = @StudentRepeatedSubjectId;
RETURN 0
