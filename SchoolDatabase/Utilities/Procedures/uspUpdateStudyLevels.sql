CREATE PROCEDURE [utilities].[uspUpdateStudyLevels]
		@StudyLevelId int,
		@StudyLevelName varchar(15),
		@Semesters int
AS
	UPDATE StudyLevels
	SET StudyLevelName = @StudyLevelName, Semesters = @Semesters
	WHERE StudyLevelId = @StudyLevelId

RETURN 0
