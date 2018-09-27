CREATE PROCEDURE [staff].[uspUpdateCounsellorsEmail]
	@CounsellorId int,
	@Email nvarchar(80)
AS
BEGIN TRY
	UPDATE staff.Counsellors
	SET Email = @Email
	WHERE CounsellorId = @CounsellorId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
