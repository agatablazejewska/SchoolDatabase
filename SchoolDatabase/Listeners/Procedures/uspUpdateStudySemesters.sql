CREATE PROCEDURE [listeners].[uspUpdateStudySemesters]
	@StudySemesterId int,
	@StudySemester int,
	@FieldOfStudyId int,
	@StudySemesterCounsellor int,
	@StartYear int,
	@StudySemesterStatusId int
AS
	UPDATE StudySemesters
	SET StudySemester = @StudySemester, FieldOfStudyId = @FieldOfStudyId,
	StudySemesterCounsellor = @StudySemesterCounsellor, StartYear = @StartYear, 
	StudySemesterStatusId = @StudySemesterStatusId
	WHERE StudySemesterId = @StudySemesterId
RETURN 0
