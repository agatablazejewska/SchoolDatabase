CREATE TRIGGER listeners.[TR_Courses_Delete]
ON listeners.Courses
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @DeletedCourses archived.CoursesArchiving;
	INSERT INTO @DeletedCourses(CourseGrade, DateOfAssessment, SchoolSubjectId, EmployeeId, CourseSemester, TempStudentId)
	SELECT d.CourseGrade, d.DateOfAssessment, d.CourseSchoolSubjectId, d.CourseEmployeeId, d.CourseSemester, d.CourseStudentId
	FROM deleted AS d;
	EXEC archived.uspInsertArchivedCourses @DeletedCourses;
END
