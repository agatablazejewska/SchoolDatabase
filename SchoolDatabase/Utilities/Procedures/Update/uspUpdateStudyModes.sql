CREATE PROCEDURE [utilities].[uspUpdateFormsOfStudy]
	@FormOfStudyId char(1),
	@DaysOfWeek varchar(25),
	@ClassHours varchar(12),
	@FormOfStudyPrice int
AS
	UPDATE utilities.FormsOfStudy
	SET  DaysOfWeek = @DaysOfWeek, ClassHours = @ClassHours, FormOfStudyPrice = @FormOfStudyPrice
	WHERE FormOfStudyId = @FormOfStudyId
RETURN 0