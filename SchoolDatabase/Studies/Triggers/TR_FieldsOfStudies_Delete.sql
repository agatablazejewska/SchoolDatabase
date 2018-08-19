CREATE TRIGGER studies.[TR_FieldsOfStudies_Delete]
ON studies.FieldsOfStudies
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @DeletedFieldsOfStudies archived.FieldsOfStudiesArchiving;
	INSERT INTO @DeletedFieldsOfStudies(FieldOfStudyId, FieldOfStudyName, FieldOfStudyFacultyId)
	SELECT d.FieldOfStudyId, d.FieldOfStudyName, d.FieldOfStudyFacultyId
	FROM deleted AS d
	EXEC archived.uspInsertArchivedFieldsOfStudies @DeletedFieldsOfStudies;
END
