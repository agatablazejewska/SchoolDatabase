CREATE PROCEDURE [listeners].[uspInsertStudents]
	@StudentName nvarchar(20),
	@StudentSurname nvarchar(50),
	@StudentPESEL char(11),
	@StudentAddressId int,
	@Nationality nvarchar(30),
	@StudentStatusId int
AS
	INSERT INTO listeners.Students(StudentName, StudentSurname, StudentPESEL,
	 StudentAddressId, Nationality, StudentStatusId)
	VALUES (@StudentName, @StudentSurname, @StudentPESEL, 
	@StudentAddressId, @Nationality, @StudentStatusId)
RETURN 0
