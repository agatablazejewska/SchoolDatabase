CREATE PROCEDURE [utilities].[uspUpdateAcademicTitles]
	@AcademicTitleId int,
	@FullTitle varchar(60),
	@ShortTitle varchar(12)
AS 
	UPDATE AcademicTitles
	SET FullTitle=@FullTitle, ShortTitle=@ShortTitle
	WHERE AcademicTitleId=@AcademicTitleId;
RETURN 0
