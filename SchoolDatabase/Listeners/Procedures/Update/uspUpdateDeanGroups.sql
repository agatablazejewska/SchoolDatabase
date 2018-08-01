CREATE PROCEDURE [listeners].[uspUpdateDeanGroups]
	@DeanGroupId int,
	@Amount int
AS
	UPDATE listeners.DeanGroups
	SET CurrentGroupSize = CurrentGroupSize + @Amount
	WHERE DeanGroupId = @DeanGroupId;
RETURN 0