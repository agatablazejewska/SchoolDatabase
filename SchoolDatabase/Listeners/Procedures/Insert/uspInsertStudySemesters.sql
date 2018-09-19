CREATE PROCEDURE [listeners].[uspInsertStudySemesters]
	@StudySemester int,
	@FacultyId varchar(10),
	@FieldOfStudyId int,
	@StudyLevelId int,
	@StudySemesterCounsellor int,
	@StartYear int,
	@StudySemesterStatusId int
AS
	INSERT INTO listeners.StudySemesters(StudySemester, FacultyId, FieldOfStudyId, StudyLevelId, StudySemesterCounsellor, 
	StartYear, StudySemesterStatusId)
	VALUES (@StudySemester,@FacultyId, @FieldOfStudyId, @StudyLevelId, @StudySemesterCounsellor, @StartYear, @StudySemesterStatusId)
RETURN 0
