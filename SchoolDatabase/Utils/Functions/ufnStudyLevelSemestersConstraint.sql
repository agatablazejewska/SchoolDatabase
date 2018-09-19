CREATE FUNCTION [utils].[ufnStudyLevelSemestersConstraint]
(
	@StudyLevelId int
)
RETURNS INT
AS
BEGIN
	DECLARE @Limit int;
	SET @Limit = (SELECT sl.Semesters 
	FROM utilities.StudyLevels AS sl
	WHERE sl.StudyLevelId = @StudyLevelId);
	RETURN @Limit;
END
