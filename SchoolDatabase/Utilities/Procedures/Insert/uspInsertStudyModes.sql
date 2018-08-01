CREATE PROCEDURE [utilities].[uspInsertFormsOfStudy]
	@FormOfStudyId char(1),
	@FormOfStudyName varchar(15),
	@DaysOfWeek varchar(25),
	@ClassHours varchar(12),
	@FormOfStudyPrice int
AS
	INSERT INTO utilities.FormsOfStudy(FormOfStudyId, FormOfStudyName, DaysOfWeek, ClassHours, FormOfStudyPrice)
	VALUES (@FormOfStudyId, @FormOfStudyName, @DaysOfWeek, @ClassHours, @FormOfStudyPrice)
RETURN 0
