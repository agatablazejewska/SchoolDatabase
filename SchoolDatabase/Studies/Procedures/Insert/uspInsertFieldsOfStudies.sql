 
 

CREATE PROCEDURE [studies].[uspInsertFieldsOfStudies]
	@FieldOfStudyName varchar(60),
	@MaxAmountOfStudents int,
	@FieldOfStudyFacultyId varchar(10)
AS
	INSERT INTO studies.FieldsOfStudies(FieldOfStudyName, MaxAmountOfStudents, FieldOfStudyFacultyId)
	VALUES (@FieldOfStudyName, @MaxAmountOfStudents, @FieldOfStudyFacultyId)

RETURN 0
