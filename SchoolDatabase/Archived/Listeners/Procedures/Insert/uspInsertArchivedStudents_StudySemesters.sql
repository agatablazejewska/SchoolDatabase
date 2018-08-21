CREATE PROCEDURE [archived].[uspInsertArchivedStudents_StudySemesters]
	@Archived archived.Students_StudySemestersArchiving READONLY
AS
	INSERT INTO archived.ArchivedStudents_StudySemesters(PresentStudentId, PresentStudySemesterId, TempStudentId, TempStudySemesterId, StudyLevelId)
	SELECT a.TempStudentId, a.TempStudySemesterId, a.TempStudentId, a.TempStudySemesterId, a.StudyLevelId
	FROM @Archived AS a
RETURN 0
