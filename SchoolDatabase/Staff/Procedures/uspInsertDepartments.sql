CREATE PROCEDURE [staff].[uspInsertDepartments]
	@DepartmentName varchar(100),
	@ShortName varchar(10),
	@HeadmasterId int
AS
	INSERT INTO Departments(DepartmentName, ShortName, HeadmasterId)
	VALUES (@DepartmentName, @ShortName, @HeadmasterId)
RETURN 0
