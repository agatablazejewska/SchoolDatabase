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

	UPDATE staff.Employees
	SET EmployeeName = @EmployeeName, EmployeeSurname = @EmployeeSurname, DepartmentId = @DepartmentId,
	FacultyId = @FacultyId, AcademicTitleId = @AcademicTitleId, PESEL = @PESEL,
	EmployeeAddressId = @EmployeeAddressId, EmployeeStatusId = @EmployeeStatusId
	WHERE EmployeeId = @EmployeeId
RETURN 0