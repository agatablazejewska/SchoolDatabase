 
 

CREATE PROCEDURE [utilities].[uspDeleteClassTypes]
	@ClassTypeId int
AS
	DELETE FROM utilities.ClassTypes
	WHERE ClassTypeId = @ClassTypeId
RETURN 0
