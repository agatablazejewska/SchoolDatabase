CREATE PROCEDURE [listeners].[uspInsertStudySemesters]
	@StudySemester int,
	@FieldOfStudyId int,
	@StudySemesterCounsellor int,
	@StartYear int,
	@StudySemesterStatusId int
AS
	INSERT INTO StudySemesters(StudySemester, FieldOfStudyId, StudySemesterCounsellor, 
	StartYear, StudySemesterStatusId)
	VALUES (@StudySemester, @FieldOfStudyId, @StudySemesterCounsellor, @StartYear, @StudySemesterStatusId)
RETURN 0
