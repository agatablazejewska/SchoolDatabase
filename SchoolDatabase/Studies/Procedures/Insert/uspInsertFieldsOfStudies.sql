 
 

CREATE PROCEDURE [studies].[uspInsertFieldsOfStudies]
	@FieldOfStudyName nvarchar(60),
	@MaxAmountOfStudents int
AS
	INSERT INTO studies.FieldsOfStudies(FieldOfStudyName, MaxAmountOfStudents)
	VALUES (@FieldOfStudyName, @MaxAmountOfStudents)

RETURN 0
