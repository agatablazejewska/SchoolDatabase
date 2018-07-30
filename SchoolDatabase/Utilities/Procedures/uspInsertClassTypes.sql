CREATE PROCEDURE [utilities].[uspInsertClassTypes]
	@ClassTypeId char(1),
	@ClassTypeName varchar(15),
	@Weighted float
AS
	INSERT INTO ClassTypes(ClassTypeId, ClassTypeName, Weighted)
	VALUES (@ClassTypeId, @ClassTypeName, @Weighted)
RETURN 0
