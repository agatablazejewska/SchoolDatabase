CREATE PROCEDURE [listeners].[uspDeleteCourses]
AS
BEGIN TRY
BEGIN TRANSACTION
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
	EXEC utils.uspGetErrorInfo; 
	/*Test XACT state 
	if 1: the transaction is commitable
	if -1: the transaction is uncommitable and should be rolled back
	if 0: means that there is no transaction and a commit or rollback operation would generate an error*/
	-- Test whether the transaction is uncommitable
	IF (XACT_STATE()) = -1
	BEGIN
		PRINT N'The transaction is in uncommitable state.' + N'Rolling back transaction.';
		ROLLBACK TRANSACTION
	END
	-- Test whether the transaction is commitable
	IF (XACT_STATE()) = 1
	BEGIN
		PRINT N'The transaction is commitable.' + N'Commiting transaction.';
		COMMIT TRANSACTION
	END
END CATCH

