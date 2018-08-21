CREATE TRIGGER listeners.[TR_StudySemesters_Delete]
ON listeners.StudySemesters
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	-- Archiving StudySemester
	DECLARE @Archived archived.StudySemestersArchiving;
	INSERT INTO @Archived(StudySemesterId, StudySemester, PresentFieldOfStudyId, StudyLevelId, StartYear, StudySemesterStatusId)
	SELECT d.StudySemesterId, d.StudySemester, d.FieldOfStudyId, d.StudyLevelId, d.StartYear, d.StudySemesterStatusId
	FROM deleted AS d
	EXEC archived.uspInsertArchivedStudySemesters @Archived;
	-- Adding reference in ArchivedStudents_StudySemesters to ArchivedStudySemesters
	UPDATE asss
	SET asss.ArchivedStudySemesterId = asss.TempStudySemesterId
	FROM archived.ArchivedStudents_StudySemesters AS asss
	INNER JOIN deleted AS d
	ON asss.TempStudySemesterId = d.StudySemesterId
END
