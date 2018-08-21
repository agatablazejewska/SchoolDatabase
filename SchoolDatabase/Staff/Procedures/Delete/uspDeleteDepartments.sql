CREATE PROCEDURE [staff].[uspDeleteDepartments]
	@DepartmentId int
AS
	DELETE FROM staff.Departments
	WHERE DepartmentId = @DepartmentId
RETURN 0
