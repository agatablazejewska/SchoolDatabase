CREATE PROCEDURE [archived].[uspUpdateArchivedCoursesAddEmployees]
AS
	  DECLARE @trancount int;
	  SET @trancount = @@trancount;
BEGIN TRY
		IF @trancount = 0
           BEGIN TRANSACTION
        ELSE
            SAVE TRANSACTION ArchivedCoursesAddEmployees;
	IF OBJECT_ID('tempdb..#WhichEmployeeWhichCourseArch') IS NOT NULL
    DROP TABLE #WhichEmployeeWhichCourseArch;
	IF OBJECT_ID('tempdb..#EmployeesCoursesArch') IS NOT NULL
    DROP TABLE #EmployeesCoursesArch;

	SELECT DISTINCT ess.EmployeeId, c.PresentSchoolSubjectId, c.PresentStudySemesterId
	INTO #WhichEmployeeWhichCourseArch
	FROM staff.Employees_SchoolSubjects AS ess
	INNER JOIN archived.ArchivedCourses AS c
	ON ess.SchoolSubjectId = c.PresentSchoolSubjectId
	INNER JOIN staff.Employees AS e
	ON ess.EmployeeId = e.EmployeeId
	WHERE c.PresentEmployeeId IS NULL AND e.EmployeeStatusId = 200
	GROUP BY c.PresentSchoolSubjectId, c.PresentStudySemesterId, ess.EmployeeId

	SELECT new.*
	INTO #EmployeesCoursesArch
	FROM (SELECT wewc.*, ROW_NUMBER() over (PARTITION BY PresentSchoolSubjectId, PresentStudySemesterId ORDER BY NEWID()) AS seq
		 FROM #WhichEmployeeWhichCourseArch AS wewc) AS new
	WHERE seq = 1
	ORDER BY PresentStudySemesterId

	UPDATE c
	SET c.PresentEmployeeId = ec.EmployeeId
	FROM archived.ArchivedCourses AS c
	INNER JOIN #EmployeesCoursesArch AS ec
	ON c.PresentSchoolSubjectId = ec.PresentSchoolSubjectId AND c.PresentStudySemesterId = ec.PresentStudySemesterId

	IF OBJECT_ID('tempdb..#WhichEmployeeWhichCourseArch') IS NOT NULL
    DROP TABLE #WhichEmployeeWhichCourseArch;
	IF OBJECT_ID('tempdb..#EmployeesCoursesArch') IS NOT NULL
    DROP TABLE #EmployeesCoursesArch;

	IF @trancount = 0
            COMMIT;
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
	IF (XACT_STATE()) = 1 AND @trancount = 0
	BEGIN
		ROLLBACK TRANSACTION
	END
	IF (XACT_STATE()) = 1 AND @trancount> 0
	BEGIN
		ROLLBACK TRANSACTION ArchivedCoursesAddEmployees;
	END
END CATCH

