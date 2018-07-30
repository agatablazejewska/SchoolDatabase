CREATE PROCEDURE [utilities].[uspInsertAcademicTitle]
	@FullTitle varchar(60),
	@ShortTitle varchar(12)
AS 
	INSERT INTO AcademicTitle (FullTitle, ShortTitle)
	VALUES (@FullTitle, @ShortTitle);
RETURN 0
