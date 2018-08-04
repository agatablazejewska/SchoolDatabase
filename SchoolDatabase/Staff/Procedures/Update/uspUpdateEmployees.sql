 
 

CREATE PROCEDURE [staff].[uspUpdateEmployees]
	@EmployeeId int,
	@EmployeeName varchar(20),
	@EmployeeSurname varchar(50),
	@AcademicTitleId varchar(12),
	@PESEL varchar(11),
	@EmployeeAddressId int,
	@EmployeeStatusId int
AS
	UPDATE staff.Employees
	SET EmployeeName = @EmployeeName, EmployeeSurname = @EmployeeSurname, AcademicTitleId = @AcademicTitleId, PESEL = @PESEL,
	EmployeeAddressId = @EmployeeAddressId, EmployeeStatusId = @EmployeeStatusId
	WHERE EmployeeId = @EmployeeId
RETURN 0