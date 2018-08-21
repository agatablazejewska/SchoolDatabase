CREATE PROCEDURE [archived].[uspInsertArchivedCourses]
	@ArchivingTable archived.CoursesArchiving READONLY
AS
		INSERT INTO archived.ArchivedCourses(CourseGrade, DateOfAssessment,
		CourseSemester, PresentEmployeeId, PresentSchoolSubjectId, TempStudentId, TempEmployeeId, TempSchoolSubjectId)
		SELECT CourseGrade, DateOfAssessment, CourseSemester, TempEmployeeId, TempSchoolSubjectId, TempStudentId, 
		TempEmployeeId, TempSchoolSubjectId
		FROM @ArchivingTable;
RETURN 0
