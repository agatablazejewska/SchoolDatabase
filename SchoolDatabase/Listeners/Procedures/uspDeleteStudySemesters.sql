CREATE PROCEDURE [listeners].[uspDeleteStudySemesters]
	@StudySemesterId int
AS
	DELETE FROM StudySemesters
	WHERE StudySemesterId = @StudySemesterId
RETURN 0
