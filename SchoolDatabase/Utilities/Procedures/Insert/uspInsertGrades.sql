CREATE PROCEDURE [utilities].[uspInsertGrades]
	@GradeId decimal(2,1),
	@GradeNum decimal(2,1),
	@GradeWritten varchar(25)
AS
	INSERT INTO utilities.Grades(GradeId, GradeNum, GradeWritten)
	VALUES (@GradeId, @GradeNum, @GradeWritten)
RETURN 0
