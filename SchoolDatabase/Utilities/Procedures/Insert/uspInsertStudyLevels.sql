 
 

CREATE PROCEDURE [utilities].[uspInsertStudyLevels]
	@StudyLevelName varchar(15),
	@Semesters int
AS
	INSERT INTO utilities.StudyLevels(StudyLevelName, Semesters)
	VALUES (@StudyLevelName, @Semesters)

RETURN 0
