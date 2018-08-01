CREATE PROCEDURE [listeners].[uspInsertStudentsRepeatedSubjects]
	@RepeatingStudentId int,
	@RepeatedSubjectId varchar(7)
AS
	INSERT INTO listeners.StudentsRepeatedSubjects(RepeatingStudentId, RepeatedSubjectId)
	VALUES (@RepeatingStudentId, @RepeatedSubjectId);
RETURN 0
