CREATE PROCEDURE [staff].[uspDeleteEmployees_SchoolSubjects]
	@EmployeeSchoolSubjectId int
AS
	DELETE FROM Employees_SchoolSubjects
	WHERE EmployeeSchoolSubjectId = @EmployeeSchoolSubjectId
RETURN 0
