CREATE PROCEDURE [staff].[uspDeleteEmployees_Departments]
	@EmployeeDepartmentId int
AS
BEGIN TRY
	DELETE FROM Employees_Departments
	WHERE EmployeeDepartmentId = @EmployeeDepartmentId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
