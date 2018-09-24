CREATE PROCEDURE [listeners].[uspDeleteStudySemesters]
AS
BEGIN TRY
BEGIN TRANSACTION
	IF OBJECT_ID('tempdb..#ArchivedStudySemesters') IS NOT NULL
    DROP TABLE #ArchivedStudySemesters;
	IF OBJECT_ID('tempdb..#ArchivedStudents_StudySemester') IS NOT NULL
    DROP TABLE #ArchivedStudents_StudySemester;
	IF OBJECT_ID('tempdb..#NewStudySemester') IS NOT NULL
    DROP TABLE #NewStudySemester;
	IF OBJECT_ID('tempdb..#StudentsWhoHaventPassed') IS NOT NULL
    DROP TABLE #StudentsWhoHaventPassed;
	IF OBJECT_ID('tempdb..#ArchivedCourses') IS NOT NULL
    DROP TABLE #ArchivedCourses;
	--Finding StudySemesters to be removed
	SELECT *
	INTO #ArchivedStudySemesters
	FROM listeners.StudySemesters AS ss
	WHERE ss.StudySemesterStatusId = 201;
	--Archiving StudySemesters
	INSERT INTO archived.ArchivedStudySemesters(StudySemesterId, StudySemester, PresentFacultyId, PresentFieldOfStudyId, StudyLevelId, FormOfStudyId, StartYear, StudySemesterStatusId)
	SELECT StudySemesterId, StudySemester, FacultyId, FieldOfStudyId, StudyLevelId, FormOfStudyId, StartYear, StudySemesterStatusId
	FROM #ArchivedStudySemesters AS ass;
	/* Finding each StudySemester a new one which began year later and it's field of study is the same.
	Might be useful when there still are students who haven't passed every SchoolSubject yet -> they
	and all their data will be moved to new study semester*/
	------------------------------- STARTING HERE -----------------------------------------------
	SELECT ss.StudySemesterId AS NewStudySemesterId, ass.StudySemesterId AS OldStudySemesterId
	INTO #NewStudySemester
	FROM listeners.StudySemesters AS ss
	INNER JOIN #ArchivedStudySemesters AS ass
	ON ss.FieldOfStudyId = ass.FieldOfStudyId AND ss.StartYear = ass.StartYear + 1;
	--Finding students who haven't passed yet
	SELECT DISTINCT c.StudentId AS StudentId, nss.OldStudySemesterId, nss.NewStudySemesterId
	INTO #StudentsWhoHaventPassed
	FROM listeners.Courses AS c
	INNER JOIN #NewStudySemester AS nss
	ON c.StudySemester = nss.OldStudySemesterId
	WHERE c.CourseGrade < 3
	--Updating present Courses
	UPDATE c
	SET c.StudySemester = swhp.NewStudySemesterId
	FROM listeners.Courses AS c
	INNER JOIN #StudentsWhoHaventPassed AS swhp
	ON c.StudySemester = swhp.OldStudySemesterId AND c.CourseStudentId = swhp.StudentId
	WHERE c.CourseGrade < 3;
	--Updating StudentsRepeatedSubjects
	UPDATE srs
	SET srs.StudySemester = swhp.NewStudySemesterId
	FROM listeners.StudentsRepeatedSubjects AS srs
	INNER JOIN #StudentsWhoHaventPassed AS swhp
	ON srs.RepeatingStudentId = swhp.StudentId;
	--Updating Students_StudySemesters
	UPDATE sss
	SET sss.StudySemesterId = swhp.NewStudySemesterId,
	sss.DeanGroupId = (SELECT DeanGroupId
					  FROM DeanGroups
					  WHERE GroupStudySemester = swhp.NewStudySemesterId AND CurrentGroupSize < MaxGroupSize)
	FROM listeners.Students_StudySemesters AS sss
	INNER JOIN #StudentsWhoHaventPassed AS swhp
	ON sss.StudentId = swhp.StudentId AND sss.StudySemesterId = swhp.OldStudySemesterId;
	--Archiving Courses
	SELECT *
	INTO #ArchivedCourses
	FROM listeners.Courses AS c
	WHERE c.StudySemester IN (SELECT ass.StudySemesterId FROM #ArchivedStudySemesters AS ass)
	INSERT INTO archived.ArchivedCourses(CourseGrade, DateOfAssessment, PresentStudentId, PresentSchoolSubjectId,
	PresentEmployeeId, CourseSemester, PresentStudySemesterId)
	SELECT ac.CourseGrade, ac.DateOfAssessment, ac.CourseStudentId,
	ac.CourseSchoolSubjectId, ac.CourseEmployeeId, ac.CourseSemester, ac.StudySemester
	FROM #ArchivedCourses AS ac;
	--Updating ArchivedCourses
	UPDATE ac
	SET ac.PresentStudySemesterId = swhp.NewStudySemesterId
	FROM archived.ArchivedCourses AS ac
	INNER JOIN #StudentsWhoHaventPassed AS swhp
	ON ac.PresentStudentId = swhp.StudentId AND ac.PresentStudySemesterId = swhp.OldStudySemesterId;
	------------------------------------- ENDING HERE ----------------------------------------------
	--Deleting Courses with reference to StudySemesters which are to be deleted
	DELETE c
	FROM listeners.Courses AS c
	WHERE c.CourseId IN (SELECT ac.CourseId FROM #ArchivedCourses AS ac);
	--Updating ArchivedCourses PresentStudySemesterId ->ArchivedStudySemesterId
	UPDATE ac
	SET ac.ArchivedStudySemesterId = ass.StudySemesterId
	FROM archived.ArchivedCourses AS ac
	INNER JOIN #ArchivedStudySemesters AS ass
	ON ac.PresentStudySemesterId = ass.StudySemesterId;
	--Archiving Students_StudySemesters
	SELECT *
	INTO #ArchivedStudents_StudySemester
	FROM listeners.Students_StudySemesters AS sss
	WHERE sss.StudySemesterId IN (SELECT ass.StudySemesterId FROM #ArchivedStudySemesters AS ass);
	INSERT INTO archived.ArchivedStudents_StudySemesters(PresentStudentId, ArchivedStudySemesterId, StudyLevelId, FormOfStudyId, Price, Paid)
	SELECT asss.StudentId, asss.StudySemesterId, asss.StudyLevelId, asss.FormOfStudyId, asss.Price, asss.Paid
	FROM #ArchivedStudents_StudySemester AS asss;
	--Deleting Students_StudySemesters
	DELETE sss
	FROM listeners.Students_StudySemesters AS sss
	WHERE sss.StudySemesterId IN (SELECT ass.StudySemesterId FROM #ArchivedStudySemesters AS ass);
	--Deleting DeanGroups
	DELETE dg
	FROM listeners.DeanGroups AS dg
	WHERE dg.GroupStudySemester IN (SELECT ass.StudySemesterId FROM #ArchivedStudySemesters AS ass);
	/* Some students may have resigned from one of these StudySemesters before it was deleted, so we have to
	set their PresentStudySemesterId -> ArchivedStudySemesterId */
	UPDATE asss
	SET asss.ArchivedStudySemesterId = temp.StudySemesterId
	FROM archived.ArchivedStudents_StudySemesters AS asss
	INNER JOIN #ArchivedStudents_StudySemester AS temp
	ON asss.PresentStudySemesterId = temp.StudySemesterId;
	--Deleting StudySemester
	DELETE ss
	FROM listeners.StudySemesters AS ss
	WHERE ss.StudySemesterId IN (SELECT ass.StudySemesterId FROM #ArchivedStudySemesters AS ass);
	IF OBJECT_ID('tempdb..#ArchivedStudySemesters') IS NOT NULL
    DROP TABLE #ArchivedStudySemesters;
	IF OBJECT_ID('tempdb..#ArchivedStudents_StudySemester') IS NOT NULL
    DROP TABLE #ArchivedStudents_StudySemester;
	IF OBJECT_ID('tempdb..#NewStudySemester') IS NOT NULL
    DROP TABLE #NewStudySemester;
	IF OBJECT_ID('tempdb..#StudentsWhoHaventPassed') IS NOT NULL
    DROP TABLE #StudentsWhoHaventPassed;
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

