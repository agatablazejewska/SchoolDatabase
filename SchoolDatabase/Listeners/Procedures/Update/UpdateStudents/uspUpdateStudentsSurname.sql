CREATE PROCEDURE [listeners].[uspUpdateStudentsSurname]
	@StudentId int,
	@Surname nvarchar(50),
	@ErrNo int OUTPUT
AS
BEGIN TRY
	SET @ErrNo = 0;
	UPDATE listeners.Students
	SET StudentSurname = @Surname
	WHERE StudentId = @StudentId
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
