CREATE PROCEDURE [listeners].[uspDeleteStudents]
	@StastusId int
AS
BEGIN TRY
BEGIN TRANSACTION
	IF OBJECT_ID('tempdb..#ArchivedStudents') IS NOT NULL
    DROP TABLE #ArchivedStudents;
	IF OBJECT_ID('tempdb..#ArchivedAddresses') IS NOT NULL
    DROP TABLE #ArchivedAddresses;
	IF OBJECT_ID('tempdb..#ArchivedCourses') IS NOT NULL
    DROP TABLE #ArchivedCourses;
	IF OBJECT_ID('tempdb..#ArchivedStudents_StudySemesters') IS NOT NULL
    DROP TABLE #ArchivedStudents_StudySemesters;
	--finding inactive students
	SELECT * 
	INTO #ArchivedStudents
	FROM listeners.Students AS s
	WHERE s.StudentStatusId = @StastusId;
	--archiving addresses
	SELECT * 
	INTO #ArchivedAddresses
	FROM utilities.Addresses AS a
	WHERE a.AddressId IN (SELECT ars.StudentAddressId FROM #ArchivedStudents AS ars);
	INSERT INTO archived.ArchivedAddresses
	SELECT *
	FROM #ArchivedAddresses;
	--archiving students
	INSERT INTO archived.ArchivedStudents(StudentId, StudentName, StudentSurname, StudentPESEL, 
	ArchivedAddressId, Nationality, StudentStatusId)
	SELECT ars.StudentId, ars.StudentName, ars.StudentSurname, ars.StudentPESEL,  ars.StudentAddressId,
	ars.Nationality ,ars.StudentStatusId
	FROM #ArchivedStudents AS ars;
	--archiving Students_StudySemesters
	SELECT *
	INTO #ArchivedStudents_StudySemesters
	FROM listeners.Students_StudySemesters AS sss
	WHERE sss.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	INSERT INTO archived.ArchivedStudents_StudySemesters(ArchivedStudentId, PresentStudySemesterId, StudyLevelId, FormOfStudyId, Price, Paid)
	SELECT asss.StudentId, asss.StudySemesterId, asss.StudyLevelId, asss.FormOfStudyId, asss.Price, asss.Paid
	FROM #ArchivedStudents_StudySemesters AS asss;
	--updating ArchivedStudents_StudySemesters to have reference to archived students
	UPDATE asss
	SET asss.ArchivedStudentId = temp.StudentId
	FROM archived.ArchivedStudents_StudySemesters AS asss
	INNER JOIN #ArchivedStudents_StudySemesters AS temp
	ON asss.PresentStudentId = temp.StudentId;
	--deleting Students_StudySemesters
	DELETE sss
	FROM listeners.Students_StudySemesters AS sss
	WHERE sss.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--deleting Payments
	DELETE p
	FROM listeners.Payments AS p
	WHERE p.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--Deleting Scholarships
	DELETE ss
	FROM listeners.Students_Scholarships AS ss
	WHERE ss.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--Deleting SchoolSubjects
	DELETE sss
	FROM listeners.Students_SchoolSubjects AS sss
	WHERE sss.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--Deleting StudentsRepeatedSubjects
	DELETE srs
	FROM listeners.StudentsRepeatedSubjects AS srs
	WHERE srs.RepeatingStudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--Archiving Courses
	SELECT *
	INTO #ArchivedCourses
	FROM listeners.Courses AS c
	WHERE c.CourseStudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	INSERT INTO archived.ArchivedCourses (CourseGrade, DateOfAssessment, ArchivedStudentId, PresentSchoolSubjectId,
	PresentEmployeeId, CourseSemester, PresentStudySemesterId)
	SELECT ac.CourseGrade, ac.DateOfAssessment, ac.CourseStudentId,
	ac.CourseSchoolSubjectId, ac.CourseEmployeeId, ac.CourseSemester, ac.StudySemester
	FROM #ArchivedCourses AS ac;
	--Deleting Courses
	DELETE c
	FROM listeners.Courses AS c
	WHERE c.CourseId IN (SELECT ac.CourseId FROM #ArchivedCourses AS ac);
	--Updating Courses: PresentStudentId -> ArchivedStudentId
	UPDATE ac
	SET ac.ArchivedStudentId = ars.StudentId
	FROM archived.ArchivedCourses AS ac
	INNER JOIN #ArchivedStudents AS ars
	ON ac.PresentStudentId = ars.StudentId;
	--Deleting Students
	DELETE s
	FROM listeners.Students AS s
	WHERE s.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--Deleting Addresses
	DELETE a
	FROM utilities.Addresses AS a
	WHERE a.AddressId IN (SELECT aa.AddressId FROM #ArchivedAddresses AS aa);
	IF OBJECT_ID('tempdb..#ArchivedStudents') IS NOT NULL
    DROP TABLE #ArchivedStudents;
	IF OBJECT_ID('tempdb..#ArchivedAddresses') IS NOT NULL
    DROP TABLE #ArchivedAddresses;
	IF OBJECT_ID('tempdb..#ArchivedCourses') IS NOT NULL
    DROP TABLE #ArchivedCourses;
	IF OBJECT_ID('tempdb..#ArchivedStudents_StudySemesters') IS NOT NULL
    DROP TABLE #ArchivedStudents_StudySemesters;
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
