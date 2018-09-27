 CREATE PROCEDURE [staff].[uspInsertCounsellors]
	@CounsellorId int,
	@CounsellorEmployeeId int,
	@Email nvarchar(80),
	@PhoneNumber nvarchar(15)
AS
BEGIN TRY
	INSERT INTO staff.Counsellors(CounsellorId, CounsellorEmployeeId, Email, PhoneNumber)
	VALUES (@CounsellorId, @CounsellorEmployeeId, @Email, @PhoneNumber);
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
