CREATE PROCEDURE [listeners].[uspInsertStudents]
	@StudentName varchar(20),
	@StudentSurname varchar(50),
	@StudentPESEL varchar(11),
	@StudentStudySemesterId int,
	@StudentDeanGroupId int,
	@StudentSemester int,
	@StudentStudyLevelId int,
	@StudentFormOfStudyId char(1),
	@StudentAddressId int,
	@StudentStatusId int
AS
	INSERT INTO listeners.Students(StudentName, StudentSurname, StudentPESEL, StudentStudySemesterId, StudentDeanGroupId,
	StudentSemester, StudentStudyLevelId, StudentFormOfStudyId, StudentAddressId, StudentStatusId)
	VALUES (@StudentName, @StudentSurname, @StudentPESEL, @StudentStudySemesterId, @StudentDeanGroupId, 
	@StudentSemester, @StudentStudyLevelId, @StudentFormOfStudyId, @StudentAddressId, @StudentStatusId)

	EXEC listeners.uspUpdateDeanGroups @StudentDeanGroupId, 1
RETURN 0
