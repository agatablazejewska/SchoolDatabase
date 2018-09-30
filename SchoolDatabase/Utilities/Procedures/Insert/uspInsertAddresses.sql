CREATE PROCEDURE [utilities].[uspInsertAddresses]
	@City nvarchar(30),
	@Street nvarchar(60),
	@Building varchar(5),
	@ApartmentNumber varchar(5),
	@CityState nvarchar(25),
	@ZIP char(5),
	@AddressId int OUTPUT
AS
 DECLARE @trancount int;
	  SET @trancount = @@trancount;
BEGIN TRY
		IF @trancount = 0
           BEGIN TRANSACTION
        ELSE
            SAVE TRANSACTION Addresses;
	INSERT INTO utilities.Addresses(City, Street, Building, ApartmentNumber, CityState, ZIP)
	VALUES (@City, @Street, @Building, @ApartmentNumber, @CityState, @ZIP)
	SELECT  @AddressId = SCOPE_IDENTITY();
		IF @trancount = 0
            COMMIT;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo; 
	IF (XACT_STATE()) = -1
	BEGIN
		PRINT N'The transaction is in uncommitable state.' + N'Rolling back transaction.';
		ROLLBACK TRANSACTION
	END
	-- Test whether the transaction is commitable
	IF (XACT_STATE()) = 1 AND @trancount = 0
	BEGIN
		ROLLBACK TRANSACTION
	END
	IF (XACT_STATE()) = 1 AND @trancount> 0
	BEGIN
		ROLLBACK TRANSACTION Addresses;
	END
END CATCH	
RETURN 0
