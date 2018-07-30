CREATE PROCEDURE [studies].[uspDeleteFaculties]
	@FacultyId varchar(10)
AS
	DELETE FROM Faculties
	WHERE FacultyId = @FacultyId
RETURN 0
