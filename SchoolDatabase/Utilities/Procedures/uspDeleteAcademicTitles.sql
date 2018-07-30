CREATE PROCEDURE [utilities].[uspDeleteAcademicTitles]
	@AcademicTitleId int,
	@FullTitle varchar(60),
	@ShortTitle varchar(12)
AS 
	DELETE FROM AcademicTitles
	WHERE AcademicTitleId=@AcademicTitleId;
RETURN 0
