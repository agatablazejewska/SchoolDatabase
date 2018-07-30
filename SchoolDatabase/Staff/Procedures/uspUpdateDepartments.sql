CREATE PROCEDURE [staff].[uspUpdateDepartments]
	@DepartmentId int,
	@DepartmentName varchar(100),
	@ShortName varchar(10),
	@HeadmasterId int
AS
	UPDATE Departments
	SET DepartmentName = @DepartmentName, ShortName = @ShortName, HeadmasterId = @HeadmasterId
	WHERE DepartmentId = @DepartmentId
RETURN 0