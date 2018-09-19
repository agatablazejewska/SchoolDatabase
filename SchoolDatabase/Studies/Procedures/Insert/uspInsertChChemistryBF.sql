CREATE PROCEDURE [studies].[uspInsertChChemistryBF]
	@Semester int,
	@SchoolSubject varchar(7)
AS
	INSERT INTO studies.ChChemistryBF(Semester,SchoolSubject)
	VALUES (@Semester, @SchoolSubject);
RETURN 0
