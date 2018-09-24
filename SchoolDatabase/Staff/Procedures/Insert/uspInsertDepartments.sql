CREATE PROCEDURE [staff].[uspInsertDepartments]
	@DepartmentName varchar(100),
	@ShortName varchar(10),
	@FacultyId varchar(10)
AS
	INSERT INTO staff.Departments(DepartmentName, ShortName, FacultyId)
	VALUES (@DepartmentName, @ShortName,@FacultyId)
RETURN 0
