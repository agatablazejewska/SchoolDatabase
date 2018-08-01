CREATE PROCEDURE [staff].[uspUpdateEmployees]
	@EmployeeId int,
	@EmployeeName varchar(20),
	@EmployeeSurname varchar(50),
	@DepartmentId int,
	@AcademicTitleId varchar(12),
	@PESEL varchar(11),
	@EmployeeAddressId int,
	@EmployeeStatusId int
AS
	UPDATE staff.Employees
	SET EmployeeName = @EmployeeName, EmployeeSurname = @EmployeeSurname, DepartmentId = @DepartmentId,
	AcademicTitleId = @AcademicTitleId, PESEL = @PESEL,
	EmployeeAddressId = @EmployeeAddressId, EmployeeStatusId = @EmployeeStatusId
	WHERE EmployeeId = @EmployeeId
RETURN 0