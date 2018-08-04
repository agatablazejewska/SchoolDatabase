 
 

CREATE PROCEDURE [studies].[uspUpdateFieldsOfStudies]
	@FieldOfStudyId int,
	@FieldOfStudyName varchar(60),
	@MaxAmountOfStudents int,
	@FieldOfStudyFacultyId varchar(10)
AS
	UPDATE studies.FieldsOfStudies
	SET FieldOfStudyName = @FieldOfStudyName, MaxAmountOfStudents = @MaxAmountOfStudents, FieldOfStudyFacultyId = @FieldOfStudyFacultyId
	WHERE FieldOfStudyId = @FieldOfStudyId 
RETURN 0

