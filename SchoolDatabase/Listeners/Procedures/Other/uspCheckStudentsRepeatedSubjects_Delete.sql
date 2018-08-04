	--There is a possibility that updated grade applies to one of courses students had to repeat. If they passed this time,
	--we delete record about their necessity to repeat this school subject next year. We can also archive this particular course.
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
			WHERE srs.RepeatedSubjectId = @SchoolSubjectId AND srs.RepeatingStudentId = @StudentId;
			EXEC listeners.uspDeleteStudentsRepeatedSubjects @StudentRepeatedSubjectId;
			--If this exact course meets the conditions above then it means it's student's old course. Now when it's finally
			--passed we can delete it from table Courses, which will put it into ArchivedCourses.
			EXEC listeners.uspDeleteCourses @CourseId;
		END
RETURN 0
