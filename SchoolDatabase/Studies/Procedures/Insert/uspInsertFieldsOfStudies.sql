 
 

CREATE PROCEDURE [studies].[uspInsertFieldsOfStudies]
	@FieldOfStudyName nvarchar(60),
	@MaxAmountOfStudents int,
	@FieldOfStudyFacultyId nvarchar(10)
AS
	INSERT INTO studies.FieldsOfStudies(FieldOfStudyName, MaxAmountOfStudents, FieldOfStudyFacultyId)
	VALUES (@FieldOfStudyName, @MaxAmountOfStudents, @FieldOfStudyFacultyId)

RETURN 0
