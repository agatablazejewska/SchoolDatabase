CREATE PROCEDURE [listeners].[uspInsertStudents_SchoolSubjects]
	@StudentId int,
	@SchoolSubjectId varchar(7)
AS
	INSERT INTO listeners.Students_SchoolSubjects(StudentId, SchoolSubjectId)
	VALUES (@StudentId, @SchoolSubjectId)
RETURN 0
