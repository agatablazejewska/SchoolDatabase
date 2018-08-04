 
 

CREATE PROCEDURE [staff].[uspInsertCounsellors]
	@CounsellorId int,
	@CounsellorEmployeeId int,
	@Email varchar(40),
	@PhoneNumber varchar(15)
AS
	INSERT INTO staff.Counsellors(CounsellorId, CounsellorEmployeeId, Email, PhoneNumber)
	VALUES (@CounsellorId, @CounsellorEmployeeId, @Email, @PhoneNumber)
RETURN 0
