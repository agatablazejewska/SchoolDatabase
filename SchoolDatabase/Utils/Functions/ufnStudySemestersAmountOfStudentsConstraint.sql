CREATE FUNCTION [utils].[ufnStudySemestersAmountOfStudentsConstraint]
(
	@FieldOfStudyId int
)
RETURNS INT
AS
BEGIN
	RETURN (SELECT  fos.MaxAmountOfStudents
	FROM studies.FieldsOfStudies AS fos
	WHERE fos.FieldOfStudyId = @FieldOfStudyId);
END
