CREATE PROCEDURE [staff].[uspInsertDepartments]
	@DepartmentName varchar(100),
	@ShortName varchar(10),
	@FacultyId varchar(10)
AS
BEGIN TRY
	INSERT INTO staff.Departments(DepartmentName, ShortName, FacultyId)
	VALUES (@DepartmentName, @ShortName,@FacultyId);
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
