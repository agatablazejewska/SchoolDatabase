CREATE PROCEDURE [staff].[uspInsertEmployees]
	@EmployeeName nvarchar(20),
	@EmployeeSurname nvarchar(50),
	@AcademicTitleId varchar(12),
	@PESEL varchar(11),
	@EmployeeAddressId int,
	@EmployeeStatusId int
AS
	INSERT INTO staff.Employees(EmployeeName, EmployeeSurname, AcademicTitleId, PESEL, EmployeeAddressId,
	EmployeeStatusId)
	VALUES (@EmployeeName, @EmployeeSurname, @AcademicTitleId, @PESEL,
	@EmployeeAddressId, @EmployeeStatusId)
RETURN 0
