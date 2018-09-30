CREATE PROCEDURE [listeners].[uspInsertStudents]
	@City nvarchar(30),
	@Street nvarchar(60),
	@Building varchar(5),
	@ApartmentNumber varchar(5) = NULL,
	@CityState nvarchar(25),
	@ZIP char(5),
	@StudentName nvarchar(20),
	@StudentSurname nvarchar(50),
	@StudentPESEL char(11),
	@Nationality nvarchar(30),
	@StudentId int OUTPUT
AS
BEGIN TRY
BEGIN TRANSACTION
	DECLARE @AddressId int;
	EXEC utilities.uspInsertAddresses @City, @Street, @Building, @ApartmentNumber, @CityState, @ZIP, @AddressId OUTPUT;
	INSERT INTO listeners.Students(StudentName, StudentSurname, StudentPESEL,
	 StudentAddressId, Nationality)
	VALUES (@StudentName, @StudentSurname, @StudentPESEL, 
	@AddressId, @Nationality);
	SELECT @StudentId = SCOPE_IDENTITY();
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
	ROLLBACK TRANSACTION
END CATCH
RETURN 0
