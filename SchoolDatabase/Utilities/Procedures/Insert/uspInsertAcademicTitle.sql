CREATE PROCEDURE [utilities].[uspInsertAcademicTitle]
	@FullTitle varchar(60),
	@AcademicTitleId varchar(12)
AS 
	INSERT INTO utilities.AcademicTitles (AcademicTitleId, FullTitle)
	VALUES (@AcademicTitleId, @FullTitle);
RETURN 0
