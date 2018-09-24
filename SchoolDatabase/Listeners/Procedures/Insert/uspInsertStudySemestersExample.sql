CREATE PROCEDURE [listeners].[uspInsertStudySemestersExample]
	@StudySemester int,
	@FacultyId varchar(10),
	@FieldOfStudyId int,
	@StudyLevelId int,
	@FormOfStudyId char(1),
	@StudySemesterCounsellor int,
	@StartYear int,
	@StudySemesterStatusId int
AS
	INSERT INTO listeners.StudySemesters(StudySemester, FacultyId, FieldOfStudyId, StudyLevelId, FormOfStudyId, StudySemesterCounsellor, 
	StartYear, StudySemesterStatusId)
	VALUES (@StudySemester,@FacultyId, @FieldOfStudyId, @StudyLevelId,@FormOfStudyId, @StudySemesterCounsellor, @StartYear, @StudySemesterStatusId)
RETURN 0
