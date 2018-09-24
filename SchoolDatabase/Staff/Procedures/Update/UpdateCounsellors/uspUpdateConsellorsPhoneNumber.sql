CREATE PROCEDURE [staff].[uspUpdateConsellorsPhoneNumber]
	@CounsellorId int,
	@PhoneNumber varchar(15)
AS
	UPDATE Counsellors
	SET PhoneNumber = @PhoneNumber
	WHERE CounsellorId = @CounsellorId
RETURN 0
