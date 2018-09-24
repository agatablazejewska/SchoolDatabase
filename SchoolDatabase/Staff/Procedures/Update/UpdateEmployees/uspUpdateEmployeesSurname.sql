CREATE PROCEDURE [staff].[uspUpdateEmployeesSurname]
	@EmployeeId int,
	@EmployeeSurname nvarchar(50)
AS
	UPDATE staff.Employees
	SET EmployeeSurname = @EmployeeSurname
	WHERE EmployeeId = @EmployeeId
RETURN 0
