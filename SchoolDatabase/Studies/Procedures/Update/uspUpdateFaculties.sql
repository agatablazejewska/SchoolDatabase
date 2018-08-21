 
 

CREATE PROCEDURE [studies].[uspUpdateFaculties]
	@FacultyId nvarchar(10),
	@DeanId int, 
	@DeputyDeanId int
AS
	UPDATE studies.Faculties
	SET  DeanId = @DeanId
	WHERE FacultyId = @FacultyId
RETURN 0