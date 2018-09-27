CREATE PROCEDURE [listeners].[uspInsertStudents]
	@StudentName nvarchar(20),
	@StudentSurname nvarchar(50),
	@StudentPESEL char(11),
	@StudentAddressId int,
	@Nationality nvarchar(30),
	@StudentStatusId int
AS
BEGIN TRY
	INSERT INTO listeners.Students(StudentName, StudentSurname, StudentPESEL,
	 StudentAddressId, Nationality, StudentStatusId)
	VALUES (@StudentName, @StudentSurname, @StudentPESEL, 
	@StudentAddressId, @Nationality, @StudentStatusId)
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
