CREATE PROCEDURE [staff].[uspUpdateCounsellorsEmail]
	@CounsellorId int,
	@Email nvarchar(80)
AS
	UPDATE staff.Counsellors
	SET Email = @Email
	WHERE CounsellorId = @CounsellorId
RETURN 0
