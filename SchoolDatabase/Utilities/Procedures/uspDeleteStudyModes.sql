CREATE PROCEDURE [utilities].[uspDeleteStudyModes]
	@StudyModeId char(1)
AS
	DELETE FROM StudyModes
	WHERE StudyModeId = @StudyModeId
RETURN 0
