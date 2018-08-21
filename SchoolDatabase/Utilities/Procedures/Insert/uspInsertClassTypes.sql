 
 

CREATE PROCEDURE [utilities].[uspInsertClassTypes]
	@ClassTypeId char(1),
	@ClassTypeName nvarchar(15),
	@Weighted decimal(2,1)
AS
	INSERT INTO utilities.ClassTypes(ClassTypeId, ClassTypeName, Weighted)
	VALUES (@ClassTypeId, @ClassTypeName, @Weighted)
RETURN 0
