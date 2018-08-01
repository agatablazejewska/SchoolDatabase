CREATE PROCEDURE [utilities].[uspDeleteGrades]
	@GradeId decimal(2,1)
AS
	DELETE FROM utilities.Grades
	WHERE GradeId = @GradeId
RETURN 0
