CREATE PROCEDURE [utilities].[uspInsertGrades]
	@GradeId float,
	@GradeNum float,
	@GradeWritten varchar(5)
AS
	INSERT INTO Grades(GradeId, GradeNum, GradeWritten)
	VALUES (@GradeId, @GradeNum, @GradeWritten)
RETURN 0
