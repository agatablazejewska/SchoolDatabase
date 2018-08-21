 
 

CREATE PROCEDURE [utilities].[uspInsertScholarships]
	@ScholarshipType nvarchar(20),
	@ScholarshipAmount int
AS
	INSERT INTO utilities.Scholarships(ScholarshipType, ScholarshipAmount)
	VALUES (@ScholarshipType, @ScholarshipAmount)

RETURN 0
