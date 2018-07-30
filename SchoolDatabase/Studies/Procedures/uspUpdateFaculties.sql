CREATE PROCEDURE [studies].[uspUpdateFaculties]
	@FacultyId varchar(10),
	@DeanId int, 
	@DeputyDeanId int
AS
	UPDATE Faculties
	SET  DeanId = @DeanId, DeputyDeanId = @DeputyDeanId
	WHERE FacultyId = @FacultyId
RETURN 0