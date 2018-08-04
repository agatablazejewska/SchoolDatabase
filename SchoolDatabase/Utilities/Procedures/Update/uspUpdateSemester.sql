 
 

CREATE PROCEDURE [utilities].[uspUpdateSemester]
	@SemesterId int,
	@SemesterNum int,
	@SemesterWritten varchar(10)
AS
	UPDATE utilities.Semesters
	SET SemesterNum = @SemesterNum, SemesterWritten = @SemesterWritten
	WHERE SemesterId = @SemesterId

RETURN 0
