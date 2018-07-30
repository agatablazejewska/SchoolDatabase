﻿CREATE PROCEDURE [listeners].[uspUpdateStudentsRepeatedSubjects]
	@StudentId int
AS
	EXEC uspDeleteStudentsRepeatedSubjects @StudentId

	INSERT INTO StudentsRepeatedSubjects(RepeatingStudentId, RepeatedSubjectId)
	SELECT c.CourseStudentId, c.CourseSchoolSubjectId
	FROM Courses c
	INNER JOIN Students s ON c.CourseStudentId=s.StudentId
	WHERE c.CourseStudentId=@StudentId AND c.CourseSemester != s.StudentSemester AND c.CourseGrade < 3;
RETURN 0
