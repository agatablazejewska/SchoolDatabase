 
 

CREATE PROCEDURE [utilities].[uspDeleteStudyLevels]
	@StudyLevelId int
AS
	DELETE FROM utilities.StudyLevels
	WHERE StudyLevelId = @StudyLevelId
RETURN 0
