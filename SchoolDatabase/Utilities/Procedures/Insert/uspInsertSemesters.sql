 
 

CREATE PROCEDURE [utilities].[uspInsertSemesters]
	@SemesterNum int,
	@SemesterWritten nvarchar(10)
AS
	INSERT INTO utilities.Semesters(SemesterNum, SemesterWritten)
	VALUES (@SemesterNum, @SemesterWritten)

RETURN 0
