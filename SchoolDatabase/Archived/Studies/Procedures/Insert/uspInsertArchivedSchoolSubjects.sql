CREATE PROCEDURE [archived].[uspInsertArchivedSchoolSubjects]
	@Archiving archived.SchoolSubjectsArchiving READONLY
AS
	INSERT INTO archived.ArchivedSchoolSubjects(SchoolSubjectId, SchoolSubjectName, HoursAmount, ECTS, ClassType)
	SELECT a.SchoolSubjectId, a.SchoolSubjectName, a.HoursAmount, a.ECTS, a.ClassType
	FROM @Archiving AS a
RETURN 0
