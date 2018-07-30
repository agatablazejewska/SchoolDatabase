CREATE PROCEDURE [listeners].[uspInsertStudents_SchoolSubjects]
	@StudentId int
AS
	INSERT INTO Students_SchoolSubjects(StudentId, SchoolSubjectId)
	SELECT c.CourseStudentId, c.CourseSchoolSubjectId
	FROM Courses c
	INNER JOIN Students s ON c.CourseStudentId=s.StudentId
	WHERE c.CourseStudentId=@StudentId AND c.CourseSemester=s.StudentSemester

RETURN 0
