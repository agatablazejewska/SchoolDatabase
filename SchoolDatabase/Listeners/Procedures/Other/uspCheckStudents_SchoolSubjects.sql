CREATE PROCEDURE [listeners].[uspCheckStudents_SchoolSubjects]
	@StudentId int,
	@SchoolSubjectId varchar(7)
AS
	IF (@SchoolSubjectId NOT IN (SELECT sss.SchoolSubjectId 
								FROM listeners.Students_SchoolSubjects AS sss
								WHERE sss.StudentId = @StudentId))
		BEGIN
			EXEC listeners.uspInsertStudents_SchoolSubjects @StudentId, @SchoolSubjectId
		END
RETURN 0
