 
 

CREATE PROCEDURE [utilities].[uspDeleteSemesters]
	@SemesterId int
AS
	DELETE FROM utilities.Semesters
	WHERE SemesterId = @SemesterId
RETURN 0
