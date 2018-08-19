CREATE PROCEDURE [archived].[uspInsertArchivedStudySemesters]
	@Archived archived.StudySemestersArchiving READONLY
AS
	INSERT INTO archived.ArchivedStudySemesters(StudySemesterId, StudySemester, PresentFieldOfStudyId,
	StudyLevelId, StartYear, StudySemesterStatusId)
	SELECT a.StudySemesterId, a.StudySemester, a.PresentFieldOfStudyId, a.StudyLevelId, a.StartYear, a.StudySemesterStatusId
	FROM @Archived AS a
RETURN 0
