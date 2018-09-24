CREATE PROCEDURE [listeners].[uspUpdateStudySemestersCounsellor]
	@StudySemesterId int,
	@CounsellorId int
AS
	UPDATE listeners.StudySemesters
	SET StudySemesterCounsellor = @CounsellorId
	WHERE StudySemesterId = @StudySemesterId
RETURN 0
