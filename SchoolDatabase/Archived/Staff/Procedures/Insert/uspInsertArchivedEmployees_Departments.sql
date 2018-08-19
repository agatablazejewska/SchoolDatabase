CREATE PROCEDURE [archived].[uspInsertArchivedEmployees_Departments]
	@Archived archived.Employees_DepartmentsArchiving READONLY
AS
	INSERT INTO archived.ArchivedEmployees_Departments(TempEmployeeId, TempDepartmentId)
	SELECT a.TempEmployeeId, a.TempDepartmentId
	FROM @Archived AS a
RETURN 0
