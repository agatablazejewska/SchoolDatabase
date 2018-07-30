CREATE PROCEDURE [utilities].[uspDeleteScholarships]
	@ScholarshipId int
AS
	DELETE FROM Scholarships
	WHERE ScholarshipId = @ScholarshipId
RETURN 0
