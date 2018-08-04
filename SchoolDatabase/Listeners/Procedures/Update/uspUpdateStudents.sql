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
	
	UPDATE listeners.Students
	SET StudentSurname = @StudentSurname, StudentStudySemesterId = @StudentStudySemesterId,
	StudentDeanGroupId = @StudentDeanGroupId, 
	StudentSemester = @StudentSemester, StudentStudyLevelId = @StudentStudyLevelId, 
	StudentFormOfStudyId = @StudentFormOfStudyId, StudentAddressId = @StudentAddressId, 
	StudentStatusId = @StudentStatusId
	WHERE StudentId = @StudentId

	
RETURN 0
