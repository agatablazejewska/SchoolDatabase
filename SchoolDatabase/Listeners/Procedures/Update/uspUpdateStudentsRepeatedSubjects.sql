CREATE PROCEDURE [listeners].[uspUpdateStudentsRepeatedSubjects]
	@StudentId int
AS
	EXEC listeners.uspDeleteStudentsRepeatedSubjects @StudentId

	INSERT INTO listeners.StudentsRepeatedSubjects(RepeatingStudentId, RepeatedSubjectId)
	SELECT c.CourseStudentId, c.CourseSchoolSubjectId
	FROM listeners.Courses AS c
	INNER JOIN listeners.Students AS s 
	ON c.CourseStudentId=s.StudentId
	WHERE c.CourseStudentId=@StudentId AND c.CourseSemester != s.StudentSemester AND c.CourseGrade < 3;
RETURN 0
