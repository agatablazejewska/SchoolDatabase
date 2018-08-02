CREATE PROCEDURE [staff].[uspInsertEmployees]
	@EmployeeName varchar(20),
	@EmployeeSurname varchar(50),
	@DepartmentId int,
	@AcademicTitleId varchar(12),
	@PESEL varchar(11),
	@EmployeeAddressId int,
	@EmployeeStatusId int
AS
	DECLARE @FacultyId varchar(10);
	IF (@DepartmentId IS NOT NULL)
		BEGIN
			SELECT @FacultyId = FacultyId
			FROM Departments
			WHERE @DepartmentId = @DepartmentId;
		END
	ELSE 
		BEGIN
			 SET @FacultyId = NULL;
		END

	INSERT INTO staff.Employees(EmployeeName, EmployeeSurname,
	DepartmentId, FacultyId, PESEL, EmployeeAddressId,
	EmployeeStatusId)
	VALUES (@EmployeeName, @EmployeeSurname, @DepartmentId, @FacultyId, @AcademicTitleId, @PESEL,
	@EmployeeAddressId, @EmployeeStatusId)
RETURN 0
