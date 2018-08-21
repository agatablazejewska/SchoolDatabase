 
 

CREATE PROCEDURE [utilities].[uspInsertFormsOfStudy]
	@FormOfStudyId char(1),
	@FormOfStudyName nvarchar(15),
	@DaysOfWeek nvarchar(25),
	@ClassHours nvarchar(12),
	@FormOfStudyPrice int
AS
	INSERT INTO utilities.FormsOfStudy(FormOfStudyId, FormOfStudyName, DaysOfWeek, ClassHours, FormOfStudyPrice)
	VALUES (@FormOfStudyId, @FormOfStudyName, @DaysOfWeek, @ClassHours, @FormOfStudyPrice)
RETURN 0
