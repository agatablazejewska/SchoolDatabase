 
 

CREATE PROCEDURE [utilities].[uspDeleteFormsOfStudy]
	@FormOfStudyId char(1)
AS
	DELETE FROM utilities.FormsOfStudy
	WHERE FormOfStudyId = @FormOfStudyId
RETURN 0
