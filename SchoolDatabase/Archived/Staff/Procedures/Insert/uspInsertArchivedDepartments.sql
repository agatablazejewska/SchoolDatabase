CREATE PROCEDURE [archived].[uspInsertArchivedDepartments]
	@Archived archived.DepartmentsArchiving READONLY
AS
	INSERT INTO archived.ArchivedDepartments(ArchivedDepartmentId, DepartmentName, ShortName, FacultyId)
	SELECT a.DepartmentId, a.DepartmentName, a.ShortName, a.FacultyId
	FROM @Archived AS a
RETURN 0
