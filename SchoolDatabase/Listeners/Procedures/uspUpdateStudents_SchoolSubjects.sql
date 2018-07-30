CREATE PROCEDURE [listeners].[uspUpdateStudents_SchoolSubjects]
	@StudentId int
AS
	EXEC usp.DeleteStudents_SchoolSubjects @StudentId

	INSERT INTO Students_SchoolSubjects(StudentId, SchoolSubjectId)
	SELECT c.CourseStudentId, c.CourseSchoolSubjectId
	FROM Courses c
	INNER JOIN Students s ON c.CourseStudentId=s.StudentId
	WHERE c.CourseStudentId=@StudentId AND c.CourseSemester=s.StudentSemester
RETURN 0
