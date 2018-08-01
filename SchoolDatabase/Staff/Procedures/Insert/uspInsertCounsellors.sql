CREATE PROCEDURE [staff].[uspInsertCounsellors]
	@CounsellorEmployeeId int,
	@Email varchar(40),
	@PhoneNumber varchar(15)
AS
	INSERT INTO staff.Counsellors(CounsellorEmployeeId, Email, PhoneNumber)
	VALUES (@CounsellorEmployeeId, @Email, @PhoneNumber)
RETURN 0
