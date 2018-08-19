CREATE PROCEDURE [listeners].[uspInsertStudents]
	@StudentName varchar(20),
	@StudentSurname varchar(50),
	@StudentPESEL varchar(11),
	@StudentFormOfStudyId char(1),
	@StudentAddressId int,
	@StudentStatusId int
AS
	INSERT INTO listeners.Students(StudentName, StudentSurname, StudentPESEL,
	StudentFormOfStudyId, StudentAddressId, StudentStatusId)
	VALUES (@StudentName, @StudentSurname, @StudentPESEL, 
	 @StudentFormOfStudyId, @StudentAddressId, @StudentStatusId)
RETURN 0
