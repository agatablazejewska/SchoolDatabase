CREATE TRIGGER listeners.[TR_Courses_Delete]
ON listeners.Courses
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @DeletedCourses archived.CoursesArchiving;
	INSERT INTO @DeletedCourses(CourseGrade, DateOfAssessment, CourseSemester, TempStudentId, TempEmployeeId, TempSchoolSubjectId)
	SELECT d.CourseGrade, d.DateOfAssessment, d.CourseSemester, d.CourseStudentId, d.CourseEmployeeId, d.CourseSchoolSubjectId
	FROM deleted AS d;
	EXEC archived.uspInsertArchivedCourses @DeletedCourses;
END
