CREATE PROCEDURE [utilities].[uspInsertAcademicTitle]
	@FullTitle varchar(60),
	@ShortTitle varchar(12)
AS 
	INSERT INTO AcademicTitles (FullTitle, ShortTitle)
	VALUES (@FullTitle, @ShortTitle);
RETURN 0
