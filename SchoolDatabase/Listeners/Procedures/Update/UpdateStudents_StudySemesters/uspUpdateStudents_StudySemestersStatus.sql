CREATE PROCEDURE [listeners].[uspUpdateStudents_StudySemestersStatus]
	@StudentId int,
	@StudySemesterId int,
	@StatusId int
AS
	UPDATE listeners.Students_StudySemesters
	SET StatusId = @StatusId
	WHERE StudentId = @StudentId AND StudySemesterId = @StudySemesterId
RETURN 0
