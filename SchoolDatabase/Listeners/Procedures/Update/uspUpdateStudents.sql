 CREATE PROCEDURE [listeners].[uspUpdateStudents]
	@StudentId int,
	@StudentSurname nvarchar(50), 
	@StudentAddressId int,
	@StudentStatusId int
AS
	
	UPDATE listeners.Students
	SET StudentSurname = @StudentSurname,
	StudentAddressId = @StudentAddressId, 
	StudentStatusId = @StudentStatusId
	WHERE StudentId = @StudentId

	
RETURN 0
