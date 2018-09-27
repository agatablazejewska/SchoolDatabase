CREATE PROCEDURE [staff].[uspInsertEmployees_SchoolSubjects]
	@EmployeeId int,
	@SchoolSubjectId varchar(7)
AS
BEGIN TRY
	INSERT INTO staff.Employees_SchoolSubjects(EmployeeId, SchoolSubjectId)
	VALUES (@EmployeeId, @SchoolSubjectId);
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
