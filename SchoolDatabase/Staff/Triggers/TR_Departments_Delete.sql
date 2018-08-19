CREATE TRIGGER staff.[TR_Departments_Delete]
ON staff.Departments
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	--Archiving Departments
	DECLARE @DeletedDepartments archived.DepartmentsArchiving;
	INSERT INTO @DeletedDepartments(DepartmentId, DepartmentName, ShortName, FacultyId)
	SELECT d.DepartmentId, d.DepartmentName, d.ShortName, d.FacultyId
	FROM deleted AS d
	EXEC archived.uspInsertArchivedDepartments @DeletedDepartments;
	-- Changing references in ArchivedEmployees_Departments
	UPDATE aed
	SET aed.ArchivedDepartmentId = aed.TempDepartmentId
	FROM archived.ArchivedEmployees_Departments AS aed
	INNER JOIN deleted AS d
	ON aed.TempDepartmentId = d.DepartmentId
END
