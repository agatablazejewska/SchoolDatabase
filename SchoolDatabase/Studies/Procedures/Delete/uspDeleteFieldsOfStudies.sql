 
 

CREATE PROCEDURE [studies].[uspDeleteFieldsOfStudies]
	@FieldOfStudyId int
AS
	DELETE FROM studies.FieldsOfStudies
	WHERE FieldOfStudyId = @FieldOfStudyId
RETURN 0
