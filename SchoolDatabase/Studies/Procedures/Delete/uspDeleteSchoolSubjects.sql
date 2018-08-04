 
 

CREATE PROCEDURE [studies].[uspDeleteSchoolSubjects]
	@SchoolSubjectId varchar(7)
AS
	DELETE FROM studies.SchoolSubjects
	WHERE SchoolSubjectId = @SchoolSubjectId
RETURN 0
