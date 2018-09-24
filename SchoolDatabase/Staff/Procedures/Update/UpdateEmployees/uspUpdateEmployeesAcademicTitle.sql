CREATE PROCEDURE [staff].[uspUpdateEmployeesAcademicTitle]
	@EmployeeId int,
	@AcademicTitleId varchar(12)
AS
	UPDATE staff.Employees
	SET AcademicTitleId = @AcademicTitleId
	WHERE EmployeeId = @EmployeeId
RETURN 0
