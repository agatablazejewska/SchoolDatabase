CREATE PROCEDURE [staff].[uspDeleteCounsellors]
	@CounsellorId int
AS
BEGIN TRY
	DELETE FROM staff.Counsellors
	WHERE CounsellorId = @CounsellorId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
