 
 

CREATE PROCEDURE [utilities].[uspUpdateScholarships]
	@ScholarshipId int,
	@ScholarshipType nvarchar(20),
	@ScholarshipAmount int
AS
	UPDATE utilities.Scholarships
	SET ScholarshipType = @ScholarshipType, ScholarshipAmount = @ScholarshipAmount
	WHERE ScholarshipId = @ScholarshipId

RETURN 0
