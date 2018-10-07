CREATE PROCEDURE [listeners].[uspUpdateStudents_StudySemestersPaid]
	@StudentId int,
	@StudySemesterId int,
	@Paid bit,
	@ErrNo int OUTPUT
AS
BEGIN TRY
	SET @ErrNo = 0;
	UPDATE listeners.Students_StudySemesters
	SET Paid = @Paid
	WHERE StudentId = @StudentId AND StudySemesterId = @StudySemesterId
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
