 CREATE PROCEDURE [utilities].[uspDeleteAcademicTitles]
	@AcademicTitleId nvarchar(12)
AS 
	DELETE FROM utilities.AcademicTitles
	WHERE AcademicTitleId=@AcademicTitleId;
RETURN 0
