CREATE PROCEDURE [archived].[uspInsertArchivedEmployees]
	@Archived archived.EmployeesArchiving READONLY
AS
	INSERT INTO archived.ArchivedEmployees(EmployeeId, EmployeeName, EmployeeSurname, AcademicTitleId, PESEL, ArchivedAddressId,
	EmployeeStatusId)
	SELECT a.EmployeeId, a.EmployeeName, a.EmployeeSurname, a.AcademicTitleId, a.PESEL, a.ArchivedAddressId, a.EmployeeStatusId
	FROM @Archived AS a
RETURN 0
