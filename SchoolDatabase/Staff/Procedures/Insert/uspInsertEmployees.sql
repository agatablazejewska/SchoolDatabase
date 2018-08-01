CREATE PROCEDURE [staff].[uspInsertEmployees]
	@EmployeeName varchar(20),
	@EmployeeSurname varchar(50),
	@DepartmentId int,
	@AcademicTitleId varchar(12),
	@PESEL varchar(11),
	@EmployeeAddressId int,
	@EmployeeStatusId int
AS
	INSERT INTO staff.Employees(EmployeeName, EmployeeSurname,
	DepartmentId, AcademicTitleId, PESEL, EmployeeAddressId,
	EmployeeStatusId)
	VALUES (@EmployeeName, @EmployeeSurname, @DepartmentId, @AcademicTitleId, @PESEL,
	@EmployeeAddressId, @EmployeeStatusId)
RETURN 0
