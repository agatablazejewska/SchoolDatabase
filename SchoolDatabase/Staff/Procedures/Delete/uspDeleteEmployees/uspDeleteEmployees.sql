CREATE PROCEDURE staff.uspDeleteEmployees
(
		@StatusId int
)	
AS
SET XACT_ABORT ON;
BEGIN TRY
BEGIN TRANSACTION
	IF OBJECT_ID('tempdb..#ArchivedEmployees') IS NOT NULL
    DROP TABLE #ArchivedEmployees;
	IF OBJECT_ID('tempdb..#ArchivedAddress') IS NOT NULL
    DROP TABLE #ArchivedAddress;
--Finding all Employees to be deleted
	SELECT *
	INTO #ArchivedEmployees
	FROM staff.Employees AS e
	WHERE e.EmployeeStatusId = @StatusId;
--Archiving their Addresses
	SELECT *
	INTO #ArchivedAddress
	FROM utilities.Addresses AS a
	WHERE a.AddressId IN (SELECT EmployeeAddressId FROM #ArchivedEmployees);
	INSERT INTO archived.ArchivedAddresses
	SELECT * 
	FROM #ArchivedAddress
	SELECT * FROM archived.ArchivedAddresses;	
-- Archiving Employees
	INSERT INTO archived.ArchivedEmployees
	SELECT * 
	FROM #ArchivedEmployees;
-- Archiving Employees_Departments
	SELECT * 
	INTO #ArchivedEmployee_Department
	FROM staff.Employees_Departments AS ed
	WHERE ed.EmployeeId IN (SELECT EmployeeId FROM #ArchivedEmployees);
	INSERT INTO archived.ArchivedEmployees_Departments(ArchivedEmployeeId, PresentDepartmentId)
	SELECT aed.EmployeeId, aed.DepartmentId
	FROM #ArchivedEmployee_Department AS aed;
--  Deleting Employees_Departments
	DELETE ed
	FROM staff.Employees_Departments AS ed
	WHERE ed.EmployeeId IN (SELECT EmployeeId FROM #ArchivedEmployees);
-- Deleting Employees_SchoolSubjects
	DELETE ess
	FROM staff.Employees_SchoolSubjects AS ess
	WHERE ess.EmployeeId IN (SELECT EmployeeId FROM #ArchivedEmployees);
-- Deleting Counsellors
	DELETE c
	FROM staff.Counsellors AS c
	WHERE c.CounsellorEmployeeId IN (SELECT EmployeeId FROM #ArchivedEmployees);
-- Updating ArchivedCourses to have reference to ArchivedEmployees
	UPDATE ac
	SET ac.ArchivedEmployeeId = ae.EmployeeId
	FROM archived.ArchivedCourses AS ac
	INNER JOIN #ArchivedEmployees AS ae
	ON ac.PresentEmployeeId = ae.EmployeeId;
-- Deleting Employees
	DELETE e
	FROM staff.Employees AS e
	WHERE e.EmployeeId IN (SELECT EmployeeId FROM #ArchivedEmployees);
-- Deleting Addresses
	DELETE a
	FROM utilities.Addresses AS a
	WHERE a.AddressId IN (SELECT aa.AddressId FROM #ArchivedAddress AS aa);
	IF OBJECT_ID('tempdb..#ArchivedEmployees') IS NOT NULL
    DROP TABLE #ArchivedEmployees;
	IF OBJECT_ID('tempdb..#ArchivedAddress') IS NOT NULL
    DROP TABLE #ArchivedAddress;
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
