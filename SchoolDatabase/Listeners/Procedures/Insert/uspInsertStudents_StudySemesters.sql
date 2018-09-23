CREATE PROCEDURE [listeners].[uspInsertStudents_StudySemesters]
	@StudentId int,
	@StudySemesterId int
AS
	DECLARE @DeanGroupId int, @Price int, @StudyLevelId int, @FormOfStudyId char(1);
	SET @Price = (SELECT FormOfStudyPrice FROM utilities.FormsOfStudy WHERE FormOfStudyId = @FormOfStudyId)
	SET @DeanGroupId = (SELECT TOP(1) DeanGroupId FROM DeanGroups WHERE GroupStudySemester = @StudySemesterId AND CurrentGroupSize < MaxGroupSize)
	UPDATE listeners.DeanGroups
	SET CurrentGroupSize = CurrentGroupSize + 1
	WHERE DeanGroupId = @DeanGroupId;
	SELECT @StudyLevelId = StudyLevelId, @FormOfStudyId = FormOfStudyId FROM listeners.StudySemesters WHERE StudySemesterId = @StudySemesterId
	INSERT INTO listeners.Students_StudySemesters(StudentId, StudySemesterId, DeanGroupId, StudyLevelId, FormOfStudyId, Price)
	VALUES (@StudentId, @StudySemesterId, @DeanGroupId, @StudyLevelId,  @FormOfStudyId, @Price)
RETURN 0
