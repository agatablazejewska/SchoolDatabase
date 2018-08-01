CREATE PROCEDURE [listeners].[uspUpdateStudents]
	@StudentId int,
	@StudentSurname varchar(50),
	@StudentStudySemesterId int,
	@StudentDeanGroupId int,
	@StudentSemester int,
	@StudentStudyLevelId int,
	@StudentFormOfStudyId char(1),
	@StudentAddressId int,
	@StudentStatusId int
AS
	DECLARE @CurrentDeanGroupId int;
	SET @CurrentDeanGroupId = (SELECT StudentDeanGroupId FROM listeners.Students WHERE StudentId = @StudentId)
	IF @CurrentDeanGroupId != @StudentDeanGroupId
		BEGIN
		EXEC listeners.uspUpdateDeanGroups @CurrentDeanGroupId, -1
		EXEC listeners.uspUpdateDeanGroups @StudentDeanGroupId, 1
		END

	UPDATE listeners.Students
	SET StudentSurname = @StudentSurname, StudentStudySemesterId = @StudentStudySemesterId,
	StudentDeanGroupId = @StudentDeanGroupId, 
	StudentSemester = @StudentSemester, StudentStudyLevelId = @StudentStudyLevelId, 
	StudentFormOfStudyId = @StudentFormOfStudyId, StudentAddressId = @StudentAddressId, 
	StudentStatusId = @StudentStatusId
	WHERE StudentId = @StudentId

	
RETURN 0
