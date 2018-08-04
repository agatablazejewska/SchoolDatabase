CREATE PROCEDURE [archived].[uspInsertArchivedCourses]
	@ArchivingTable archived.CoursesArchiving READONLY
AS
		INSERT INTO archived.ArchivedCourses(CourseGrade, DateOfAssessment, PresentStudentId, PresentSchoolSubjectId, PresentEmployeeId,
		CourseSemester, TempStudentId)
		SELECT CourseGrade, DateOfAssessment, StudentId, SchoolSubjectId, EmployeeId, CourseSemester, TempStudentId
		FROM @ArchivingTable;
RETURN 0
