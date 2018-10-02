CREATE PROCEDURE [listeners].[uspInsertCourses]
	@StudySemesterId int,
	@ErrNo int OUTPUT
AS
BEGIN TRY
BEGIN TRANSACTION
	SET @ErrNo = 0;
	IF OBJECT_ID('tempdb..#NeededForName') IS NOT NULL
    DROP TABLE #NeededForName;
	--Looking for all data needed for name of table which we will be querying to get student's courses.
	SELECT sss.StudentId, ss.StudySemester, ss.FacultyId, fos.FieldOfStudyName, LEFT(slvl.StudyLevelName, 1) AS StudyLevel, 
	sss.FormOfStudyId
	INTO #NeededForName
	FROM listeners.Students_StudySemesters AS sss
	INNER JOIN listeners.StudySemesters AS ss
	ON sss.StudySemesterId = ss.StudySemesterId
	INNER JOIN studies.FieldsOfStudies AS fos
	ON ss.FieldOfStudyId = fos.FieldOfStudyId
	INNER JOIN utilities.StudyLevels AS slvl
	ON ss.StudyLevelId = slvl.StudyLevelId
	WHERE sss.StudySemesterId = @StudySemesterId AND sss.StatusId = 200;
	--Querying the table and inserting data into listeners.Courses
	DECLARE @TableName varchar(80);
	SET @TableName = ((SELECT TOP(1) FacultyId FROM #NeededForName) + (SELECT TOP(1) FieldOfStudyName FROM #NeededForName) + 
	(SELECT TOP(1) StudyLevel FROM #NeededForName) + (SELECT TOP(1) FormOfStudyId FROM #NeededForName))
	DECLARE @Query varchar(1000);   
	 SET @Query = N'INSERT INTO listeners.Courses(CourseStudentId, CourseSchoolSubjectId, CourseSemester, StudySemester)
	 SELECT nfn.StudentId, tn.SchoolSubject, tn.Semester, ' + CONVERT(varchar(20), @StudySemesterId)+N'
	 FROM studies.' + @TableName + N' AS tn 
	 INNER JOIN #NeededForName AS nfn
	 ON tn.Semester = nfn.StudySemester'
	 EXEC (@Query);
	 IF OBJECT_ID('tempdb..#NeededForName') IS NOT NULL
     DROP TABLE #NeededForName;
	 COMMIT TRANSACTION
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo; 
	ROLLBACK TRANSACTION
END CATCH
