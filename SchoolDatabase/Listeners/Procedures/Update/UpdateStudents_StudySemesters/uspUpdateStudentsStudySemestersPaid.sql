CREATE PROCEDURE [listeners].[uspUpdateStudentsStudySemestersPaid]
	@StudentId int,
	@StudySemesterId int,
	@Paid bit
AS
BEGIN TRY
	UPDATE listeners.Students_StudySemesters
	SET Paid = @Paid
	WHERE StudentId = @StudentId AND StudySemesterId = @StudySemesterId
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
