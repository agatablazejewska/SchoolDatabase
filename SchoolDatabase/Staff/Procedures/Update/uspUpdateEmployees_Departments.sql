 
 

CREATE PROCEDURE [staff].[uspUpdateEmployees_Departments]
	@EmployeeDepartmentId int,
	@EmployeeId int,
	@DepartmentId int
AS
	UPDATE staff.Employees_Departments
	SET EmployeeId = @EmployeeId, DepartmentId = @DepartmentId
	WHERE EmployeeDepartmentId = @EmployeeDepartmentId
RETURN 0
