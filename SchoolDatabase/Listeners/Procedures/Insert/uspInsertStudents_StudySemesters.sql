CREATE PROCEDURE [listeners].[uspInsertStudents_StudySemesters]
	@StudentId int,
	@StudySemesterId int,
	@StudyLevelId int,
	@StatusId int,
	@FormOfStudyId char(1)
AS
	DECLARE @DeanGroupId int, @Price int;
	SET @Price = (SELECT FormOfStudyPrice FROM utilities.FormsOfStudy WHERE FormOfStudyId = @FormOfStudyId)
	SET @DeanGroupId = (SELECT TOP(1) DeanGroupId FROM DeanGroups WHERE GroupStudySemester = @StudySemesterId AND CurrentGroupSize < MaxGroupSize)
	UPDATE listeners.DeanGroups
	SET CurrentGroupSize = CurrentGroupSize + 1
	WHERE DeanGroupId = @DeanGroupId;
	INSERT INTO listeners.Students_StudySemesters(StudentId, StudySemesterId, DeanGroupId, StudyLevelId, StatusId, FormOfStudyId, Price)
	VALUES (@StudentId, @StudySemesterId, @DeanGroupId, @StudyLevelId, @StatusId, @FormOfStudyId, @Price)
RETURN 0
