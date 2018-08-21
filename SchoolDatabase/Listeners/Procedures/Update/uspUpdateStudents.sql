 CREATE PROCEDURE [listeners].[uspUpdateStudents]
	@StudentId int,
	@StudentSurname nvarchar(50), 
	@StudentFormOfStudyId char(1),
	@StudentAddressId int,
	@StudentStatusId int
AS
	
	UPDATE listeners.Students
	SET StudentSurname = @StudentSurname,
	StudentFormOfStudyId = @StudentFormOfStudyId, 
	StudentAddressId = @StudentAddressId, 
	StudentStatusId = @StudentStatusId
	WHERE StudentId = @StudentId

	
RETURN 0
