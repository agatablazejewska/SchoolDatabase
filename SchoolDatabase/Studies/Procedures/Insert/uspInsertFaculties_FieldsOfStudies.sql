CREATE PROCEDURE [studies].[uspInsertFaculties_FieldsOfStudies]
	@FacultyId varchar(10),
	@FieldOfStudyId int,
	@FormOfStudy char(1)
AS
	INSERT INTO studies.Faculties_FieldsOfStudies(FacultyId, FieldOfStudyId, FormOfStudy)
	VALUES (@FacultyId, @FieldOfStudyId, @FormOfStudy)
RETURN 0
