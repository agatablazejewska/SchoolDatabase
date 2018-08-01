CREATE PROCEDURE [studies].[uspDeleteFaculties]
	@FacultyId varchar(10)
AS
	DELETE FROM studies.Faculties
	WHERE FacultyId = @FacultyId
RETURN 0
