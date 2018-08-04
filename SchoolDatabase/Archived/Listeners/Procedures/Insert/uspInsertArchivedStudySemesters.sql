CREATE PROCEDURE [archived].[uspInsertArchivedStudySemesters]
	@StudySemesterId int,
	@StudySemester int,
	@PresentFieldOfStudyId int,
	@StudyLevelId int,
	@StartYear int,
	@StudySemesterStatusId int
AS
	INSERT INTO archived.ArchivedStudySemesters(StudySemesterId, StudySemester, PresentFieldOfStudyId,
	StudyLevelId, StartYear, StudySemesterStatusId)
	VALUES(@StudySemesterId, @StudySemester, @PresentFieldOfStudyId, @StudyLevelId, @StartYear, @StudySemesterStatusId)
RETURN 0
