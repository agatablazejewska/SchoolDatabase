CREATE PROCEDURE [listeners].[uspCheckStudentsRepeatedSubjects_Delete]
	@CourseId int
AS
	DECLARE @StudentId int;
	DECLARE @SchoolSubjectId varchar(7);

	SELECT @StudentId = c.CourseStudentId, @SchoolSubjectId = c.CourseSchoolSubjectId
	FROM listeners.Courses AS c
	WHERE c.CourseId = @CourseId;

	IF (@SchoolSubjectId IN (SELECT srs.RepeatedSubjectId
							FROM listeners.StudentsRepeatedSubjects AS srs
							WHERE srs.RepeatingStudentId = @StudentId))
		BEGIN
			DECLARE @StudentRepeatedSubjectId int;
			SELECT @StudentRepeatedSubjectId = srs.StudentRepeatedSubjectId
			FROM listeners.StudentsRepeatedSubjects AS srs
			WHERE srs.RepeatedSubjectId = @SchoolSubjectId AND srs.RepeatingStudentId = @StudentId
			EXEC listeners.uspDeleteStudentsRepeatedSubjects @StudentRepeatedSubjectId
		END
RETURN 0
