 
 

CREATE PROCEDURE [staff].[uspDeleteEmployees_SchoolSubjects]
	@EmployeeSchoolSubjectId int
AS
	DELETE FROM staff.Employees_SchoolSubjects
	WHERE EmployeeSchoolSubjectId = @EmployeeSchoolSubjectId
RETURN 0
