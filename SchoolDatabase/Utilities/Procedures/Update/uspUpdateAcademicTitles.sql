 
 

CREATE PROCEDURE [utilities].[uspUpdateAcademicTitles]
	@AcademicTitleId varchar(12),
	@FullTitle varchar(60)
AS 
	UPDATE utilities.AcademicTitles
	SET FullTitle=@FullTitle
	WHERE AcademicTitleId=@AcademicTitleId;
RETURN 0
