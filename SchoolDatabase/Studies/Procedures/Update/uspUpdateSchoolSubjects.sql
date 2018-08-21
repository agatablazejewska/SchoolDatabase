 
 

CREATE PROCEDURE [studies].[uspUpdateSchoolSubjects]
	@SchoolSubjectId nvarchar(7),
	@HoursAmount int,
	@ECTS int
AS
	UPDATE studies.SchoolSubjects
	SET HoursAmount = @HoursAmount, ECTS = @ECTS
	WHERE SchoolSubjectId = @SchoolSubjectId
RETURN 0
