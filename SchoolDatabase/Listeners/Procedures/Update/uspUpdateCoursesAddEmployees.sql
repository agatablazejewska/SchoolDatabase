CREATE PROCEDURE [listeners].[uspUpdateCoursesAddEmployees]
AS
BEGIN TRY
BEGIN TRANSACTION
	IF OBJECT_ID('tempdb..#WhichEmployeeWhichCourse') IS NOT NULL
    DROP TABLE #WhichEmployeeWhichCourse;
	SELECT  ess.EmployeeId, c.CourseSchoolSubjectId, c.StudySemester
	INTO #WhichEmployeeWhichCourse 
	FROM staff.Employees_SchoolSubjects AS ess
	INNER JOIN listeners.Courses AS c
	ON ess.SchoolSubjectId = c.CourseSchoolSubjectId
	INNER JOIN staff.Employees AS e
	ON ess.EmployeeId = e.EmployeeId
	WHERE c.CourseEmployeeId IS NULL AND e.EmployeeStatusId = 200
	GROUP BY c.CourseSchoolSubjectId, c.StudySemester, ess.EmployeeId

	UPDATE c
	SET c.CourseEmployeeId = (SELECT TOP 1 wewc.EmployeeId FROM #WhichEmployeeWhichCourse AS wewc
							 WHERE wewc.CourseSchoolSubjectId = c.CourseSchoolSubjectId
							 AND wewc.StudySemester = c.StudySemester
							 ORDER BY NEWID())
	FROM listeners.Courses AS c
	INNER JOIN #WhichEmployeeWhichCourse AS wewc
	ON c.CourseSchoolSubjectId = wewc.CourseSchoolSubjectId AND c.StudySemester = wewc.StudySemester
	IF OBJECT_ID('tempdb..#WhichEmployeeWhichCourse') IS NOT NULL
    DROP TABLE #WhichEmployeeWhichCourse;
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
