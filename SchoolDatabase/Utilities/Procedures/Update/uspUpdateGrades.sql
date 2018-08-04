 
 

CREATE PROCEDURE [utilities].[uspUpdateGrades]
	@GradeId decimal(2,1),
	@GradeNum decimal(2,1),
	@GradeWritten varchar(5)
AS
	UPDATE utilities.Grades
	SET GradeNum = @GradeNum, GradeWritten = @GradeWritten
	WHERE GradeId = @GradeId
RETURN 0
