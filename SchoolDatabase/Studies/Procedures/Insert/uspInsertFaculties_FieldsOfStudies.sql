CREATE PROCEDURE [studies].[uspInsertFaculties_FieldsOfStudies]
	@FacultyId varchar(10),
	@FieldOfStudyId int,
	@FormOfStudy char(1),
	@StudyLevelId int
AS
	INSERT INTO studies.Faculties_FieldsOfStudies(FacultyId, FieldOfStudyId, FormOfStudy, StudyLevelId)
	VALUES (@FacultyId, @FieldOfStudyId, @FormOfStudy, @StudyLevelId)
RETURN 0
