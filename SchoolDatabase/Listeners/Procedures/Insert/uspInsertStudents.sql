CREATE PROCEDURE [listeners].[uspInsertStudents]
	@StudentName varchar(20),
	@StudentSurname varchar(50),
	@StudentPESEL varchar(11),
	@StudentStudySemesterId int,
	@StudentDeanGroupId int,
	@StudentFormOfStudyId char(1),
	@StudentAddressId int,
	@StudentStatusId int
AS
	DECLARE @StudentSemester int, @StudentStudyLevelId int;
	SELECT @StudentSemester = ss.StudySemester, @StudentStudyLevelId = ss.StudyLevelId
	FROM listeners.StudySemesters AS ss
	WHERE StudySemesterId = @StudentStudySemesterId;
	INSERT INTO listeners.Students(StudentName, StudentSurname, StudentPESEL, StudentStudySemesterId, StudentDeanGroupId,
	StudentSemester, StudentStudyLevelId, StudentFormOfStudyId, StudentAddressId, StudentStatusId)
	VALUES (@StudentName, @StudentSurname, @StudentPESEL, @StudentStudySemesterId, @StudentDeanGroupId, 
	@StudentSemester, @StudentStudyLevelId, @StudentFormOfStudyId, @StudentAddressId, @StudentStatusId)

	EXEC listeners.uspUpdateDeanGroups @StudentDeanGroupId, 1
RETURN 0
