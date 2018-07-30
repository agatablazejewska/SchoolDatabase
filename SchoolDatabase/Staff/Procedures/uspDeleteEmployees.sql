CREATE PROCEDURE [staff].[uspDeleteEmployees]
	@EmployeeId int
AS
	DELETE FROM Employees
	WHERE EmployeeId = @EmployeeId
RETURN 0
