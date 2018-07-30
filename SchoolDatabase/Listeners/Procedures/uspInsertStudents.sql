CREATE PROCEDURE [listeners].[uspInsertStudents]
	@StudentName varchar(20),
	@StudentSurname varchar(50),
	@StudentPESEL varchar(11),
	@StudentStudySemesterId int,
	@StudentDeanGroupId int,
	@StudentSemester int,
	@StudentStudyLevelId int,
	@StudentStudyModeId char(1),
	@StudentAddressId int,
	@StudentStatusId int
AS
	INSERT INTO Students(StudentName, StudentSurname, StudentPESEL, StudentStudySemesterId, StudentDeanGroupId,
	StudentSemester, StudentStudyLevelId, StudentStudyModeId, StudentAddressId, StudentStatusId)
	VALUES (@StudentName, @StudentSurname, @StudentPESEL, @StudentStudySemesterId, @StudentDeanGroupId, 
	@StudentSemester, @StudentStudyLevelId, @StudentStudyModeId, @StudentAddressId, @StudentStatusId)

	EXEC uspUpdateDeanGroups @StudentDeanGroupId, 1
RETURN 0
