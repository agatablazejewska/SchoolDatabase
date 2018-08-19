CREATE TRIGGER listeners.[TR_Students_StudySemesters_Update]
ON listeners.Students_StudySemesters
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
	IF ((SELECT i.StatusId
		FROM inserted AS i) = 202)
	BEGIN
		DECLARE @StudentsStudySemesterId int;
		SELECT @StudentsStudySemesterId = i.StudentsStudySemesterId 
		FROM inserted AS i
		EXEC listeners.uspDeleteStudents_StudySemesters @StudentsStudySemesterId;
		UPDATE asss
		SET asss.PresentStudentId = asss.TempStudentId, asss.PresentStudySemesterId = asss.TempStudySemesterId
		FROM archived.ArchivedStudents_StudySemesters AS asss
		INNER JOIN inserted AS i
		ON asss.TempStudentId = i.StudentId
	END
END
