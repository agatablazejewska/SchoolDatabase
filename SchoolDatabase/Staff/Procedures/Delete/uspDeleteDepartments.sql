CREATE PROCEDURE [staff].[uspDeleteDepartments]
	@DepartmentId int
AS
BEGIN TRY
	DELETE FROM staff.Departments
	WHERE DepartmentId = @DepartmentId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
