CREATE PROCEDURE [staff].[uspUpdateEmployeesStatusId]
	@EmployeeId int,
	@StatusId int
AS
	UPDATE staff.Employees
	SET EmployeeStatusId = @StatusId
	WHERE EmployeeId = @EmployeeId
RETURN 0
