 
 

CREATE PROCEDURE [utilities].[uspInsertAcademicTitle]
	@FullTitle nvarchar(60),
	@AcademicTitleId nvarchar(12)
AS 
	INSERT INTO utilities.AcademicTitles (AcademicTitleId, FullTitle)
	VALUES (@AcademicTitleId, @FullTitle);
RETURN 0
