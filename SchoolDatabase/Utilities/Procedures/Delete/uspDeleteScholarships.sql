CREATE PROCEDURE [utilities].[uspDeleteScholarships]
	@ScholarshipId int
AS
	DELETE FROM utilities.Scholarships
	WHERE ScholarshipId = @ScholarshipId
RETURN 0
