CREATE PROCEDURE [staff].[uspUpdateConsellorsPhoneNumber]
	@CounsellorId int,
	@PhoneNumber varchar(15)
AS
BEGIN TRY
	UPDATE Counsellors
	SET PhoneNumber = @PhoneNumber
	WHERE CounsellorId = @CounsellorId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
