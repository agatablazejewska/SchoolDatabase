CREATE TRIGGER listeners.[TR_StudySemesters_Update]
ON listeners.StudySemesters
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
	--Checking if any of StudySemesters got inactive status, if so deleting it
	IF EXISTS(SELECT * 
			 FROM inserted AS i
			 WHERE i.StudySemesterStatusId = 202)
	BEGIN
		DELETE FROM listeners.StudySemesters
		WHERE StudySemesterStatusId = 202;
	END
END
