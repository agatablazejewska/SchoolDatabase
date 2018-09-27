CREATE PROCEDURE [staff].[uspUpdateEmployeesSurname]
	@EmployeeId int,
	@EmployeeSurname nvarchar(50)
AS
BEGIN TRY
	UPDATE staff.Employees
	SET EmployeeSurname = @EmployeeSurname
	WHERE EmployeeId = @EmployeeId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
