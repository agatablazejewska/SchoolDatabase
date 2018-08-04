CREATE PROCEDURE [listeners].[uspInsertStudySemesters]
	@StudySemester int,
	@FieldOfStudyId int,
	@StudyLevelId int,
	@StudySemesterCounsellor int,
	@StartYear int,
	@StudySemesterStatusId int
AS
	INSERT INTO listeners.StudySemesters(StudySemester, FieldOfStudyId, StudyLevelId, StudySemesterCounsellor, 
	StartYear, StudySemesterStatusId)
	VALUES (@StudySemester, @FieldOfStudyId, @StudyLevelId, @StudySemesterCounsellor, @StartYear, @StudySemesterStatusId)
RETURN 0
