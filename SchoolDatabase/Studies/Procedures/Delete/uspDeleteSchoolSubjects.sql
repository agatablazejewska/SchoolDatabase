 
 

CREATE PROCEDURE [studies].[uspDeleteSchoolSubjects]
	@SchoolSubjectId nvarchar(7)
AS
	DELETE FROM studies.SchoolSubjects
	WHERE SchoolSubjectId = @SchoolSubjectId
RETURN 0
