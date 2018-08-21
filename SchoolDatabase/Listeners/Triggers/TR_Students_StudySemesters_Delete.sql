CREATE TRIGGER listeners.[TR_Students_StudySemesters_Delete]
ON listeners.Students_StudySemesters
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	-- Archiving 
	DECLARE @Archived archived.Students_StudySemestersArchiving;
	INSERT INTO @Archived(TempStudentId, TempStudySemesterId, StudyLevelId)
	SELECT d.StudentId, d.StudySemesterId, d.StudyLevelId
	FROM deleted AS d
	EXEC archived.uspInsertArchivedStudents_StudySemesters @Archived;
END
