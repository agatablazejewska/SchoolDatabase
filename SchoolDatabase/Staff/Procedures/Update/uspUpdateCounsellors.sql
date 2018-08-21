 
 

CREATE PROCEDURE [staff].[uspUpdateCounsellors]
	@CounsellorId int,
	@CounsellorEmployeeId int,
	@Email nvarchar(40),
	@PhoneNumber nvarchar(15)
AS
	UPDATE staff.Counsellors
	SET CounsellorEmployeeId = @CounsellorEmployeeId, Email = @Email, PhoneNumber = @PhoneNumber
	WHERE CounsellorId = @CounsellorId
RETURN 0
