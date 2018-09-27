CREATE PROCEDURE [listeners].[uspUpdateCoursesAddEmployees]
AS
BEGIN TRY
BEGIN TRANSACTION
	IF OBJECT_ID('tempdb..#WhichEmployeeWhichCourse') IS NOT NULL
    DROP TABLE #WhichEmployeeWhichCourse;
	IF OBJECT_ID('tempdb..#EmployeesCourses') IS NOT NULL
    DROP TABLE #EmployeesCourses;

	SELECT DISTINCT ess.EmployeeId, c.CourseSchoolSubjectId, c.StudySemester 
	INTO #WhichEmployeeWhichCourse
	FROM staff.Employees_SchoolSubjects AS ess
	INNER JOIN listeners.Courses AS c
	ON ess.SchoolSubjectId = c.CourseSchoolSubjectId
	INNER JOIN staff.Employees AS e
	ON ess.EmployeeId = e.EmployeeId
	WHERE c.CourseEmployeeId IS NULL AND e.EmployeeStatusId = 200
	GROUP BY c.CourseSchoolSubjectId, c.StudySemester, ess.EmployeeId
	SELECT * FROM #WhichEmployeeWhichCourse

	SELECT new.*
	INTO #EmployeesCourses
	FROM (SELECT wewc.*, ROW_NUMBER() over (PARTITION BY CourseSchoolSubjectId, StudySemester ORDER BY NEWID()) AS seq
		 FROM #WhichEmployeeWhichCourse AS wewc) AS new
	WHERE seq = 1
	ORDER BY StudySemester

	UPDATE c
	SET c.CourseEmployeeId = ec.EmployeeId
	FROM listeners.Courses AS c
	INNER JOIN #EmployeesCourses AS ec
	ON c.CourseSchoolSubjectId = ec.CourseSchoolSubjectId AND c.StudySemester = ec.StudySemester

	IF OBJECT_ID('tempdb..#WhichEmployeeWhichCourse') IS NOT NULL
    DROP TABLE #WhichEmployeeWhichCourse;
	IF OBJECT_ID('tempdb..#EmployeesCourses') IS NOT NULL
    DROP TABLE #EmployeesCourses;
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo; 
	ROLLBACK TRANSACTION
END CATCH
