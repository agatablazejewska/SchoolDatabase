CREATE PROCEDURE [listeners].[uspDeleteStudySemesters]
	@StudySemesterId int
AS
	DELETE FROM listeners.StudySemesters
	WHERE StudySemesterId = @StudySemesterId
RETURN 0
