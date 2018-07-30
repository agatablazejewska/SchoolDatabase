CREATE PROCEDURE [staff].[uspDeleteCounsellors]
	@CounsellorId int
AS
	DELETE FROM Counsellors
	WHERE CounsellorId = @CounsellorId
RETURN 0
