CREATE PROCEDURE [utilities].[uspUpdateStudyModes]
	@StudyModeId char(1),
	@DaysOfWeek varchar(25),
	@ClassHours varchar(12),
	@StudyModePrice int
AS
	UPDATE StudyModes
	SET  DaysOfWeek = @DaysOfWeek, ClassHours = @ClassHours, StudyModePrice = @StudyModePrice
	WHERE StudyModeId = @StudyModeId
RETURN 0