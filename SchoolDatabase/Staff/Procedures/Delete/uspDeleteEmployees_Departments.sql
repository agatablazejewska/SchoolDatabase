 
 

CREATE PROCEDURE [staff].[uspDeleteEmployees_Departments]
	@EmployeeDepartmentId int
AS
	DELETE FROM Employees_Departments
	WHERE EmployeeDepartmentId = @EmployeeDepartmentId
RETURN 0
