 
 

CREATE PROCEDURE [studies].[uspUpdateFieldsOfStudies]
	@FieldOfStudyId int,
	@FieldOfStudyName nvarchar(60),
	@MaxAmountOfStudents int
AS
	UPDATE studies.FieldsOfStudies
	SET FieldOfStudyName = @FieldOfStudyName, MaxAmountOfStudents = @MaxAmountOfStudents
	WHERE FieldOfStudyId = @FieldOfStudyId 
RETURN 0

