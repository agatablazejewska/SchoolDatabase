CREATE PROCEDURE [staff].[uspUpdateEmployeesAcademicTitle]
	@EmployeeId int,
	@AcademicTitleId varchar(12)
AS
BEGIN TRY
	UPDATE staff.Employees
	SET AcademicTitleId = @AcademicTitleId
	WHERE EmployeeId = @EmployeeId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
