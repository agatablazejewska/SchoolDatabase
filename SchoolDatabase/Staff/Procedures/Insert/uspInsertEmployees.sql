CREATE PROCEDURE [staff].[uspInsertEmployees]
	@City nvarchar(30),
	@Street nvarchar(60),
	@Building varchar(5),
	@ApartmentNumber varchar(5) = NULL,
	@CityState nvarchar(25),
	@ZIP char(5),
	@EmployeeName nvarchar(20),
	@EmployeeSurname nvarchar(50),
	@AcademicTitleId varchar(12),
	@PESEL char(11),
	@ErrNo int OUTPUT
AS
BEGIN TRY
BEGIN TRANSACTION
	SET @ErrNo = 0;
	DECLARE @EmployeeAddressId int, @ErrNum int;
	EXEC utilities.uspInsertAddresses @City, @Street, @Building, @ApartmentNumber, @CityState, @ZIP, @EmployeeAddressId OUTPUT, @ErrNum OUTPUT;
	INSERT INTO staff.Employees(EmployeeName, EmployeeSurname, AcademicTitleId, PESEL, EmployeeAddressId)
	VALUES (@EmployeeName, @EmployeeSurname, @AcademicTitleId, @PESEL,
	@EmployeeAddressId);
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	IF(@ErrNum != 0)
		SELECT @ErrNo = @ErrNum;
	ELSE
		SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
	ROLLBACK TRANSACTION
END CATCH
RETURN 0
