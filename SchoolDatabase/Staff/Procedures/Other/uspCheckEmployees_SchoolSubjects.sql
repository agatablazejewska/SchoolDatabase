 
 

CREATE PROCEDURE [staff].[uspCheckEmployees_SchoolSubjects]
	@EmployeeId int,
	@SchoolSubjectId varchar(7)
AS
	IF (@SchoolSubjectId NOT IN (SELECT ess.SchoolSubjectId 
								FROM staff.Employees_SchoolSubjects AS ess
								WHERE ess.EmployeeId = @EmployeeId))
		BEGIN
			EXEC staff.uspInsertEmployees_SchoolSubjects @EmployeeId, @SchoolSubjectId
		END
RETURN 0
