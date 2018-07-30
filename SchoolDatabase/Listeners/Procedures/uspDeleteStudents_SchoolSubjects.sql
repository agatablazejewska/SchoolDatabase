CREATE PROCEDURE [listeners].[uspDeleteStudents_SchoolSubjects]
	@StudentId int
AS
	DELETE FROM Students_SchoolSubjects
	WHERE StudentId=@StudentId
RETURN 0
