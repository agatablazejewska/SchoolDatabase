CREATE PROCEDURE [utilities].[uspDeleteClassTypes]
	@ClassTypeId int
AS
	DELETE FROM ClassTypes
	WHERE ClassTypeId = @ClassTypeId
RETURN 0
