 
 

CREATE PROCEDURE [staff].[uspInsertEmployees_Departments]
	@EmployeeId int,
	@DepartmentId int
AS
	INSERT INTO staff.Employees_Departments(EmployeeId, DepartmentId)
	VALUES (@EmployeeId, @DepartmentId)
RETURN 0
