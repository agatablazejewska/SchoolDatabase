CREATE PROCEDURE staff.uspDeleteEmployees
(
		@StatusId int
)	
AS
BEGIN TRANSACTION
BEGIN TRY
	IF OBJECT_ID('tempdb..#ArchivedEmployees') IS NOT NULL
    DROP TABLE #ArchivedEmployees;
	IF OBJECT_ID('tempdb..#ArchivedAddress') IS NOT NULL
    DROP TABLE #ArchivedAddress;
--znalezienie wszystkich pracownikow nieaktywnych
	SELECT *
	INTO #ArchivedEmployees
	FROM staff.Employees AS e
	WHERE e.EmployeeStatusId = @StatusId;
--zarchiwizować adres
	SELECT *
	INTO #ArchivedAddress
	FROM utilities.Addresses AS a
	WHERE a.AddressId IN (SELECT EmployeeAddressId FROM #ArchivedEmployees);
	INSERT INTO archived.ArchivedAddresses
	SELECT * 
	FROM #ArchivedAddress
	SELECT * FROM archived.ArchivedAddresses;	
-- zarchiwizować pracownika
	INSERT INTO archived.ArchivedEmployees
	SELECT * 
	FROM #ArchivedEmployees;
-- zarchiwizowac Employees_Departments
	SELECT * 
	INTO #ArchivedEmployee_Department
	FROM staff.Employees_Departments AS ed
	WHERE ed.EmployeeId IN (SELECT EmployeeId FROM #ArchivedEmployees);
	INSERT INTO archived.ArchivedEmployees_Departments(ArchivedEmployeeId, PresentDepartmentId)
	SELECT aed.EmployeeId, aed.DepartmentId
	FROM #ArchivedEmployee_Department AS aed;
--  usunąć Employees_Departments
	DELETE ed
	FROM staff.Employees_Departments AS ed
	WHERE ed.EmployeeId IN (SELECT EmployeeId FROM #ArchivedEmployees);
-- usunąć Employees_SchoolSubjects
	DELETE ess
	FROM staff.Employees_SchoolSubjects AS ess
	WHERE ess.EmployeeId IN (SELECT EmployeeId FROM #ArchivedEmployees);
--  usunąć Counsellors
	DELETE c
	FROM staff.Counsellors AS c
	WHERE c.CounsellorEmployeeId IN (SELECT EmployeeId FROM #ArchivedEmployees);
-- zrobić update archivedCourses
	UPDATE ac
	SET ac.ArchivedEmployeeId = ae.EmployeeId
	FROM archived.ArchivedCourses AS ac
	INNER JOIN #ArchivedEmployees AS ae
	ON ac.PresentEmployeeId = ae.EmployeeId;
-- usunąć pracownika
	DELETE e
	FROM staff.Employees AS e
	WHERE e.EmployeeId IN (SELECT EmployeeId FROM #ArchivedEmployees);
-- usunąć adresy
	DELETE a
	FROM utilities.Addresses AS a
	WHERE a.AddressId IN (SELECT aa.AddressId FROM #ArchivedAddress AS aa)
END TRY
BEGIN CATCH
	SELECT Error_Number(),Error_Message();
	ROLLBACK TRANSACTION
END CATCH
COMMIT TRANSACTION