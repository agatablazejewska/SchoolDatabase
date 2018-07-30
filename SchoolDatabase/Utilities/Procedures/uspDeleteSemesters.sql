CREATE PROCEDURE [utilities].[uspDeleteSemesters]
	@SemesterId int
AS
	DELETE FROM Semesters
	WHERE SemesterId = @SemesterId
RETURN 0
