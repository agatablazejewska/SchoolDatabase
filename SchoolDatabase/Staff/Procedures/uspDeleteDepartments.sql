CREATE PROCEDURE [staff].[uspDeleteDepartments]
	@DepartmentId int
AS
	DELETE FROM Departments
	WHERE DepartmentId = @DepartmentId
RETURN 0
