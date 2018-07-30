CREATE PROCEDURE [utilities].[uspInsertSemesters]
	@SemesterNum int,
	@SemesterWritten varchar(10)
AS
	INSERT INTO Semesters(SemesterNum, SemesterWritten)
	VALUES (@SemesterNum, @SemesterWritten)

RETURN 0
