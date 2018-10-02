CREATE PROCEDURE [listeners].[uspDeleteCourses]
	@ErrNo int OUTPUT
AS
BEGIN TRY
BEGIN TRANSACTION
	SET @ErrNo = 0;
	IF OBJECT_ID('tempdb..#ArchivedCourses') IS NOT NULL
    DROP TABLE #ArchivedCourses;
	--Check which courses are going to be deleted: all of them with grade 3.0 or above
	SELECT *
	INTO #ArchivedCourses
	FROM listeners.Courses AS c
	WHERE c.CourseGrade >= 3;
	--Archiving courses
	INSERT INTO archived.ArchivedCourses (CourseGrade, DateOfAssessment, PresentStudentId, PresentSchoolSubjectId,
	PresentEmployeeId, CourseSemester, PresentStudySemesterId)
	SELECT ac.CourseGrade, ac.DateOfAssessment, ac.CourseStudentId,
	ac.CourseSchoolSubjectId, ac.CourseEmployeeId, ac.CourseSemester, ac.StudySemester
	FROM #ArchivedCourses AS ac;
	--Deleting these courses
	DELETE c
	FROM listeners.Courses AS c
	WHERE c.CourseId IN (SELECT ac.CourseId FROM #ArchivedCourses AS ac);
	IF OBJECT_ID('tempdb..#ArchivedCourses') IS NOT NULL
    DROP TABLE #ArchivedCourses;
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo; 
	ROLLBACK TRANSACTION
END CATCH

