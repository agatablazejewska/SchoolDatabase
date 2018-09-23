/* This function is used inside create table statements with a check constraint, when we need to make sure that current
semester won't get bigger than StudyLevel allows it to. It is all because StudyLevels differ in duration.
Example: we don't want school year of Informatics (StudyLevel - Engineering) to last for 9 semesters because it's max is 7.
It would be the same with StudyLevel - Master, only it's max is 3. */
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
