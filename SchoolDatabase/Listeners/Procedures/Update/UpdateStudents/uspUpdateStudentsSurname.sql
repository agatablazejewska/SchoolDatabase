CREATE PROCEDURE [listeners].[uspUpdateStudentsSurname]
	@StudentId int,
	@Surname nvarchar(50)
AS
	UPDATE listeners.Students
	SET StudentSurname = @Surname
	WHERE StudentId = @StudentId
RETURN 0
