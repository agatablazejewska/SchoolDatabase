 
 

CREATE PROCEDURE [staff].[uspDeleteEmployees]
	@EmployeeId int
AS
	DELETE FROM staff.Employees
	WHERE EmployeeId = @EmployeeId
RETURN 0
