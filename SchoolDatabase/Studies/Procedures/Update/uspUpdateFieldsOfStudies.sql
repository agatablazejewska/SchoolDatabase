 
 

CREATE PROCEDURE [studies].[uspUpdateFieldsOfStudies]
	@FieldOfStudyId int,
	@FieldOfStudyName nvarchar(60),
	@MaxAmountOfStudents int,
	@FieldOfStudyFacultyId nvarchar(10)
AS
	UPDATE studies.FieldsOfStudies
	SET FieldOfStudyName = @FieldOfStudyName, MaxAmountOfStudents = @MaxAmountOfStudents, FieldOfStudyFacultyId = @FieldOfStudyFacultyId
	WHERE FieldOfStudyId = @FieldOfStudyId 
RETURN 0

