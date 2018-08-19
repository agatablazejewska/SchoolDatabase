 
 

CREATE PROCEDURE [listeners].[uspUpdateStudents_SchoolSubjects]
	@StudentId int
AS
	EXEC listeners.uspDeleteStudents_SchoolSubjects @StudentId

	INSERT INTO listeners.Students_SchoolSubjects(StudentId, SchoolSubjectId)
	SELECT c.CourseStudentId, c.CourseSchoolSubjectId
	FROM listeners.Courses AS c
	INNER JOIN listeners.Students AS s
	ON c.CourseStudentId=s.StudentId
	WHERE c.CourseStudentId=@StudentId AND c.CourseSemester=(SELECT ss.StudySemester FROM listeners.StudySemesters AS ss
															INNER JOIN Students_StudySemesters AS sss
															ON ss.StudySemesterId = sss.StudySemesterId
															WHERE sss.StudentId = c.CourseStudentId)
RETURN 0
