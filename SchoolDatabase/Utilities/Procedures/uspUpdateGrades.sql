CREATE PROCEDURE [utilities].[uspUpdateGrades]
	@GradeId float,
	@GradeNum float,
	@GradeWritten varchar(5)
AS
	UPDATE Grades
	SET GradeNum = @GradeNum, GradeWritten = @GradeWritten
	WHERE GradeId = @GradeId
RETURN 0
