CREATE PROCEDURE [listeners].[uspUpdateStudentsStudySemestersPaid]
	@StudentId int,
	@StudySemesterId int,
	@Paid bit
AS
	UPDATE listeners.Students_StudySemesters
	SET Paid = @Paid
	WHERE StudentId = @StudentId AND StudySemesterId = @StudySemesterId
RETURN 0
