CREATE PROCEDURE [listeners].[uspInsertDeanGroups]
	@DeanGroup int = 1,
	@MaxGroupSize int = 60,
	@CurrentGroupSize int = 0,
	@GroupStudySemester int
AS
BEGIN TRY
	INSERT INTO listeners.DeanGroups(DeanGroup, MaxGroupSize, CurrentGroupSize, GroupStudySemester)
	VALUES (@DeanGroup, @MaxGroupSize, @CurrentGroupSize, @GroupStudySemester);
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
