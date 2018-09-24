CREATE PROCEDURE [listeners].[uspDeleteStudents]
AS
BEGIN TRY
BEGIN TRANSACTION
	IF OBJECT_ID('tempdb..#ArchivedStudents') IS NOT NULL
    DROP TABLE #ArchivedStudents;
	IF OBJECT_ID('tempdb..#ArchivedAddresses') IS NOT NULL
    DROP TABLE #ArchivedAddresses;
	--finding inactive students
	SELECT * 
	INTO #ArchivedStudents
	FROM listeners.Students AS s
	WHERE s.StudentStatusId = 201;
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
	UPDATE sss
	SET sss.StatusId = 201
	FROM listeners.Students_StudySemesters AS sss
	INNER JOIN #ArchivedStudents AS ars
	ON sss.StudentId = ars.StudentId
	EXEC listeners.uspDeleteStudents_StudySemesters 201;
	--updating ArchivedStudents_StudySemesters to have reference to archived students
	UPDATE asss
	SET asss.ArchivedStudentId = temp.StudentId
	FROM archived.ArchivedStudents_StudySemesters AS asss
	INNER JOIN #ArchivedStudents AS temp
	ON asss.PresentStudentId = temp.StudentId;
	--deleting Payments
	DELETE p
	FROM listeners.Payments AS p
	WHERE p.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--Deleting Scholarships
	DELETE ss
	FROM listeners.Students_Scholarships AS ss
	WHERE ss.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
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
