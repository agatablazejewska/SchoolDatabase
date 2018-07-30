CREATE PROCEDURE [utilities].[uspInsertStudyModes]
	@StudyModeId char(1),
	@StudyModeName varchar(15),
	@DaysOfWeek varchar(25),
	@ClassHours varchar(12),
	@StudyModePrice int
AS
	INSERT INTO StudyModes(StudyModeId, StudyModeName, DaysOfWeek, ClassHours, StudyModePrice)
	VALUES (@StudyModeId, @StudyModeName, @DaysOfWeek, @ClassHours, @StudyModePrice)
RETURN 0
