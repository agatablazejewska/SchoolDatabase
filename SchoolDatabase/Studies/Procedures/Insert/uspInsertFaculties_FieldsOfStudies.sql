CREATE PROCEDURE [studies].[uspInsertFaculties_FieldsOfStudies]
	@FacultyId varchar(10),
	@FieldOfStudyId int
AS
	INSERT INTO studies.Faculties_FieldsOfStudies(FacultyId, FieldOfStudyId)
	VALUES (@FacultyId, @FieldOfStudyId)
RETURN 0
