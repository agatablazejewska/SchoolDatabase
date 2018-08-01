CREATE PROCEDURE [listeners].[uspInsertDeanGroups]
	@DeanGroup int = 1,
	@MaxGroupSize int = 60,
	@CurrentGroupSize int = 1,
	@GroupStudySemester int
AS
	INSERT INTO listeners.DeanGroups(DeanGroup, MaxGroupSize, CurrentGroupSize, GroupStudySemester)
	VALUES (@DeanGroup, @MaxGroupSize, @CurrentGroupSize, @GroupStudySemester)
RETURN 0
