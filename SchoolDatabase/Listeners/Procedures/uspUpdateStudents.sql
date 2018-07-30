CREATE PROCEDURE [listeners].[uspUpdateStudents]
	@StudentId int,
	@StudentSurname varchar(50),
	@StudentStudySemesterId int,
	@StudentDeanGroupId int,
	@StudentSemester int,
	@StudentStudyLevelId int,
	@StudentStudyModeId char(1),
	@StudentAddressId int,
	@StudentStatusId int
AS
	DECLARE @CurrentDeanGroupId int;
	SET @CurrentDeanGroupId = (SELECT StudentDeanGroupId FROM Students WHERE StudentId = @StudentId)
	IF @CurrentDeanGroupId != @StudentDeanGroupId
		BEGIN
		EXEC usp.UpdateDeanGroups @CurrentDeanGroupId, -1
		EXEC usp.UpdateDeanGroups @StudentDeanGroupId, 1
		END

	UPDATE Students
	SET StudentSurname = @StudentSurname, StudentStudySemesterId = @StudentStudySemesterId,
	StudentDeanGroupId = @StudentDeanGroupId, 
	StudentSemester = @StudentSemester, StudentStudyLevelId = @StudentStudyLevelId, 
	StudentStudyModeId = @StudentStudyModeId, StudentAddressId = @StudentAddressId, 
	StudentStatusId = @StudentStatusId
	WHERE StudentId = @StudentId

	
RETURN 0
