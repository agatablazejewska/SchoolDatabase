CREATE PROCEDURE [listeners].[uspUpdateStudentsStatus]
	@StudentId int,
	@StatusId int
AS
	UPDATE listeners.Students
	SET StudentStatusId = @StatusId
	WHERE StudentId = @StudentId
RETURN 0
