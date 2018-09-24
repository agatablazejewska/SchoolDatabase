CREATE PROCEDURE [listeners].[uspUpdateStudySemestersStatus]
	@StudySemesterId int,
	@StatusId int
AS
	UPDATE listeners.StudySemesters
	SET StudySemesterStatusId = @StatusId
	WHERE StudySemesterId = @StudySemesterId
RETURN 0
