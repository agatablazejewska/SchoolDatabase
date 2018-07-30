CREATE PROCEDURE [staff].[uspInsertEmployees]
	@EmployeeName varchar(20),
	@EmployeeSurname varchar(50),
	@DepartmentId int,
	@AcademicTitleId int,
	@PESEL varchar(11),
	@EmployeeAddressId int,
	@EmployeeStatusId int
AS
	INSERT INTO Employees(EmployeeName, EmployeeSurname,
	DepartmentId, AcademicTitleId, PESEL, EmployeeAddressId,
	EmployeeStatusId)
	VALUES (@EmployeeName, @EmployeeSurname, @DepartmentId, @AcademicTitleId, @PESEL,
	@EmployeeAddressId, @EmployeeStatusId)
RETURN 0
