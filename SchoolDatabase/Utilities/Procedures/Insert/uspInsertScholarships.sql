CREATE PROCEDURE [utilities].[uspInsertScholarships]
	@ScholarshipType varchar(20),
	@ScholarshipAmount int
AS
	INSERT INTO utilities.Scholarships(ScholarshipType, ScholarshipAmount)
	VALUES (@ScholarshipType, @ScholarshipAmount)

RETURN 0
