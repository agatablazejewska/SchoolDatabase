 
 

CREATE PROCEDURE [utilities].[uspUpdateAcademicTitles]
	@AcademicTitleId nvarchar(12),
	@FullTitle nvarchar(60)
AS 
	UPDATE utilities.AcademicTitles
	SET FullTitle=@FullTitle
	WHERE AcademicTitleId=@AcademicTitleId;
RETURN 0
