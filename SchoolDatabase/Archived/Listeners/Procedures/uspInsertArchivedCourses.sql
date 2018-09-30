CREATE PROCEDURE [archived].[uspInsertArchivedCourses]
	@StudySemesterId int
AS
BEGIN TRY
BEGIN TRANSACTION
	IF OBJECT_ID('tempdb..#NeededForNameArch') IS NOT NULL
    DROP TABLE #NeededForNameArch;
	--Looking for all data needed for name of table which we will be querying to get student's courses.
	SELECT sss.StudentId, ss.StudySemester, ss.FacultyId, fos.FieldOfStudyName, LEFT(slvl.StudyLevelName, 1) AS StudyLevel, 
	sss.FormOfStudyId
	INTO #NeededForNameArch
	FROM listeners.Students_StudySemesters AS sss
	INNER JOIN listeners.StudySemesters AS ss
	ON sss.StudySemesterId = ss.StudySemesterId
	INNER JOIN studies.FieldsOfStudies AS fos
	ON ss.FieldOfStudyId = fos.FieldOfStudyId
	INNER JOIN utilities.StudyLevels AS slvl
	ON ss.StudyLevelId = slvl.StudyLevelId
	WHERE sss.StudySemesterId = @StudySemesterId
	--Querying the table and inserting data into archived.ArchivedCourses
	DECLARE @TableName varchar(80);
	SET @TableName = ((SELECT TOP(1) FacultyId FROM #NeededForNameArch) + (SELECT TOP(1) FieldOfStudyName FROM #NeededForNameArch) + 
	(SELECT TOP(1) StudyLevel FROM #NeededForNameArch) + (SELECT TOP(1) FormOfStudyId FROM #NeededForNameArch))
	DECLARE @Query varchar(1000);   
	 SET @Query = N'INSERT INTO archived.ArchivedCourses(PresentStudentId, PresentSchoolSubjectId, CourseSemester, PresentStudySemesterId)
	 SELECT nfn.StudentId, tn.SchoolSubject, tn.Semester, ' + CONVERT(varchar(20), @StudySemesterId)+N'
	 FROM studies.' + @TableName + N' AS tn 
	 INNER JOIN #NeededForNameArch AS nfn
	 ON tn.Semester < nfn.StudySemester'
	 EXEC (@Query);
     EXEC archived.uspUpdateArchivedCoursesAddEmployees;
	 
	UPDATE ac
	 SET ac.CourseGrade = (SELECT TOP 1 GradeNum
						FROM utilities.Grades AS g
						WHERE g.GradeNum >= 3.0
						ORDER BY NEWID(),
						ac.CourseId),
		ac.DateOfAssessment = (SELECT 
								 CASE ac.CourseSemester
									WHEN  1 THEN DATEADD(year,1,CAST(CAST(ss.StartYear AS varchar(4))+'0129' AS datetime))
									WHEN  2 THEN DATEADD(year,1,CAST(CAST(ss.StartYear AS varchar(4))+'0629' AS datetime))
									WHEN  3 THEN DATEADD(year,2,CAST(CAST(ss.StartYear AS varchar(4))+'0129' AS datetime))
									WHEN  4 THEN  DATEADD(year,2,CAST(CAST(ss.StartYear AS varchar(4))+'0629' AS datetime))
									WHEN  5 THEN DATEADD(year,3,CAST(CAST(ss.StartYear AS varchar(4))+'0129' AS datetime))
									WHEN  6 THEN  DATEADD(year,3,CAST(CAST(ss.StartYear AS varchar(4))+'0629' AS datetime))
									WHEN  7 THEN  DATEADD(year,4,CAST(CAST(ss.StartYear AS varchar(4))+'0129' AS datetime))
								END)
	FROM archived.ArchivedCourses AS ac
	INNER JOIN listeners.StudySemesters AS ss
	ON ac.PresentStudySemesterId = ss.StudySemesterId

	 IF OBJECT_ID('tempdb..#NeededForNameArch') IS NOT NULL
     DROP TABLE #NeededForNameArch;
	 COMMIT TRANSACTION
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo; 
	ROLLBACK TRANSACTION
END CATCH
