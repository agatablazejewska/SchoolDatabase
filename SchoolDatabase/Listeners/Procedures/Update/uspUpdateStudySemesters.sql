CREATE PROCEDURE [listeners].[uspUpdateStudySemesters]
	@StudySemesterId int,
	@StudySemester int,
	@StudySemesterCounsellor int,
	@StudySemesterStatusId int
AS
	UPDATE listeners.StudySemesters
	SET StudySemester = @StudySemester,	StudySemesterCounsellor = @StudySemesterCounsellor,
	StudySemesterStatusId = @StudySemesterStatusId
	WHERE StudySemesterId = @StudySemesterId
RETURN 0
