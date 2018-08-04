 
 

CREATE PROCEDURE [staff].[uspDeleteCounsellors]
	@CounsellorId int
AS
	DELETE FROM staff.Counsellors
	WHERE CounsellorId = @CounsellorId
RETURN 0
