CREATE PROCEDURE [archived].[uspInsertArchivedFieldsOfStudies]
	@Archiving archived.FieldsOfStudiesArchiving READONLY
AS
	INSERT INTO archived.ArchivedFieldsOfStudies(FieldOfStudyId, FieldOfStudyName, FieldOfStudyFacultyId)
	SELECT a.FieldOfStudyId, a.FieldOfStudyName, a.FieldOfStudyFacultyId
	FROM @Archiving AS a
RETURN 0
