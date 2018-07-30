CREATE PROCEDURE [utilities].[uspDeleteGrades]
	@GradeId float
AS
	DELETE FROM Grades
	WHERE GradeId = @GradeId
RETURN 0
