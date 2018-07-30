CREATE PROCEDURE [studies].[uspDeleteSchoolSubjects]
	@SchoolSubjectId varchar(7)
AS
	DELETE FROM SchoolSubjects
	WHERE SchoolSubjectId = @SchoolSubjectId
RETURN 0
