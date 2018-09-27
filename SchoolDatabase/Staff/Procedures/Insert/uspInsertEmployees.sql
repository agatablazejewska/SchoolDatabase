CREATE PROCEDURE [staff].[uspInsertEmployees]
	@EmployeeName nvarchar(20),
	@EmployeeSurname nvarchar(50),
	@AcademicTitleId varchar(12),
	@PESEL char(11),
	@EmployeeAddressId int,
	@EmployeeStatusId int
AS
BEGIN TRY
	INSERT INTO staff.Employees(EmployeeName, EmployeeSurname, AcademicTitleId, PESEL, EmployeeAddressId,
	EmployeeStatusId)
	VALUES (@EmployeeName, @EmployeeSurname, @AcademicTitleId, @PESEL,
	@EmployeeAddressId, @EmployeeStatusId);
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
