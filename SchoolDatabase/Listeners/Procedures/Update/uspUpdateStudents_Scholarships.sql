 
 

CREATE PROCEDURE [listeners].[uspUpdateStudents_Scholarships]
	@StudentScholarshipId int,
	@ScholarshipId int
AS
	UPDATE listeners.Students_Scholarships
	SET ScholarshipId = @ScholarshipId
	WHERE StudentScholarshipId = @StudentScholarshipId
RETURN 0