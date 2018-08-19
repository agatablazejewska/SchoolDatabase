CREATE TRIGGER studies.[TR_SchoolSubjects_Delete]
ON studies.SchoolSubjects
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @DeletedSchoolSubjects archived.SchoolSubjectsArchiving;
	INSERT INTO @DeletedSchoolSubjects(SchoolSubjectId, SchoolSubjectName, HoursAmount, ECTS, ClassType)
	SELECT d.SchoolSubjectId, d.SchoolSubjectName, d.HoursAmount, d.ECTS, d.ClassType
	FROM deleted AS d
	EXEC archived.uspInsertArchivedSchoolSubjects @DeletedSchoolSubjects;
END
