CREATE PROCEDURE [listeners].[uspUpdateStudents_Scholarships]
	@StudentScholarshipId int,
	@ScholarshipId int
AS
	UPDATE listeners.Student_Scholarships
	SET ScholarhipId = @ScholarshipId
	WHERE StudentScholarshipId = @StudentScholarshipId
RETURN 0