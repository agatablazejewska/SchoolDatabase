CREATE PROCEDURE [archived].[uspUpdateArchivedCourses]
	@ArchivingTable archived.CoursesArchiving READONLY
AS
		UPDATE ac
		SET ac.CourseGrade = atbl.CourseGrade, ac.DateOfAssessment = atbl.DateOfAssessment, ac.PresentStudentId = atbl.StudentId,
		ac.PresentSchoolSubjectId = atbl.SchoolSubjectId, ac.PresentEmployeeId = atbl.EmployeeId,
		ac.CourseSemester = atbl.CourseSemester
		FROM ArchivedCourses AS ac
		INNER JOIN @ArchivingTable AS atbl
		ON ac.CourseId = atbl.CourseId;
RETURN 0
