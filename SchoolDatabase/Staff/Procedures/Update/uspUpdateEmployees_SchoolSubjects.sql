CREATE PROCEDURE [staff].[uspUpdateEmployees_SchoolSubjects]
	@EmployeeSchoolSubjectId int,
	@EmployeeId int,
	@SchoolSubjectId varchar(7)
AS
	UPDATE staff.Employees_SchoolSubjects
	SET EmployeeId = @EmployeeId, SchoolSubjectId = @SchoolSubjectId
	WHERE EmployeeSchoolSubjectId = @EmployeeSchoolSubjectId
RETURN 0
