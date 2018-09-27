CREATE PROCEDURE [staff].[uspInsertEmployees_Departments]
	@EmployeeId int,
	@DepartmentId int
AS
BEGIN TRY
	INSERT INTO staff.Employees_Departments(EmployeeId, DepartmentId)
	VALUES (@EmployeeId, @DepartmentId);
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
