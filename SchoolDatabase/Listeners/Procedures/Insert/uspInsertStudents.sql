CREATE PROCEDURE [listeners].[uspInsertStudents]
	@StudentName nvarchar(20),
	@StudentSurname nvarchar(50),
	@StudentPESEL char(11),
	@StudentFormOfStudyId char(1),
	@StudentAddressId int,
	@StudentStatusId int
AS
	INSERT INTO listeners.Students(StudentName, StudentSurname, StudentPESEL,
	StudentFormOfStudyId, StudentAddressId, StudentStatusId)
	VALUES (@StudentName, @StudentSurname, @StudentPESEL, 
	 @StudentFormOfStudyId, @StudentAddressId, @StudentStatusId)
RETURN 0
