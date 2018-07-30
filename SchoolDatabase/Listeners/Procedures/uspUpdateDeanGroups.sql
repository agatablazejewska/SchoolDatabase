CREATE PROCEDURE [listeners].[uspUpdateDeanGroups]
	@DeanGroupId int,
	@Amount int
AS
	UPDATE DeanGroups
	SET CurrentGroupSize = CurrentGroupSize + @Amount
	WHERE DeanGroupId = @DeanGroupId;
RETURN 0