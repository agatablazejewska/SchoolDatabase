CREATE PROCEDURE [listeners].[uspInsertStudents_StudySemesters]
	@StudentId int,
	@StudySemesterId int,
	@DeanGroupId int,
	@StudyLevelId int,
	@StatusId int
AS
	INSERT INTO listeners.Students_StudySemesters(StudentId, StudySemesterId, DeanGroupId, StudyLevelId, StatusId)
	VALUES (@StudentId, @StudySemesterId, @DeanGroupId, @StudyLevelId, @StatusId)
RETURN 0
