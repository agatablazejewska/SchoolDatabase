CREATE PROCEDURE [listeners].[uspDeleteStudents_Scholarships]
	@StudentScholarshipId int
AS
BEGIN TRY
	DELETE FROM listeners.Students_Scholarships 
	WHERE StudentScholarshipId=@StudentScholarshipId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
