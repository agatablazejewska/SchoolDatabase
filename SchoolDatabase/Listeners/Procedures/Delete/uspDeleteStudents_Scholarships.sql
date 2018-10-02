CREATE PROCEDURE [listeners].[uspDeleteStudents_Scholarships]
	@StudentScholarshipId int,
	@ErrNo int OUTPUT
AS
BEGIN TRY
	SET @ErrNo = 0;
	DELETE FROM listeners.Students_Scholarships 
	WHERE StudentScholarshipId=@StudentScholarshipId;
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
