CREATE TRIGGER staff.[TR_Employees_Departments_Delete]
ON staff.Employees_Departments
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @DeletedEmployees_Departments archived.Employees_DepartmentsArchiving;
	INSERT INTO @DeletedEmployees_Departments(TempEmployeeId, TempDepartmentId)
	SELECT d.EmployeeId, d.DepartmentId
	FROM deleted AS d
	EXEC archived.uspInsertArchivedEmployees_Departments @DeletedEmployees_Departments;
END
