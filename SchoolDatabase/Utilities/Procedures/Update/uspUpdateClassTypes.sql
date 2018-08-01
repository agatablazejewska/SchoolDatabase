CREATE PROCEDURE [utilities].[uspUpdateClassTypes]
	@ClassTypeId char(1),
	@Weighted decimal(2,1)
AS
	UPDATE utilities.ClassTypes
	SET Weighted = @Weighted
	WHERE ClassTypeId = @ClassTypeId
RETURN 0
