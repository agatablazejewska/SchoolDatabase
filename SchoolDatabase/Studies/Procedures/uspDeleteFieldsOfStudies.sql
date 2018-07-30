CREATE PROCEDURE [studies].[uspDeleteFieldsOfStudies]
	@FieldOfStudyId int
AS
	DELETE FROM FieldsOfStudies
	WHERE FieldOfStudyId = @FieldOfStudyId
RETURN 0
