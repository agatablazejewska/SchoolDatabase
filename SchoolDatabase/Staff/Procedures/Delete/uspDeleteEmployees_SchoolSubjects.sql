CREATE PROCEDURE [staff].[uspDeleteEmployees_SchoolSubjects]
	@EmployeeSchoolSubjectId int
AS
BEGIN TRY
	DELETE FROM staff.Employees_SchoolSubjects
	WHERE EmployeeSchoolSubjectId = @EmployeeSchoolSubjectId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
