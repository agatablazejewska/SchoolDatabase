CREATE PROCEDURE [staff].[uspUpdateEmployeesStatusId]
	@EmployeeId int,
	@StatusId int
AS
BEGIN TRY
	UPDATE staff.Employees
	SET EmployeeStatusId = @StatusId
	WHERE EmployeeId = @EmployeeId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
