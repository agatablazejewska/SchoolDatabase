CREATE PROCEDURE [listeners].[uspUpdateStudentsSurname]
	@StudentId int,
	@Surname nvarchar(50)
AS
BEGIN TRY
	UPDATE listeners.Students
	SET StudentSurname = @Surname
	WHERE StudentId = @StudentId
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
