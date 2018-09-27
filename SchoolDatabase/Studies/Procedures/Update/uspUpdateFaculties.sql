CREATE PROCEDURE [studies].[uspUpdateFaculties]
	@FacultyId nvarchar(10),
	@DeanId int
AS
BEGIN TRY
	UPDATE studies.Faculties
	SET  DeanId = @DeanId
	WHERE FacultyId = @FacultyId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0