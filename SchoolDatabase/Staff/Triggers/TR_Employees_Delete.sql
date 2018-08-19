CREATE TRIGGER staff.[TR_Employees_Delete]
ON staff.Employees
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	-- Deleting employee's address
	DELETE a
	FROM utilities.Addresses AS a
	INNER JOIN deleted AS d
	ON  a.AddressId = d.EmployeeAddressId
	-- Archiving employee
	DECLARE @DeletedEmployees archived.EmployeesArchiving
	INSERT INTO @DeletedEmployees(EmployeeId, EmployeeName, EmployeeSurname, AcademicTitleId, PESEL, ArchivedAddressId,
	EmployeeStatusId)
	SELECT d.EmployeeId, d.EmployeeName, d.EmployeeSurname, d.AcademicTitleId, d.PESEL, d.EmployeeAddressId, d.EmployeeStatusId
	FROM deleted AS d
	EXEC archived.uspInsertArchivedEmployees;
	-- Changing references in ArchivedCourses table
	UPDATE ac
	SET ac.ArchivedEmployeeId = ac.TempEmployeeId
	FROM archived.ArchivedCourses AS ac
	INNER JOIN deleted AS d
	ON ac.TempEmployeeId = d.EmployeeId
	-- Adding reference in ArchivedEmployeesDepartments
	UPDATE aed
	SET aed.ArchivedEmployeeId = aed.TempEmployeeId,
	aed.PresentDepartmentId = aed.TempDepartmentId
	FROM archived.ArchivedEmployees_Departments AS aed
	INNER JOIN deleted AS d
	ON aed.TempEmployeeId = d.EmployeeId
END
