CREATE PROCEDURE [utilities].[uspUpdateClassTypes]
	@ClassTypeId char(1),
	@Weighted float
AS
	UPDATE ClassTypes
	SET Weighted = @Weighted
	WHERE ClassTypeId = @ClassTypeId
RETURN 0
