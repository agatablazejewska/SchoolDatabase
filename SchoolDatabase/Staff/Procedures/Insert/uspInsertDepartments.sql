 
 

CREATE PROCEDURE [staff].[uspInsertDepartments]
	@DepartmentName varchar(100),
	@ShortName varchar(10),
	@FacultyId varchar(10),
	@HeadmasterId int
AS
	INSERT INTO staff.Departments(DepartmentName, ShortName, FacultyId, HeadmasterId)
	VALUES (@DepartmentName, @ShortName,@FacultyId, @HeadmasterId)
RETURN 0
