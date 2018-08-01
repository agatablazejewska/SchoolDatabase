CREATE PROCEDURE [listeners].[uspCheckStudentsRepeatedSubjects]
	@CourseId int
AS
	DECLARE @StudentId int;
	DECLARE @SchoolSubjectId varchar(7);

	SELECT @StudentId = c.CourseStudentId, @SchoolSubjectId = c.CourseSchoolSubjectId
	FROM listeners.Courses AS c
	WHERE c.CourseId = @CourseId;

	IF (@SchoolSubjectId NOT IN (SELECT srs.RepeatedSubjectId
								FROM listeners.StudentsRepeatedSubjects AS srs
								WHERE srs.RepeatingStudentId = @StudentId))
		BEGIN
			EXEC uspInsertStudentsRepeatedSubjects @StudentId, @SchoolSubjectId
		END
RETURN 0
