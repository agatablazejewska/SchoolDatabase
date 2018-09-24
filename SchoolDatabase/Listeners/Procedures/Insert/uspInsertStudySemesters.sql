CREATE PROCEDURE [listeners].[uspInsertStudySemesters]
	@FacultyId varchar(10),
	@FieldOfStudyId int,
	@StudyLevelId int,
	@FormOfStudyId char(1),
	@StudySemesterCounsellor int,
	@StudySemesterStatusId int
AS
	INSERT INTO listeners.StudySemesters(FacultyId, FieldOfStudyId, StudyLevelId, FormOfStudyId, StudySemesterCounsellor, 
	StudySemesterStatusId)
	VALUES (@FacultyId, @FieldOfStudyId, @StudyLevelId,@FormOfStudyId, @StudySemesterCounsellor,@StudySemesterStatusId)
RETURN 0
